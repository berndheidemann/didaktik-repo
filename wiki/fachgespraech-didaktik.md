---
title: "Fachgespräch-Didaktik / Oral Assessment"
type: methode
tags: [fachgespraech, oral-assessment, ihk-ap2, muendliche-pruefung, anti-ai-cheating, wait-time, joughin]
related:
  - "[[rubric-design]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[formatives-assessment]]"
  - "[[metakognition]]"
  - "[[self-explanation]]"
  - "[[code-review-unterricht]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[mastery-learning]]"
  - "[[live-coding-lehrmethode]]"
  - "[[feedback-lernumgebungen]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[affektive-dimensionen]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[explain-in-plain-english]]"
  - "[[ihk-pruefungskatalog-2025]]"
  - "[[abschlussprojekt-begleitung]]"
  - "[[imposter-phaenomen-it-azubis]]"
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[ki-integritaet-pruefungsleistung]]"
  - "[[kritische-ki-bewertungskompetenz]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, analysieren, bewerten]
sozialform: [einzelarbeit, partner, plenum]
created: 2026-04-20
updated: 2026-05-01
summary: >
  Mündliche Assessments als didaktische Methode und als Prüfungsformat.
  IHK-Fachgespräch (AP2, 50% der Projektnote) ist der deutsche Kern-Anwendungsfall,
  international erlebt Oral Assessment 2024-2026 eine Renaissance als
  KI-resistente Prüfungsform. Design-Prinzipien (Fragehierarchie, Wait Time,
  Scaffolding bei Blockade), Trainingsformate für den Unterricht und
  Fairness-/Angstkontrolle.
---

# Fachgespräch-Didaktik / Oral Assessment

## Kernidee

Mündliche Prüfungen waren lange ein Nischenformat — mit der Welle generativer KI werden sie seit 2024 international wiederentdeckt, weil ChatGPT keine Fachgespräche unter Zeitdruck führt. Das **IHK-Fachgespräch in AP2** ist das deutsche Kern-Anwendungsfeld: bis zu 15 Minuten Präsentation der betrieblichen Projektarbeit plus etwa 15 Minuten Fachgespräch vor einem Prüfungsausschuss, zusammen 50 % der Bewertung dieses Prüfungsbereichs. Didaktisch funktioniert Fachgespräch nur, wenn es **regelmäßig, in niedrigen Stakes und mit Rubric** im Unterricht geübt wird — sonst wird es zur Stressprüfung, in der auch kompetente Azubis scheitern.

## Beschreibung

### IHK-Fachgespräch AP2 (Fachinformatiker, FIAusbV 2020)

- **Format:** Präsentation der betrieblichen Projektarbeit höchstens 15 Min (§20 FIAusbV), gefolgt von etwa 15 Min Fachgespräch; gemeinsam 30 Min.
- **Prüfungsausschuss:** drei Personen, davon ein Berufsschullehrer plus zwei Berufspraktiker aus Arbeitgeber- und Arbeitnehmerseite (BBiG §40).
- **Bewertungsdimensionen:** Fach-, Methoden- und Sozialkompetenz. Der PA agiert als fachkundiges Publikum und erwartet **begründete Entscheidungen** und **dargelegte Alternativen**, nicht nur Beschreibungen.
- **Prüfungskatalog 2025 (AKA/IHK):** Kompetenzbereiche neu konkretisiert. Für FIAE: UML und BPMN verbindlich, Struktogramm/PAP entfallen. Das ist eine Anpassung des Prüfungskatalogs, keine Novelle der FIAusbV (die Verordnung selbst gilt unverändert seit 2020).
- **Typische Azubi-Schwächen:** Fachtermini vermeiden, monologische Antworten ohne Struktur, Blackout bei Rückfragen, "Nennen statt Erklären", Unsicherheit bei "Warum-nicht-anders"-Fragen.

### Evidenzlage Oral Assessment

- **Joughin (1998)** liefert den klassischen Rahmen mit sechs Dimensionen: Primary Content, Interaction, Authenticity, Structure, Examiners, Orality.
- **Huxham, Campbell & Westwood (2012):** Studierende bereiten sich für Orals gründlicher vor und performen teilweise besser als schriftlich — bei erhöhter Nervosität. Risiko: Benachteiligung introvertierter oder nicht-muttersprachlicher Lernender.
- **Ohmann (2019)** etabliert Oral Exams in der CS-Education-Forschung (SIGCSE 2019).
- **Ohmann & Novak (SIGCSE TS 2025)** "A Multi-Institutional Assessment of Oral Exams in Software Courses" — Oral Exams sind als Final Assessment bei kleineren Gruppen praktikabel und reliabel, solange transparente Rubric und Übungsgelegenheiten vorab vorhanden sind.
- **Cotton, Cotton & Shipway (2023)** "Chatting and Cheating" diskutieren Oral Assessment u.a. als Antwort auf ChatGPT-bedingte Integritätsprobleme.
- **Rowe (1986)** "Wait Time": 3–5 Sekunden Pause nach Fragen produzieren messbar tiefere Antworten und mehr Volunteers — Lehrkräfte warten ohne Training typischerweise unter einer Sekunde.

### Design-Prinzipien

**Fragehierarchie:**

| Ebene | Typ | Beispiel | Erkenntniswert |
|---|---|---|---|
| 1 | Factual | "Was ist ein Primärschlüssel?" | Definition — Auswendiglernen reicht |
| 2 | Procedural | "Wie würdest du diesen Index setzen?" | Prozedurale Anwendung |
| 3 | Conceptual | "Warum hast du hier auf eine Normalisierung verzichtet?" | Verständnis, trennt oberflächlich von tief |
| 4 | Metacognitive | "Woher weißt du, dass das die beste Lösung ist?" | Selbstwissen, stärkster Indikator für Kompetenz |

IHK-PAs fragen primär auf Ebene 3 und 4. Das Üben sollte spiegelgleich verteilt sein.

**Wait Time (Rowe):** Nach jeder Frage 3–5 Sekunden schweigen, ebenso nach der Antwort. Das eine erzeugt Denkzeit, das andere lädt zur Elaboration ein. Die Regel ist einfach, die Praxis schwer — ohne Stoppuhr füllen Lehrkräfte die Pause reflexhaft.

**Scaffolding bei Blockade:** Frage **umformulieren**, nicht auflösen. Stufenleiter von Ebene 4 auf 3 auf 2. Beispiel: "Warum hast du SQLite gewählt?" → "Welche Alternativen hast du dir angeschaut?" → "Was sind die Einsatzszenarien von SQLite versus PostgreSQL?"

**Follow-up als Diagnose-Tool:** "Was, wenn *X* anders wäre?" trennt Auswendiglernen von Verständnis zuverlässiger als jede Einzelfrage.

**Rubric-basiertes Scoring:** Siehe [[rubric-design]] — ohne Rubric ist Oral Assessment beliebig. Beispiel für AP2-Mock: 4 Kriterien (Fachliche Tiefe / Begründung / Terminologie / Interaktion), je 4 Levels, Verhaltens-Anchors.

### Fairness und Bias

- **Halo-Effekt:** Gesamteindruck überträgt auf Kriterien. Gegenmittel: Rubric mit strikter Kriterien-Trennung.
- **Sprach- und Akzentbias:** Akzent, Dialekt, unflüssige Grammatik färben Urteile. Relevant für DaZ-Azubis (siehe [[sprachsensibler-it-unterricht]]). Gegenmittel: Fachterminologie getrennt von Sprachflüssigkeit bewerten.
- **Sozioökonomischer Bias:** Selbstbewusstsein korreliert mit Milieu; Introvertierte wirken oft weniger kompetent, als sie sind.
- **Gegenmittel insgesamt:** strukturierte Fragebatterien, mehrere Rater (IHK-PA mit drei Personen), Rubric, Kalibrierungs-Sessions.

## Bezug zur IT-Ausbildung

Das Fachgespräch ist **nicht neu**, sondern tief in der dualen Ausbildung verwurzelt — die Berufsschule hat hier einen strukturellen Vorsprung gegenüber Hochschulen, die Oral Assessment 2024 gerade entdecken. Der didaktische Fehler ist meist derselbe: Das Fachgespräch wird als Prüfungsformat behandelt, aber nicht als Unterrichtsformat geübt.

**Konsequenz:** Azubis treffen die mündliche Prüfung in AP2 zum ersten Mal unter echten Bedingungen. Blackout, verengte Fachsprache und Prüfungsangst sind die direkte Folge. Regelmäßiges, niedrigschwelliges Training ist der einzige wirksame Hebel.

## Praktische Anwendung

### Trainingsformate im Unterricht

| Format | Dauer | Frequenz | Stakes |
|---|---|---|---|
| **Mündliche Minute** — 1 Min Antwort auf Fachfrage, stehend, ohne Notizen | 3 Min pro Schüler | wöchentlich | niedrig |
| **Fishbowl** — 1 "Prüfling", 2 "Prüfer", Rest beobachtet mit Rubric | 20 Min | alle 3 Wochen | mittel |
| **Code-Walkthrough** — Azubi erklärt eigenen Code, Lehrer stellt Follow-ups | 10 Min pro Person | alle 2 Wochen | niedrig |
| **Peer-Fachgespräch** mit Rubric-Feedback | 30 Min | monatlich | niedrig |
| **Mock-AP2** — kompletter Simulationsdurchlauf | 30 Min | 3× im letzten Jahr | hoch |

**Think-Aloud beim Code-Lesen** (siehe auch [[self-explanation]] und [[live-coding-lehrmethode]]): Der Azubi spricht laut, was er liest und denkt. Baut die verbale Muskulatur für das Fachgespräch.

### KI als Trainingspartner

Realtime-Voice-APIs (OpenAI, Azure OpenAI EU) können einen "IHK-Prüfer" simulieren. Prompt-Skelett:

> "Du bist strenger IHK-Prüfer im Fachgespräch FIAE-AP2. Stelle nach der Azubi-Präsentation Follow-ups auf Ebene 3 und 4 der Fragehierarchie. Warte nach jeder Antwort 3 Sekunden, bevor du nachfragst. Bewerte am Ende mit dieser Rubric: [...]. Erwarte UML/BPMN statt Struktogramm."

**DSGVO:** Keine Azubi-Namen oder Betriebsdaten an US-APIs geben. Azure OpenAI EU-Region oder on-prem-Modelle bevorzugen.

**Evidenz-Hinweis:** Talkpal-Studien zu Sprachlern-Apps (Dikaprio & Diem 2024, p < 0,01) zeigen signifikante Sprechfertigkeitsgewinne — übertragbar als Indiz, nicht als AP2-Beleg. Die KI ersetzt nicht die affektive Stressexposition eines realen PA; Mock-Prüfungen mit echten Menschen bleiben nötig.

### Psychologische Sicherheit

Das Fachgespräch erzeugt hohen affektiven Stress. Bandura-orientiertes Gegenmittel: **vier Quellen der Selbstwirksamkeit** stärken — Erfolgserlebnisse durch Mock-Bestehen, Modelllernen durch Fishbowl, verbale Überzeugung durch Lehrerfeedback, emotionale Regulation durch Atemübungen vor Prüfungen. **Normalisierung durch Häufigkeit** ist der stärkste Hebel: wer alle drei Wochen mündlich geprüft wird, erlebt AP2 weniger als Ausnahmezustand.

### Häufige Fehler-Cluster bei Azubis

- Nennen statt Erklären ("Das ist ein JOIN.") — kein Verständnisnachweis
- Auswendiggelernte Definitionen ohne Anwendung
- Blackout bei unerwarteten Fragen — Atemübung und Umformulierungsstrategie trainieren
- Fachsprache vermeiden, bei DaZ-Azubis häufig — Wortspeicher und Paraphrase-Übungen
- Monologe ohne Pause oder Interaktion — "Sprich 90 Sekunden maximal, dann Punkt"

## Verwandte Konzepte

- [[rubric-design]] — ohne Rubric ist Oral Assessment beliebig
- [[kompetenzfeststellung-programmierung]] — Fachgespräch als authentische Bewertungsform
- [[pruefungsvorbereitung-lernstrategie]] — Fachgespräch-Training als Teil der AP2-Strategie
- [[self-explanation]] — verbale Erklärungsfähigkeit als Lernhebel und Fachgesprächs-Grundlage
- [[metakognition]] — Kalibrierung der eigenen Antworten (Ebene-4-Fragen)
- [[code-review-unterricht]] — verwandtes mündlich-erklärendes Format
- [[live-coding-lehrmethode]] — Think-Aloud als Trainingsform
- [[sprachsensibler-it-unterricht]] — Fachsprache und Wortspeicher-Arbeit
- [[affektive-dimensionen]] — Prüfungsangst, Selbstwirksamkeit
- [[llm-integrationsmuster-lernumgebungen]] — Rollen-Prompt als Prüfer-Simulator

## Quellen

- Joughin, G. (1998). Dimensions of oral assessment. *Assessment & Evaluation in Higher Education, 23*(4), 367–378.
- Huxham, M., Campbell, F. & Westwood, J. (2012). Oral versus written assessments: A test of student performance and attitudes. *Assessment & Evaluation in Higher Education, 37*(1), 125–136.
- Ohmann, P., & Novak, E. (2025). A Multi-Institutional Assessment of Oral Exams in Software Courses. *Proceedings of SIGCSE TS 2025.* ACM. https://doi.org/10.1145/3641554.3701848
- Ohmann, P. (2019). An Assessment of Oral Exams in Introductory CS. *Proceedings of SIGCSE 2019.* ACM. https://doi.org/10.1145/3287324.3287489
- Fenton, A. (2025). Reconsidering the Use of Oral Exams and Assessments: An Old Way to Move Into a New Future. *Educational Researcher, 54*(7), 430–436.
- Cotton, D. R. E., Cotton, P. A., & Shipway, J. R. (2023). Chatting and Cheating: Ensuring Academic Integrity in the Era of ChatGPT. *Innovations in Education and Teaching International.*
- Rowe, M. B. (1986). Wait time: Slowing down may be a way of speeding up! *Journal of Teacher Education, 37*(1), 43–50.
- Dikaprio & Diem, C. D. (2024). How effective is Talkpal.ai in enhancing English proficiency? *Language, Technology, and Social Media, 2*(1).
- Bandura, A. (1997). *Self-efficacy: The exercise of control.* Freeman.
- Verordnung über die Berufsausbildung in den Berufen der Informationstechnik (FIAusbV vom 28. Februar 2020), §20. https://www.gesetze-im-internet.de/fiausbv/
- AKA/IHK (2025). Prüfungskatalog Fachinformatiker AP2 (Stand 2025).
