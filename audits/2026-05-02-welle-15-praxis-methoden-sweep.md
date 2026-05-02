# Welle 15 — Dritte (und letzte) Welle Praxis-/Methoden-Sweep (Option B)

**Datum:** 2026-05-02
**Methodik:** v3-Single-Pass mit Welle-13/14-Erkenntnissen. **8 Subagents parallel** (statt der üblichen 5) — alle verbleibenden type:methode/praxis-Artikel im Restpool.
**Zufalls-Seed:** deterministisch (`welle-15-2026-05-02-deterministic-seed`).
**Auditierte Artikel:** browser-ide-gestuetzte-tutorials, flipped-classroom, immersive-simulationen, lernsituationen-gestalten, live-coding-lehrmethode, pair-programming-unterricht, parsons-problems, spaced-repetition-scheduler-bauen.

## Anlass

Letzte Welle Option-B-Sweep — schließt den vollständigen Per-Artikel-Audit der ~18 type:methode/praxis-Artikel im Restpool ab. Damit ist die Praxis-/Methoden-Phase komplett.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz |
|---|---|---|---|---|---|---|
| immersive-simulationen | 3 | 2 | 0 | 0 | 1 | 0.94 |
| pair-programming-unterricht | 3 | 3 | 0 | 0 | 0 | 0.94 |
| flipped-classroom | 5 | 3 | 1 | 1 | 0 | 0.93 |
| browser-ide-gestuetzte-tutorials | 9 | 5 | 2 | 2 | 0 | 0.91 |
| lernsituationen-gestalten | 6 | 3 | 3 | 0 | 0 | 0.91 |
| spaced-repetition-scheduler-bauen | 3 | 1 | 1 | 1 | 0 | 0.91 |
| parsons-problems | 5 | 2 | 1 | 2 | 0 | 0.93 |
| live-coding-lehrmethode | 6 | 4 | 2 | 0 | 0 | 0.93 |
| **Σ** | **40** | **23** | **10** | **6** | **1** | **0.93** |

**1 CRIT + 6 MAJOR + 10 MINOR in 40 Cites = 17,5 % CRIT+MAJOR-Dichte, 42,5 % Gesamt-Befund-Dichte.**

| Welle | Cites | CRIT | MAJOR | Befund-Dichte (CRIT+MAJOR) |
|---|---|---|---|---|
| 11 | 33 | 0 | 7 | 21 % |
| 12 | 19 | 1 | 2 | 16 % |
| 13 | 37 | 0 | 5 | 13.5 % |
| 14 | 28 | 1 | 5 | 21,4 % |
| **15** | **40** | **1** | **6** | **17,5 %** |

**Welle 15 liegt zwischen Welle 13 und 14.** Pattern-Heterogen — kein einzelner Cluster dominiert wie bei Welle 14 (datenschutz-Verwaltungs-Cluster). Stattdessen: gemischte Hot-Spots verteilt über alle 8 Artikel.

## Pattern-Verteilung Welle 15

| Pattern | Treffer Welle 15 | Beispiele |
|---|---|---|
| #7+#17 Hot-Spot-Inversion / Genre-Überschreibung | 2 (CRIT/MAJOR) | Svabensky 2021 als CTF-Wirkungsbeleg (CRIT); Morrison 2016 als „Parsons mit Distraktoren überlegen" (MAJOR) |
| #19/#2c Sub-Pattern Untertitel-Drift bei sonst sauberer Bibliografie | 3 | Ericson 2022 „Future Directions" → real „Empirical Study Designs"; Ruiz de Miras 2022 Titel-Paraphrase mit verschobener Kursdomäne; Ye 2022 fabrizierter Titel „Memory Model" |
| #16 Datierungs-/Versions-Drift bei lebenden Web-Resources | 3 | Replit „Ende 2024" → real **August 2024**; GitHub Codespaces „Education-Kontingent Preview" 2026 überholt; CAST UDL v2.2 (2018) → aktuell v3.0 (2024) |
| #16 Datierungs-Drift bei Verwaltungs-Cite | 1 | KMK FIAE Rahmenlehrplan 2020 → Beschluss 13.12.2019 |
| Detail-Drifts (kosmetisch) | 4 MINOR | Bergmann/Sams ISTE/ASCD-Notation; ISB Bayern Titel-Paraphrase; Anki Leech „in Folge" vs. kumulativ; Nederbragt „18pt"/„Ampel" über Paper hinaus |

## Wichtige systematische Erkenntnisse

### 1. Pop-Wissenschafts-Folklore-Subpattern reproduziert in CTF-Domäne (CRIT)

**Welle-13/14-Erkenntnis bestätigt:** peer-reviewter Cite + erfundene Wirkungs-Behauptung als wiederkehrender CRIT-Subpattern. Welle-15-Beispiel:
- Svabensky 2021 Computers & Security ist eine **Content-Analyse** von 15.963 CTF-Solutions, gemappt auf ACM/IEEE-Curriculum-Guidelines. **Keine Vergleichsgruppe, keine Effektgrößen, keine Transfer-Tests.** Wiki Z. 46 behauptet: *„Svabensky et al. (2021) zeigten signifikant bessere praktische Skills und Transfer auf neue Probleme gegenüber traditioneller Instruktion."*
- Vorgängerbefunde derselben Subpattern-Familie:
  - Welle 13: Mark CHI 2008 „23 Minuten 15 Sekunden"-Folklore-Zahl steht nicht im Paper.
  - Welle 14: Lytle 2019 Inhalts-Reframing („drei Bedingungen, Verständnis/Frustration" — real 2 Bedingungen, perceived difficulty/ownership).

**Diagnose:** Wenn ein Wiki-Artikel einer methodischen Empfehlung mit einer „signifikant bessere X"-Behauptung Substanz verleihen will, scheint die Versuchung am höchsten, eine Quelle zuzuziehen, die das Topic nur tangiert. Subpattern Pop-Wissenschafts-Folklore ist jetzt **3× repo-systematisch dokumentiert**.

### 2. Conference-Cite-Hot-Spot bestätigt sich erneut

3 von 6 Welle-15-MAJORs sind Conference-/Venue-Drifts (Pattern #2c bzw. #19):
- Ericson 2022 ITiCSE-WGR Untertitel-Drift (DOI/Pages stimmen, Titel falsch)
- Ruiz de Miras 2022 CAEE Titel-Paraphrase
- Ye 2022 FSRS-Cite mit fabriziertem Titel + GitHub-Repo statt KDD-Paper

Plus Welle 13 (Sentance/Waite/Kallia, Michaeli/Romeike, Liew/Treagust, Bjork-Erstautor, Jamieson, Mark) und Welle 14 (López-Pernas, Franklin, Lytle): in den Wellen 13-15 sind insgesamt **~12 Conference-/Venue-Drifts** repo-systematisch.

### 3. Lebende Web-Resources sind systematisch dirty (Welle 14 + 15)

- Welle 14: FSRS-3-Formel (real FSRS-5/6 Anki-Stable seit 2024)
- Welle 15: Replit „Ende 2024" → August 2024; GitHub Codespaces „Preview" → produktiv; CAST UDL v2.2 → v3.0 (2024)

**Empfehlung:** Bei Methoden-/Tool-Artikeln mit lebenden Web-Resources Versions-/Datums-Disclosure als Standard etablieren („Stand: Mai 2026, neueste Version: ...").

### 4. Verwaltungs-Cluster ist NICHT durchweg dirty — lernsituationen-gestalten clean

Welle-14-Befund (datenschutz-lernumgebungen mit 3 fabrizierten Verwaltungs-Cites) hat sich in Welle 15 **nicht reproduziert**. lernsituationen-gestalten hat 0 CRIT + 0 MAJOR + 3 MINOR — alle real, nur Datierungs- und Titel-Drifts. Verwaltungs-Cluster-Hot-Spot ist artikel-spezifisch, nicht repo-strukturell.

### 5. 8 parallele Subagents skalieren

Erste Welle mit 8 statt 5 parallelen Subagents. Token-Aufwand ~480k (1.6× Welle-Standard), aber sinnvoll für Restpool-Abschluss. Keine Subagent-Kollisionen oder Qualitätseinbußen — Welle-15-Subagents-Confidence-Mean 0,93 (auf Welle-13/14-Niveau).

## Detail-Findings

### CRIT 1: immersive-simulationen — Svabensky 2021 Hot-Spot-Inversion

**Wiki Z. 46:** *„Svabensky et al. (2021) zeigten signifikant bessere praktische Skills und Transfer auf neue Probleme gegenüber traditioneller Instruktion."*
**Real (Volltext arXiv:2101.01421 + DOI 10.1016/j.cose.2020.102154):** Content-Analyse von 15.963 CTF-Solutions seit 2012, gemappt auf ACM/IEEE-Curriculum-Guidelines. Keine Vergleichsgruppe, keine Effektgrößen. Schlussfolgerung sogar kritisch — CTFs vernachlässigen menschliche Aspekte.
**Severity:** CRITICAL (Pattern #7 + #17)
**Korrektur:** Body-Aussage entweder streichen oder umformulieren auf „Svabensky et al. (2021) mappen 15.963 CTF-Solutions gegen ACM/IEEE-Curriculum-Guidelines — Beleg für inhaltliche Abdeckung, nicht für Wirkungsmessung."

### MAJOR 1: parsons-problems — Ericson 2022 Untertitel-Drift „Future Directions"

**Wiki:** *„Ericson, B. J. ... (2022). Parsons Problems and Beyond: Systematic Literature Review and **Future Directions**. ITiCSE-WGR '22, 191-234."*
**Real:** *„Parsons Problems and Beyond: Systematic Literature Review and **Empirical Study Designs**"* (Welle-14-Verifikation reproduziert).
**Severity:** MAJOR (Pattern #19/#2c — DOI/Pages/Autoren stimmen, nur Titel falsch)
**Korrektur:** Untertitel auf „Empirical Study Designs" korrigieren.

### MAJOR 2: parsons-problems — Morrison 2016 Inhalts-Misattribution

**Wiki:** *„Parsons mit Distraktoren sind Schreibübungen überlegen, wenn der Lerneffekt auf strukturelles Verständnis abzielt."* (Morrison 2016 zugeschrieben)
**Real:** Studie testete **Subgoal-Labels** (gegeben/generiert/keine), nicht Distraktoren-vs-Schreiben. Hauptbefund: Subgoal-Labels-Gruppe besser; Parsons-Probleme als **Assessment** sensitiver als Code-Schreiben.
**Severity:** MAJOR (Pattern #17/#6)
**Korrektur:** Body-Aussage umformulieren auf Subgoal-Labels-Befund + Assessment-Sensitivität.

### MAJOR 3: flipped-classroom — Ruiz de Miras 2022 Titel-Drift

**Wiki:** *„On the use of Flipped Classroom and Peer Instruction in a Computer Architecture and Engineering course."*
**Real (DOI 10.1002/cae.22447):** *„Using flipped classroom and peer instruction methodologies to improve **introductory computer programming courses**"* — andere Kursdomäne.
**Severity:** MAJOR (Pattern #2c — DOI/Pages/Autoren stimmen, Titel + Topic-Domäne paraphrasiert)
**Korrektur:** Titel auf Original umstellen.

### MAJOR 4: browser-ide-gestuetzte-tutorials — Replit-Datum „Ende 2024" vs. August 2024

**Wiki Z. 37:** *„siehe Replit Teams for Education, **Ende 2024** eingestellt"*
**Real:** Shutdown 1. August 2024 (Mitte 2024). Wiki widerspricht der eigenen DataWars-Quelle, die explizit „August 1st, 2024" nennt.
**Severity:** MAJOR (Pattern #16 — ~5 Monate Datierungs-Drift)
**Korrektur:** „**August 2024** eingestellt" oder „Mitte 2024".

### MAJOR 5: browser-ide-gestuetzte-tutorials — GitHub Codespaces „Preview" überholt

**Wiki Tabellenzelle:** *„Education-Kontingent für Lehrkräfte noch Preview"*
**Real:** GitHub Education für Lehrkräfte ist seit Jahren produktiv (Global Campus, Classroom mit Codespaces-Org-Quoten). 2026 überholte Aussage.
**Severity:** MAJOR (Pattern #16)
**Korrektur:** Body-Aussage auf produktiven Status updaten.

### MAJOR 6: spaced-repetition-scheduler-bauen — Ye 2022 FSRS Hybrid-Cite

**Wiki:** *„Ye, J. (2022). Free Spaced Repetition Scheduler (FSRS): A Memory Model for Spaced Repetition Algorithms. https://github.com/open-spaced-repetition/fsrs4anki"*
**Real:** Reale Ye-2022-Publikation: *Ye, Su & Cao (2022). „A Stochastic Shortest Path Algorithm for Optimizing Spaced Repetition Scheduling"*. **KDD '22**, 4381-4390 (DOI 10.1145/3534678.3539081). Co-Autoren Su + Cao **fehlen**. Wiki-Titel „Memory Model" gehört weder zum Paper noch zum Repo.
**Severity:** MAJOR (Pattern #2c)
**Korrektur:** Cite umstellen auf Ye/Su/Cao 2022 KDD-Paper. GitHub-Repo separat als Implementation-Quelle ausweisen.

## MINOR-Backlog (10)

| Datei | Befund | Pattern |
|---|---|---|
| flipped-classroom | Bergmann & Sams 2012 ISTE/ASCD-Notation kosmetisch ungewöhnlich (Co-Publishing real) | #16 mild |
| browser-ide | GitHub Pack-Page 180h-Zuordnung leicht überdehnt (Pro-Standard) | #16 mild |
| browser-ide | Exercism „8.100+ Aufgaben" nicht direkt verifizierbar | #16 mild |
| lernsituationen-gestalten | KMK FIAE Rahmenlehrplan: Wiki 2020, Beschluss 13.12.2019 | #16 |
| lernsituationen-gestalten | ISB Bayern Titel-Paraphrase „Handreichung technische IT" → real „Umsetzungshilfe für Lehrkräfte technischer IT-Ausbildungsberufe" | #16 |
| lernsituationen-gestalten | CAST UDL v2.2 (2018) → aktuell v3.0 (2024) — Versions-Disclosure fehlt | #16 |
| spaced-repetition-scheduler-bauen | Settles/Meeder „Time-of-Day als HLR-Feature" — nicht im Paper, Verallgemeinerung | #17 mild |
| spaced-repetition-scheduler-bauen | Anki Leech-Threshold „≥ 8 Lapses **in Folge**" — real kumulativ | Implementation-Detail |
| live-coding-lehrmethode | Nederbragt 2020: „permission to make their own" Direktzitat-Paraphrase + „18pt"-Spezifizierung + „Ampel"-Misframing (Sticky-Notes für Status, nicht Tempo) | #17 mild |
| live-coding-lehrmethode | Su & Wang 2025: Wiki-Titel matcht CHI EA '25, arXiv-ID matcht erweiterte Juni-2025-Version „Stress of Improvisation" | #2c kosmetisch |
| parsons-problems | Ericson 2022 „47 Studien" Inklusionszahl nicht direkt aus Volltext belegt | #16 mild |

Plus Body-Inline ohne Quellenliste (immersive-simulationen): „Berkeley EECS (2025) baut LLM-gestützte Szenarien" — Pattern #4-A.

## Cross-Repo-Verdacht (Welle 15)

**Hohe Spillover-Wahrscheinlichkeit:**

| Pattern | Grep | Risiko |
|---|---|---|
| Replit „Ende 2024" Datierungs-Drift | `grep -ri 'Replit.*2024\|Teams for Education.*2024\|Replit.*eingestellt' wiki/` | hoch (möglicherweise in ki-tool-auswahl-berufsschule, datenschutz-lernumgebungen) |
| Ericson 2022 „Future Directions" Untertitel | `grep -ri 'Ericson.*Future Directions\|Future Directions.*Parsons' wiki/` | mittel (worked-examples, scaffolding) |
| Ye 2022 FSRS Hybrid-Cite (auch in spaced-repetition-algorithmen) | `grep -ri 'Ye.*2022.*FSRS\|Free Spaced Repetition Scheduler' wiki/` | hoch (Schwester-Artikel garantiert betroffen) |
| Morrison 2016 als „Parsons mit Distraktoren > Schreibübungen" | `grep -ri 'Morrison.*2016\|Subgoals Help' wiki/` | mittel (worked-examples, subgoal-labeling) |
| Svabensky 2021 als CTF-Wirkungsbeleg | `grep -ri 'Svabensky\|Capture the Flag.*Skills' wiki/` | niedrig |
| GitHub Codespaces „Preview" für Lehrkräfte | `grep -ri 'Codespaces.*Preview\|Education-Kontingent' wiki/` | niedrig |
| CAST UDL v2.2 ohne v3.0-Disclosure | `grep -ri 'CAST.*2018\|UDL.*2.2' wiki/` | mittel |
| Ruiz de Miras Titel-Drift | `grep -ri 'Ruiz de Miras\|Computer Architecture and Engineering course' wiki/` | niedrig |

## Korrektur-Backlog für Welle-15-Bulk-Fix

**Cluster CRIT (eigener Commit):**
1. immersive-simulationen.md — Svabensky 2021 Body-Aussage komplett umformulieren

**Cluster MAJOR:**
2. parsons-problems.md — Ericson 2022 Untertitel + Morrison 2016 Body-Aussage
3. flipped-classroom.md — Ruiz de Miras 2022 Titel
4. browser-ide-gestuetzte-tutorials.md — Replit-Datum + GitHub Codespaces Preview-Status
5. spaced-repetition-scheduler-bauen.md — Ye 2022 Cite auf KDD-Paper umstellen

**Cluster MINOR:**
6. lernsituationen-gestalten.md — KMK 2019/2020 + ISB Titel + CAST UDL v3.0-Disclosure
7. browser-ide-gestuetzte-tutorials.md — Pack 180h + Exercism Aufgabenzahl
8. flipped-classroom.md — ISTE/ASCD-Notation
9. spaced-repetition-scheduler-bauen.md — Settles Time-of-Day + Anki Lapses
10. live-coding-lehrmethode.md — Nederbragt 18pt/Ampel + Su/Wang Cite-Form
11. parsons-problems.md — Ericson „47 Studien"

## Verbleibender Pool nach Welle 15

**0 verbleibende type:methode/praxis-Artikel.** Praxis-/Methoden-Sweep komplett abgeschlossen.

Verbleibend: 20 type:theorie-Artikel im Restpool. **Theorie-Disposition** als nächster Schritt — entweder gezielter Theorie-Sweep (Wellen 16+17 mit ~10 Artikeln pro Welle, da Theorie-Cite-Listen typischerweise schlanker sind) oder Pauschal-Disposition basierend auf Welle-11+12-Erkenntnis (kanonische Theorie ist sauber).

## Stand nach Welle 15

- **82 Artikel auditiert** (Welle 1-14 + 8 Welle-15) — **80 % von 102 Wiki-Artikeln explizit auditiert**
- Praxis-/Methoden-Sweep komplett abgeschlossen
- 20 Theorie-Artikel offen für Disposition
