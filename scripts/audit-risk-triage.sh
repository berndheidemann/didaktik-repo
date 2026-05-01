#!/usr/bin/env bash
# Risk-Triage für Quellen-Audit über alle Wiki-Artikel.
# Erzeugt einen Score pro Artikel, sortiert nach Audit-Priorität.
# Aktuelle Methodik: v3-Single-Pass-Audit (siehe audits/v3-audit-methodik.md).
#
# Score-Logik (höher = mehr Audit-Priorität):
#   +3 pro Effektstärken-Notation (g=, d=, r=)
#   +2 pro Stichproben-Notation (n=, k=, N=)
#   +1 pro RCT/Meta-Analyse/Survey-Mention
#   +1 pro neues Studienjahr (2023-2026)
#   +3 für Markdown-Tabelle mit > 5 Zeilen
#   +5 für type:evidenz, +3 für type:praxis, +1 für type:methode
#   +5 wenn Hattie erwähnt (Hot-Spot)
#   +3 für Direktzitate aus dt. Verwaltungstexten (KMK/BIBB/FIAusbV/IHK in Anführungszeichen) — Hot-Spot v3
#   +3 für strukturierte Klassifikations-Tabelle (Header mit "Kategorie", "Prüfungsbereich", "Taxonomie", "Dimension") — Hot-Spot v3
#   +3 für Self-Citation-Cluster (Autor-Initial + Nachname mehrfach in Quellen-Block) — Hot-Spot v3
#   +2 für arXiv-IDs ohne CrossRef-DOI — Hot-Spot v3
#   +2 für §-Verweise (Verordnungs-Paragraphen) — Hot-Spot v3
#   -3 wenn ausschließlich kanonische Theorie (Vygotsky, Bloom 1956, Piaget) ohne neue Zahlen

set -euo pipefail

WIKI_DIR="${1:-/home/bernd/projects/didaktik-repo/wiki}"

declare -A ALREADY_AUDITED
# v1 Stichprobe (2026-04-30)
ALREADY_AUDITED[ki-tutoring-evidenzlage.md]=1
ALREADY_AUDITED[deskilling-ki-codegenerierung.md]=1
ALREADY_AUDITED[llm-as-grader.md]=1
ALREADY_AUDITED[effektstaerken-unterricht.md]=1
ALREADY_AUDITED[meta-analysen-cs-education.md]=1
# v2 Pilot
ALREADY_AUDITED[wissensretention-programmierung.md]=1
# v2 Welle 1
ALREADY_AUDITED[feedback-lernumgebungen.md]=1
ALREADY_AUDITED[self-explanation.md]=1
ALREADY_AUDITED[ki-erfahrungsberichte-berufliche-bildung.md]=1
ALREADY_AUDITED[ki-integritaet-pruefungsleistung.md]=1
ALREADY_AUDITED[interleaving.md]=1
# v2 Welle 2
ALREADY_AUDITED[direct-instruction-rosenshine.md]=1
ALREADY_AUDITED[mastery-learning.md]=1
ALREADY_AUDITED[ihk-pruefungskatalog-2025.md]=1
ALREADY_AUDITED[kritische-ki-bewertungskompetenz.md]=1
ALREADY_AUDITED[ki-nutzungsregeln-unterricht.md]=1

# Header
printf "%-50s %5s  %s\n" "Artikel" "Score" "Top-Indikatoren"
printf "%-50s %5s  %s\n" "$(printf '%.0s-' {1..50})" "-----" "$(printf '%.0s-' {1..50})"

declare -a RESULTS

for file in "$WIKI_DIR"/*.md; do
  name="$(basename "$file")"
  score=0
  reasons=""

  # Effektstärken-Notation (g=, d=, r=, β=, η²=)
  effect_count=$(grep -ciE '\b(g|d|r)\s*[=≈]\s*[-+]?0?[.,][0-9]' "$file" || true)
  if [[ $effect_count -gt 0 ]]; then
    score=$((score + 3 * effect_count))
    reasons="${reasons}effekt:${effect_count} "
  fi

  # Stichproben-Notation (n=, k=, N=)
  n_count=$(grep -ciE '\b[nNk]\s*[=≈]\s*[0-9]' "$file" || true)
  if [[ $n_count -gt 0 ]]; then
    score=$((score + 2 * n_count))
    reasons="${reasons}n=:${n_count} "
  fi

  # RCT/Meta-Analyse-Mentions
  rct_count=$(grep -ciE '\b(RCT|Meta-Analyse|Meta.Analysis|Systematic Review|Feldexperiment)\b' "$file" || true)
  if [[ $rct_count -gt 0 ]]; then
    score=$((score + rct_count))
    reasons="${reasons}rct:${rct_count} "
  fi

  # Neue Studienjahre 2023-2026
  recent_count=$(grep -coE '\b(2023|2024|2025|2026)\b' "$file" || true)
  if [[ $recent_count -gt 0 ]]; then
    score=$((score + recent_count))
    reasons="${reasons}neu:${recent_count} "
  fi

  # Markdown-Tabellen (Effektstärken-Tabellen)
  table_lines=$(grep -cE '^\|.+\|.+\|' "$file" || true)
  if [[ $table_lines -gt 5 ]]; then
    score=$((score + 3))
    reasons="${reasons}tab:${table_lines} "
  fi

  # type aus Frontmatter
  type_field=$(awk '/^type:/ {print $2; exit}' "$file" || true)
  case "$type_field" in
    evidenz) score=$((score + 5)); reasons="${reasons}T=evi " ;;
    praxis)  score=$((score + 3)); reasons="${reasons}T=prx " ;;
    methode) score=$((score + 1)); reasons="${reasons}T=met " ;;
    theorie) score=$((score + 0)); reasons="${reasons}T=the " ;;
  esac

  # Hattie-Hot-Spot
  if grep -qiE '\bHattie\b' "$file"; then
    score=$((score + 5))
    reasons="${reasons}Hattie "
  fi

  # v3 Hot-Spot: Direktzitate aus dt. Verwaltungstexten (KMK/BIBB/FIAusbV/IHK in Anführungszeichen)
  # Heuristik: Verwaltungs-Akronym in der Nähe von Anführungszeichen
  if grep -ciE '(KMK|BIBB|FIAusbV|IHK).{0,150}["„].{5,}["“]|["„].{5,}["“].{0,150}(KMK|BIBB|FIAusbV|IHK)' "$file" | grep -qv '^0$' 2>/dev/null; then
    verw_count=$(grep -coE '(KMK|BIBB|FIAusbV|IHK).{0,150}["„].{5,}["“]|["„].{5,}["“].{0,150}(KMK|BIBB|FIAusbV|IHK)' "$file" || true)
    if [[ $verw_count -gt 0 ]]; then
      score=$((score + 3))
      reasons="${reasons}verw-zit "
    fi
  fi

  # v3 Hot-Spot: Strukturierte Klassifikations-Tabelle (Header mit "Kategorie", "Prüfungsbereich", "Taxonomie", "Dimension")
  if grep -qiE '\|.{0,30}(Kategorie|Prüfungsbereich|Taxonomie|Dimension|Klassifikation|Stufe|Level|Anforderungsbereich).{0,30}\|' "$file"; then
    score=$((score + 3))
    reasons="${reasons}klass-tab "
  fi

  # v3 Hot-Spot: arXiv-IDs (ohne CrossRef-DOI)
  arxiv_count=$(grep -coE 'arXiv:[0-9]{4}\.[0-9]{4,5}' "$file" || true)
  if [[ $arxiv_count -gt 0 ]]; then
    score=$((score + 2))
    reasons="${reasons}arxiv:${arxiv_count} "
  fi

  # v3 Hot-Spot: §-Verweise (Verordnungs-Paragraphen)
  if grep -qE '§\s*[0-9]+' "$file"; then
    par_count=$(grep -coE '§\s*[0-9]+' "$file" || true)
    score=$((score + 2))
    reasons="${reasons}§:${par_count} "
  fi

  # v3 Hot-Spot: Self-Citation-Cluster (Autor-Nachname mehrfach in Quellen-Block)
  # Heuristik: Wenn ein Nachname (4+ Buchstaben, Großbuchstabe-Anfang) > 2x in Quellen-Block auftaucht
  # Quellen-Block beginnt typischerweise nach "## Quellen" oder "## Literatur"
  selfcite=$(awk '/^##.*Quellen|^##.*Literatur|^##.*Belege/,EOF' "$file" 2>/dev/null \
    | grep -oE '\b[A-ZÄÖÜ][a-zäöüß]{3,}' \
    | sort | uniq -c \
    | awk '$1 >= 3 {print}' | wc -l || true)
  if [[ ${selfcite:-0} -gt 0 ]]; then
    score=$((score + 3))
    reasons="${reasons}selfcite:${selfcite} "
  fi

  # Bereits auditiert?
  audited_marker=""
  if [[ -n "${ALREADY_AUDITED[$name]+x}" ]]; then
    audited_marker="[DONE] "
  fi

  RESULTS+=("$(printf '%05d|%s|%s%s' "$score" "$name" "$audited_marker" "$reasons")")
done

# Sortiert ausgeben (höchster Score oben)
printf '%s\n' "${RESULTS[@]}" \
  | sort -t'|' -k1 -nr \
  | while IFS='|' read -r score name reasons; do
      printf "%-50s %5d  %s\n" "$name" "$((10#$score))" "$reasons"
    done
