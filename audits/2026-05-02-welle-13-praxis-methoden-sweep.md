# Welle 13 — Erste Welle Praxis-/Methoden-Sweep (Option B)

**Datum:** 2026-05-02
**Methodik:** v3-Single-Pass mit Welle-12-Erkenntnis (Hybrid-Risk im Restpool weiterhin präsent). 5 zufällige Subagents parallel auf Stichprobe aus dem Praxis-/Methoden-Pool (18 Artikel mit type:methode oder type:praxis im Restpool nach Welle 12).
**Zufalls-Seed:** deterministisch (`welle-13-2026-05-02-deterministic-seed`).
**Auditierte Artikel:** poe-methode, lerner-modell-mastery-tracking, debugging-als-kompetenz, pruefungsvorbereitung-lernstrategie, zeitmanagement-selbstorganisation.

## Anlass

Strategischer Plan nach Welle 12 (Option B): Vollständiger Per-Artikel-Sweep der ~18 verbleibenden type:methode/praxis-Artikel im Restpool. Theorie-Artikel als „mit hoher Wahrscheinlichkeit clean" ohne expliziten Audit dokumentieren (separate Theorie-Disposition am Ende der Welle-Reihe).

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| poe-methode | 6 | 5 | 0 | 1 | 0 | 0.93 | 11 (1.83/cite) |
| lerner-modell-mastery-tracking | 8 | 6 | 2 | 0 | 0 | 0.89 | 14 (1.75/cite) |
| debugging-als-kompetenz | 3 | 2 | 0 | 1 | 0 | 0.92 | 7 (2.33/cite) |
| pruefungsvorbereitung-lernstrategie | 9 | 5 | 2 | 2 | 0 | 0.89 | 17 (1.89/cite) |
| zeitmanagement-selbstorganisation | 11 | 8 | 2 | 1 | 0 | 0.91 | 13 (1.18/cite) |
| **Σ** | **37** | **26** | **6** | **5** | **0** | **0.91** | **62 (1.68/cite)** |

**0 CRIT + 5 MAJOR + 6 MINOR in 37 Cites = 13.5 % CRIT+MAJOR-Dichte, 30 % Gesamt-Befund-Dichte.**

| Welle | Score-Range | Cites | CRIT | MAJOR | Befund-Dichte (CRIT+MAJOR) |
|---|---|---|---|---|---|
| 11 | ≤14 (zufällig, 1. Sample) | 33 | 0 | 7 | 21 % |
| 12 | ≤14 (zufällig, 2. Sample) | 19 | 1 | 2 | 16 % |
| **13** | **methode/praxis-Pool (1. Welle)** | **37** | **0** | **5** | **13.5 %** |

**Welle 13 zeigt sinkende CRIT-Dichte gegenüber W12, aber stabile MAJOR-Trefferquote.** Befund-Dichte-Trend von W11 (21%) → W12 (16%) → W13 (13.5%) deutet auf abnehmende Risk-Höhe an, ist aber bei verbleibenden ~13 Praxis-/Methoden-Artikeln noch nicht stop-bar.

## Pattern-Verteilung Welle 13

| Pattern | Treffer Welle 13 | Beispiel |
|---|---|---|
| #2 Hybrid-Citation (echter Titel/Autoren + falsche Bibliografie) | 3 | Michaeli/Romeike 2019, Jamieson 2016, Bjork & Bjork Erstautor |
| #19 Venue-Drift (Conference vs. Journal, Conference-Misattribution) | 2 | Liew/Treagust AERA/AARE; Michaeli/Romeike WiPSCE/EDUCON |
| #17 Genre-Überschreibung / #7 Hot-Spot-Inversion | 1 | Mark CHI 2008 „23:15"-Folklore-Zahl |
| #6 Effektstärken-Generationenfehler (mild) | 1 | Roediger/Karpicke d=0.50-0.80 (real Rowland 2014) |
| #16 Attribution-Drift | 1 | C&A 1995 BKT-Default-Werte (real pyBKT-Konvention) |
| #2a Co-Autor-/Erstautor-Drift bei Doppelnamen | 1 | DeMaria Barry, T. statt Barry, T. |

**Wichtige Beobachtung:** Pattern #2 + #19 + #17 dominieren erneut (5/5 MAJORs), Bibliografie-Drift (Pattern #16/#19 Welle-11-Hauptmuster) tritt bei Welle 13 nur 2× auf (Liew/Treagust und C&A-Defaults). Welle-12-Erkenntnis bestätigt: Hybrid- und Genre-Risk im Restpool weiterhin präsent.

## Wiederkehrende Erkenntnis: WiPSCE-2019-Cite-Magnet

**Drittes WiPSCE-2019-Hybrid im Repo:**
1. **Welle 12 primm-methode:** Sentance/Waite/Kallia 2019 WiPSCE → real SIGCSE 2019 (gefixt in dc59fbe + 82a7698)
2. **Welle 13 debugging-als-kompetenz:** Michaeli/Romeike 2019 WiPSCE → Wiki-Titel gehört zu EDUCON 2019; Wiki-Venue zu anderem Michaeli/Romeike-2019-Paper

Hypothese: WiPSCE 2019 ist als kleinere Conference (DOI-Präfix 10.1145/3361721) leicht zu verwechseln mit zeitgleichen Major-CS-Ed-Conferences (SIGCSE, EDUCON) — die Autoren publizieren häufig parallel mehrere Papers mit ähnlichen Themen 2019. Vorlagen-Risiko für Welle-14+15-Audits: bei jedem Methoden-Artikel mit „WiPSCE 2019"-Cite zwingend gegen ACM-DL-WiPSCE-2019-TOC abgleichen.

## Detail-Findings (MAJORs)

### MAJOR 1: poe-methode — Liew/Treagust 1998 AERA/AARE-Verwechslung

**Wiki:** *„Liew, C. W. & Treagust, D. F. (1998). The Effectiveness of Predict-Observe-Explain Tasks in Diagnosing Students' Understanding of Science. Research in Science Education Conference (AARE)."*
**Real (ERIC ED420715):** Paper presented at the **Annual Meeting of the American Educational Research Association (AERA)**, San Diego, CA, 13-17 April 1998. Originaltitel: *„The Effectiveness of Predict-Observe-Explain Tasks in Diagnosing Students' Understanding of Science and in Identifying Their Levels of Achievement"*.
**Severity:** MAJOR (Pattern #19 Dreifach-Venue-Drift)
**Drift-Layer:**
1. *Research in Science Education* ist Journal, kein Conference
2. **AARE** (Australian Assoc.) ↔ **AERA** (American Assoc.) — Buchstaben-Twist-Verwechslung
3. Originaltitel-Untertitel gekürzt
**Korrektur:** *„Liew, C. W. & Treagust, D. F. (1998, April). The Effectiveness of Predict-Observe-Explain Tasks in Diagnosing Students' Understanding of Science and in Identifying Their Levels of Achievement. Paper presented at the Annual Meeting of the American Educational Research Association (AERA), San Diego, CA. ERIC ED420715."*

### MAJOR 2: debugging-als-kompetenz — Michaeli/Romeike 2019 WiPSCE-Hybrid

**Wiki:** *„Michaeli, T. & Romeike, R. (2019). Current Status and Perspectives of Debugging in the K-12 Classroom. Proceedings of WiPSCE 2019."*
**Real:** Wiki-Titel gehört zu **EDUCON 2019** Paper (DOI 10.1109/EDUCON.2019.8725282, pp. 1030-1038); Wiki-Venue (WiPSCE 2019) gehört zu *anderem* Michaeli/Romeike-2019-Paper *„Improving Debugging Skills in the Classroom – The Effects of Teaching a Systematic Debugging Process"* (DOI 10.1145/3361721.3361724, pp. 1-7).
**Severity:** MAJOR (Pattern #2 Hybrid + #19 Venue-Drift)
**Korrektur-Optionen:**
- (a) Titel auf *„Improving Debugging Skills in the Classroom"* korrigieren bei WiPSCE-Beibehaltung
- (b) Venue auf *„Proceedings of EDUCON 2019, pp. 1030-1038"* korrigieren bei Titel-Beibehaltung
- (c) Beide Paper getrennt aufnehmen
**Empfehlung:** Option (c) — beide Paper sind inhaltlich relevant für den Wiki-Body.

### MAJOR 3: pruefungsvorbereitung — Bjork & Bjork 2011 Erstautor-Drift

**Wiki:** *„Bjork, R. A., & Bjork, E. L. (2011). Making things hard on yourself, but in a good way: Creating desirable difficulties..."*
**Real (Bjork-Lab UCLA + SciRP + ResearchGate konvergent):** Erstautorin ist **Elizabeth L. Bjork** (E.L. zuerst), nicht Robert A. Bjork.
**Severity:** MAJOR (Pattern #2a Erstautor-/Co-Autor-Drift bei realen Namensvettern — gleicher Pattern-Typ wie S.T. ↔ L.M. Brady in Welle 6, Schalk ↔ Schumacher in Welle 6)
**Korrektur:** *„Bjork, E. L., & Bjork, R. A. (2011). Making things hard on yourself, but in a good way: Creating desirable difficulties to enhance learning. In M. A. Gernsbacher, R. W. Pew, L. M. Hough, & J. R. Pomerantz (Eds.), Psychology and the Real World (pp. 56-64). Worth Publishers."*

### MAJOR 4: pruefungsvorbereitung — Jamieson 2016 Hybrid-Bibliografie

**Wiki:** *„Jamieson, J. P., Crum, A. J., Goyer, J. P., Marotta, M. E., & Akinola, M. (2016). Optimizing stress responses with reappraisal and mindset interventions. Anxiety, Stress, & Coping, 29(4), 331-346."*
**Real:** Autorenliste + Titel passen exakt zum **Jamieson 2018-Paper** (DOI 10.1080/10615806.2018.1442615) in *Anxiety, Stress, & Coping* **31(3), 245-261**. Wiki-Bibliografie kombiniert 2018-Paper-Daten mit Jahr 2016 + Vol 29(4) + Pages 331-346 — diese Kombination ist in keiner Datenbank reproduzierbar.

Es gibt ein reales Jamieson-2016-Paper: Jamieson/Peters/Greenwood/Altose 2016 *„Reappraising Stress Arousal Improves Performance and Reduces Evaluation Anxiety in Classroom Exam Situations"* in **Social Psychological and Personality Science 7(6), 579-587** — andere Co-Autoren, anderes Venue, anderer Titel. Body-Aussage „Reappraisal-Mantra in Klassenraum-Prüfungen" passt thematisch besser zum 2016-SPPS-Paper.

**Severity:** MAJOR (Pattern #2 Hybrid)
**Korrektur-Optionen:**
- (a) Bibliografie-Daten auf 2018 ASC 31(3) 245-261 anpassen (behält Co-Autoren-Liste Jamieson/Crum/Goyer/Marotta/Akinola)
- (b) Citation komplett auf Jamieson/Peters/Greenwood/Altose 2016 SPPS 7(6) 579-587 ersetzen (passt besser zu Body-Aussage „Klassenraum-Setting")
**Empfehlung:** Option (b), weil Body-Aussage zu „Klassenraum-Reappraisal-Mantra" das 2016-SPPS-Paper besser deckt.

### MAJOR 5: zeitmanagement — Mark/Gudith/Klocke 2008 „23:15"-Folklore-Zahl

**Wiki Z. 95:** *„Mark et al. (2008): Nach einer Unterbrechung dauert es im Schnitt **23 Minuten und 15 Sekunden**, bis man zum unterbrochenen Task zurückkehrt."*
**Real (Mark/Gudith/Klocke 2008 CHI Paper-Volltext + Sekundär-Detail-Recherche):** Die spezifische Zahl „23 Minuten 15 Sekunden" steht **nicht im Paper**. Das CHI-2008-Paper behandelt Speed/Stress unter Unterbrechung, nicht Resumption-Zeit. Die Zahl stammt aus Mark-Interviews ohne peer-reviewten Primärbeleg. Die ähnliche Zahl ~25 Min ist in Mark/Gonzalez/Harris **2005** *„No Task Left Behind?"* CHI 2005.
**Severity:** MAJOR (Pattern #17 Genre-Überschreibung + Pattern #7 Hot-Spot-Inversion-Light)
**Korrektur:** *„Mark, G., Gonzalez, V. M., & Harris, J. (2005). No task left behind? Examining the nature of fragmented work. Proceedings of CHI 2005, 321-330."* zur Quellenliste; Body-Aussage entweder mit ~25 Min auf Mark 2005 umstellen oder die spezifische 23:15-Zahl als Folklore kennzeichnen und ohne peer-reviewten Cite belassen.

## MINOR-Backlog (6)

| Datei | Befund | Pattern | Korrektur |
|---|---|---|---|
| lerner-modell-mastery-tracking | „Standard-Startwerte (Corbett & Anderson 1995): P_init=0.3, P_transit=0.1, P_slip=0.1, P_guess=0.2" — C&A geben keine universellen Defaults | #16 Attribution-Drift | „Übliche Default-Startwerte (z.B. nach pyBKT-Konvention): ..." statt direkter C&A-Attribution |
| lerner-modell-mastery-tracking | „BKT marginal besser als logistische Baselines" ist Verkürzung von Peláneks „inconclusive/domain-dependent" | #17 mild | Body-Aussage abschwächen auf „Peláneks Befund: BKT-Vorteil gegenüber logistischen Baselines ist domain-abhängig und insgesamt schwach" |
| pruefungsvorbereitung | „Roediger & Karpicke 2006, d ≈ 0,50-0,80" — d-Range stammt aus Meta-Analysen (Rowland 2014, Adesope 2017), nicht Original-2006-Studie | #6 Generationenfehler | Effektstärken-Range mit Rowland 2014 attribuieren oder Spalte „Evidenz" auf 17-21 % Recall-Differenz (Original-Befund) umformulieren |
| pruefungsvorbereitung | Body-Inline-Cites Cepeda 2008, Ericson 2022, Chi 1994 ohne Quellenliste-Eintrag (Pattern #4-A) | #4-A | Quellenliste um Cepeda/Vul/Rohrer/Wixted/Pashler 2008, Ericson et al. 2022 ITiCSE-WGR, Chi et al. 1994 ergänzen |
| zeitmanagement | Personal Kanban Co-Autorin „Barry, T." → real „**DeMaria Barry**, T." (Doppelname) | #2a kosmetisch | „Benson, J., & DeMaria Barry, T. (2011). ..." |
| zeitmanagement | Parkinson Buchfassung 1957 (US Houghton Mifflin) vs. 1958 (UK John Murray) — Wiki nennt nur UK-Edition | #16 mild | Beide Editionen erwähnen oder Erstausgabe US 1957 nehmen |

## Cross-Repo-Verdacht (Welle 13)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Michaeli/Romeike 2019 EDUCON-vs-WiPSCE-Hybrid | `grep -ri 'Michaeli.*Romeike\|Current Status and Perspectives.*Debugging' wiki/` | mittel (Debugging-Cluster) |
| WiPSCE 2019 Cite-Magnet (jetzt 2× Hybrid) | `grep -ri 'WiPSCE.*2019' wiki/` | hoch (alle Treffer gegen ACM-DL-TOC abgleichen) |
| Liew/Treagust AERA/AARE-Verwechslung | `grep -ri 'AARE\|AERA.*Conference\|Annual Meeting.*1998' wiki/` | niedrig |
| Bjork & Bjork Erstautor-Reihenfolge (R.A. vs. E.L.) | `grep -ri 'Bjork, R\\..*Bjork, E\\.\|Bjork.*Bjork.*201[01]' wiki/` | mittel (Desirable-Difficulties-Cluster) |
| Jamieson 2016/2018 ASC vs. SPPS Hybrid | `grep -ri 'Jamieson.*201[68]\|Optimizing stress\|Reappraising Stress Arousal' wiki/` | niedrig |
| Mark CHI 2008 „23:15"-Folklore-Zahl | `grep -ri '23 Minuten 15\|Mark.*200[58].*Unterbrechung\|No Task Left Behind' wiki/` | niedrig |
| Roediger & Karpicke 2006 d-Range 0.50-0.80 (Generationenfehler) | `grep -ri 'Roediger.*Karpicke.*200[67].*d.*0[,.]\|Roediger.*Karpicke.*0[,.]8' wiki/` | niedrig |
| BKT-Default-Werte (0.3/0.1/0.1/0.2) als „Standard nach C&A 1995" | `grep -ri 'Corbett.*Anderson.*0\\.[0-9]\|BKT.*Standard\|P_init.*0\\.' wiki/` | niedrig |
| Personal Kanban Co-Autorin „Barry, T." statt „DeMaria Barry" | `grep -ri 'Benson.*Barry\|Personal Kanban' wiki/` | niedrig |
| Cepeda 2008 „50% Verlust in 7 Tagen" Quantifizierung (Body-Cite ohne Quellenliste) | `grep -ri 'Cepeda.*200[68]\|Cramming.*50' wiki/` | mittel (Spaced-Repetition-Cluster) |

## Methodik-Erkenntnisse

1. **Welle-12-Erkenntnis bestätigt:** Hybrid-Risk (Pattern #2) ist im Restpool weiterhin präsent — 3 Pattern-#2-Befunde in W13 (Michaeli/Romeike, Jamieson, Bjork-Erstautor) entgegen Welle-11-Hypothese.

2. **Pop-Wissenschafts-Folklore in peer-reviewter Cite (NEU):** Mark CHI 2008 mit „23:15"-Zahl ist neuer Subpattern-Typ — Body zitiert eine in der populären Literatur omnipräsente Quantifizierung, die im zitierten peer-reviewten Paper nicht enthalten ist. Sub-Pattern von #17, hier zum ersten Mal explizit dokumentiert.

3. **Pop-Sachbücher als Konzept-Quellen sauber:** Allen GTD, Cirillo Pomodoro, Newport Deep Work werden im Wiki als Konzept-/Vokabel-Quellen ohne empirische Effekt-Claims zitiert — Pattern-#17-Risiko nicht ausgelöst. Welle-12-Hot-Spot-Erwartung war zu pessimistisch.

4. **Body-Inline-Cite-Lücken (Pattern #4-A) treten weiterhin auf:** pruefungsvorbereitung hat 3 Body-Inline-Cites (Cepeda 2008, Ericson 2022, Chi 1994) ohne Quellenliste-Eintrag — trotz Welle-10-Bulk-Sweep, der einen Großteil der Pattern-#4-A-Befunde geschlossen hatte. Vermutlich bei Artikeln, die zwischen Welle 10 und Welle 13 weiter editiert wurden.

5. **Sammelband-Cites (Pattern #16/#19) Layer-2-Schwäche systematisch:** Zeidner 2007 in Schutz/Pekrun, Bjork & Bjork 2011 in Gernsbacher, Chi 2008 in Vosniadou — Volltext nicht open-access, Inhaltsdeckung nur über Sekundärquellen, Confidence dauerhaft 0.85-0.90 statt 0.95+. Methodische Schwäche, kein Bug.

## Korrektur-Backlog für Welle-13-Bulk-Fix

**Cluster MAJOR (zuerst, eigene Commits pro Cluster):**
1. poe-methode.md — Liew/Treagust 1998 AERA-Korrektur
2. debugging-als-kompetenz.md — Michaeli/Romeike 2019 EDUCON+WiPSCE getrennt aufnehmen
3. pruefungsvorbereitung-lernstrategie.md — Bjork & Bjork Erstautor-Reihenfolge + Jamieson 2016 SPPS ersetzen
4. zeitmanagement-selbstorganisation.md — Mark 2005 in Quellenliste + 23:15-Body abschwächen

**Cluster MINOR + Body-Inline:**
5. lerner-modell-mastery-tracking.md — C&A-Default-Attribution + Pelánek-Verkürzung
6. pruefungsvorbereitung-lernstrategie.md — Roediger d-Range Generationenfehler + Cepeda/Ericson/Chi Quellenliste
7. zeitmanagement-selbstorganisation.md — DeMaria Barry + Parkinson 1957 ergänzen

## Verbleibender Praxis-/Methoden-Pool

Nach Welle 13 verbleiben **13 Praxis-/Methoden-Artikel** (16 - 5 = 11 methode + 2 praxis) für Wellen 14-16. Plus 20 Theorie-Artikel für separate Theorie-Disposition.
