# Cross-Repo-Sweep 5 — nach Welle 8

**Datum:** 2026-05-02
**Trigger:** Welle-8-Konsolidierung mit 4 CRIT + 5 MAJOR (siehe `2026-05-02-welle-8-konsolidierung.md`).
**Ziel:** Welle-8-Pattern repo-weit prüfen — sind die Hybrid-Citations und Body-vs-Aussage-Drifts in andere Wiki-Artikel eingesickert?

## Geprüfte Pattern

| # | Pattern | Grep | Treffer außerhalb Welle 8 |
|---|---|---|---|
| 1 | Li/Margulieux/Decker 2025 SIGCSE Hybrid (real Marwan/Ibrahim/Morrison) | `Li.*Margulieux\|3641555\.3705195\|Marwan` | 0 |
| 2 | Gonzalez-Barahona arXiv:2407.10322 Hybrid (real de Oliveira Neto/Dobslaw) | `Gonzalez-Barahona\|2407\.10322\|de Oliveira Neto\|Building Collaborative Learning` | 0 |
| 3 | Zhu et al. ETR&D 2024 (real Information and Learning Sciences 2020, n=39) | `Zhu.*Avadhanam\|Reading and connecting\|10\.1108/ILS-04-2020\|66 Studien.*social annotation` | 0 |
| 4 | Zhang/Tjärnhage ECCE 2023 Scrollytelling-Hybrid | `Zhang.*Scrollytelling\|3605655\.3605683\|ECCE.*2023\|Tjärnhage` | 0 |
| 5 | Conlen/Heer Idyll Phantom-Co-Autor | `Conlen.*Conlen\|Conlen, J\.` | 0 |
| 6 | Dunlosky 2013 Summarizing-Klassifikations-Aufwertung | `Dunlosky.*moderate\|Summarizing.*moderate\|Summarization.*moderate` | 1 (False-Positive in `desirable-difficulties.md`: dort wird *Interleaving* als „moderate" klassifiziert, was tatsächlich Dunloskys Klassifikation entspricht — sauber) |
| 7 | Fiorella/Mayer 2013 Teaching-Expectancy +16% Retention | `Teaching-Expectancy\|Fiorella.*Mayer.*2013\|\+16.*Retention` | 0 |
| 8 | Leopold/Mayer 2015 First-Person-Befund (real 2019) | `Leopold.*Mayer.*2015\|Leopold.*Mayer.*First-Person` | 0 |
| 9 | **Margulieux 2020 IJSE „d=0,44 course-wide composite"** | `Margulieux.*0,44\|Margulieux.*0\.44` | **1 — `meta-analysen-cs-education.md` Z. 50** |
| 10 | Simon & Cutts 2012 „verdoppelt Trace-Aufgaben" | `Simon.*Cutts.*verdoppel\|Simon.*Cutts.*2012` | 0 |
| 11 | Oppici 2023 L2-Vokabel-Domäne auf prozedural generalisiert | `Oppici.*2023` | 0 |
| 12 | Burch 2019 Meta-Analyse Body-Cite ohne Quellenliste | `Burch.*2019\|Burch.*0,5 SD` | 0 |
| 13 | Baron-Cohen AQ-Validierung als Beleg für Berufsdemografie | `Baron-Cohen\|Empathizing-Systemizing` | 0 |
| 14 | Hundhausen 2013 Kalibrierungs-Wert | `Hundhausen.*2013` | 0 |

## Befund: 1 Cross-Repo-Treffer

`meta-analysen-cs-education.md` Z. 50 enthielt:

> **Margulieux et al. (2020)** | Worked Examples + Subgoals | Mehrere | **d=0,44** | Mittel (meist Lab-Studien)

— die gleiche course-wide-d-Aussage, die in Welle 8 in subgoal-labeling.md als MAJOR markiert wurde (Wert ist im Paper-Abstract nicht reproduzierbar; Paper berichtet differenzierte Quiz/Exam-/Failure-/Varianz-Effekte). **Korrigiert** in diesem Sweep auf:

> **Margulieux et al. (2020)** | Worked Examples + Subgoals | CS1-Semesterkurs | Geringere Durchfall-/Dropout-Quoten, reduzierte Varianz; differenzierte Effekte je Quiz/Exam | Mittel (Quasi-Experiment)

## Bilanz

- **14 Pattern** geprüft
- **1 echter Cross-Repo-Treffer** (meta-analysen-cs-education.md, Margulieux d=0,44)
- **1 False-Positive** (desirable-difficulties.md mit „Interleaving moderate" — entspricht tatsächlicher Dunlosky-Klassifikation)
- 12 Pattern als Welle-8-isoliert bestätigt — die Hybrid-Citations und drei-Felder-Drifts sind Einzelfall-Bugs, nicht Vorlagen-Pattern.

## Vergleich zu Vorgänger-Sweeps

| Sweep | Trigger | Ausbeute | Strukturwechsel |
|---|---|---|---|
| 1 | nach Welle 4 | 6 MAJOR | Vorlagen-Pattern |
| 2 | nach Welle 5 | 6 MAJOR | Vorlagen-Pattern |
| 3 | nach Welle 6 | 0 | Strukturwechsel zu Einzelfall-Bugs |
| 4 | nach Welle 7 | 0 | Einzelfall-Pattern stabil |
| **5** | **nach Welle 8** | **1 MAJOR** | **fast identisch zu W6/W7, einzelner Effektstärken-Drift mitgewandert** |

Der Margulieux-d=0,44-Treffer in meta-analysen-cs-education ist plausibel als gemeinsamer Effektstärken-Tabellen-Eintrag entstanden (gleicher Wert in zwei Artikeln zur gleichen Studie). Bestätigt erneut: Effektstärken-Tabellen sind ein Vorlagen-Pattern (#10), Hybrid-Citations sind Einzelfall-Bugs.

## Empfehlung

- Methodik-Update minor: Bei jedem MAJOR/CRIT-Fix mit konkretem Effektstärken-Wert (d=, g=) **automatisch repo-weit grep'en**, nicht nur als Cross-Repo-Verdacht in der Konsolidierung dokumentieren. Diese Welle hätte das den meta-analysen-cs-education-Treffer früher gefangen — der Wert tauchte vermutlich seit Anlage des Artikels dort auf.
