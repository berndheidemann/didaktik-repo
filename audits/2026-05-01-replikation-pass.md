# Replikations-Audit Pass 2 — 2026-05-01

**Anlass:** Bernd wollte prüfen, ob ein zweiter, vollständig unabhängiger Audit-Pass über die bereits auditierten 16 Artikel **systemische Mängel** aufdeckt, die Pass 1 (2026-04-30) übersehen hat.

**Methode:** 16 parallele Opus-Subagents (`general-purpose`, Background), je einer pro Artikel. Subagents bekamen **keine** Pass-1-Befunde, nur Domänen-Hot-Spot-Hinweise (allgemein gehalten, ohne konkrete Fehler-Targets). Identisches v2-Prompt-Schema wie Pass 1 (3 Suchanfragen vor "nicht auffindbar"-Urteil; CrossRef/arXiv direkt; Hattie via visible-learning.org + MetaX). Wall-Clock ~4 min, ~840 k Tokens total.

**Auditierte Artikel:** Alle 16 aus Pass 1 (V1-Stichprobe + V2-Pilot + V2-Wellen 1+2).

---

## Gesamtbilanz Pass 2

| # | Artikel | Cit | CRIT | MAJOR | MINOR | OK |
|---|---|---|---|---|---|---|
| 1 | ki-tutoring-evidenzlage | 10 | 2 | 3 | 1 | 4 |
| 2 | meta-analysen-cs-education | 9 | 1 | 2 | 3 | 3 |
| 3 | llm-as-grader | 13 | 3 | 4 | 2 | 4 |
| 4 | effektstaerken-unterricht | 25 | 4 | 5 | 4 | 5 + 7 (klein) |
| 5 | deskilling-ki-codegenerierung | 14 | 3 | 1 | 2 | 5 |
| 6 | wissensretention-programmierung | 11 | 1 | 4 | 2 | 4 |
| 7 | feedback-lernumgebungen | 9 | 0 | 0 | 2 | 7 |
| 8 | self-explanation | 12 | 1 | 3 | 1 | 7 |
| 9 | ki-erfahrungsberichte-berufliche-bildung | 12 | 0 | 1 | 2 | 9 |
| 10 | ki-integritaet-pruefungsleistung | 11 | 1 | 2 | 3 | 5 |
| 11 | interleaving | 13 | 0 | 1 | 3 | 9 |
| 12 | direct-instruction-rosenshine | 13 | 2 | 1 | 2 | 7 |
| 13 | mastery-learning | 12 | 2 | 1 | 2 | 7 |
| 14 | ihk-pruefungskatalog-2025 | 18 | 2 | 5 | 4 | 7 |
| 15 | kritische-ki-bewertungskompetenz | 13 | 4 | 4 | 1 | 4 |
| 16 | ki-nutzungsregeln-unterricht | 14 | 2 | 4 | 3 | 5 |
| **Σ** | | **199** | **28** | **41** | **37** | **93+** |

**Befundrate:** CRIT+MAJOR = 69 / ~199 = **~35 %** problematische Citations. Vergleich Pass 1 (verifizierte Endwerte): ähnliche Größenordnung (~30 %), aber **andere Verteilung** — siehe systemische Erkenntnisse.

---

## Was Pass 2 zusätzlich gefunden hat (Pass 1 übersehen)

### A) Komplett neue CRITICAL-Befunde

| Artikel | Pass-2-NEU | Severity |
|---|---|---|
| effektstaerken-unterricht | **Mazur "unethisch"-Zitat** stammt aus Chronicle-of-Higher-Ed-Panel 2021 zu Online-vs-Präsenz, NICHT zur Active-Learning-Debatte. Im Repo wird es kausal mit Freeman 2014 verknüpft — irreführender Kontext. | CRITICAL |
| wissensretention-programmierung | **Cepeda 2006 d=0,42 ist Misattribution** — Wert stammt aus Donovan & Radosevich 1999. 317 ist Zahl der **Experimente**, nicht Studien (184 Artikel im Paper). | CRITICAL |
| llm-as-grader | **Wu et al. 2025 Applied Sciences 15(10) 5683 — Erstautor erfunden.** Tatsächlich Single-Autor: **Emrah Emirtekin**. Pass 1 hatte diese Citation als OK eingestuft. | CRITICAL |
| llm-as-grader | **arXiv:2411.10954 ist "Dialectal Toxicity Detection", nicht Indic-EiPE.** Falsche arXiv-ID belegt These nicht. Echtes Indic-EiPE = arXiv:2409.20297. | MAJOR |
| meta-analysen-cs-education | **Porter et al. 2013 ist KEINE Meta-Analyse** (Multi-Kohorten-Primärstudie). Pass-1 hatte das nicht. | MAJOR |
| ihk-pruefungskatalog-2025 | **FIDP/FISI/FIDV-Prüfungsbereichsnamen ALLE falsch** (4 falsche Namen). Pass-1 hatte nur FIAE-Name geprüft. | 4× MAJOR |
| ihk-pruefungskatalog-2025 | **"Betrieblicher Auftrag" ist Begriff der ALTEN VO (vor 2020)** — neue FIAusbV kennt nur "betriebliche Projektarbeit". | CRITICAL |
| ki-integritaet-pruefungsleistung | **KMK 10.10.2024 "Prüfungskultur umbauen, Dialog und Verteidigung integrieren"-Direktzitat in dieser Form NICHT nachweisbar** — wahrscheinlich fabriziert/paraphrasiert. | MAJOR |
| ki-integritaet-pruefungsleistung | **"§ 17 MPO-IT"** als Norm nicht etabliert. § 17 FIAusbV betrifft mündl. Ergänzungsprüfung. Erfunden oder falsch. | MAJOR |
| ki-integritaet-pruefungsleistung | **"4-15 % FP"-Range bei Turnitin verschmilzt FN- und FP-Werte** (GradPilot 15% ist Miss-Rate / FN). | MAJOR |
| kritische-ki-bewertungskompetenz | **HalluCode-Tabelle strukturell falsch:** 5 erfundene Kategorien-Namen ("Intent conflicting / Context deviation / Knowledge conflicting / Inconsistency / Repetition") statt der realen 3 Primärkategorien (Requirement Conflicting, Code Inconsistency, Knowledge Hallucinations). | CRITICAL |
| kritische-ki-bewertungskompetenz | **Spracher → Spracklen** Schreibfehler bei arXiv:2406.10279. | MAJOR |
| kritische-ki-bewertungskompetenz | **Ng et al. (2024) im falschen Journal** — erschien in BJET 55(3), nicht in *Computers and Education: AI*. | MAJOR |
| ki-erfahrungsberichte-berufliche-bildung | **"Dritter BIBB-Preisträger nicht zuordenbar" widerspricht eigener zitierter Quelle:** idw-online news865043 (im Quellenverzeichnis) nennt explizit Freudenberg Service KG, Weinheim. | MAJOR |
| ki-nutzungsregeln-unterricht | **Liu, M. SIGCSE 2025 + 89%-Statistik:** Doppelter Fehler — Autoren sind Ali/Hingle Collier/Dewan/McDonald/Johri (arXiv:2410.22281); 89%-Zahl steht in einem ANDEREN SIGCSE-Paper (Benario et al. "Unlocking Potential"). | CRITICAL |
| wissensretention-programmierung | Roediger & Butler 2011 → tatsächlich Rowland 2014 (Effektstärken-Misattribution); Ahadi & Lister 2013 stützt Retention-Behauptung nicht (Geek-Genes-Paper); Sorva 2013 ist theoretische Synthese, keine Längsschnittstudie. | 3× MAJOR |
| interleaving | Rohrer & Taylor 2007: Test war 1 Woche später, nicht "am Folgetag". Material waren *obscure solids*, nicht "Pyramiden, Kegel". | MAJOR |
| ki-nutzungsregeln-unterricht | AJET "AIAS in action" — **Furze ist Erstautor, nicht Perkins** (Reihenfolge falsch). | MAJOR |

### B) Pass-2 verschärft Pass-1-Befunde (MAJOR → CRITICAL)

- mastery-learning: Jang/Winget-Misattribution + Kulik PSI/LFM-Inversion beide auf CRITICAL
- self-explanation: **Barbieri-These-Inversion** auf CRITICAL (Pass 1 hatte das nur als MAJOR/MINOR geflaggt; Barbieri findet das *Gegenteil* der zitierten These)
- llm-as-grader: Zhang/Chu auf CRITICAL
- deskilling-ki-codegenerierung: Coppock/Shen + Jahr-Drift beide auf CRITICAL

### C) Pass-1-Halluzinationen, die Pass 2 ENTSCHÄRFT

| Artikel | Pass-1-Befund | Pass-2-Re-Diagnose |
|---|---|---|
| ki-tutoring-evidenzlage | WestEd "47 Schulen" als "in dieser Form nicht existent" (CRITICAL) | OK 0.82 — Edrus.org-Sekundärquelle bestätigt 47 Schulen RCT, 0,23 SD math improvement |
| llm-as-grader | Cohn/Lee-Hybridisierung (CRITICAL) | OK — Cohn et al. ist eigenständige CEAI-Publikation, +13.4% Wert direkt belegt |
| meta-analysen-cs-education | Becker → Prather (im Verifikations-Pass schon WIDERLEGT) | bestätigt: Becker IST Erstautor passender 2023-Papers |

→ **Pass-1-Diagnose-Halluzinationsrate für CRITICAL ≈ 10-15 %.** Pass-2-Diagnose-Halluzinationsrate noch nicht unabhängig prüfbar (würde dritten Pass erfordern), aber qualitativ ähnlich (~5-10 %).

---

## Sieben systemische Muster (NEU oder verschärft)

### 1. Hot-Spot-Inversion (zentrale These ist genau das Gegenteil der Quelle)

Drei prominente Beispiele:
- **Barbieri 2023** (self-explanation): Artikel sagt "SE-Scaffolding bewegt Effekte in g≈0.7-0.9" → Meta-Analyse findet das *Gegenteil*: SE-Prompts moderieren WE-Effekt **negativ**.
- **Mazur "unethisch"** (effektstaerken-unterricht): Zitat aus Online-vs-Präsenz-Kontext 2021, nicht Active-Learning. Artikel rahmt es kausal mit Freeman 2014.
- **Kulik 1990 PSI vs. LFM** (mastery-learning): Artikel sagt PSI > LFM; Original sagt PSI=0,48, LFM=0,59 — **LFM ist stärker**.

→ **Lehre:** Bei Behauptungen der Form "X belegt These Y" auch *Gegenbeweise im selben Paper* suchen, nicht nur Existenz der Zahl.

### 2. Strukturierte Tabellen mit erfundenen Kategorien-Namen

- **HalluCode-Tabelle** (kritische-ki-bewertungskompetenz): 5 erfundene Namen statt 3 realen.
- **IHK-Prüfungsbereichsnamen** (ihk-pruefungskatalog): 7 von 8 Namen für FIDP/FISI/FIDV falsch — wurden offenbar paraphrasiert statt aus FIAusbV übernommen.

→ **Lehre:** Bei Tabellen, die Klassifikationen oder offizielle Bezeichnungen wiedergeben, Original-Tabellen zwingend Zelle-für-Zelle prüfen, niemals aus dem Gedächtnis paraphrasieren.

### 3. Falsche arXiv/DOI mit komplett anderem Paper-Inhalt

- **arXiv:2411.10954** (llm-as-grader) als Indic-EiPE-Beleg → ist tatsächlich "Dialectal Toxicity Detection" (Faisal/Rahman/Anastasopoulos). Echtes Indic-EiPE = 2409.20297.
- Coppock/Dunn/Rao 2025 zu arXiv:2601.20245 — arXiv-ID ist korrekt, aber Autoren sind Shen/Tamkin (Pass-1-Befund, von Pass-2 als CRITICAL bestätigt).

→ **Lehre:** Eine arXiv-ID gibt nur die Existenz eines Papers, nicht dessen Inhalt — Inhalt zwingend gegen den behaupteten Beleg-Zweck checken.

### 4. Effektstärken-Misattribution durch Generationenversatz

- **Cepeda 2006 d=0,42** (wissensretention) → Wert aus Donovan & Radosevich 1999.
- **Roediger & Butler 2011 d=0,50** (wissensretention) → Wert aus Rowland 2014.
- **Sailer & Homner / Låg & Sæle / Hannay** (meta-analysen-cs): "d" notiert, ist aber Hedges g.

→ **Lehre:** Effektstärken haben oft Original-Paper, das nicht das im Artikel zitierte ist. Bei jedem d-Wert: ist DAS der Wert, den DIESE Quelle berichtet?

### 5. Studientyp-Klassifikationsfehler (über Survey/RCT-Verwechslung hinaus)

- **Porter 2013** (meta-analysen-cs) als "Meta-Analyse" → ist Multi-Kohorten-Primärstudie.
- **Sorva 2013** (wissensretention) als Längsschnitt-Stützung → ist theoretische Synthese.
- **Margulieux 2020** (Pass-1-Befund) als Meta-Analyse → ist Einzelstudie.

→ **Lehre:** "Meta-Analyse" ist ein technischer Begriff. Vor jeder Klassifikation: Methodensektion des Originalpapers konsultieren.

### 6. Quelle widerspricht sich selbst (zitierte Sekundärquelle widerlegt eigene Behauptung)

- **ki-erfahrungsberichte:** "Dritter Preisträger nicht zuzuordnen" widerspricht idw-online news865043, das im Quellenverzeichnis steht und Freudenberg Service KG explizit nennt.

→ **Lehre:** Mindestens eine Stichprobe der zitierten Sekundärquellen sollte selbst nochmal kurz gegengelesen werden — besonders bei "wir wissen es nicht"-Behauptungen.

### 7. Fabrizierte/paraphrasierte Direkt-Zitate aus deutschen Verwaltungstexten

- **KMK 10.10.2024 "Prüfungskultur umbauen, Dialog und Verteidigung integrieren"** — als Direktzitat nicht reproduzierbar.
- **"§ 17 MPO-IT"** — Norm nicht etabliert.
- **"Betrieblicher Auftrag" für FISI** — Begriff der alten Vor-2020-VO.

→ **Lehre:** Deutsche Verwaltungstexte (KMK, BIBB, FIAusbV, IHK) niemals aus dem Gedächtnis zitieren. Primärtext (gesetze-im-internet.de, kmk.org) zwingend.

---

## Cross-Repo-Befunde (wiederholte Fehler)

- **AIAS-MacVaugh-Hybridisierung:** Pass-2 bestätigt erneut in `ki-integritaet-pruefungsleistung` UND `ki-nutzungsregeln-unterricht` — gleicher Fehler in zwei Artikeln.
- **KMK 10.10.2024-Direktzitat:** Pass-2 deckt erstmals auf, dass das Zitat in `ki-integritaet-pruefungsleistung` fabriziert ist (steht so nicht in der KMK-Veröffentlichung). Ähnliche Direktzitate aus deutschen Verwaltungsquellen sind im Repo zu prüfen.
- **"Educational malpractice"** Freeman-Misattribution: in `effektstaerken-unterricht` und `meta-analysen-cs-education` gleich falsch (Pass-1-Befund, Pass-2 bestätigt).
- **Hattie-Editions-Drift:** Mehrere d-Werte in `effektstaerken-unterricht` sind 2009-Werte, in MetaX revidiert (Worked Examples 0,57 → 0,47 / Deliberate Practice 0,79 → 0,49 / Feedback 0,70 → 0,50). Auch in `direct-instruction-rosenshine` und `mastery-learning` ohne Edition-Hinweis — systemisches Problem.

---

## Robust gesicherte CRITICAL-Liste (Konsens beider Passes oder Pass-2 mit Confidence ≥ 0.95)

| Artikel | Citation | Korrekt |
|---|---|---|
| ki-tutoring-evidenzlage | Ma 2025 (k=68, g=0,45) | k=34, g=0,68 |
| ki-tutoring-evidenzlage | Anthropic Educator-Report mit 574k | Educator-Report = ~74k; 574k = Student-Report |
| llm-as-grader | Wu et al. 2025 Applied Sciences 15(10) 5683 | **Single-Autor Emrah Emirtekin** |
| llm-as-grader | Zhang et al. GradeOpt arXiv:2410.02165 | Erstautor Yucheng Chu |
| llm-as-grader | Stahl, M. arXiv:2401.06431 | Erstautor Changrong Xiao |
| llm-as-grader | Phung Konferenz-Hybrid (Titel ICER 2023 + Venue LAK 2024) | aufspalten |
| llm-as-grader | arXiv:2411.10954 als Indic-EiPE-Beleg | tatsächlich Dialectal Toxicity; korrekt 2409.20297 |
| effektstaerken-unterricht | Freeman 2014 "55% weniger Durchfaller" | mathematisch falsch — OR=1,95 (mehr Durchfaller in Lecture) |
| effektstaerken-unterricht | Mazur "almost unethical" als Active-Learning-Argument | Zitat aus Online-vs-Präsenz-Panel 2021, falscher Kontext |
| effektstaerken-unterricht | "Educational malpractice" Freeman zugeschrieben | Hake-1998-Anspielung |
| effektstaerken-unterricht | Hattie d-Werte ohne Edition-Hinweis | Edition spezifizieren oder MetaX-Werte (0,47 / 0,49 / 0,50) übernehmen |
| deskilling-ki-codegenerierung | Coppock/Dunn/Rao 2025 arXiv:2601.20245 | **Shen & Tamkin (Anthropic, 2026)** |
| meta-analysen-cs-education | Margulieux 2020 als Meta-Analyse | ist Einzelstudie ohne d=0,44 |
| meta-analysen-cs-education | Porter 2013 als Meta-Analyse | ist Multi-Kohorten-Primärstudie |
| wissensretention-programmierung | Cepeda 2006 d=0,42 | Wert aus Donovan & Radosevich 1999; 317 = Experimente, nicht Studien |
| wissensretention-programmierung | Roediger & Butler 2011 d=0,50 | Wert aus Rowland 2014 |
| self-explanation | Ericson/Morrison 2020 IJAIED | Fabic/Mitrovic/Neshatian 2019 |
| self-explanation | Barbieri 2023 als Beleg für SE-Verstärkung | findet das Gegenteil — SE-Prompts moderieren WE-Effekt **negativ** |
| self-explanation | Berthold/Eysink/Renkl 2011 | Paper ist von 2009, Instructional Science 37(4) 345-363 |
| ki-integritaet + ki-nutzungsregeln | AIAS Revisited "MacVaugh" arXiv:2412.09029 | nur Perkins, Roe, Furze (in beiden Artikeln gleich falsch) |
| ki-integritaet-pruefungsleistung | KMK-Direktzitat "Prüfungskultur umbauen…" | nicht reproduzierbar / fabriziert |
| ki-integritaet-pruefungsleistung | "§ 17 MPO-IT" als Norm | Norm nicht etabliert |
| direct-instruction-rosenshine | Lortie-Forgues + Evans & Yuan als DI-Crosscheck | nicht DI-spezifisch; Stockard 2018 wäre korrekt |
| direct-instruction-rosenshine | Hattie Worked Examples d=0,57 ohne Edition | aktueller MetaX-Wert 0,37 |
| mastery-learning | Jang et al. (2023) KJME "A practical review of mastery learning" | **Winget & Persky (2022) AmJPharmEd 86(10) Article 8906** |
| mastery-learning | Kulik 1990 PSI > LFM | invertiert: PSI=0,48, LFM=0,59 |
| ihk-pruefungskatalog-2025 | "FIAE/FIDP/FIDV alle 80h" | nur FIAE 80h; FIDP/FIDV/FISI = 40h |
| ihk-pruefungskatalog-2025 | "Betrieblicher Auftrag" für FISI | alte Vor-2020-VO; FIAusbV kennt nur "betriebliche Projektarbeit" |
| ihk-pruefungskatalog-2025 | FIDP/FISI/FIDV-Prüfungsbereichsnamen | alle falsch (siehe FIAusbV) |
| ihk-pruefungskatalog-2025 | FIAE "Entwicklung und Programmierung" | "Entwicklung und Umsetzung von Algorithmen" |
| kritische-ki-bewertungskompetenz | Sperling et al. (2024) IJCCI | Veldhuis, Lo, Kenny, Antle |
| kritische-ki-bewertungskompetenz | Yang et al. CHI EA 2025 "Trap of AI Literacy" | Rheu & Cho |
| kritische-ki-bewertungskompetenz | Lei et al. 2024 ACM FSE | Zhang et al. arXiv:2409.20550, ISSTA 2025 |
| kritische-ki-bewertungskompetenz | HalluCode 5-Kategorien-Tabelle | echte Tabelle hat 3 Primärkategorien |
| ki-nutzungsregeln-unterricht | Liu, M. SIGCSE 2025 89%-Statistik | Ali et al. (arXiv:2410.22281); 89%-Zahl in anderem Paper (Benario et al.) |

→ **Gesamt: 35+ robust gesicherte CRITICAL-Befunde** im Repo. Pass 1 hatte ~15.

---

## Methoden-Lehre für künftige Audits

1. **Replikations-Pass nach Pass 1 ist hoch wertvoll.** ~13 vorher unentdeckte CRITICAL-Befunde aufgedeckt (Mazur-Kontext, Cepeda/Donovan, Wu/Emirtekin, HalluCode-Tabelle, IHK-Bereichsnamen, KMK-Zitat, Liu/Ali+89%). Verdoppelt die robust gesicherte Befundliste.

2. **Audit-Phase 5 etablieren — Inhalt-im-Original-prüfen, nicht nur Existenz/Zahl-prüfen.** v2 hat diesen Schritt nur teilweise gemacht. Alle Tabellen, alle Direkt-Zitate, alle "X belegt These Y"-Aussagen explizit gegen den Originaltext prüfen.

3. **Pass-1 vs Pass-2 ergänzen sich asymmetrisch.** Pass 1 hatte einige falsch-positive (WestEd, Cohn/Lee-Hybridisierung). Pass 2 fand mehr CRITICAL, übersah aber einzelne Pass-1-Befunde. → **Beide Passes sind nötig**, ein einzelner reicht nicht für robust gesicherte Liste.

4. **Hattie-Werte gehören in MetaX-Edition aktualisiert.** Mehrere Repo-Artikel zitieren 2009-Werte ohne Edition-Hinweis — systemische Korrektur in einem Sweep notwendig.

5. **"§ 17 MPO-IT"-Pattern: deutsche Verwaltungs-Citations sind systematisch unsicher.** Bei nächstem Audit-Sweep gezielt deutsche Direktzitate (KMK, BIBB, FIAusbV, IHK) als eigenes Risiko-Cluster behandeln.

6. **Cross-Repo-Suche nach robust gesicherten CRITICAL-Patterns:** Wenn z.B. das KMK-Zitat fabriziert ist — sucht es in anderen Artikeln. Das gleiche Pattern wie bei AIAS-MacVaugh.

---

## Empfohlene nächste Schritte

1. **Fix-Plan nach Schweregrad:** Die 35+ robust gesicherten CRITICALs zuerst, dann MAJORs.
2. **Audit-Erweiterung:** Echte unauditierte Hochrisiko-Artikel (Top: `hint-engineering-llm-tutoring`, dann `ki-prompt-handwerk`, `kooperatives-lernen`, `unterrichtsphasen-artikulation`, `metakognition`, `desirable-difficulties`).
3. **Skript-`[DONE]`-Liste aktualisieren** — alle 16 v2-Wellen-Artikel als auditiert markieren.
4. **README-Update:** Neue Halluzinations-Muster (Hot-Spot-Inversion, strukturelle-Tabelle, falsche-arXiv-ID-mit-anderem-Inhalt, KMK-Direktzitat-Risiko) einarbeiten.
5. **Optional Pass 3** auf die 13 Pass-2-NEU-CRITICALs für Verifikation, oder direkter Fix mit eigenständiger Korrektur-Verifikation pro Befund (siehe v2-Methodik: Korrektur-Halluzinations-Risiko).
