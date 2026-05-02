# Welle 12 — Zweite Stichprobe (Validierung Welle-11-Hypothese)

**Datum:** 2026-05-02
**Methodik:** v3-Single-Pass (Welle-1-9-Standard mit Welle-6/9/10-Erweiterungen). 5 zufällige Subagents parallel auf Stichprobe aus dem Pool nicht-v3-auditierter Artikel (43 verbleibende Artikel nach Welle 11).
**Zufalls-Seed:** deterministisch (`welle-12-2026-05-02-deterministic-seed`).
**Auditierte Artikel:** primm-methode, lerntagebuch, cognitive-apprenticeship, engagement-theory, sprachsensibler-it-unterricht.

## Anlass + Hypothese

Welle 11 zeigte 0 CRIT bei 5 zufälligen Score-≤14-Artikeln. Hypothese aus Welle 11: **„Restpool hat keine fabrizierten Citations oder Hybrid-Citations mehr, nur bibliografische Drifts in Praxis-Artikeln."** Welle 12 sollte mit zweitem Sample (n=5) die Stabilität dieser Hypothese prüfen.

**Hypothese widerlegt.** Welle 12 findet **1 CRIT (Pattern #2/#5 Hybrid- oder Phantom-Citation in Lerntagebuch) und 1 weiteren MAJOR-Hybrid (Pattern #2 in primm-methode)** — beide nicht reine Bibliografie-Drift, sondern strukturelle Citation-Probleme im Welle-1-9-Risiko-Profil.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| primm-methode | 4 | 2 | 1 | 1 | 0 | 0.90 | 9 (2.25/cite) |
| lerntagebuch | 3 | 1 | 0 | 1 | 1 | 0.92 | 11 (3.67/cite) |
| cognitive-apprenticeship | 3 | 2 | 1 | 0 | 0 | 0.92 | 6 (2.0/cite) |
| engagement-theory | 2 | 2 | 0 | 0 | 0 | 0.95 | 6 (3.0/cite) |
| sprachsensibler-it-unterricht | 7 | 5 | 2 | 0 | 0 | 0.82 | 12 (1.7/cite) |
| **Σ** | **19** | **12** | **4** | **2** | **1** | **0.90** | **44 (2.32/cite)** |

**1 CRIT + 2 MAJOR + 4 MINOR in 19 Cites = 16 % CRIT+MAJOR-Dichte, 37 % Gesamt-Befund-Dichte.**

| Welle | Score-Range | Cites | CRIT | MAJOR | Befund-Dichte (CRIT+MAJOR) |
|---|---|---|---|---|---|
| 3 | 27-40 | 47 | 0 | 7 | 15 % |
| 4 | 27-40 | 63 | 1 | 6 | 11 % |
| 5 | 22-23 | 43 | 5 | 10 | 35 % |
| 6 | 24-29 | 41 | 4 | 3 | 17 % |
| 7 | 21-23 | 42 | 3 | 1 | 9.5 % |
| 8 | 18-20 | 44 | 4 | 5 | 20.5 % |
| 9 | 15-17 | 40 | 2 | 2 | 10 % |
| 10 | strukturell + 3 expl. | ~31 | 4 | 0 | 13 % |
| 11 | ≤14 (zufällig) | 33 | 0 | 7 | 21 % |
| **12** | **≤14 (zufällig, 2. Sample)** | **19** | **1** | **2** | **16 %** |

## Welle-11-vs-12-Vergleich

| Dimension | Welle 11 | Welle 12 |
|---|---|---|
| Cites total | 33 | 19 |
| CRIT | 0 | 1 |
| MAJOR | 7 | 2 |
| MINOR | 6 | 4 |
| OK | 20 | 12 |
| Pattern #2 Hybrid | 0 | 2 (lerntagebuch + primm) |
| Pattern #5 fabriziert | 0 | 0-1 (lerntagebuch unklar Pattern #2 vs #5) |
| Pattern #16/#19 Bibliografie-Drift | 5 (5/7 MAJOR) | 1 (Glogger 2012) |
| Pattern #17 Genre-Überschreibung | 1 (Nickolaus/Seeber) | 2 (Nathan/Petrosino EBS, Beese „wirksamste Einzelhilfe") |
| Theorie-Artikel sauber | ja (blooms, misconception) | ja (engagement-theory, cognitive-apprenticeship-MINOR-only) |

**Wichtigste Beobachtung Welle 12:** Pattern #2 Hybrid-Citations sind im Restpool **nicht** verschwunden. Beide Welle-12-Hybrids (Sentance/Waite/Kallia 2019 WiPSCE, Nückles 2009 ER&E) sind klassische Welle-1-9-Risiko-Profile (echte Autoren + plausibles Jahr + falscher Titel/Venue/Pages, in keiner Datenbank reproduzierbar). Welle-11-Befund (5/7 MAJOR = Bibliografie-Drift) war stichproben-spezifisch, nicht repräsentativ.

## Validierungs-Ergebnis: Welle-11-Hypothese widerlegt

**Welle-11-Hypothese:** „Restpool hat keine fabrizierten/Hybrid-Citations mehr, nur bibliografische Drifts."
**Welle-12-Befund:** 2 von 19 Cites sind Hybrid-Citations (Pattern #2), 1 davon mit hoher Wahrscheinlichkeit fabriziert (Pattern #5).

**Konsequenz:** Restpool-Risiko ist **nicht** auf Bibliografie-Drift beschränkt. Praxis-/Methoden-Artikel mit moderner CS-Ed-Cite-Mischung (Sentance, Nückles-Forschungsgruppe, Glogger) tragen weiterhin Hybrid-/fabrizierte-Cite-Risiko in der gleichen Größenordnung wie Wellen 1-9.

**Strategie-Empfehlung:** Audit-Reihe **nicht** formal abschließen. Mindestens eines von:

- **Option A:** Dritte Stichprobe (n=5) als statistische Absicherung — würde die kumulierte Welle-11+12-Sample-Größe auf 15 Artikel mit 52 Cites bringen.
- **Option B:** Vollständiger Per-Artikel-Sweep der ~20 verbleibenden Praxis-/Methoden-Artikel im Restpool (type:methode oder type:praxis). Theorie-Artikel mit kanonischen Quellen können nach Welle-11+12-Befund als „mit hoher Wahrscheinlichkeit clean" geltend dokumentiert werden, ohne explizite Audits.
- **Option C:** Hybrid-Strategie — Welle-13-Bulk-Sweep auf alle Praxis-/Methoden-Artikel (Phase A: DOI-Bulk-Lookup für nicht-auditierte Artikel; Phase B: gezielte WebFetch-Verifikation der nicht-DOI-tragenden Citations bei type:methode/praxis).

## Detail-Findings

### CRIT 1: lerntagebuch — Nückles 2009 Phantom-/Hybrid-Citation

**Wiki:** *„Nückles, M. et al. (2009). The Journal as a Tool of Self-Regulated Learning for First-Year Students' Learning in Basic Statistics. Educational Research and Evaluation, 15(2), 163-186."*
**Real (CrossRef + ScienceDirect + T&F-TOC + Scholar verifiziert):** Nückles, Hübner & Renkl 2009 publizierten *„Enhancing self-regulated learning by writing learning protocols"* in **Learning and Instruction, 19(3), 259-271** (DOI 10.1016/j.learninstruc.2008.05.002). Die Wiki-Citation in der angegebenen Form ist **in keiner Datenbank reproduzierbar** — weder in Educational Research and Evaluation 15(2) (T&F-TOC durchsucht), noch unter dem genannten Titel.

**Severity:** CRITICAL (Pattern #2 Hybrid bzw. #5 Phantom)
**Confidence:** 0.90 — Subagent + manuelle Re-Verifikation (4 Suchpfade) konvergent. Restwahrscheinlichkeit < 5 %, dass ein nicht in CrossRef indexierter Buchbeitrag mit ähnlichem Titel existiert.

**Korrektur:** Citation ersetzen durch:
- *Nückles, M., Hübner, S., & Renkl, A. (2009). Enhancing self-regulated learning by writing learning protocols. Learning and Instruction, 19(3), 259-271. https://doi.org/10.1016/j.learninstruc.2008.05.002*

**Body-Hinweis:** Z. 43 erwähnt „Uni Freiburg, PRO-SRL-EVA" als Forschungsprojekt. Echtes Freiburg-SRL-Projekt heißt „Freiburg Self-Regulated-Journal-Writing Approach" (siehe ezw.uni-freiburg.de SRL-Group); „PRO-SRL-EVA" ist als Projektakronym nicht reproduzierbar. Empfehlung: Body-Erwähnung umformulieren auf „Forschungsgruppe Renkl/Nückles, Universität Freiburg" oder explizite Projektname streichen.

### MAJOR 1: primm-methode — Sentance/Waite/Kallia 2019 WiPSCE

**Wiki:** *„Sentance, S., Waite, J. & Kallia, M. (2019). Implementation of the PRIMM approach in K-12 schools. Proceedings of WiPSCE 2019."*
**Real (DBLP + WiPSCE-Proceedings 2019 + primmportal.com Publikationsliste durchsucht):** Citation in dieser Form **nicht reproduzierbar**. Tatsächliches zweites 2019-PRIMM-Paper desselben Trios: *„Teachers' experiences of using PRIMM to teach programming in school"* bei **SIGCSE 2019** (50th ACM Technical Symposium), nicht WiPSCE.
**Severity:** MAJOR (Pattern #2 Hybrid + #19 Venue-Drift)
**Korrektur:** Entweder Citation 2 streichen (Citation 1 — CSE 2019 — deckt Hauptbefund ab) oder ersetzen durch SIGCSE-2019-Paper, falls inhaltlich gemeint.

### MAJOR 2: lerntagebuch — Glogger 2012 Bibliografie-Drift

**Wiki:** *„Glogger, I. et al. (2012). Learning Strategies Assessed by Journal Writing: Prediction of Learning Outcomes by Quantity, Quality, and Diversity. Learning and Instruction, 22(2), 148-156."*
**Real (CrossRef DOI 10.1037/a0026683):** *„Learning Strategies Assessed by Journal Writing: Prediction of Learning Outcomes by Quantity, Quality, and **Combinations** of Learning Strategies"*. **Journal of Educational Psychology, 104(2), 452-468.**
**Severity:** MAJOR (Pattern #19 Venue-Drift — kompletter Journal-Wechsel + Volume + Issue + Pages + Subtitel-Drift)
**Korrektur:**
- *Glogger, I., Schwonke, R., Holzäpfel, L., Nückles, M., & Renkl, A. (2012). Learning strategies assessed by journal writing: Prediction of learning outcomes by quantity, quality, and combinations of learning strategies. Journal of Educational Psychology, 104(2), 452-468. https://doi.org/10.1037/a0026683*

## MINOR-Backlog (4)

| Datei | Befund | Pattern | Korrektur |
|---|---|---|---|
| primm-methode | Citation 3 „Raspberry Pi Foundation (2021). primmportal.com" — Trägerschaft + Datierung nicht offiziell RPF, sondern Sentance/PRIMM-Forschungsgruppe; Jahr 2021 ohne Beleg | #16 | Ersetzen durch offizielle RPF-Ressource (z.B. raspberrypi.org/app/uploads/2022/08/Teaching\_Programming\_with\_PRIMM-1.pdf) oder umformulieren auf „Sentance, S. et al. (n.d.). PRIMM Portal" |
| cognitive-apprenticeship | Nathan & Petrosino 2003: Wiki-Aussage „Experten überspringen Schritte" ist geläufige didaktische Generalisierung; Paper belegt spezifischer Schwierigkeits-Fehleinschätzung Symbolik vs. Story-Probleme bei Math-Preservice-Teachers | #17 | Body-Aussage milder formulieren oder Zusatz-Cite ergänzen (Koedinger & Nathan 2004 oder allgemeiner EBS-Verweis) |
| sprachsensibler-it-unterricht | Leisen 2010 Sprachstufenmodell: Wiki präsentiert 5-stufig (inkl. nonverbal), online verfügbare Sekundärquellen zeigen kanonisch 3- oder 4-stufig (Alltag → Unterricht/Alltagssprache → Bildungssprache → Fachsprache) | #16/#17 | Body-Tabelle entweder auf 3-/4-stufige kanonische Form reduzieren oder explizit als „erweitert nach Leisen, Stufenanzahl variiert je nach Veröffentlichung" markieren; Volltext-Verifikation gegen Buch-Original empfohlen |
| sprachsensibler-it-unterricht | Beese et al. 2014: Body-Aussage „Sprachgerüste als wirksamste Einzelhilfe für schriftliche Leistungen" → Beese ist Goethe-Institut DLL-16-Lehrwerk, kein empirisch-vergleichendes Werk. Superlativ setzt Empirie voraus, die das Lehrwerk nicht liefert | #17 | Body-Aussage abschwächen auf „Beese et al. (2014) heben Sprachgerüste als zentrale Unterstützung hervor" oder durch empirische Quelle ersetzen |
| sprachsensibler-it-unterricht | SIOP 5th ed. Echevarria 2017: Druckdatum Januar 2016, Pearson-Copyright 2017 — milder Edge-Case Datierungs-Drift | #16 | Behalten oder auf 2016 anpassen (Library-of-Congress-Konvention) |

## Cross-Repo-Verdacht (Welle 12)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Sentance/Waite/Kallia 2019 WiPSCE-Venue-Drift (real SIGCSE 2019) | `grep -ri 'Sentance.*WiPSCE\|Implementation of the PRIMM' wiki/` | niedrig (vermutlich idiosynkratisch) |
| Nückles 2009 Phantom-Citation (Educational Research and Evaluation 15(2)) | `grep -ri 'Nückles.*2009\|Educational Research and Evaluation.*15' wiki/` | mittel (Self-Regulation-Cluster) |
| Glogger 2012 Venue-Drift (Learning and Instruction statt JEP) | `grep -ri 'Glogger.*2012\|Glogger.*Diversity' wiki/` | mittel (Journal-Writing-Cluster) |
| Raspberry Pi Foundation als Pseudo-Autor primmportal.com | `grep -ri 'Raspberry Pi Foundation.*primmportal\|Raspberry Pi Foundation.*202' wiki/` | niedrig |
| Nathan & Petrosino 2003 als Beleg für „Experten überspringen Schritte" | `grep -ri 'Nathan.*Petrosino\|Expert Blind Spot' wiki/` | niedrig |
| Leisen Sprachstufenmodell (3 vs 4 vs 5 Stufen) | `grep -ri 'Leisen.*Stufenmodell\|Sprachstufen' wiki/` | niedrig |
| Beese et al. 2014 als „Klett-Langenscheidt" ohne DLL-16-Reihen-Hinweis | `grep -ri 'Beese.*Klett\|Sprachbildung in allen Fächern' wiki/` | niedrig |
| Echevarria/SIOP-Edition 2016 vs 2017 | `grep -ri 'Echevarria.*201[67]\|SIOP' wiki/` | niedrig |

## Methodik-Erkenntnisse

1. **Welle-11-Hypothese „Restpool nur Bibliografie-Drift" hält nicht.** 2 von 19 Cites in Welle 12 sind Hybrid-Citations (Pattern #2). Hybrid-Risk-Profil ist im Restpool weiterhin in Wellen-1-9-Größenordnung präsent — nur die Wiederkehr-Frequenz pro Artikel ist niedriger.

2. **Theorie-Artikel mit kanonischen Cites bleiben sauber** (Welle-11-Teil-Hypothese bestätigt): cognitive-apprenticeship (Collins/Brown/Newman 1989, Collins 2006) und engagement-theory (Kearsley/Shneiderman 1998) hatten zusammen 0 CRIT, 0 MAJOR, 1 MINOR in 5 Cites — kanonische Sammelband-/Position-Paper-Linien sind robust.

3. **Pattern-Verschiebung über Wellen** ist welle-spezifisch, nicht monoton: Welle 11 dominiert Pattern #16/#19 (Bibliografie-Drift), Welle 12 hat wieder Pattern #2 + #17. Restpool ist heterogen — Pattern-Heuristik allein ist nicht prädiktiv genug für Stop-Entscheidung.

4. **Confidence-Skalierung bewährt sich:** Subagent für lerntagebuch markierte CRIT mit Confidence 0.90 und empfahl Self-Consistency-Pass. Manueller Re-Check (zwei zusätzliche WebSearches) konvergierte mit Subagent-Befund — kein Self-Consistency-Pass nötig.

5. **Nicht-open-access-Bücher als systematische Layer-2-Schwäche** (Leisen 2010, Beese 2014): Volltext nicht fetchbar, daher Inhaltsdeckung nur über Sekundärquellen. Konservative MINOR-Einstufung mit Confidence 0.62-0.65 ist methodisch korrekt, aber lässt Bewertungsunsicherheit zurück. Bei deutschen Lehrwerken/Fachbüchern grundsätzliche Schwäche der v3-Methodik.

## Korrektur-Backlog für Welle-12-Bulk-Fix

**Cluster CRIT (zuerst — Welle-11-Lehre: separate Commits pro Cluster):**
1. lerntagebuch.md — Nückles 2009 Phantom ersetzen + „PRO-SRL-EVA" entfernen

**Cluster MAJOR:**
2. primm-methode.md — Sentance 2019 WiPSCE entfernen oder durch SIGCSE 2019 ersetzen
3. lerntagebuch.md — Glogger 2012 Venue/Pages/Subtitel korrigieren

**Cluster MINOR:**
4. primm-methode.md — Raspberry Pi Foundation primmportal.com Trägerschaft präzisieren
5. cognitive-apprenticeship.md — Nathan & Petrosino EBS-Generalisierung abschwächen oder Zusatz-Cite
6. sprachsensibler-it-unterricht.md — Leisen Stufenmodell-Anzahl (3/4/5) klären
7. sprachsensibler-it-unterricht.md — Beese „wirksamste Einzelhilfe" abschwächen
8. sprachsensibler-it-unterricht.md — SIOP-Edition 2016/2017 vereinheitlichen (optional, Edge-Case)
