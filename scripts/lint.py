#!/usr/bin/env python3
"""
lint.py — Validator für didaktik-repo

Prüft alle Artikel unter wiki/ gegen die in CLAUDE.md dokumentierten Regeln.

Prüfungen:
  Errors (führen zu Exit-Code 1):
    - Pflichtfelder im Frontmatter vorhanden
    - Kontrollierte Vokabulare (Enums) konform
    - `related`-Feld ist symmetrisch (bidirektional)
    - Frontmatter ist valides YAML

  Warnings (werden gemeldet, brechen nicht):
    - Wikilink-Targets, die keinem Artikel entsprechen (Ghost-Links)

Usage:
  ./scripts/lint.py             # alle Checks, Errors brechen mit Exit 1
  ./scripts/lint.py --quiet     # nur Errors, keine Warnings
  ./scripts/lint.py --strict    # Warnings werden zu Errors

Exit codes:
  0 — alles ok (bzw. nur Warnings ohne --strict)
  1 — Fehler gefunden
  2 — Script-Fehler (fehlende Dependencies, Verzeichnis nicht gefunden)
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

try:
    import yaml
except ImportError:
    print(
        "ERROR: PyYAML nicht installiert. Installation: pip install pyyaml",
        file=sys.stderr,
    )
    sys.exit(2)

REPO_ROOT = Path(__file__).resolve().parent.parent
WIKI_DIR = REPO_ROOT / "wiki"

# ---------------------------------------------------------------------------
# Kontrollierte Vokabulare (synchron mit CLAUDE.md Frontmatter-Referenz)
# ---------------------------------------------------------------------------

ENUMS: dict[str, list[str]] = {
    "type": ["theorie", "methode", "evidenz", "praxis"],
    "taxonomiestufe": [
        "erinnern", "verstehen", "anwenden",
        "analysieren", "bewerten", "erschaffen",
    ],
    "evidenzgrad": [
        "meta-analyse", "rct", "quasi-experimentell", "praxisbericht",
    ],
    "audience": ["FIAE", "FIDP"],
    "sozialform": ["einzelarbeit", "partner", "gruppe", "plenum"],
}

REQUIRED_FIELDS = [
    "title", "type", "tags", "created", "updated", "summary",
]

SCALAR_ENUMS = {"type"}
ARRAY_ENUMS = {"taxonomiestufe", "evidenzgrad", "audience", "sozialform"}

WIKILINK_RE = re.compile(r"\[\[([^\]|#]+)(?:#[^\]|]*)?(?:\|[^\]]+)?\]\]")
FRONTMATTER_RE = re.compile(r"\A---\s*\n(.*?)\n---\s*\n(.*)\Z", re.DOTALL)


def strip_wikilink(value: str) -> str:
    """'[[some-slug]]' -> 'some-slug'"""
    m = WIKILINK_RE.match(value.strip())
    return m.group(1).strip() if m else value.strip()


# ---------------------------------------------------------------------------
# Parsing
# ---------------------------------------------------------------------------


class ArticleParseError(Exception):
    pass


def parse_article(path: Path) -> tuple[dict, str]:
    """Return (frontmatter_dict, body_string) or raise ArticleParseError."""
    try:
        text = path.read_text(encoding="utf-8")
    except OSError as exc:
        raise ArticleParseError(f"konnte Datei nicht lesen: {exc}") from exc

    match = FRONTMATTER_RE.match(text)
    if not match:
        raise ArticleParseError("kein YAML-Frontmatter gefunden")

    fm_text, body = match.group(1), match.group(2)
    try:
        fm = yaml.safe_load(fm_text) or {}
    except yaml.YAMLError as exc:
        raise ArticleParseError(f"YAML-Parse-Fehler: {exc}") from exc

    if not isinstance(fm, dict):
        raise ArticleParseError(f"Frontmatter ist kein Mapping (ist {type(fm).__name__})")

    return fm, body


def extract_wikilinks(body: str) -> list[tuple[str, int]]:
    """Return list of (target_slug, line_number)."""
    results: list[tuple[str, int]] = []
    for lineno, line in enumerate(body.splitlines(), start=1):
        for match in WIKILINK_RE.finditer(line):
            results.append((match.group(1).strip(), lineno))
    return results


# ---------------------------------------------------------------------------
# Linter
# ---------------------------------------------------------------------------


class Lint:
    def __init__(self) -> None:
        self.errors: list[str] = []
        self.warnings: list[str] = []
        self.articles: dict[str, tuple[dict, str, Path]] = {}

    def error(self, path: Path, msg: str) -> None:
        self.errors.append(f"ERROR {path.name}: {msg}")

    def warn(self, path: Path, msg: str) -> None:
        self.warnings.append(f"WARN  {path.name}: {msg}")

    # ---- loading ---------------------------------------------------------

    def load(self) -> None:
        for path in sorted(WIKI_DIR.glob("*.md")):
            try:
                fm, body = parse_article(path)
            except ArticleParseError as exc:
                self.errors.append(f"ERROR {path.name}: {exc}")
                continue
            self.articles[path.stem] = (fm, body, path)

    # ---- individual checks ----------------------------------------------

    def check_required(self, path: Path, fm: dict) -> None:
        for field in REQUIRED_FIELDS:
            value = fm.get(field)
            if value is None or value == "" or value == []:
                self.error(path, f"Pflichtfeld fehlt oder leer: {field}")

    def check_enums(self, path: Path, fm: dict) -> None:
        for field in SCALAR_ENUMS:
            value = fm.get(field)
            if value in (None, ""):
                continue
            if value not in ENUMS[field]:
                self.error(
                    path,
                    f"ungültiger Wert in {field}: '{value}' "
                    f"(erlaubt: {', '.join(ENUMS[field])})",
                )

        for field in ARRAY_ENUMS:
            value = fm.get(field)
            if not value:
                continue
            if not isinstance(value, list):
                value = [value]
            for v in value:
                if v not in ENUMS[field]:
                    self.error(
                        path,
                        f"ungültiger Wert in {field}: '{v}' "
                        f"(erlaubt: {', '.join(ENUMS[field])})",
                    )

    def check_wikilinks(self, path: Path, body: str) -> None:
        known = set(self.articles.keys())
        seen: set[str] = set()
        for target, lineno in extract_wikilinks(body):
            if target in seen:
                continue
            seen.add(target)
            if target not in known:
                self.warn(
                    path,
                    f"Zeile {lineno}: Wikilink-Ziel '{target}' existiert nicht",
                )

    def check_related_symmetry(self) -> None:
        # forward[slug] = set of slugs listed in that article's related field
        forward: dict[str, set[str]] = {}
        for slug, (fm, _body, _path) in self.articles.items():
            related_raw = fm.get("related") or []
            if not isinstance(related_raw, list):
                related_raw = [related_raw]
            forward[slug] = {strip_wikilink(r) for r in related_raw if r}

        for src, targets in forward.items():
            src_path = self.articles[src][2]
            for tgt in targets:
                if tgt not in self.articles:
                    self.warn(
                        src_path,
                        f"related-Ziel '{tgt}' existiert nicht",
                    )
                    continue
                if src not in forward.get(tgt, set()):
                    tgt_path = self.articles[tgt][2]
                    self.error(
                        tgt_path,
                        f"asymmetrischer Backlink: '{src}' → '{tgt}', "
                        f"aber '{tgt}' → '{src}' fehlt",
                    )

    # ---- runner ---------------------------------------------------------

    def run(self, quiet: bool, strict: bool) -> int:
        self.load()
        for _slug, (fm, body, path) in self.articles.items():
            self.check_required(path, fm)
            self.check_enums(path, fm)
            self.check_wikilinks(path, body)
        self.check_related_symmetry()

        if not quiet:
            for w in self.warnings:
                print(w)
        for e in self.errors:
            print(e, file=sys.stderr)

        print(
            f"\n{len(self.articles)} Artikel geprüft | "
            f"{len(self.errors)} Fehler | {len(self.warnings)} Warnungen"
        )

        has_failure = bool(self.errors) or (strict and self.warnings)
        return 1 if has_failure else 0


def main() -> int:
    ap = argparse.ArgumentParser(description="Lint didaktik-repo")
    ap.add_argument("--quiet", action="store_true", help="Warnings unterdrücken")
    ap.add_argument("--strict", action="store_true", help="Warnings als Fehler werten")
    args = ap.parse_args()

    if not WIKI_DIR.is_dir():
        print(f"ERROR: wiki/-Verzeichnis nicht gefunden: {WIKI_DIR}", file=sys.stderr)
        return 2

    return Lint().run(quiet=args.quiet, strict=args.strict)


if __name__ == "__main__":
    sys.exit(main())
