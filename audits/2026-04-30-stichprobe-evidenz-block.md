# Stichproben-Audit Evidenz-Block — 2026-04-30

**Anlass:** Beim Verfassen von `wiki/hint-engineering-llm-tutoring.md` wurde eine Falsch-Attributierung in `wiki/self-explanation.md` und `INDEX.md` entdeckt: Gerlich (2025, *Societies*) wurde als RCT zu Self-Explanation mit konkreten Effektstärken (g≈+0,5 / g≈−0,3) zitiert, ist aber tatsächlich eine Survey/Interview-Studie (n=666) zu Cognitive Offloading. Die zitierten Effektstärken stammten in Wahrheit aus Bastani et al. (2025, *PNAS*).

**Hypothese:** Wenn diese Misattribution durch zwei INDEX-Einträge und einen Wiki-Body gerutscht ist, könnten ähnliche Probleme systematisch im Repo verteilt sein.

**Methode:** 5 parallele Opus-Subagents, je einer pro Stichproben-Artikel, mit dem Auftrag jede konkrete Citation per WebSearch zu verifizieren (Existenz, Autoren/Jahr, zentrale Zahl, Studientyp). Severity-Klassifikation: OK / MINOR / MAJOR / CRITICAL.

**Stichprobe (5 Artikel, höchstes Risiko-Cluster):**
1. `wiki/ki-tutoring-evidenzlage.md` (KI-Block, viele neue Studien 2024–2026)
2. `wiki/deskilling-ki-codegenerierung.md` (KI-Block, neueste Evidenz)
3. `wiki/llm-as-grader.md` (KI-Block, viele konkrete QWK-Werte)
4. `wiki/effektstaerken-unterricht.md` (Hattie-Tabelle als Hot-Spot)
5. `wiki/meta-analysen-cs-education.md` (kanonische CS-Education-MAs)

**Vergleich Opus vs. Codex/Sonnet:** Auf `ki-tutoring-evidenzlage` parallel beide getestet. Opus fand drei kritische inhaltliche Verzerrungen (WestEd-Erfindung, EduPIJ-Studientyp-Mismatch, Anthropic-Hybrid-Bug), die Sonnet/Codex alle übersah. Sonnet/Codex blieb auf der Existenz-Ebene, Opus ging auf die Behauptungs-vs.-Inhalt-Ebene. **Methoden-Entscheidung:** Opus per `general-purpose` für die Hauptaudits, Sonnet/Codex als Backup-Validierung.

---

## Gesamtergebnis

| Artikel | Citations | CRITICAL | MAJOR | MINOR | OK |
|---|---|---|---|---|---|
| ki-tutoring-evidenzlage | 9 | 1 | 4 | 2 | 2 |
| deskilling-ki-codegenerierung | 9 | 2 | 2 | 2 | 3 |
| llm-as-grader | 11 | 3 | 4 | 1 | 3 |
| effektstaerken-unterricht | 18 | 2 | 7 | 3 | 6 |
| meta-analysen-cs-education | 9 | 1 | 4 | 2 | 2 |
| **Summe** | **56** | **9** | **21** | **10** | **16** |

**Befundrate:** CRIT+MAJOR = **30 von 56 = 54 %**. MINOR = 18 %. OK = 29 %.

**Hochrechnung Repo:** Bei 102 Artikeln und geschätzt 30–40 mit konkreten Zahlen-Citations sind ~150–200 problematische Citations zu erwarten, falls die Stichprobe repräsentativ ist.

---

## Sechs wiederkehrende Fehlermuster

1. **Hybridisierung** — Citation kombiniert Teile aus mehreren Quellen (Titel von Paper A, Stichprobe/Venue von Paper B). Mehrfach in `llm-as-grader` (Cohn↔Lee, Phung ICER↔LAK, Murphy↔Corney) und `ki-tutoring-evidenzlage` (Anthropic Educator-Title↔Student-n).
2. **Erstautor-Verwechslung** — Coppock→Shen (deskilling), Zhang→Chu (llm-as-grader), Stahl→Xiao (llm-as-grader), Becker→Prather (meta-analysen-cs), Murphy 2012↔Corney 2014.
3. **Erfundene/nicht auffindbare Quellen** — WestEd "47 Schulen / RCT" (ki-tutoring-evidenzlage, CRITICAL), Margulieux 2020 als Meta-Analyse mit d=0,44 (meta-analysen-cs, CRITICAL — ist eine empirische Einzelstudie ohne dieses d).
4. **Falsche Effektstärken/Stichprobenzahlen** — 7 Hattie-d-Werte in `effektstaerken-unterricht` weichen ab (z.B. Scaffolding 0,54 statt **0,82**; Technologie 0,23 statt **0,47**; Formative Eval 0,68 statt 0,48); Ma 2025 (`ki-tutoring-evidenzlage`): k=68 statt **34**, g=0,45 statt **0,68**.
5. **Studientyp-Überhöhung** — Surveys/Akzeptanzstudien werden als Wirksamkeitsstudien zitiert (Gerlich-Anlassfall; EduPIJ-SWOT in `ki-tutoring-evidenzlage`: Studie hat keine Kontrollgruppe, "keine signifikanten Lernzuwächse vs. Kontrolle" ist faktisch nicht ableitbar).
6. **Wiederholte Fehler quer durchs Repo** — "Freeman 2014: 55 % weniger Durchfaller" steht in zwei Artikeln (`effektstaerken-unterricht`, `meta-analysen-cs-education`) **gleich falsch** — korrekt: 1,5× häufigeres Durchfallen unter Vorlesung. "Educational malpractice" wird in beiden Freeman zugeschrieben, ist aber externe Charakterisierung (Hake u.a.), nicht im Paper.

---

## Detail-Findings pro Artikel

### 1. wiki/ki-tutoring-evidenzlage.md (1 CRIT, 4 MAJOR, 2 MINOR, 2 OK)

| # | Citation | Behauptung | Verifikation | Severity | Vorschlag |
|---|---|---|---|---|---|
| 1 | Bastani et al. 2025 (PNAS) | n≈1000, +48 % Übung / −17 % Klausur, GPT Tutor +127 % / Baseline | Vollständig bestätigt (PNAS, DOI 10.1073/pnas.2422633122) | OK | optional Correction-DOI 10.1073/pnas.2518204122 als Hinweis |
| 2 | Ma et al. 2025, JCAL | k=68 Studien, SMD=0,45 [0,43–0,47] | k=**34** (nicht 68), g=**0,68** (nicht 0,45). DOI 10.1111/jcal.70117 | **MAJOR** | Beide Zahlen ersetzen |
| 3 | "GenAI vs. traditionelle Tools (Review 2025)" | g=0,572, k=21 — Artikel kennzeichnet selbst als unsicher | Quelle ist auffindbar (vermutlich *Computers and Education: AI* 2025) — sollte präzisiert werden | MINOR | Primärquelle auflösen |
| 4 | Kestin et al. 2025, Sci Rep | KI-Tutor schlägt aktives Lernen, Harvard-Physik, RCT | Vollständig bestätigt; n=194 könnte ergänzt werden | OK | n=194 ergänzen |
| 5 | WestEd 2025 "Khanmigo, 47 Schulen" | RCT 47 Schulen, "meaningful but modest" | **Quelle existiert in dieser Form nicht.** Nur eine qualitative Case Study (28 Beobachtungen, kein Khanmigo-Bezug, keine RCT, keine Effektgrößen) auffindbar | **CRITICAL** | Konkrete Primärquelle nachreichen oder streichen |
| 6 | EduPIJ 2025, Khanmigo-SWOT, n=108 | "keine signifikanten Lernzuwächse gegenüber Kontrollgruppe" | Studie existiert (Alvarez & Angeles), aber **hat keine Kontrollgruppe und keine Lernoutcome-Messung** — Aussage "vs. Kontrolle" faktisch nicht ableitbar | **MAJOR** | Umformulieren als reine Akzeptanzstudie |
| 7 | Khanmigo Undergrad-Physik | "Positive Wahrnehmung, keine sig. Differenz" | Studie auffindbar (J. of Teaching and Learning, n=69), aber Citation komplett anonym im Artikel | MINOR | Vollständige Citation ergänzen |
| 8 | "ITS-Chatbot-Meta-Analyse" | "kein signifikanter Self-Efficacy-Effekt" | Plausibel (vermutlich Wang et al., MDPI Behav. Sci. 16(1):158), aber **vollständig anonyme Citation** | **MAJOR** | Citation nachtragen |
| 9 | Anthropic 2025 "Educators, 574k Konversationen" | Hybrid: **Titel "Educators" + Stichprobe vom Student-Report** (574k = Student, Educator hat ~74k) | **Hybridisierte Citation** — passt zu keinem realen Bericht | **MAJOR** | Auf Student-Report umstellen oder Stichprobe auf 74k korrigieren |

### 2. wiki/deskilling-ki-codegenerierung.md (2 CRIT, 2 MAJOR, 2 MINOR, 3 OK)

| # | Citation | Behauptung | Verifikation | Severity | Vorschlag |
|---|---|---|---|---|---|
| 1 | "Coppock, Dunn & Rao 2025" arXiv:2601.20245 | Anthropic-Skill-Formation-Studie | **Tatsächliche Autoren: Shen & Tamkin (Anthropic), Jahr 2026.** Coppock/Dunn/Rao sind nicht in der Autorenliste | **CRITICAL** | Citation komplett ersetzen: Shen, J. H., & Tamkin, A. (2026) |
| 2 | "Coppock et al. 2025" Jahr | Durchgängig im Artikel | Paper-Submission **28. Januar 2026** — Jahr ist falsch | **MAJOR** | Auf 2026 korrigieren |
| 3 | "junior Engineers, ≥1 Jahr Python, Trio" | Studiendesign | N=52 ✓, Trio ✓, aber Teilnehmer:innen waren nicht primär "junior" — Spannweite 1–7+ Jahre | MINOR | "junior" entschärfen |
| 4 | "50 % vs. 67 % Quizscores, two letter grades" | Kernergebnis 1 | Paper berichtet **17 Prozentpunkte Differenz** (4,15/27 Punkte) und "2 grade points" — die absoluten 50/67 stehen nicht im Paper | **MAJOR** | Nur 17-PP-Differenz und 2-Letter-Grades belegen |
| 5 | Konzept-Queries 65 %+, Delegation <40 %, sechs Muster | Kernergebnis 2 | Sechs Muster ✓ (Conceptual Inquiry ~73 %, AI Delegation ~32 % laut Fig. 11). Werte 65 %/40 % grob plausibel als Bereiche, aber nicht exakt | MINOR | Werte als Bereich kennzeichnen |
| 6 | Bastani et al. 2025 PNAS | Vollzitat | Vollständig bestätigt | OK | — |
| 7 | METR 2025 "19 % langsamer, 20 % wahrgen. schneller, ~40 PP Diskrepanz" | Kernergebnis 5 | Verifiziert (N=16 Devs, 246 Issues — fehlt im Artikel); ~39 PP statt ~40 | MINOR | N=16 ergänzen, 39 statt 40 |
| 8 | Sonar State of Code 2026 | 96 %/48 %/40 %/50 %/56 % | Größtenteils verifiziert; 40 %-Wert nur als "größte Zuwächse" belegt | OK (Vorbehalt) | 40 % nochmal direkt im PDF prüfen |
| 9 | Sonar 2026 "42 %/65 % bis 2027" | KI-Code-Anteil | Verifiziert | OK | — |
| 10 | Stanford 2025 "−20 % Beschäftigung 22-25 J." | Bezug IT-Ausbildung | Verifiziert (Brynjolfsson et al., Stanford Digital Economy Lab), aber **Quelle fehlt im Quellenverzeichnis** | **MAJOR** | Quelle ergänzen |
| 11 | ACM 2025 "AI deskilling paradox" | Quellenliste | Existiert auf cacm.acm.org, im Body aber nirgends explizit zitiert (Orphan) | OK | Optional: Inline-Citation oder aus Quellenliste entfernen |

### 3. wiki/llm-as-grader.md (3 CRIT, 4 MAJOR, 1 MINOR, 3 OK)

| # | Citation | Behauptung | Verifikation | Severity | Vorschlag |
|---|---|---|---|---|---|
| 1 | Wu et al. 2025, Applied Sciences 15(10) 5683 | Systematic Review, 49 Studien, QWK 0,99 / r=0,38 | Vollständig bestätigt | OK | — |
| 2 | Jiang et al. 2024, L@S | Acc=0,661, QWK=0,610, +0,067 durch Rubric | Paper existiert (Jiang & Bosch); Co-Autor Bosch fehlt im Artikel; Zahlen nicht direkt im PDF verifizierbar (Encoding) | MINOR | Bosch ergänzen, Zahlen am ACM-PDF prüfen |
| 3 | Cohn et al. 2024, *Computers & Education: AI* | "+13,4 % Zero-Shot, +3,7 % Few-Shot" | **Hybridisierung**: Cohn 2024 existiert (AAAI), aber +13,4/+3,7 stammen aus **Lee, Latif, Wu, Liu, Zhai 2024 (arXiv 2312.03748)** in CEAI. Cohn-Paper berichtet andere Werte | **CRITICAL** | Citation aufspalten in Lee et al. 2024 (für die Zahlen) und Cohn 2024 (separat) |
| 4 | "Zhang et al. 2024, GradeOpt" arXiv 2410.02165 | Drei-Agenten-Architektur (Grader/Reflector/Refiner) | Paper existiert, aber **Erstautor ist Yucheng Chu**, nicht Zhang. Zhang vermutlich nicht in Autorenliste | **MAJOR** | Erstautor auf Chu korrigieren |
| 5 | Phung et al. EDM 2023 | Benchmarking GPT-4 vs. Tutoren | **Konferenz falsch**: Paper ist **ICER 2023** (arXiv 2306.17156), nicht EDM | **MAJOR** | Konferenz korrigieren |
| 6 | Phung et al. 2024 LAK Quellenliste | Titel "Benchmarking ChatGPT, GPT-4, and Human Tutors" + LAK 2024 | **Hybridisierung**: Titel gehört zum ICER 2023-Paper, LAK 2024-Paper hat anderen Titel ("Automating Human Tutor-Style Programming Feedback...") | **CRITICAL** | Quellenliste in zwei Einträge aufspalten |
| 7 | Denny et al. 2024 ITiCSE arXiv 2403.06050 | EiPE-Konzept | Vollständig bestätigt | OK | — |
| 8 | Smith IV & Zilles 2024 SIGCSE | "Code Generation Based Grading" | Paper existiert, aber Konferenztitel ist "Evaluating Large Language Model Code Generation as an Autograding Mechanism for 'Explain in Plain English' Questions"; "IV" im Nachnamen prüfen | MAJOR | Konferenztitel klarstellen, "IV" prüfen |
| 9 | "Rubric Is All You Need" ICER 2025 arXiv 2503.23989 | "Teilpunkte für korrekte Struktur bei falschem Output" | Paper schreibt explizit **"marking is binary"** — Aussage widerspricht dem Paper | **MAJOR** | Aussage entfernen oder umformulieren |
| 10 | "Stahl et al. 2024" arXiv 2401.06431 | "From Automation to Augmentation" | **Erstautor ist Changrong Xiao**, kein "Stahl" in der Autorenliste | **CRITICAL** | Erstautor auf Xiao korrigieren |
| 11 | "Murphy, Fitzgerald 2012 'EiPE revisited' SIGCSE 2012" | Quellenliste | **Hybridisierung**: Murphy/McCauley/Fitzgerald 2012 hat Titel **ohne** "revisited"; "revisited" ist Corney et al. 2014 (SIGCSE 2014) | **CRITICAL** | Entscheidung 2012 oder 2014 treffen |
| 12 | LLM-Rubric ACL 2024 | multidim. kalibriert | Verifiziert (Hashemi et al.) | OK | — |

### 4. wiki/effektstaerken-unterricht.md (2 CRIT, 7 MAJOR, 3 MINOR, 6 OK)

**Hauptproblem: Hattie-Tabelle hat 7 abweichende Werte. Edition wird nirgends spezifiziert.**

| # | Citation | Behauptung | Verifikation | Severity | Vorschlag |
|---|---|---|---|---|---|
| 1 | Hattie 2009 | 800+ MA, 80 Mio. Lernende | Verifiziert | OK | — |
| 2 | Hattie 2023 | 2.100+ MA, 400 Mio. Lernende | Verifiziert | OK | — |
| 3 | Deliberate Practice d=0,79 | Tabelle | Verifiziert | OK | — |
| 4 | Teacher Clarity d=0,75 | Tabelle | Verifiziert | OK | — |
| 5 | Feedback d=0,70 | Tabelle | 0,70 (2017-Liste) ✓; MetaX-Update 0,50 | OK / MINOR | Edition spezifizieren |
| 6 | Formative Evaluation d=0,68 | Tabelle | **Falsch** — Hattie 2017: 0,48; MetaX: 0,39 | **MAJOR** | Auf 0,48 korrigieren |
| 7 | Spaced Practice d=0,60 | Tabelle | Verifiziert | OK | — |
| 8 | Metakognitive Strategien d=0,60 | Tabelle | Verifiziert | OK | — |
| 9 | Worked Examples d=0,57 | Tabelle | 0,57 = Hattie 2009; **revidiert auf 0,37 ab 2018** (nach Wittwer & Renkl 2010); Edition nicht angegeben | **MAJOR** | Edition oder auf 0,37 aktualisieren |
| 10 | Scaffolding d=0,54 | Tabelle | **Falsch** — Hattie scaffolding = **0,82**; 0,54 nicht auffindbar | **MAJOR** | Auf 0,82 korrigieren |
| 11 | Peer Instruction (CS) ~0,50 | Tabelle | Quelle nicht angegeben; Porter 2013 berichtet Fail-Rate-Reduktion, keinen Cohen's d | **MAJOR** | Quelle nennen oder relativieren |
| 12 | Gamification d=0,36–0,49 | Tabelle | Verifiziert (Sailer & Homner 2020) | OK | — |
| 13 | Flipped Classroom d=0,35 | Tabelle | Plausibel (Strelan 2020), nicht Hattie, Quelle fehlt | MINOR | Quelle ergänzen |
| 14 | Pair Programming d=0,31 | Tabelle | Quelle fehlt; Umapathy 2017: 0,41–0,64; Hannay 2009: 0,16 | **MAJOR** | Quelle nennen, Wert prüfen |
| 15 | Technologie allein d=0,23 | Tabelle | **Falsch** — Hattie ICT/Technology = **0,47** | **MAJOR** | Auf 0,47 korrigieren |
| 16 | Hausaufgaben d=0,23 | Tabelle | Hattie homework = 0,29 | MINOR | Auf 0,29 |
| 17 | Klassengröße d=0,15 | Tabelle | Hattie = 0,21 | **MAJOR** | Auf 0,21 |
| 18 | Freeman et al. 2014 | "55 % weniger Durchfaller" + "educational malpractice" + Mazur "unethisch" | **Richtung gedreht** (korrekt: Vorlesung hat 1,5× häufigeres Durchfallen). **"Educational malpractice" steht NICHT im Paper** — externe Charakterisierung. Mazur-Zitat: "almost unethical" verkürzt | **CRITICAL** | Alle drei Aussagen korrigieren |
| 19 | VanLehn 2011 | ITS d=0,76 vs. human d=0,79 | Verifiziert | OK | — |
| 20 | Simpson 2017 | "Äpfel und Birnen"-Kritik | Verifiziert | OK | — |
| 21 | Slavin 2018 | Qualitätsfilter | Slavin 2018 ist ein **Blogpost**, keine peer-reviewed Publikation | MINOR | Als Blog markieren oder Cheung & Slavin 2016 zitieren |
| 22 | Cohen-Konventionen | klein/mittel/groß | Verifiziert | OK | — |
| 23 | Hinge Point 0,40 | Hattie-Durchschnitt | Verifiziert | OK | — |

(2. CRITICAL-Befund war als Bündelung der drei Freeman-Aussagen klassifiziert.)

### 5. wiki/meta-analysen-cs-education.md (1 CRIT, 4 MAJOR, 2 MINOR, 2 OK)

| # | Citation | Behauptung | Verifikation | Severity | Vorschlag |
|---|---|---|---|---|---|
| 1 | Freeman et al. 2014 PNAS | 225 Studien, 55 % weniger Durchfaller, d=0,47 | d=0,47 ✓, 225 Studien ✓; **"55 % weniger" stimmt nicht** — Original: OR=1,95 = ~33 % mehr Durchfaller unter Lecture | **MAJOR** | Korrekte Formulierung |
| 2 | Porter et al. 2013 SIGCSE | "~61 % weniger Durchfaller, Multi-Inst." | 61 % ✓ (20 %→7 %); "Multi-institutional" ungenau (4 Kurse, 16 PI-Instanzen, primär UCSD) | MINOR | Präzisieren |
| 3 | VanLehn 2011 | ITS, 20+ Studien, d=0,76 | Verifiziert (28 Effekte, nicht "20+ Studien") | OK | "20+" → "28 Effekte" |
| 4 | Hannay et al. 2009 | 15 Studien, d=0,31 (Qualität) | **Falsch**: Originalwerte sind Hedges g=0,23 (fixed) bzw. 0,33 (random); 14 Studien für Quality (nicht 15); Cohen d ist falscher Effektgrößen-Typ | **MAJOR** | g≈0,23–0,33 statt d=0,31; 14 statt 15 |
| 5 | "Margulieux et al. 2020" Worked Examples + Subgoals d=0,44 | Tabellen-Eintrag als Meta-Analyse | **Margulieux 2020 ist eine empirische Einzelstudie, KEINE Meta-Analyse, und nennt kein d=0,44**. Einzige verifizierbare WE-Meta-Analyse: Barbieri et al. 2023 | **CRITICAL** | Eintrag entfernen oder durch Barbieri 2023 ersetzen |
| 6 | Låg & Sæle 2019 AERA Open | Flipped Classroom, 272 Studien, d=0,35 | Verifiziert (g=0,35); "272 Studien" → eigentlich k=272 Effektgrößen | MINOR | "Effektgrößen" statt "Studien" |
| 7 | Sailer & Homner 2020 | Gamification, 38 Studien, d=0,49/0,36 | g-Werte ✓; **"38 Studien" stimmt nicht** — kognitiv k=19, motivational k=16, behavioral k=9 | **MAJOR** | Stichprobenangaben präzisieren |
| 8 | "Becker et al. 2023" KI in CS Education | Tabellen-Eintrag, fehlt in Quellenliste | **Erstautor ist Prather**, Becker ist Co-Autor; Paper: Prather et al. 2023 "The Robots Are Here" ITiCSE-WGR | **MAJOR** | Auf Prather korrigieren, in Quellenliste ergänzen |
| 9 | Luxton-Reilly et al. 2018 ITiCSE WGR | "CS-Forschung fragmentiert" | Verifiziert | OK | — |

---

## Methodische Limitierung

Die Audits wurden von **LLM-Subagents** per WebSearch erstellt. Auch wenn die Befunde sehr spezifisch sind (DOIs, arXiv-IDs, exakte Zahlen, detaillierte Begründungen), kann es **False Positives** geben — insbesondere bei "erfundene Autoren"-Behauptungen, da der prüfende Subagent selbst halluzinieren könnte. **Vor jedem Fix muss jeder einzelne Befund manuell oder durch eine zweite, unabhängige Verifikation geprüft werden.** Dieser Audit ist eine Hypothesen-Sammlung, kein endgültiges Befundbild.

## Empfohlene nächste Schritte

1. **Verifikations-Pass:** Alle CRIT- und MAJOR-Findings durch eine zweite Runde Subagents oder manuelle Prüfung gegenchecken. Insbesondere die "erfundene Autoren"-Befunde (Coppock/Shen, Stahl/Xiao, Zhang/Chu, Becker/Prather, Murphy/Corney, WestEd, Margulieux-Meta).
2. **Fix-Plan nach Schweregrad:** CRIT zuerst, dann MAJOR. MINOR optional in einer Sammelaktion.
3. **Audit-Erweiterung:** Bei bestätigtem systematischem Problem die übrigen Evidenz-Artikel des Repos auditieren — Kandidaten: `ki-erfahrungsberichte-berufliche-bildung`, `ki-kompetenzrahmen-schule`, `wissensretention-programmierung`, `retrieval-practice`, `lerner-modell-mastery-tracking`, `cognitive-load-theory`, `mastery-learning`, `productive-failure`, `desirable-difficulties`, `4c-id`, `worked-examples`, `subgoal-labeling`.
4. **Prozess-Lehre für die Zukunft:** Memory-Eintrag schärfen, dass auch *bereits im Repo zitierte Quellen* bei Übernahme per WebSearch verifiziert werden müssen — nicht nur neu hinzugefügte.

---

# Verifikations-Pass — 2026-04-30

**Methode:** 5 parallele Opus-Subagents, je einer pro Original-Artikel. Aufgabe: jeden Audit-1-Befund unabhängig per WebSearch prüfen und klassifizieren als BESTÄTIGT / TEILWEISE / WIDERLEGT / UNKLAR. Subagents bekamen die Behauptung und den Audit-1-Befund, sollten aber explizit nach Gegenbeweisen suchen, nicht nur zustimmen.

## Gesamt-Verifikationsergebnis

Über alle 5 Artikel und ~40 Audit-1-Findings (Nicht-OK):

- **BESTÄTIGT:** ~36 Findings (≈90 %)
- **WIDERLEGT (Audit-1 hat halluziniert):** 3 Findings
- **TEILWEISE / Severity-Anpassung:** ~5 Findings (teils nach oben, teils nach unten)
- **VERSCHÄRFT (Audit-1 war zu konservativ):** 3 Findings

**Halluzinations-Rate Audit-1: ~7–10 %.** Die große Mehrheit der Befunde hält der unabhängigen Verifikation stand. Die wichtigsten "erfundene Autoren"-Befunde (Coppock→Shen, Zhang→Chu, Stahl→Xiao, Murphy/Corney, WestEd-Erfindung, Margulieux-Meta-Fehlattribution) sind alle bestätigt.

## Detaillierte Verifikationsergebnisse pro Artikel

### ki-tutoring-evidenzlage.md — eher verschärft als entschärft

| Audit-1-Befund | Verifikation | Severity-Anpassung |
|---|---|---|
| Ma 2025 k=68/g=0,45 falsch | BESTÄTIGT | MAJOR → **CRITICAL** |
| WestEd "47 Schulen" Erfindung | BESTÄTIGT | bleibt CRITICAL |
| EduPIJ-SWOT Studientyp | BESTÄTIGT | bleibt MAJOR |
| Anthropic 574k Hybridisierung | BESTÄTIGT | bleibt MAJOR |
| ITS-Chatbot anonym | BESTÄTIGT + **VERSCHÄRFT** — die Behauptung "kein sig. Effekt" ist zudem faktisch falsch (zwei prominente Meta-Analysen finden g=0,758 bzw. g=1,206) | MAJOR → **CRITICAL** |
| GenAI vs. Tools 2025 | BESTÄTIGT | bleibt MINOR |
| Khanmigo Undergrad-Physik | BESTÄTIGT | bleibt MINOR |

**Stand nach Verifikation:** 3 CRIT (vorher 1), 2 MAJOR (vorher 4), 2 MINOR, 2 OK.

### deskilling-ki-codegenerierung.md — zwei Audit-1-Halluzinationen entdeckt

| Audit-1-Befund | Verifikation | Severity-Anpassung |
|---|---|---|
| Coppock/Dunn/Rao → Shen/Tamkin | BESTÄTIGT | bleibt CRITICAL |
| Jahr 2025 → 2026 | BESTÄTIGT | bleibt MAJOR |
| Stanford-Quelle fehlt im Verzeichnis | BESTÄTIGT | bleibt MAJOR |
| "junior Engineers" irreführend | BESTÄTIGT (53,8 % der Teilnehmer haben 7+ Jahre Erfahrung) | bleibt MINOR |
| METR n=16 fehlt | BESTÄTIGT | bleibt MINOR |
| **"50 % vs. 67 % nicht im Paper"** | **WIDERLEGT** — mehrere unabhängige Quellen (InfoQ, Anthropic-Blog, devclass.com) zitieren explizit diese Zahlen; nur "two letter grades" vs. "2 grade points" leicht ungenau | MAJOR → MINOR |
| **"Sonar 40 % nicht direkt verifizierbar"** | **WIDERLEGT** — Sonar 2026 sagt explizit "Junior developers report a 40 % average productivity increase versus 32 %" | OK-Vorbehalt → OK |
| Konzept-Queries 65 %/40 % | TEILWEISE — Audit-1-Werte 73 %/32 % aus Fig. 11 nicht eindeutig belegbar; Audit-1 hat hier möglicherweise selbst Zahlen erfunden | bleibt MINOR |

**Stand nach Verifikation:** 1 CRIT (vorher 2), 2 MAJOR (vorher 2), 3 MINOR (vorher 2), 4 OK (vorher 3).

### llm-as-grader.md — fast vollständig bestätigt, eher verschärft

| Audit-1-Befund | Verifikation | Severity-Anpassung |
|---|---|---|
| Cohn/Lee Hybridisierung | BESTÄTIGT + zusätzlich: Cohn ist in AAAI/EAAI 2024, nicht CEAI | bleibt CRITICAL |
| Phung LAK 2024 Titel-Hybrid | BESTÄTIGT | bleibt CRITICAL |
| Murphy 2012 / Corney 2014 Hybrid | BESTÄTIGT | bleibt CRITICAL |
| Stahl → Xiao | BESTÄTIGT | bleibt CRITICAL |
| **Zhang → Chu** | BESTÄTIGT + **VERSCHÄRFT** | MAJOR → **CRITICAL** |
| Phung EDM → ICER | BESTÄTIGT | bleibt MAJOR |
| "Rubric Is All You Need" Teilpunkte vs. binär | BESTÄTIGT | bleibt MAJOR |
| Jiang Bosch-Co-Autor fehlt | BESTÄTIGT | bleibt MINOR |
| **Smith IV-Suffix** | TEILWEISE — "IV" ist legitim, "David H. Smith IV" ist sein vollständiger Nachname; Audit-1 hat zu Unrecht angezweifelt | MAJOR → MINOR |

**Stand nach Verifikation:** 5 CRIT (vorher 3), 2 MAJOR (vorher 4), 2 MINOR (vorher 1), 3 OK.

### effektstaerken-unterricht.md — keine Halluzinationen, drei Severity-Anpassungen

| Audit-1-Befund | Verifikation | Severity-Anpassung |
|---|---|---|
| Scaffolding 0,54 → 0,82 | BESTÄTIGT | bleibt MAJOR |
| Technology 0,23 → 0,47 | BESTÄTIGT | bleibt MAJOR |
| Formative Eval 0,68 → 0,48 | BESTÄTIGT (Verwechslung mit "Field independence" 0,68 plausibel) | bleibt MAJOR |
| Worked Examples 0,57 vs. 0,37 | BESTÄTIGT | bleibt MAJOR |
| Klassengröße 0,15 → 0,21 | BESTÄTIGT | bleibt MAJOR |
| Peer Instruction 0,50 unbelegt | BESTÄTIGT | bleibt MAJOR |
| Pair Programming 0,31 unbelegt | BESTÄTIGT | bleibt MAJOR |
| Hausaufgaben 0,23 → 0,29 | BESTÄTIGT | bleibt MINOR |
| "Educational malpractice" nicht im Paper | BESTÄTIGT | bleibt MAJOR |
| Slavin 2018 = Blogpost | BESTÄTIGT | bleibt MINOR |
| **Flipped 0,35 = Strelan?** | TEILWEISE — Strelan-Hauptwert ist 0,50, nicht 0,35; Audit-1 hat MINOR vergeben, Verifikator stuft hoch | MINOR → **MAJOR** |
| **Freeman "55 % gedreht"** | TEILWEISE — mathematisch verwandt (33,8 % vs 21,8 % Failure-Rate ergeben tatsächlich ~55 % Steigerung in Lecture-Failures), aber Framing missverständlich | CRITICAL → MAJOR |
| **Mazur "fast unethisch"** | BESTÄTIGT — aber Verkürzung, keine Erfindung | CRITICAL → MINOR |

**Stand nach Verifikation:** 0 CRIT (vorher 2 — Bündelung der drei Freeman-Aussagen aufgelöst), 9 MAJOR (vorher 7), 4 MINOR (vorher 3), 6 OK.

### meta-analysen-cs-education.md — eine Halluzination entdeckt

| Audit-1-Befund | Verifikation | Severity-Anpassung |
|---|---|---|
| Margulieux 2020 als Meta-Analyse mit d=0,44 | BESTÄTIGT — ist Einzelstudie | bleibt CRITICAL |
| Freeman "55 % weniger Durchfaller" | BESTÄTIGT (Framing-Problem) | bleibt MAJOR |
| Hannay g=0,23/0,33 statt 0,31 | BESTÄTIGT | bleibt MAJOR |
| Sailer & Homner "38 Studien" | BESTÄTIGT (k=19/16/9) | bleibt MAJOR |
| Porter "Multi-Inst." ungenau | TEILWEISE | bleibt MINOR |
| VanLehn "20+ Studien" → 28 | BESTÄTIGT (subsumiert) | bleibt MINOR/OK |
| Låg & Sæle "272 Studien" → k=272 Effekte | BESTÄTIGT | bleibt MINOR |
| **Becker → Prather** | **WIDERLEGT** — Becker ist tatsächlich Erstautor eines passenden 2023-Papers ("Programming Is Hard — Or at Least It Used to Be", SIGCSE 2023). Eigentliches Problem: nur Bibliografie-Lücke, kein Autor-Fehler | MAJOR → MINOR |

**Stand nach Verifikation:** 1 CRIT, 3 MAJOR (vorher 4), 3 MINOR (vorher 2), 2 OK.

## Verifizierter Endstand

| Artikel | Citations | CRIT | MAJOR | MINOR | OK |
|---|---|---|---|---|---|
| ki-tutoring-evidenzlage | 9 | **3** ↑ | 2 ↓ | 2 = | 2 = |
| deskilling-ki-codegenerierung | 9 | 1 ↓ | 2 = | 3 ↑ | 4 ↑ |
| llm-as-grader | 11 | **5** ↑ | 2 ↓ | 2 ↑ | 3 = |
| effektstaerken-unterricht | 18 | 0 ↓ | **9** ↑ | 4 ↑ | 6 = |
| meta-analysen-cs-education | 9 | 1 = | 3 ↓ | 3 ↑ | 2 = |
| **Summe (verifiziert)** | **56** | **10** | **18** | **14** | **17** |

**Befundrate problematisch (CRIT+MAJOR) verifiziert:** 28 von 56 = **50 %**. Praktisch unverändert zu Audit-1 (54 %), weil Verschärfungen und Entschärfungen sich grob ausgleichen.

## Halluzinations-Muster Audit-1

Die drei klaren Audit-1-Halluzinationen sind alle vom selben Typ — **zu schnelle "nicht im Paper" / "anonym" / "Erstautor falsch"-Urteile**, ohne ausreichend lange nach der Quelle zu suchen:

1. **deskilling: "50/67 nicht im Paper"** — die Zahlen sind tatsächlich in mehreren Sekundärquellen direkt belegt (InfoQ, Anthropic-Blog).
2. **deskilling: "Sonar 40 % nicht direkt verifizierbar"** — steht explizit im Sonar-Report.
3. **meta-analysen-cs: "Becker → Prather"** — Becker IST Erstautor eines passenden 2023-Papers (SIGCSE 2023, "Programming Is Hard..."), Audit-1 nahm zu schnell Prather "Robots Are Here" als einzige Möglichkeit an.

Daneben drei Severity-Übertreibungen (Smith IV-Suffix, Freeman-Richtung, Mazur-Verkürzung) und drei Severity-Untertreibungen (Ma → CRIT, ITS-Chatbot → CRIT, Zhang → CRIT) — die Klassifikation war in beide Richtungen ungenau, im Schnitt aber etwa kalibriert.

## Robust gesicherte Hauptbefunde

Diese Befunde sind nach Audit-1 **und** Verifikations-Pass eindeutig — Fix-Empfehlung mit höchster Priorität:

**CRITICAL (alle bestätigt):**
- `ki-tutoring-evidenzlage`: Ma et al. 2025 (k=68→34, g=0,45→0,68); WestEd "47 Schulen" Erfindung; "ITS-Chatbot-Meta-Analyse" anonym + Behauptung faktisch wahrscheinlich falsch
- `deskilling-ki-codegenerierung`: Coppock/Dunn/Rao → Shen & Tamkin (Anthropic, 2026)
- `llm-as-grader`: Cohn/Lee Hybridisierung; Phung LAK 2024 Titel-Hybrid; Murphy 2012 / Corney 2014 Hybrid; Stahl → Xiao; Zhang → Chu
- `meta-analysen-cs-education`: Margulieux 2020 als Meta-Analyse (ist Einzelstudie)

**MAJOR — die Hattie-Tabelle in `effektstaerken-unterricht`:**
- Scaffolding 0,54 → **0,82**
- Technology 0,23 → **0,47**
- Formative Eval 0,68 → 0,48
- Worked Examples 0,57 (2009) vs. **0,37 (revidiert ab 2018)**
- Klassengröße 0,15 → 0,21
- Hausaufgaben 0,23 → 0,29
- Peer Instruction / Pair Programming d-Werte ohne Quelle

---

# Skalierter v2-Audit (Pilot + 2 Wellen) — 2026-04-30

**Methodik-Verbesserungen v2 gegenüber v1:**
1. **Schärferes Audit-Prompt** — 3 verschiedene Suchanfragen Pflicht vor "nicht auffindbar"-Urteil; Audit-Trail; Confidence-Score (0.0–1.0) pro Befund; Selbstreflexion zu v2-Disziplin am Ende.
2. **Risiko-Triage per Bash-Script** (`scripts/audit-risk-triage.sh`) — Score pro Artikel basierend auf Effektstärken, Stichprobenangaben, Studientypen, neuen Studienjahren, Hattie-Bezug, Frontmatter-Typ.
3. **Selektive Verifikation** — alle CRITICAL + MAJOR mit Confidence < 0.90 in Verifikations-Welle, MINOR/OK vertrauen.

**Auditierte Artikel (v2-Welle, zusätzlich zur ersten Stichprobe von 5):**
- Pilot: `wissensretention-programmierung`
- Welle 1: `feedback-lernumgebungen`, `ki-erfahrungsberichte-berufliche-bildung`, `interleaving`, `self-explanation`, `ki-integritaet-pruefungsleistung`
- Welle 2: `direct-instruction-rosenshine`, `mastery-learning`, `ihk-pruefungskatalog-2025`, `kritische-ki-bewertungskompetenz`, `ki-nutzungsregeln-unterricht`

## v2-Bilanz (11 Artikel, 157 Citations)

| Welle | Cit | CRIT | MAJOR | MINOR | OK | %-Probleme |
|---|---|---|---|---|---|---|
| Pilot wissensretention | 11 | 0 | 2 | 2 | 7 | 36 % |
| Welle 1 (5 Artikel) | 73 | 2 | 10 | 8 | 45 | 27 % |
| Welle 2 (5 Artikel) | 73 | 3 | 11 | 13 | 42 | 37 % |
| **v2 GESAMT** | **157** | **5** | **23** | **23** | **94** | **34 %** |

**Vergleich zu v1-Stichprobe:** v1 hatte 50 % problematische Befundrate, v2 hat 34 % — signifikante Verbesserung durch besseres Prompting + Risiko-Triage.

## Verifizierte v2-Befunde

5 parallele Verifikations-Subagents haben alle 5 v2-CRITICALs + den MacVaugh-Streit + 9 ausgewählte MAJOR (Confidence < 0.90 oder besondere Wichtigkeit) gegengeprüft.

**Verifikations-Bilanz: 13 von 15 v2-Befunden voll bestätigt, 2 mit Korrektur:**

### Vollständig BESTÄTIGTE CRITICALs (alle 5)

1. **`self-explanation`** — Citation "Ericson, Morrison et al. (2020), IJAIED" ist tatsächlich **Fabic, Mitrovic, Neshatian (2019)** (Springer + ERIC bestätigt). Plus: "Berthold, Eysink, Renkl 2011" existiert nicht — 2009-Paper wird mit 2011-CHB-Paper hybridisiert. Plus: "From Offloading to Engagement" Data 2025 ist single-author Gerlich (Independence-Problem). Plus: **Barbieri 2023 widerspricht direkt** der Hauptthese des Artikels (verschärft von MINOR auf MAJOR — wörtliches Zitat aus Meta-Analyse: "pairing examples with self-explanation prompts may not be a fruitful design modification").
2. **`ki-integritaet-pruefungsleistung`** — Citation "Perkins, Furze, Roe & MacVaugh (2024), AIAS Revisited" ist hybridisiert: Autoren-Liste vom 2023er-Original-Paper + Titel/arXiv-ID vom 2024er-Revisited-Paper. Korrekt: arXiv:2412.09029 hat **nur Perkins, Roe, Furze** (kein MacVaugh).
3. **`direct-instruction-rosenshine`** — Lortie-Forgues 2019 + Evans & Yuan 2022 werden für DI-spezifische Re-Analyse zitiert, sind aber generische Mittelwerte über alle EEF/NCEE-RCTs bzw. LMIC-Bildung. **Bonus**: Evans & Yuan ist in EEPA, nicht Educational Researcher; Stockard et al. 2018 wäre der korrekte DI-Crosscheck und findet positive moderate-bis-große Effekte (also Gegenteil der intendierten Aussage).
4. **`kritische-ki-bewertungskompetenz`** — Citation "Sperling, Veldhuis, Lo et al. (2024)" ist tatsächlich **Veldhuis, Lo, Kenny, Antle (2025)** — Sperling kommt nicht vor, Jahr falsch.
5. **`ki-nutzungsregeln-unterricht`** — Citation "Liu, M. et al. (2025), SIGCSE" mit 89%-Statistik ist tatsächlich **Ali, Hingle, Dewan, McDonald & Johri (arXiv:2410.22281)**. Plus: die 89%-Behauptung ("CS-Studierende nutzen KI bereits vor Kursbeginn") steht **gar nicht im Paper** — das untersucht Syllabi-Policies, nicht Studierenden-Nutzungsraten.

### Cross-Repo-Befund: AIAS/MacVaugh in zwei Artikeln gleich falsch

Die identische Hybridisierung (MacVaugh als angeblicher Co-Autor des Revisited-Papers) steht in **beiden Repo-Artikeln** (`ki-integritaet-pruefungsleistung.md` Z. 186 + `ki-nutzungsregeln-unterricht.md` Z. 57, 188). Der zweite v2-Audit hatte fälschlich MINOR vergeben, weil aiassessmentscale.com alle vier pauschal als "creators of the AIAS" listet — paper-spezifische Differenzierung fehlt dort. Korrekte Severity für beide: **CRITICAL**.

### Bestätigte MAJOR-Erstautor-Verwechslungen

- **`mastery-learning`**: Jang et al. (2023, KJME) → tatsächlich **Winget & Persky (2022, AmJPharmEd)** — Misattribution
- **`mastery-learning`**: "Kulik 1990: PSI > LFM" widerspricht Quelle (LFM ist tatsächlich stärker)
- **`kritische-ki-bewertungskompetenz`**: Yang/Trap → **Rheu, Cho** (CHI EA 2025)
- **`kritische-ki-bewertungskompetenz`**: Lei/ACM FSE → **Zhang et al.** (arXiv 2409.20550)
- **`kritische-ki-bewertungskompetenz`**: Liu/HalluCode 5-Kategorien-Tabelle strukturell falsch (Dead Code fehlt, Context Deviation ist Oberkategorie nicht Primärkategorie)
- **`feedback-lernumgebungen`**: Phung-Citation hybridisiert zwei reale Phung-Papers (EDM 2023 vs. LAK 2024)
- **`feedback-lernumgebungen`**: Dai et al. 2023 falsches Venue (ICALT, nicht "Monash") + Sycophancy-Aussage steht nicht im Paper

### Bestätigte MAJOR — Faktenfehler im IHK-Block (didaktisch direkt für FIAE/FIDP relevant)

- **`ihk-pruefungskatalog-2025`**: "FIAE/FIDP/FIDV alle 80h Projektarbeit" — falsch. Nur **FIAE 80h**, FIDP/FIDV/FISI haben 40h.
- **`ihk-pruefungskatalog-2025`**: AP2-Prüfungsbereichsname "Entwicklung und Programmierung" — falsch. Korrekt nach FIAusbV: **"Entwicklung und Umsetzung von Algorithmen"**.

### Verifikations-Twist (1 von 15 Befunden)

- **`ki-nutzungsregeln-unterricht`** Liu/Bridgeman: v2 hatte richtig erkannt, dass Citation falsch ist, aber die **Korrektur** ("Bridgeman, Weeks & Liu") halluziniert — das ist ein anderer Sydney-Artikel ("Aligning our assessments"). Tatsächlich ist "Menus, not traffic lights" (Feb 2024) ein **Solo-Artikel von Danny Liu**. Korrekte Korrektur: **"Liu, D. (2024)"**.

## Methodik-Lehre aus Verifikations-Welle

1. **v2-Diagnose-Halluzinationsrate ≈ 0 %** in dieser Verifikation — alle 15 geprüften Diagnosen waren korrekt.
2. **Aber: Korrektur-Halluzination möglich (1 Fall)** — v2-Subagent kann den Fehler richtig erkennen, aber den Ersatz falsch vorschlagen. Konsequenz: Vor Fix muss jede konkrete Korrektur eigenständig verifiziert werden.
3. **Cross-Repo-Bug entdeckt** — die MacVaugh-Hybridisierung steht in zwei Artikeln gleich falsch. Bei systematischem Fehler-Muster lohnt eine Repo-weite Stichprobe nach derselben Citation.
4. **v2-Subagents können sich täuschen lassen durch oberflächliche Sekundärquellen** (aiassessmentscale.com listet alle AIAS-Autoren pauschal) — Cross-Check zwischen zwei v2-Audits hat den Fehler aufgedeckt. Empfehlung: Bei MINOR-Klassifikationen mit erkennbarer Inkonsistenz zwischen Audits immer verifizieren.

## Robust gesicherte CRITICAL-Liste (Stand 2026-04-30)

Nach beiden v2-Wellen + Verifikation bestätigt — **mit höchster Fix-Priorität**:

| Artikel | Citation | Korrekt |
|---|---|---|
| ki-tutoring-evidenzlage | Ma 2025 (k=68, g=0,45) | k=34, g=0,68 |
| ki-tutoring-evidenzlage | WestEd "47 Schulen" | nicht existent in dieser Form |
| ki-tutoring-evidenzlage | "ITS-Chatbot Self-Efficacy null" | Behauptung wahrscheinlich faktisch falsch (zwei MAs finden positive Effekte g=0,758/1,206) |
| deskilling-ki-codegenerierung | "Coppock, Dunn & Rao 2025" | Shen & Tamkin (Anthropic, 2026) |
| llm-as-grader | Cohn/Lee Hybridisierung | Lee et al. 2024 für Zahlen, Cohn separat |
| llm-as-grader | Phung LAK Titel-Hybrid | Aufspalten in ICER 2023 + LAK 2024 |
| llm-as-grader | Murphy 2012 / Corney 2014 Hybrid | Entscheiden 2012 oder 2014 |
| llm-as-grader | Stahl → Xiao | Xiao et al. (arXiv 2401.06431) |
| llm-as-grader | Zhang → Chu | Chu et al. (GradeOpt) |
| meta-analysen-cs-education | Margulieux 2020 als Meta-Analyse | ist Einzelstudie ohne d=0,44 |
| self-explanation | Ericson/Morrison 2020 | Fabic, Mitrovic, Neshatian 2019 |
| ki-integritaet + ki-nutzungsregeln | AIAS Revisited "MacVaugh" | nur Perkins, Roe, Furze (in beiden Artikeln gleich falsch) |
| direct-instruction-rosenshine | Lortie-Forgues + Evans & Yuan als DI-Crosscheck | nicht DI-spezifisch; Stockard 2018 wäre korrekt (zeigt aber positive Effekte) |
| kritische-ki-bewertungskompetenz | Sperling et al. IJCCI | Veldhuis, Lo, Kenny, Antle |
| ki-nutzungsregeln-unterricht | Liu, M. SIGCSE 89% | Ali et al., 89%-Behauptung steht nicht im Paper |
