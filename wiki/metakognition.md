---
title: Metakognition
type: theorie
tags: [metakognition, lernstrategien, selbstregulation, calibration, self-explanation, reflexion, flavell, referenz]
related:
  - "[[hint-engineering-llm-tutoring]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[lerntagebuch]]"
  - "[[debugging-als-kompetenz]]"
  - "[[affektive-dimensionen]]"
  - "[[productive-failure]]"
  - "[[formatives-assessment]]"
  - "[[blooms-taxonomie]]"
  - "[[scaffolding]]"
  - "[[expertise-entwicklung]]"
  - "[[retrieval-practice]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[misconception-analyse]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[zeitmanagement-selbstorganisation]]"
  - "[[cognitive-apprenticeship]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[primm-methode]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[lernortkooperation-transfer]]"
  - "[[live-coding-lehrmethode]]"
  - "[[cognitive-task-analysis]]"
  - "[[generative-learning-aktivitaeten]]"
  - "[[feedback-lernumgebungen]]"
  - "[[self-explanation]]"
  - "[[desirable-difficulties]]"
  - "[[interleaving]]"
  - "[[fachgespraech-didaktik]]"
  - "[[abschlussprojekt-begleitung]]"
  - "[[imposter-phaenomen-it-azubis]]"
  - "[[kritische-ki-bewertungskompetenz]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
created: 2026-04-08
updated: 2026-05-01
summary: >
  Flavell (1979): Metakognition als Wissen über und Steuerung der eigenen
  Kognition — mit zwei Dimensionen (Wissen, Regulation) und drei Regulations-
  phasen (Planning, Monitoring, Evaluating). Für die IT-Ausbildung zentral
  bei Debugging, Code-Reading und Projektplanung. Hatties Effektstärke d ≈ 0,60.
---

# Metakognition

## Kernidee

Metakognition ist "Denken über das eigene Denken" (Flavell 1979) — das Wissen über die eigene Kognition und die Fähigkeit, sie aktiv zu steuern. Sie umfasst zwei Dimensionen: **metakognitives Wissen** (was weiß ich über mein Lernen, die Aufgabe, passende Strategien?) und **metakognitive Regulation** (Planen, Überwachen, Bewerten während des Lernens). Für angehende Fachinformatiker:innen ist Metakognition besonders relevant, weil Programmieren — insbesondere Debugging — permanent die Frage erfordert: *"Stimmt mein mentales Modell noch mit dem Verhalten des Systems überein?"*

## Beschreibung

### Die zwei Dimensionen

Flavell (1979) unterschied zwei analytisch trennbare Ebenen:

**Metakognitives Wissen** — stabiles, deklaratives Wissen über Kognition:
> "Ich weiß, dass ich beim Code-Lesen immer vorzeitig interpretiere — ich muss bewusst langsamer tracen."

**Metakognitive Regulation** — aktive Steuerung während einer Aufgabe:
> "Der Test schlägt fehl, ich hatte erwartet, dass die Schleife einmal läuft. Meine Annahme stimmt nicht mit der Realität — ich brauche einen Breakpoint, keinen weiteren Fix-Versuch."

Schraw & Moshman (1995) zeigten, dass beide Dimensionen empirisch korrelieren, aber unterschiedliche Entwicklungsverläufe und Interventionen brauchen. Wissen entsteht durch Reflexion und explizite Instruktion; Regulation durch geübtes Scaffolding und Feedback während der Tätigkeit.

### Drei Arten metakognitiven Wissens

Nach Flavell (1979) und Schraw & Moshman (1995):

| Art | Frage | Beispiel (Programmierung) |
|-----|-------|---------------------------|
| **Deklarativ** (Person/Aufgabe) | *Was* weiß ich über mich und die Aufgabe? | "Ich verstehe Rekursion schlechter als Iteration." |
| **Prozedural** (Strategie) | *Wie* führe ich eine Strategie aus? | "Rubber-Duck-Debugging: jede Zeile laut erklären, nicht nur den Bugbereich." |
| **Konditional** (Wann/Warum) | *Wann* und *warum* wende ich welche Strategie an? | "Bei unklarem Fehlerort: Bisektion. Bei klarer Hypothese: gezielter Breakpoint." |

**Konditionales Wissen ist der häufigste Engpass:** Azubis *kennen* Strategien, wissen aber nicht, *wann* sie passen. Das macht Expertise aus (vgl. [[expertise-entwicklung]]).

### Drei Phasen metakognitiver Regulation

Nach Schraw & Moshman (1995), strukturell identisch mit Zimmermans SRL-Phasen:

**1. Planning (vor der Aufgabe)** — Ziele setzen, Vorwissen aktivieren, Strategie wählen, Zeitbudget schätzen.
> *IT-Beispiel:* Bevor ich eine Funktion schreibe — welche Signatur? welche Edge Cases? welche Datenstruktur?

**2. Monitoring (während der Aufgabe)** — laufender Ist-Soll-Vergleich: Verstehe ich noch? Stimmt mein mentales Modell? Bringt meine Strategie etwas?
> *IT-Beispiel:* Beim Code-Lesen innehalten: "Was wäre der Wert dieser Variable jetzt? Habe ich das verstanden oder überflogen?"

**3. Evaluating (nach der Aufgabe)** — Ergebnis bewerten, Strategieeffektivität beurteilen, Lehre ziehen.
> *IT-Beispiel:* "Ich habe 90 Minuten gedebuggt, weil ich die Fehlermeldung nicht gelesen habe. Nächstes Mal: erst 2 Minuten Fehlermeldung."

**Monitoring ist die Achillesferse:** Es erfordert *Unterbrechung im Flow*, und genau darauf verzichten Novizen.

### Calibration und Overconfidence

**Calibration** = Übereinstimmung zwischen *wahrgenommener* und *tatsächlicher* Kompetenz. Schlecht kalibrierte Lernende wissen nicht, was sie nicht wissen.

- **Dunning-Kruger-Effekt** (Kruger & Dunning 1999): Lernende mit geringer Kompetenz überschätzen sich systematisch — ihnen fehlt das metakognitive Wissen, um ihre Lücken zu erkennen. Erst wachsende Kompetenz macht die eigenen Schwächen sichtbar.
- **Overconfidence beim Programmieren** (Gorson & O'Rourke, ICER 2020; vgl. Prather et al. 2020 für eine systematische Review der CS1-Metakognitions-Literatur): CS1-Lernende überschätzen massiv ihre Fähigkeit, Code zu erklären — selbst bei Code, den sie nicht korrekt tracen können.
- **Illusion of Understanding:** Beim Lesen von Tutorials fühlt sich vieles "klar" an, bis man selbst schreiben soll. Das ist ein metakognitives Versagen, kein Wissensdefizit.

**Interventionen zur besseren Calibration:**
- Predict-Run-Verify ([[primm-methode]]): Vorhersage vor Ausführung macht Miskalibrierung sichtbar
- Selbsteinschätzung vor dem Test, mit nachträglichem Abgleich
- [[retrieval-practice]] statt Re-Reading — macht Wissenslücken spürbar
- Fehlerquoten-Feedback in Lernsystemen

### Metakognitive Strategien im IT-Unterricht

1. **Self-Explanation beim Code-Reading** (Chi et al. 1989, 1994): "Erkläre, warum diese Zeile nötig ist und was ohne sie passieren würde." Chi zeigte: Lernende, die sich Beispiele selbst erklären, lernen signifikant mehr.
2. **Pre-Action-Prompt (Planning):** "Bevor du Code schreibst — beschreibe in drei Sätzen: Was tut die Funktion, welche Eingaben, welche Ausgaben, welche Randfälle?"
3. **Monitoring-Prompt:** "Halte alle 10 Minuten an: Bin ich noch auf dem richtigen Weg? Könnte ich jemandem erklären, wo ich stehe?"
4. **Post-Debug-Prompt (Evaluating):** "Was war die Ursache? Welche Strategie hat geholfen? Was hätte ich früher tun können?" → Eintrag ins [[lerntagebuch]].
5. **Think-Aloud-Protocol:** Beim Bearbeiten einer Aufgabe laut denken; Partner:in hört zu und unterbricht bei Sprüngen. Fördert Verbalisierung impliziten Wissens.
6. **Confidence-Rating vor dem Ausführen:** "Wie sicher bist du, dass dieser Code läuft? (1-5)" → nach dem Run Abgleich. Kalibrierungstraining.
7. **Strategie-Journal:** "Welche drei Debugging-Strategien habe ich diese Woche genutzt? Welche war am effektivsten?"
8. **KI-Tutor als metakognitiver Partner** (vgl. [[ki-gestuetztes-tutoring]]): Prompts, die nicht Lösungen geben, sondern fragen *"Was weißt du schon? Welche Hypothese hast du? Wie würdest du sie testen?"*

## Bezug zur IT-Ausbildung

Programmieren ist eine der metakognitivsten Tätigkeiten überhaupt — nahezu jeder Arbeitsschritt verlangt einen Ist-Soll-Vergleich zwischen Erwartung und beobachtetem Verhalten.

| Aktivität | Metakognitive Kernfrage |
|---|---|
| **LF5 — SQL-Entwicklung** | "Erwarte ich genau dieses Ergebnis — und wenn nicht, welche Annahme stimmt nicht?" |
| **LF6 — Troubleshooting** | "Welche Schicht des Stacks habe ich noch nicht geprüft?" |
| **LF10-12 — Projekte** | Planning: Aufwandsschätzung. Monitoring: Sprint-Reviews. Evaluating: Retrospektive. |
| **Debugging** (vgl. [[debugging-als-kompetenz]]) | "Ist mein mentales Modell der Laufzeit korrekt? Was widerspricht meiner Hypothese?" |
| **Code-Reading** | Self-Explanation: "Warum steht das hier?" statt überfliegen. |
| **Abschlussprüfung** | Zeitmanagement und Aufgabenwahl sind **metakognitive** Kompetenzen. |

Der KMK-Rahmenlehrplan formuliert "selbstgesteuertes Handeln" als explizites Ziel — das ist ohne Metakognition nicht erreichbar. Die berufliche Handlungskompetenz baut implizit auf metakognitivem Wissen auf: Planen, Durchführen, Kontrollieren, Bewerten.

**Praktische Konsequenz:** Metakognition muss **explizit gelehrt** werden — sie entsteht nicht von selbst beim Programmieren. Live-Debugging mit Think-Aloud (vgl. [[cognitive-apprenticeship]]), strukturierte Reflexionsprompts im Lerntagebuch und Confidence-Ratings vor Tests sind drei wirksame Einstiegshebel.

### Evidenz

- **Hattie (Visible Learning):** Metakognitive Strategien d ≈ **0,60** (visible-learning.org Ranking 2018) — konsistent in den Top-20-Interventionen. Hattie & Donoghue (2016, *npj Science of Learning*) differenzieren weiter nach Substrategien; im Volltext bestätigt ist u.a. *self-monitoring* d ≈ 0,71, weitere Substrategien-Werte erfordern zellengenaue Tabellen-Lektüre.
- **Self-Explanation (Chi et al. 1989/1994):** d ≈ 0,55–0,80 je nach Implementierung, besonders groß bei prozeduralen Domänen.
- **Dignath & Büttner (2008, Meta-Analyse):** metakognitive Trainings Sekundarbereich d = 0,54 auf Leistung, d = 0,73 als ungewichteter Gesamt-Effekt (nicht spezifisch auf Strategienutzung beschränkt).

**Wichtige Randbedingungen:**
- Generische "Lernstrategie-Trainings" ohne Fachinhalt wirken kaum.
- Metakognitive Instruktion muss **in** der Domäne erfolgen — Debugging, nicht "Reflexion im Allgemeinen".
- Kurzzeitinterventionen reichen nicht; Effekte entstehen über Wochen.

## Praktische Anwendung

Ein Agent oder eine Lehrkraft kann Metakognition operationalisieren:

1. **Metakognitive Prompts** in interaktive Lernumgebungen einbauen — vor Aufgabenstart (Planning), während (Monitoring), nach Abschluss (Evaluating).
2. **Confidence-Slider** vor jeder Antwort — Kalibrierungsdaten sammeln, Lernenden Feedback zur eigenen Einschätzung geben.
3. **Self-Explanation als Widget** — bei Code-Beispielen zwingt das System, vor dem Weiterklicken zu erklären, was eine Zeile tut.
4. **Predict-the-Output** vor jeder Ausführung — zwingt zur Hypothesenbildung.
5. **Debugging-Journal** im [[lerntagebuch]]-Format — strukturierte Prompts nach jedem Debug-Lauf.
6. **KI-Tutor im sokratischen Modus** (vgl. [[llm-integrationsmuster-lernumgebungen]]) — fragt, statt zu antworten.
7. **Lehrkraft modelliert explizit** — beim Live-Coding die eigenen Entscheidungen laut verbalisieren ("Warum wähle ich hier eine Map? Weil ich O(1)-Lookup brauche.").

## Verwandte Konzepte

- [[selbstgesteuertes-lernen]] — SRL operationalisiert metakognitive Regulation im Zimmerman-Rahmen
- [[lerntagebuch]] — konkrete Methode zur Förderung der Evaluating-Phase
- [[debugging-als-kompetenz]] — Debugging als angewandte Metakognition
- [[affektive-dimensionen]] — Growth Mindset prägt, *ob* metakognitive Strategien angewandt werden
- [[productive-failure]] — Scheitern macht Miskalibrierung sichtbar
- [[formatives-assessment]] — Hattie-Timperleys "Self-Regulation Level" ist die metakognitive Feedback-Ebene
- [[blooms-taxonomie]] — metakognitives Wissen ist die 4. Wissensdimension der revidierten Taxonomie
- [[scaffolding]] — metakognitives Scaffolding mit Fading
- [[expertise-entwicklung]] — konditionales Wissen unterscheidet Novizen und Expert:innen
- [[retrieval-practice]] — macht Miskalibrierung spürbar
- [[ki-gestuetztes-tutoring]] — KI als metakognitiver Dialogpartner
- [[misconception-analyse]] — Metakognition hilft, eigene Misconceptions zu erkennen
- [[pruefungsvorbereitung-lernstrategie]] — Kalibrierung vor Prüfungen
- [[zeitmanagement-selbstorganisation]] — Weekly Review als metakognitive Routine

## Quellen

- Flavell, J. H. (1979). Metacognition and cognitive monitoring: A new area of cognitive-developmental inquiry. *American Psychologist*, 34(10), 906-911.
- Schraw, G., & Moshman, D. (1995). Metacognitive theories. *Educational Psychology Review*, 7(4), 351-371.
- Chi, M. T. H., Bassok, M., Lewis, M. W., Reimann, P., & Glaser, R. (1989). Self-explanations: How students study and use examples in learning to solve problems. *Cognitive Science*, 13(2), 145-182.
- Chi, M. T. H., de Leeuw, N., Chiu, M.-H., & LaVancher, C. (1994). Eliciting self-explanations improves understanding. *Cognitive Science*, 18(3), 439-477.
- Kruger, J., & Dunning, D. (1999). Unskilled and unaware of it. *Journal of Personality and Social Psychology*, 77(6), 1121-1134.
- Hattie, J., & Donoghue, G. M. (2016). Learning strategies: A synthesis and conceptual model. *npj Science of Learning*, 1, 16013.
- Dignath, C., & Büttner, G. (2008). Components of fostering self-regulated learning among students. *Metacognition and Learning*, 3(3), 231-264.
- Prather, J., Becker, B. A., Craig, M., Denny, P., Loksa, D., & Margulieux, L. (2020). What do we think we think we are doing? Metacognition and self-regulation in programming. *Proceedings of ICER 2020*, 2-13. (Systematic Review der CS1-Metakognitions-Literatur, keine Primärempirie.)
- Gorson, J., & O'Rourke, E. (2020). Why do CS1 students think they're bad at programming? Investigating self-efficacy and self-assessments at three universities. *Proceedings of ICER 2020.*
