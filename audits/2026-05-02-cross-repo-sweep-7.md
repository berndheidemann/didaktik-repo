# Cross-Repo-Sweep 7 — nach Welle 11

**Datum:** 2026-05-02
**Trigger:** Welle-11-Stichproben-Konsolidierung mit 0 CRIT + 7 MAJOR + 6 MINOR.
**Ziel:** Welle-11-Pattern (5 verschiedene Bibliografie-Drifts + 2 Genre-/Wert-Drifts + diverse MINORs) repo-weit prüfen.

## Geprüfte Pattern

| # | Pattern | Treffer außerhalb Welle 11 |
|---|---|---|
| 1 | Tulis 2013 Venue-Drift (Learning and Instruction 27 statt Teaching and Teacher Education 33) | 0 |
| 2 | Edmondson 1999 mit Krankenhaus-/Medikations-Pointe statt Edmondson 1996 | 0 |
| 3 | Baird 2014 als „2017" + „OUCEA" statt Norwegian Knowledge Centre | 0 |
| 4 | Nickolaus & Seeber 2013 Genre-Überschreibung | 0 |
| 5 | Karnalim & Ayub Bibliografie 2018/12(1)/33-44 statt 2017/11(2)/67-76 | 0 (nur Welle-11-File) |
| 6 | Guo 2021 „25+ Millionen Nutzer" statt „10 Millionen" | 0 |
| 7 | Fincher 2020 Pages „57-70" statt 21-50 | 0 |
| 8 | Chi „Matter, Process, Mental" statt „Entities, Processes, Mental States" | 0 |
| 9 | Lister 2004 „Dreistufen-Modell" Misattribution | 0 |
| 10 | „Favorite Mistake" → real „My Favorite No" / Alcala | 0 |

## Bilanz

- **10 Pattern** geprüft
- **0 echte Cross-Repo-Treffer**
- Alle Welle-11-Befunde sind **idiosynkratische Einzelfall-Bugs** in den jeweiligen Welle-11-Artikeln

## Vergleich zu Vorgänger-Sweeps

| Sweep | Trigger | Ausbeute | Strukturwechsel |
|---|---|---|---|
| 1 | nach Welle 4 | 6 MAJOR | Vorlagen-Pattern |
| 2 | nach Welle 5 | 6 MAJOR | Vorlagen-Pattern |
| 3 | nach Welle 6 | 0 | Strukturwechsel zu Einzelfall-Bugs |
| 4 | nach Welle 7 | 0 | Einzelfall-Pattern stabil |
| 5 | nach Welle 8 | 1 MAJOR | meta-analysen-cs-education repeat-offender (Margulieux) |
| 6 | nach Welle 9 | 1 MINOR | meta-analysen-cs-education repeat-offender (Zingaro) |
| 7 | nach Welle 11 | **0** | **alle Befunde idiosynkratisch** |

**Interessant:** `meta-analysen-cs-education.md` war in Sweeps 5+6 Repeat-Offender, aber in Sweep 7 nicht — möglicherweise weil die Welle-11-Pattern (Bibliografie-Drift bei älteren Cites: Tulis 2013, Edmondson 1999, Baird 2014, Karnalim 2017, Fincher 2020) nicht zu den in `meta-analysen-cs-education` aggregierten Methoden-Cites gehören. Das stützt die Welle-11-Hypothese: Bibliografie-Drift entsteht v.a. bei älteren/etablierten Cites, die sekundär kopiert wurden, nicht bei zentralen Methoden-Cites.

## Methodik-Erkenntnis

**Welle-11-Befunde sind ausschließlich isoliert** — kein Vorlagen-Pattern. Konsistent mit Welle 6/7-Trend (Sweep 3+4 fanden auch je 0 Befunde). Bestätigt: Hybrid-Citations und Bibliografie-Drifts in niedrig-Score-Pool sind **idiosynkratische Artikel-spezifische Bugs**, nicht aus Vorlagen entstanden. Cross-Repo-Sweeps bleiben sinnvoll, aber die Wahrscheinlichkeit von Spillover-Befunden ist niedrig.
