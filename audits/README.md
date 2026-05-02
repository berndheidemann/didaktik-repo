# Quellen-Audit-Verfahren

Etablierte Methodik zur systematischen Verifikation von Quellen-Citations in Wiki-Artikeln des Didaktik-Repos. Empirisch validiert über drei Methodik-Generationen (v1 / v2 / v3) und **16 Audit-Wellen + 12 Cross-Repo-Sweeps** (2026-04-30 bis 2026-05-02).

**Aktueller Standard: v3-Single-Pass** (2026-05-01) — siehe [`v3-audit-methodik.md`](v3-audit-methodik.md). Diese README beschreibt Risiko-Triage, Ablauf, Konsolidierung und bekannte Halluzinations-Muster, die in den v3-Prompt einfließen.

## Aktueller Stand (2026-05-02): Audit-Reihe formal abgeschlossen

- **86 / 102 Artikel explizit auditiert (84 %)** über 16 Wellen
- **Verbleibende 16 type:theorie-Artikel** via Pauschal-Disposition geltend dokumentiert ([`2026-05-02-theorie-pauschal-disposition.md`](2026-05-02-theorie-pauschal-disposition.md)):
  - **Klasse A** (8): kanonische Klassiker, indirekt validiert via Schwester-Audits — *clean ohne expliziten Audit*
  - **Klasse B** (4): gemischte Cite-Profile, Theorie-Kerne kanonisch — *on-demand Quick-Scan bei Material-Generierung*
  - **Klasse C** (4): Verwaltungs-/Plattform-Folklore-Risiko mittel — **optionale Welle 17 als „weitergehen"-Punkt** (handlungsorientierter-unterricht, interaktive-lernumgebungen, kursarchitektur-lernumgebungen, lernortkooperation-transfer)
- **~600+ Citations geprüft.** Befund-Bilanz Wellen 1-16: ~25 CRITs, ~50 MAJORs, ~80 MINORs.

**Wenn Audit-Reihe wiederaufgenommen wird:**
1. Triage-Skript läuft lassen (`scripts/audit-risk-triage.sh`) — Restpool sind die 16 Theorie-Artikel
2. Welle-17-Mini-Sweep (4 Subagents parallel) auf die 4 Klasse-C-Artikel als nächster logischer Schritt
3. Methodik unverändert — v3-Single-Pass + Cross-Repo-Sweep nach jeder Welle, gleiches Setup wie Welle 16

## Wichtigste systematische Erkenntnisse (Wellen 1-16)

1. **Pop-Wissenschafts-Folklore-Subpattern** (4× repo-systematisch in W13-16): peer-reviewter Cite + erfundene Wirkungs-/Inhalts-Behauptung. Beispiele: Mark CHI 2008 „23:15"-Folklore-Zahl, Lytle 2019 „drei Bedingungen", Svabensky 2021 als CTF-Wirkungsbeleg, Tissenbaum 2021 „4-A-Schema". **Material-generierungs-kritisch**, weil Agents die Behauptung 1:1 übernehmen würden.
2. **Hybrid-Citations (Pattern #2)** sind die häufigste CRIT-Klasse — strukturell, weil plausibel klingende fabrizierte Bibliografien typischerweise erst beim Layer-1-CrossRef-Match auffallen. 17×+ repo-systematisch dokumentiert.
3. **fMRI-/Neurowissenschafts-Empirie** ist heißester Domänen-Hot-Spot (neurodidaktik-programmieren: 66 % CRIT+MAJOR-Dichte auf 6 Cites — dirtigster Single-Artikel).
4. **Lebende Web-Resources** (Tools, Plattformen) brauchen Versions-/Datums-Disclosure als Standard. Welle-15-Sweep fand 5 Spillovers für Replit/Codespaces/CAST UDL/FSRS — höchste Sweep-Trefferquote der gesamten Reihe.
5. **Verwaltungs-Cluster** (KMK/BfDI/EDPB/BayLfD-Cites) sind heterogen: nicht durchweg dirty, aber gezielter Audit pro Artikel nötig (W14 datenschutz-lernumgebungen 3 fabrizierte/misattribuierte Cites; W15 lernsituationen-gestalten clean).

## Wann anwenden

- Vor Veröffentlichung neuer Wiki-Artikel mit konkreten Effektstärken / Studientyp-Behauptungen
- Wenn Bernd sagt "Quellen prüfen", "Audit", "stimmen die Citations"
- Routinemäßig nach Hinzufügen mehrerer KI-bezogener Artikel (höchstes Risiko-Cluster)
- Bei strukturellen Tabellen mit Klassifikationen / offiziellen Bezeichnungen (Prüfungsbereiche, Taxonomien) — Hot-Spot
- Bei Direktzitaten aus dt. Verwaltungstexten (KMK / BIBB / FIAusbV / IHK) — Hot-Spot

## Wann nicht anwenden

- Reine Theorie-Artikel mit kanonischen Quellen (Vygotsky, Piaget, Bloom 1956) — niedriges Risiko
- Praxis-Artikel ohne konkrete Zahlen/Studientypen

## Strukturelle Bulk-Sweeps (Welle 10, ergänzend)

Seit Welle 10 (2026-05-02) wird die Per-Citation-Welle durch zwei strukturelle Bulk-Sweeps ergänzt, die mit ~10 % des Token-Aufwands pro Welle ähnlich viele CRITs fangen — speziell Pattern #2 (Hybrid-Citations), Pattern #3+#5 (fabrizierte Cites) und Pattern #4 Variante A (Body-Inline ohne Quellenliste).

### Bulk-Sweep Phase A — DOI/arXiv-Erstautoren-Verifikation

```bash
# Auf alle Wiki-Artikel:
scripts/doi-bulk-verify.sh

# Auf Subset (z.B. nur nicht-auditierte):
scripts/doi-bulk-verify.sh --targets-file /tmp/welle10-targets.txt
```

Output: TSV mit `file:line | DOI | CrossRef-Erstautor | Jahr | Titel-Snippet`. Manuell mit Wiki-Citation Zeile-für-Zeile abgleichen — Erstautor-/Jahr-/Titel-Drift = Pattern #2 (Hybrid-Citation).

**Welle-10-Validation:** 6 DOIs in 51 nicht-auditierten Artikeln, 0 Hybrid-Citations gefunden. In Wellen 6-9 fanden Per-Citation-Subagents 5 Hybrid-Citations (Brady, Levant, Marwan/Li, Tjärnhage, Schalk/Schumacher, Wu/Schunn) — die DOI-Bulk-Verifikation hätte alle gefangen außer Sub-Pattern 2c (Wu/Schunn: DOI stimmt, Titel falsch — daher Titel-Match Pflicht).

### Bulk-Sweep Phase B — Body-Inline-vs-Quellenliste

```bash
scripts/body-inline-sweep.sh > /tmp/inline-hits.txt
sort -u /tmp/inline-hits.txt
# Manuell False-Positives durch Token-Fragmente filtern (Stop-Word-Liste im Skript erweitern)
# Verbleibende Treffer: Pattern #4 Variante A (real, fehlt nur in Bibliographie)
```

**Welle-10-Validation:** ~52 Roh-Treffer → ~25 echte Pattern-#4-A-Befunde + 4 Pattern-#5-CRITs (fabrizierte Cites: Leppink/Tafliovich/Yang in productive-failure + retrieval-practice; Becker→Denny CACM 2024 in meta-analysen-cs-education).

**Wann ausführen:**
- Nach jeder Per-Citation-Welle als Hygiene-Pass
- Bei Verdacht auf fabrizierte Studien-Boxen (Pattern #3) — generische Erstautor-Namen mit konkreten Effekt-Werten ohne DOI sind Hot-Spots
- Bei größeren Repo-Refaktorierungen (Bibliographie-Disziplin-Check)

**Komplementarität zu Per-Citation-Wellen:** Bulk-Sweeps fangen Pattern #2/#3/#4-A/#5 strukturell und ressourcen-effizient. Per-Citation-Audits bleiben überlegen für Pattern #6 (Effektstärken-Drift), #7 (Hot-Spot-Inversion), #8 (Hattie-Edition), #10 (erfundene Klassifikations-Stufen). Beides als Standard nutzen.

## Verfahren in vier Stufen

### Stufe 1 — Risiko-Triage

```bash
scripts/audit-risk-triage.sh
```

Score-Logik (höher = mehr Audit-Priorität):

| Pattern | Score |
|---|---|
| Effektstärken-Notation (g=, d=, r=) | +3 pro Treffer |
| Stichproben-Notation (n=, k=, N=) | +2 pro Treffer |
| RCT/Meta-Analyse/Survey-Mention | +1 pro Treffer |
| Neue Studienjahre (2023-2026) | +1 pro Treffer |
| Markdown-Tabelle > 5 Zeilen | +3 |
| `type: evidenz` im Frontmatter | +5 |
| `type: praxis` im Frontmatter | +3 |
| `type: methode` im Frontmatter | +1 |
| Hattie-Mention (Hot-Spot) | +5 |
| **Direktzitat aus dt. Verwaltungstext** (KMK/BIBB/FIAusbV/IHK in Anführungszeichen) | **+3** |
| **Strukturierte Klassifikations-Tabelle** (Kategorien-Tabelle / Prüfungsbereiche / Taxonomie) | **+3** |
| **arXiv-IDs** ohne CrossRef-DOI | **+2** |
| **§-Verweise** (Verordnungs-Paragraphen) | **+2** |
| **Self-Citation-Cluster** (Autor mehrfach in Quellenliste) | **+3** |

Bereits auditierte Artikel sind im Script mit `[DONE]` markiert (Liste pflegen).

**Welche Artikel auditieren:** Top-N nach Score, in Wellen à 5 parallel.

### Stufe 2 — v3-Single-Pass-Audit

**Subagent-Typ:** `general-purpose` mit `model: "opus"`, Background-Mode (`run_in_background: true`).

**Pro Welle:** 5 parallele Subagents, Wall-Clock ~5-7 min, ~250-300k Tokens total.

**Prompt-Skelett** (Platzhalter ersetzen, optional Domain-Hint mit allgemeinen Hot-Spot-Hinweisen ohne konkrete Vorbefunde):

```
v3-Single-Pass-Audit eines Wiki-Artikels im Didaktik-Repo /home/bernd/projects/didaktik-repo.

**Methodik-Datei zwingend zuerst lesen:** /home/bernd/projects/didaktik-repo/audits/v3-audit-methodik.md

**Zu auditierender Artikel:** {ARTIKEL_PFAD}

**Domänen-Hinweis (allgemein, keine konkreten Vorbefunde):** {DOMAIN_HINT}

**Aufgabe:** Audit komplett mit v3-Verfahren. Per-Citation-Workflow alle drei Layers in einem Block, YAML-Output, Tool-Use-Pflicht vor Severity ≥ MINOR. Self-Critique- und Cross-Repo-Verdacht-Sektion am Ende sind Pflicht.

**Output:** YAML wie in Methodik-Datei spezifiziert. KEIN File schreiben. severity_summary aus citations[].final_severity berechnen, nicht freihändig.

**Token-/Zeit-Ziel:** ~40-60k Token, ~25-30 min Wall-Clock.

Plane 25-35 Min. KEIN File schreiben.
```

### Stufe 3 — Self-Consistency (optional, bei strittigen CRITs)

**Wann anwenden:**
- Primärer v3-Audit liefert CRITICAL-Befund mit Confidence < 0.85
- Subagent dokumentiert in `self_critique.unsichere_befunde` Unsicherheit
- Volltext-Fetch ist fehlgeschlagen (Paywall, PDF-Binary)

**Verfahren:** 3× v3-Audit parallel auf demselben Artikel, Mehrheits-Vote bei strittigen Severities. Forschungsbasis: DeepMind-FACTS-Multi-Judge-Consensus, ~25 % Error-Reduktion.

Das ist der **billige Multi-Pass-Ersatz** statt sequenzieller Eskalation (v1 → v2 → v3 → v4) — diminishing returns sind dokumentiert für Frontier-Modelle.

### Stufe 4 — Konsolidierung

**Output-Datei:** `audits/YYYY-MM-DD-themenname.md` (Beispiele: `2026-04-30-stichprobe-evidenz-block.md`, `2026-05-01-replikation-pass.md`).

**Pflicht-Inhalt:**

1. Anlass + Hypothese
2. Methodik-Hinweis (v3-Single-Pass + ggf. Self-Consistency)
3. Gesamtbilanz (Tabelle pro Artikel mit Severity-Verteilung)
4. Wiederkehrende Fehlermuster
5. Detail-Findings (pro Artikel oder pro Befund-Cluster)
6. **Cross-Repo-Befunde** (aus den `cross_repo_verdacht`-YAML-Sektionen aggregiert)
7. Robust gesicherte CRITICAL-Liste mit konkreten Korrektur-Vorschlägen
8. Methodik-Limitierung explizit benennen (LLM-Subagent-Halluzinationen, Volltext-Fetch-Lücken)

## Bekannte Halluzinations-Muster

### Methodik-Generationen-Übersicht

- **v1** (2026-04-30 Stichprobe): ~10 % Halluzinationsrate. Hauptproblem: zu schnelles "nicht auffindbar / erfundener Autor"-Urteil ohne ausreichend viele Suchanfragen.
- **v2** (2026-04-30 Wellen 1+2): ~0 % Diagnose-Halluzination. Aber: Korrektur-Halluzination (richtiger Fehler erkannt, falscher Ersatz vorgeschlagen) und Cross-Audit-Inkonsistenz (Sekundärquellen-Täuschung).
- **Pass-A/B/C-Test** (2026-05-01): Drei-Schichten-Decomposition. Findet Layer-2/3-Befunde, die Pass-1+Pass-2 strukturell übersahen (HalluCode-Tabelle, Mazur-Kontext, IHK-Bereichsnamen).
- **v3-Single-Pass** (2026-05-01, aktueller Standard): YAML-Schema-zwingend, Tool-Use-Pflicht, Self-Critique. Findet ~85-90 % der A/B/C-Befunde plus zusätzliche Befunde, die A/B/C übersah (z.B. Ericson/Fabic-Erstautor in self-explanation).

### Robust gesicherte Halluzinations-Pattern

Aus 21 auditierten Artikeln (16 in v1+v2 + 5 im v3-Test) und 200+ Citations:

1. **Erstautor-Misattribution** (häufigster Fehlertyp) — Coppock/Shen, Ericson/Fabic, Jang/Winget, Yang/Rheu, Lei/Zhang, Sperling/Veldhuis, Liu/Ali, Stahl/Xiao, Zhang/Chu, Spracher/Spracklen, Wu/Emirtekin, Becker/Prather (Stichprobe). Häufig bei arXiv-Preprints und Initial-Konfusion (z.B. "J. Yang" aus "Janghee Cho").
2. **Hybridisierte Citations** — Titel von Paper A + Stichprobe/Venue von Paper B (Anthropic Educator-Title + Student-n; AIAS-Original-Autoren + Revisited-Titel; Phung ICER-Titel + LAK-Venue; Murphy 2012-Autoren + Corney 2014-Titel; Berthold 2009-Trio + 2011-Jahr).
3. **Effektstärken-Generationenfehler** — d-Wert wird Quelle X zugeschrieben, stammt aber aus früherer Meta-Analyse, die X nur referenziert (Cepeda → Donovan, Roediger&Butler → Rowland, Liu/Ali "89%" → Benario).
4. **Hot-Spot-Inversion** — zentrale These ist genau das Gegenteil der zitierten Quelle (Barbieri 2023 SE-negativer-Moderator als positiver dargestellt; Kulik 1990 PSI vs. LFM invertiert).
5. **Falsche Effektstärken bei Hattie-Werten** — 2009-Werte unter "2009/2023"-Header ohne Edition-Disclosure (Worked Examples 0,57 vs. revidiert 0,37; Scaffolding 0,54 vs. 0,82; Technologie 0,23 vs. 0,47).
6. **Studientyp-Klassifikationsfehler** — Surveys als RCTs (Gerlich-Anlassfall, EduPIJ-SWOT), theoretische Reviews als Längsschnitt-Empirie (Sorva 2013), Einzelstudien als Meta-Analysen (Margulieux 2020), Multi-Kohorten-Studien als Meta-Analysen (Porter 2013).
7. **Strukturierte Tabellen mit erfundenen Kategorien** — HalluCode 5 statt 3 Primärkategorien; IHK-Bereichsnamen für FIDP/FISI/FIDV alle aus FIAusbV paraphrasiert statt übernommen.
8. **Falsche arXiv/DOI mit komplett anderem Paper-Inhalt** — arXiv:2411.10954 als Indic-EiPE-Beleg ist tatsächlich "Dialectal Toxicity Detection".
9. **Fabrizierte Direkt-Zitate aus dt. Verwaltungstexten** — KMK 10.10.2024 "Prüfungskultur umbauen, Dialog und Verteidigung integrieren" so nicht reproduzierbar; "§ 17 MPO-IT" als Norm nicht etabliert.
10. **Quelle widerspricht sich selbst** — zitierte Sekundärquelle widerlegt eigene Behauptung (Freudenberg-Preisträger steht in zitierter idw-online-Quelle).
11. **Self-Citation als unabhängige Evidenz** — Gerlich-Doppel-Cite (Societies + Data, beide single-author) ohne Offenlegung.
12. **Begriffsverwechslung mit veralteter VO** — "Betrieblicher Auftrag" als Begriff der Vor-2020-VO; "BBiG-Verordnung" als Sammeltitel statt FIAusbV.
13. **Wiederholte Fehler quer durchs Repo** — "Freeman 55% weniger Durchfaller" in zwei Artikeln gleich falsch; AIAS-MacVaugh-Hybridisierung in zwei Artikeln gleich falsch.

## Skalierungs-Schätzung

| Phase | Aufwand pro Artikel | Welle (5 parallel) |
|---|---|---|
| v3-Single-Pass | ~50-60k Token, 25-30 min | ~280k, 6-8 min |
| Self-Consistency (3×, optional) | ~150-180k Token, 25-30 min | ~750k, 6-8 min |

**Für volle Repo-Abdeckung (~30 Hochrisiko-Artikel):**
- 6 Wellen v3: ~40-50 min Wall-Clock, ~1,7M Token
- Selektive Self-Consistency (10 % der CRITICAL-Befunde): ~10 min, ~150k Token
- Total: **~1 h Wall-Clock, ~2M Token**

## Wiederverwendbare Bausteine

- [`v3-audit-methodik.md`](v3-audit-methodik.md) — Aktuelle Audit-Methodik (Layers, Schema, Tool-Use-Regel, Welle-10-Bulk-Sweep-Sektion)
- [`../scripts/audit-risk-triage.sh`](../scripts/audit-risk-triage.sh) — Risk-Score pro Artikel + ALREADY_AUDITED-Liste (alle 86 auditierten Artikel über Wellen 1-16)
- [`../scripts/doi-bulk-verify.sh`](../scripts/doi-bulk-verify.sh) — Phase-A Bulk-DOI-Verifikation (Welle 10+)
- [`../scripts/body-inline-sweep.sh`](../scripts/body-inline-sweep.sh) — Phase-B Body-Inline-vs-Quellenliste-Sweep (Welle 10+)
- [`2026-04-30-stichprobe-evidenz-block.md`](2026-04-30-stichprobe-evidenz-block.md) — v1-Pilot
- [`2026-05-01-replikation-pass.md`](2026-05-01-replikation-pass.md) — v2-Replikations-Konsolidierung
- [`2026-05-02-welle-10-bulk-sweep.md`](2026-05-02-welle-10-bulk-sweep.md) — Welle-10-Strategie-Wechsel-Bericht
- [`2026-05-02-welle-11-stichprobe.md`](2026-05-02-welle-11-stichprobe.md) ... [`2026-05-02-welle-16-theorie-praxisnah.md`](2026-05-02-welle-16-theorie-praxisnah.md) — Wellen-Konsolidierungen 11-16
- [`2026-05-01-cross-repo-sweep.md`](2026-05-01-cross-repo-sweep.md) ... [`2026-05-02-cross-repo-sweep-12.md`](2026-05-02-cross-repo-sweep-12.md) — 12 Cross-Repo-Sweeps
- [`2026-05-02-theorie-pauschal-disposition.md`](2026-05-02-theorie-pauschal-disposition.md) — **Audit-Reihe-Abschluss + Klasse-A/B/C-Klassifikation der verbleibenden 16 Theorie-Artikel + „weitergehen"-Empfehlung**
- Diese README — Verfahrensbeschreibung

**Pflicht beim Erstellen neuer Audits:**

- Liste auditierter Artikel im Triage-Script aktualisieren (`ALREADY_AUDITED`)
- Neuer Audit-Report immer mit Datum im Dateinamen (`audits/YYYY-MM-DD-themenname.md`)
- Bei wiederkehrenden Fehlermustern: README oben unter "Robust gesicherte Halluzinations-Pattern" ergänzen
- `cross_repo_verdacht`-Patterns aus YAML-Outputs aggregieren und in nächste Triage einfließen lassen

## Lehre für die Artikel-Erstellung

Aus den Audits gelernt — gilt für alle künftigen Wiki-Artikel:

- **Erstautoren via CrossRef/arXiv direkt verifizieren**, nie via Sekundärquellen oder Trainingsdaten
- **Bei Übernahme von Citations aus bestehenden Repo-Artikeln**: nicht blind vertrauen — auch dort sind bekannte Fehler
- **Hattie-d-Werte gegen visible-learning.org und visiblelearningmetax.com prüfen**, dabei Edition explizit nennen (2009 vs. 2017 vs. 2023 / MetaX)
- **Bei "RCT" / "Meta-Analyse" / "Survey"-Klassifikation**: Studientyp im Originalpaper bestätigen, nicht aus dem Bauch heraus
- **Bei Effektstärken-Citations**: Effektstärken-Generationencheck (gehört der d-Wert wirklich diesem Paper, oder einer früheren Quelle, die das Paper nur referenziert?)
- **Bei Meta-Analysen-Citations**: Hot-Spot-Inversions-Check (findet das Paper das, was der Wiki-Artikel behauptet, oder das Gegenteil?)
- **Bei strukturierten Tabellen** (Klassifikationen, Prüfungsbereiche, Taxonomien): Original-Tabelle Zelle-für-Zelle übernehmen, nie paraphrasieren
- **Bei Direktzitaten aus dt. Verwaltungstexten**: offizielle Primärquelle (gesetze-im-internet.de, kmk.org, bibb.de) zwingend; nie aus dem Gedächtnis zitieren
- **Bei §-Verweisen**: Verordnungstext zwingend prüfen, nicht generische Plausibilität
- **Self-Citation-Disziplin**: Wenn ein Autor mehrfach zitiert wird, das offenlegen ("Gerlich, M. (2025a; 2025b)")
