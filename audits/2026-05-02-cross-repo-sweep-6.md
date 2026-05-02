# Cross-Repo-Sweep 6 — nach Welle 9

**Datum:** 2026-05-02
**Trigger:** Welle-9-Konsolidierung mit 2 CRIT (icap-framework Thurn/Schalk + Wu/Schunn) + 2 MAJOR (scaffolding Concreteness-d-Range + multimedia Signaling 0,69) + 8 MINOR.
**Ziel:** Welle-9-Pattern repo-weit prüfen — sind die Hybrid-Citations und Effektstärken-Drifts in andere Wiki-Artikel eingesickert?

## Geprüfte Pattern

| # | Pattern | Grep | Treffer außerhalb Welle 9 |
|---|---|---|---|
| 1 | Thurn et al. 2023 Schumacher→Schalk Co-Autor-Drift | `Thurn\|Schumacher.*ICAP\|s41539-023-00197-4\|Article 55` | 0 |
| 2 | Wu & Schunn 2023 Hybrid (DOI stimmt, Titel/Topic falsch) | `Wu.*Schunn\|102160\|extended ICAP-based coding` | 0 |
| 3 | Mayer Signaling d ≈ 0,69 (real 0,41) | `Signaling.*0,69\|0,69.*Signaling\|Signalisierung.*0,69` | 0 |
| 4 | Concreteness-Fading-Pattern Goldstone/Fyfe + d≈0,4-0,7 | `Goldstone.*Son\|Concreteness Fading\|Concreteness fading` | 1 (False-Positive: `formatives-assessment.md` enthält d=0,4-0,7 für Black & Wiliam 1998 — andere Quelle, eigener Befund — sauber) |
| 5 | Wiggins/Eddy/Grunspan/Crowe 2017 AERA Open ICAP | `Wiggins.*Eddy\|Wiggins.*ICAP\|2332858417708567` | 0 |
| 6 | Cambridge Handbook 3rd ed. Co-Editor-Drift | `Cambridge Handbook of Multimedia Learning.*2021\|Cambridge Handbook.*3rd ed` | 0 |
| 7 | Renkl/Atkinson/Maier/Staley 2002 J. Exp. Education | `Renkl.*Atkinson.*Maier\|Maier.*Staley\|220970209599510` | 0 |
| 8 | Atkinson 2000 Titel verkürzt | `Atkinson.*Derry.*Renkl\|Learning from Examples: Instructional Principles` | 0 |
| 9 | Mayer & Jackson 2005 / Rey 2012 als Inline-Cite ohne Quellenliste | `Mayer.*Jackson\|seductive detail\|Rey.*2012` | 0 |
| 10 | **Zingaro & Porter 2014 „Higher-Order-Fragen"-Paraphrase** | `Zingaro\|Higher-Order-Fragen` | **1 — `meta-analysen-cs-education.md` Z. 59** |

## Befund: 1 Cross-Repo-Treffer

`meta-analysen-cs-education.md` Z. 59 enthielt die gleiche Paraphrase:

> Zingaro & Porter (2014) zeigten: PI wirkt besonders bei Higher-Order-Fragen, nicht nur Faktenabfrage.

— die in Welle 9 in peer-instruction.md als MINOR markiert wurde (Zingaro/Porter klassifizieren nicht nach Bloom; Hauptbefund ist Wert der Instruktor-Intervention nach Peer-Diskussion). **Korrigiert** in diesem Sweep auf:

> Zingaro & Porter (2014) zeigten: PI bringt bei anspruchsvolleren ConcepTests die größten Lerngewinne — und Instruktor-Intervention nach der Peer-Diskussion (raw gain 22 % vs. 14 % ohne) hat zusätzliche Wirkung.

## Bilanz

- **10 Pattern** geprüft
- **1 echter Cross-Repo-Treffer** (meta-analysen-cs-education.md Zingaro-Paraphrase)
- **1 False-Positive** (formatives-assessment.md d=0,4-0,7 ist Black/Wiliam 1998-Befund — sauber, andere Quelle)
- 8 Pattern als Welle-9-isoliert bestätigt — Hybrid-Citations und Effektstärken-Drifts sind Einzelfall-Bugs.

## Vergleich zu Vorgänger-Sweeps

| Sweep | Trigger | Ausbeute | Strukturwechsel |
|---|---|---|---|
| 1 | nach Welle 4 | 6 MAJOR | Vorlagen-Pattern |
| 2 | nach Welle 5 | 6 MAJOR | Vorlagen-Pattern |
| 3 | nach Welle 6 | 0 | Strukturwechsel zu Einzelfall-Bugs |
| 4 | nach Welle 7 | 0 | Einzelfall-Pattern stabil |
| 5 | nach Welle 8 | 1 MAJOR (Margulieux d=0,44 in meta-analysen-cs-education) | Effektstärken-Tabellen sind Vorlagen-Pattern, Hybrid-Citations Einzelfall |
| **6** | **nach Welle 9** | **1 MINOR (Zingaro-Paraphrase in meta-analysen-cs-education)** | **gleicher Trend: meta-analysen-cs-education ist der einzige repeat-offender** |

`meta-analysen-cs-education.md` ist nun der **zweite Sweep in Folge**, bei dem ein Welle-Befund cross-repo-Resonanz zeigt (Sweep 5: Margulieux d=0,44; Sweep 6: Zingaro Higher-Order). Plausibel, weil dieser Artikel als Aggregat-Übersicht andere Methoden-Artikel inhaltlich spiegelt — Befunde aus Methoden-Artikeln propagieren naturgemäß dorthin.

## Empfehlung

- **meta-analysen-cs-education.md proaktiv mitziehen**: Bei jedem MAJOR/MINOR-Fix in einem Methoden-Artikel (worked-examples, peer-instruction, scaffolding, …) zusätzlich grep'en, ob die Aussage in meta-analysen-cs-education in ähnlicher Form auftaucht. Beispiel-Workflow: nach jedem Welle-Fix `grep -ri 'Erstautor JJJJ' wiki/meta-analysen-cs-education.md`.
- **Methodik-Vorschlag (Welle 8 wiederholt):** Bei jedem MAJOR/CRIT-Fix mit konkretem Effektstärken-Wert oder konkreter Aussage automatisch repo-weit grep'en, nicht nur als Cross-Repo-Verdacht in der Konsolidierung dokumentieren.
