# Cross-Repo-Sweep 11 (nach Welle 15)

**Datum:** 2026-05-02
**Anlass:** ~10 Patterns aus Welle-15-Konsolidierung repo-weit verifizieren.
**Ergebnis:** **5 Spillovers** in 4 weiteren Wiki-Files — Welle-15-Befunde haben mehr repo-weite Verbreitung als Welle 13/14.

## Patterns geprüft

| # | Pattern | Befunde | Spillover |
|---|---|---|---|
| 1 | Replit „Ende 2024" / „2024 eingestellt" | 2 (browser-ide gefixt; ki-tool-auswahl) | **1** |
| 2 | GitHub Codespaces „Education-Kontingent Preview" | 2 (browser-ide gefixt; ki-tool-auswahl) | **1** |
| 3 | Ericson 2022 „Future Directions" Untertitel | 0 weitere (parsons gefixt; aufgabentypen W14 hatte korrekten Titel; scaffolding hat „Belland: Future Directions" anderes Paper) | clean |
| 4 | Ye 2022 FSRS Hybrid-Cite (Kurz- oder Hybrid-Form) | 2 (spaced-repetition-scheduler gefixt; spaced-repetition-algorithmen) | **1** |
| 5 | Morrison 2016 als „Distraktoren > Schreibübungen" | 0 (worked-examples + subgoal-labeling formulieren korrekt: Subgoal-Labels-Befund) | clean |
| 6 | Svabensky 2021 als CTF-Wirkungsbeleg | 0 (nur immersive-simulationen, gefixt) | clean |
| 7 | CAST UDL v2.2 ohne v3.0-Disclosure | 2 (lernsituationen gefixt; differenzierung-inklusion) | **1** |
| 8 | Ruiz de Miras 2022 Titel-Drift | 2 (flipped-classroom gefixt; peer-instruction) | **1** |
| 9 | Bergmann/Sams ISTE/ASCD-Notation | 0 (idiosynkratisch, nur flipped-classroom) | clean |
| 10 | KMK FIAE 2020 Datierungs-Drift | 0 weitere (nur lernsituationen-gestalten, gefixt) | clean |

## Spillover-Detail (5)

### Spillover 1: ki-tool-auswahl-berufsschule.md — Replit „2024 eingestellt"

**Datei:** `wiki/ki-tool-auswahl-berufsschule.md` Z. 36
**Vorher:** *„Replit Teams for Education wurde 2024 eingestellt"*
**Nachher:** *„Replit Teams for Education wurde am 1. August 2024 eingestellt"*
**Severity:** MINOR (gleiche Pattern-#16-Datierungs-Drift wie browser-ide-gestuetzte-tutorials „Ende 2024", milder formuliert)

### Spillover 2: ki-tool-auswahl-berufsschule.md — GitHub Codespaces „Public Preview"

**Datei:** `wiki/ki-tool-auswahl-berufsschule.md` Z. 106
**Vorher:** *„Für Lehrkraft-Nutzung separate Regelung (Education-Kontingent, Public Preview)."*
**Nachher:** *„Für Lehrkraft-Nutzung sind GitHub-Education-Kontingente (Global Campus + Classroom-Org-Quoten) seit Jahren produktiv."*
**Severity:** MAJOR (Pattern #16 — gleicher überholter „Preview"-Status wie browser-ide-Tabellenzelle)

### Spillover 3: spaced-repetition-algorithmen.md — Ye 2022 FSRS Cite-Form

**Datei:** `wiki/spaced-repetition-algorithmen.md` Z. 170
**Vorher:** *„Ye, J. (2022). Free Spaced Repetition Scheduler (FSRS). https://github.com/open-spaced-repetition/fsrs4anki"*
**Nachher:** *„Ye, J., Su, J. & Cao, Y. (2022). A Stochastic Shortest Path Algorithm for Optimizing Spaced Repetition Scheduling. KDD '22, 4381-4390. https://doi.org/10.1145/3534678.3539081" + separater Open-Source-Repo-Eintrag.*
**Severity:** MAJOR (Pattern #2c — gleicher Hybrid-Cite-Stil wie spaced-repetition-scheduler-bauen, Co-Autoren Su+Cao fehlten)

### Spillover 4: differenzierung-inklusion.md — CAST UDL v2.2

**Datei:** `wiki/differenzierung-inklusion.md` Z. 180
**Vorher:** *„CAST (2018). Universal Design for Learning Guidelines version 2.2."*
**Nachher:** *„CAST (2018, aktualisiert 2024 auf v3.0). Universal Design for Learning Guidelines (im Wiki referenziert in Version 2.2; aktuelle Version 3.0 seit 2024)."*
**Severity:** MINOR (Pattern #16 Versions-Drift bei lebender Web-Resource — gleicher Befund wie lernsituationen-gestalten)

### Spillover 5: peer-instruction.md — Ruiz de Miras 2022 Titel

**Datei:** `wiki/peer-instruction.md` Z. 130
**Vorher:** *„Ruiz de Miras ... (2022). On the use of Flipped Classroom and Peer Instruction in a Computer Architecture and Engineering course."*
**Nachher:** *„Using flipped classroom and peer instruction methodologies to improve introductory computer programming courses."*
**Severity:** MAJOR (Pattern #2c — Titel-Drift identisch zu flipped-classroom)

## Bilanz

**~10 Patterns, 5 Spillovers (50 % Trefferquote).** Höchste Spillover-Quote der gesamten Sweep-Reihe. Sweep-Trefferquote-Trend:
- Sweep 1 (W4): 6 MAJORs
- Sweep 2 (W5): 6 MAJORs
- Sweep 3 (W6): 0
- Sweep 4 (W7): 0
- Sweep 5 (W8): 1 MAJOR
- Sweep 6 (W9): 1 MINOR
- Sweep 7 (W10): 0
- Sweep 8 (W12): 1 MINOR
- Sweep 9 (W13): 2 MINORs
- Sweep 10 (W14): 0
- **Sweep 11 (W15): 5 Spillovers (2 MAJOR + 3 MINOR)**

**Wichtigste Beobachtung:** Welle-15-Befunde haben strukturelle Wiederkehr-Risiken, die Welle 14 nicht hatte — vor allem **lebende Web-Resources** (Replit, Codespaces, CAST UDL, FSRS-Repo) zirkulieren in mehreren Tool-/Methoden-Artikeln und werden 1:1 kopiert. Plus **prominente Cross-Domain-Cites** (Ruiz de Miras Flipped+Peer-Instruction) tauchen erwartbar in zwei Schwester-Artikeln auf.

## Methodik-Erkenntnis

Drei Welle-15-Pattern-Familien mit hoher Spillover-Wahrscheinlichkeit:
1. **Lebende Web-Resources** mit Versions-/Datums-Drift (Replit-Datum, Codespaces-Status, CAST UDL Version, FSRS-Versionsstand) — strukturell hochrisiko, weil Tool-Tabellen oft kopiert werden
2. **Cross-Domain-Cites** (Methode A + Methode B Combination Studies wie Ruiz de Miras Flipped+Peer-Instruction) — erscheinen in beiden Methoden-Artikeln, gleicher Titel-Drift
3. **Hybrid-Cites mit Co-Autor-Verkürzung** (Ye 2022 FSRS „J. Ye" statt „Ye/Su/Cao") — bei prominenten Open-Source-Projekten besonders verbreitet

**Empfehlung für Welle 16+:** Bei jedem Methoden-/Tool-Artikel-Audit zukünftig **explizit alle lebenden Web-Resources** (URLs, Stand-Datum, Version) als separaten Layer-1-Sub-Check durchführen.

## Korrekturen durchgeführt

- `wiki/ki-tool-auswahl-berufsschule.md` Z. 36: Replit-Datum auf „1. August 2024"
- `wiki/ki-tool-auswahl-berufsschule.md` Z. 106: GitHub Education „Preview" → „seit Jahren produktiv"
- `wiki/spaced-repetition-algorithmen.md` Z. 170: Ye 2022 FSRS auf KDD '22 Ye/Su/Cao + separater Open-Source-Repo-Eintrag
- `wiki/differenzierung-inklusion.md` Z. 180: CAST UDL v2.2 + v3.0-Disclosure
- `wiki/peer-instruction.md` Z. 130: Ruiz de Miras Titel auf Original
