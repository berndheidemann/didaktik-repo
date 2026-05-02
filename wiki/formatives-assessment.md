---
title: Formatives Assessment
type: methode
tags: [assessment, feedback, lernstandserhebung, diagnostik, leistungsbewertung]
related:
  - "[[aktivierung-lehrervortrag]]"
  - "[[direct-instruction-rosenshine]]"
  - "[[unterrichtsphasen-artikulation]]"
  - "[[constructive-alignment]]"
  - "[[blooms-taxonomie]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[scaffolding]]"
  - "[[pair-programming-unterricht]]"
  - "[[code-review-unterricht]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[lerntagebuch]]"
  - "[[retrieval-practice]]"
  - "[[productive-failure]]"
  - "[[cognitive-apprenticeship]]"
  - "[[debugging-als-kompetenz]]"
  - "[[effektstaerken-unterricht]]"
  - "[[flipped-classroom]]"
  - "[[gamification-it-unterricht]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[learning-engineering]]"
  - "[[lernsituationen-gestalten]]"
  - "[[peer-instruction]]"
  - "[[threshold-concepts]]"
  - "[[worked-examples]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[evaluation-lernumgebungen]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[kooperatives-lernen]]"
  - "[[metakognition]]"
  - "[[fehlerkultur-im-unterricht]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[misconception-analyse]]"
  - "[[differenzierung-inklusion]]"
  - "[[contrasting-cases]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[expertise-entwicklung]]"
  - "[[low-floor-high-ceiling]]"
  - "[[poe-methode]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[rag-tutoring-systeme]]"
  - "[[cognitive-task-analysis]]"
  - "[[generative-learning-aktivitaeten]]"
  - "[[testitem-konstruktion-digital]]"
  - "[[feedback-lernumgebungen]]"
  - "[[llm-as-grader]]"
  - "[[icap-framework]]"
  - "[[mastery-learning]]"
  - "[[rubric-design]]"
  - "[[fachgespraech-didaktik]]"
  - "[[explain-in-plain-english]]"
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[ki-integritaet-pruefungsleistung]]"
evidenzgrad: praxisbericht
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
sozialform: [einzelarbeit, partner, gruppe, plenum]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Assessment FOR Learning: Lernstandsinformationen während des Unterrichts
  erheben und nutzen, um Lernen zu verbessern. Black & Wiliams narrative
  Synthese (1998) bündelt Effektstärken d = 0,4-0,7; spätere Meta-Analysen
  (Kingston & Nash 2011) finden mit d ≈ 0,2-0,3 kleinere, aber konsistent
  positive mittlere Effekte — eine der wirksamsten Interventionsklassen.
---

# Formatives Assessment

## Kernidee

Formatives Assessment erhebt Informationen über den Lernstand während des Lernprozesses und nutzt sie, um Unterricht und Lernen anzupassen. Im Gegensatz zu summativem Assessment (Klausur, IHK-Prüfung) geht es nicht um Bewertung, sondern um Verbesserung. Black & Wiliam (1998) bündelten in einer narrativen Synthese aus rund 250 Studien Effektstärken von d = 0,4–0,7 — besonders leistungsschwächere Lernende profitieren. Spätere Meta-Analysen (z. B. Kingston & Nash, 2011, d ≈ 0,20–0,30) finden deutlich kleinere mittlere Effekte; die Wirkrichtung bleibt aber positiv und FA gilt nach wie vor als eine der wirksamsten Interventionsklassen.

## Beschreibung

### Formativ vs. summativ

| | Formativ (FOR Learning) | Summativ (OF Learning) |
|---|---|---|
| **Zweck** | Lernprozess verbessern | Lernergebnis dokumentieren |
| **Zeitpunkt** | Während des Lernens | Am Ende einer Einheit |
| **Konsequenz** | Unterricht/Lernen anpassen | Note, Zeugnis |
| **IT-Beispiel** | Code-Review mit Verbesserungsfeedback | IHK-Abschlussprüfung |

### Wiliams 5 Schlüsselstrategien

| # | Strategie | IT-Unterrichts-Beispiel |
|---|-----------|------------------------|
| 1 | **Lernintentionen und Erfolgskriterien klären** | "Deine REST-API soll alle CRUD-Operationen abdecken. Erfolg: alle 8 Unit-Tests grün." |
| 2 | **Evidenz über Lernen erheben** | Diagnostische Mini-Aufgaben, Exit-Tickets, Whiteboard-Antworten |
| 3 | **Feedback geben, das weiterbringt** | Code-Review mit konkretem Verbesserungsvorschlag, nicht nur "falsch" |
| 4 | **Lernende als Lernressourcen füreinander** | [[pair-programming-unterricht]], Peer-Code-Reviews |
| 5 | **Lernende als Eigentümer ihres Lernens** | Lerntagebuch, Selbstbewertungs-Checklisten (→ [[selbstgesteuertes-lernen]]) |

### Hattie & Timperleys Feedback-Modell (2007)

Effektives Feedback beantwortet drei Fragen:

- **Feed-Up:** "Wo will ich hin?" → Ziel klären
- **Feed-Back:** "Wo stehe ich?" → Fortschritt einschätzen
- **Feed-Forward:** "Was ist der nächste Schritt?" → Handlung ableiten

Vier Ebenen (nach Aufgabennähe geordnet; Process und Self-Regulation sind für tiefes Lernen wirksamer als Task):

| Ebene | Fokus | IT-Beispiel | Wirksamkeit |
|-------|-------|-------------|-------------|
| **Task** | Korrektheit der Arbeit | "In Zeile 14 fehlt die WHERE-Klausel" | Gut für Anfänger |
| **Process** | Strategien und Vorgehensweisen | "Zerlege das Problem in kleinere Funktionen" | Sehr wirksam, fördert Transfer |
| **Self-Regulation** | Metakognition, Selbstüberwachung | "Hast du die Fehlermeldung gelesen? Einen Breakpoint gesetzt?" | Am nachhaltigsten |
| **Self** | Personenlob | "Du bist ein guter Programmierer" | **Unwirksam** — keine handlungsrelevante Info |

## Durchführung

1. **Erfolgskriterien definieren** — vor der Aufgabe klären, woran Erfolg erkennbar ist (Strategie 1)
2. **Evidenz erheben** — während der Arbeit Lernstand sichtbar machen: Mini-Aufgaben, Beobachtung, Fragen (Strategie 2)
3. **Feedback geben** — abgestuft: Task → Process → Self-Regulation. Feed-Forward priorisieren (Strategie 3)
4. **Peers einbinden** — Code-Reviews, Peer-Debugging, Think-Pair-Share (Strategie 4)
5. **Reflexion ermöglichen** — Selbstbewertung gegen Erfolgskriterien, Lerntagebuch (Strategie 5)

## Voraussetzungen

- Lehrkraft muss bereit sein, Unterricht basierend auf erhobener Evidenz anzupassen
- Klare Erfolgskriterien müssen vor der Aufgabe formuliert sein (→ [[constructive-alignment]])
- Bei digitalem Assessment: Zugang zu automatisierten Test-/Feedback-Tools
- Vertrauensvolle Lernatmosphäre, in der Fehler als Lernchance gelten

## Varianten

- **Exit-Tickets:** Am Ende jeder Stunde eine Frage beantworten ("Was hast du heute gelernt? Was ist unklar?")
- **Peer-Assessment:** Lernende bewerten gegenseitig nach vorgegebenen Kriterien (Code-Reviews, Checklisten)
- **Digitales Echtzeit-Assessment:** Automatisierte Unit-Tests, Linter-Feedback, CI/CD-Pipelines als kontinuierliches Assessment
- **Diagnostische Aufgaben:** Kurze, gezielte Aufgaben, die typische Fehlkonzepte aufdecken

## Zeitbedarf

- **Vorbereitung:** Gering bis mittel (Erfolgskriterien und diagnostische Aufgaben erstellen)
- **Durchführung:** Kontinuierlich in den Unterricht integriert (kein separater Zeitblock)
- **Nachbereitung:** 10-15 Min. pro Einheit für Ergebnis-Auswertung und Unterrichtsanpassung

## Bezug zur IT-Ausbildung

IT-Unterricht bietet einzigartige Vorteile für formatives Assessment, weil Code inhärent bewertbar ist — Tests laufen grün oder rot.

| Werkzeug | Formative Funktion | Feedback-Ebene |
|----------|-------------------|----------------|
| **Unit-Tests** (JUnit, pytest) | Sofortiges Feedback über Korrektheit | Task |
| **Linter** (ESLint, Pylint) | Feedback zu Code-Qualität | Process |
| **CI/CD-Pipelines** | Automatisierte Prüfung bei jedem Commit | Task + Process |
| **Code-Reviews** (Pull Requests) | Verbesserungsvorschläge mit Begründung | Process + Self-Regulation |
| **Learning Analytics** | Visualisierung des Lernfortschritts | Self-Regulation |

Formatives Assessment verbindet [[constructive-alignment]] mit der Praxis: Es liefert die Evidenz, ob Lernziele, Aktivitäten und Prüfung tatsächlich zusammenpassen.

## Praktische Anwendung

Ein Agent kann formatives Assessment in Echtzeit umsetzen:

1. **Automatisiertes Task-Feedback:** Lösungen gegen Tests prüfen und bei Fehlern abgestuftes Feedback geben — erst Hinweis auf den Fehlertyp, dann die Stelle, dann konkrete Hilfe (vgl. [[scaffolding]]).
2. **Process-Feedback:** Nicht nur sagen was falsch ist, sondern Strategien empfehlen: "Versuche Rubber-Duck-Debugging" oder "Zerlege das Problem in Teilfunktionen."
3. **Diagnostik:** Aus Fehlermustern den Lernstand ableiten und Lücken identifizieren. Bei systematischen Fehlern auf Vorwissen zurückgreifen.
4. **Reflexions-Prompts:** Regelmäßig zur Selbstbewertung auffordern, um [[selbstgesteuertes-lernen]] zu fördern.
5. **Peer-Feedback orchestrieren:** Code-Review-Aufgaben generieren und Leitfragen für konstruktives Feedback bereitstellen.

## Verwandte Konzepte

- [[constructive-alignment]] — Formatives Assessment prüft, ob das Alignment funktioniert
- [[blooms-taxonomie]] — Bestimmt die Feedback-Ebene: Quiz für "Erinnern", Debugging für "Analysieren"
- [[selbstgesteuertes-lernen]] — Wiliams Strategie 5 und Hattie-Timperleys Self-Regulation-Ebene
- [[scaffolding]] — Abgestuftes Feedback ist eine Form von Scaffolding
- [[interaktive-lernumgebungen]] — Sofortiges Feedback als zentrales Gestaltungsprinzip
- [[pair-programming-unterricht]] — Peer-Feedback als Wiliams Strategie 4
- [[contrasting-cases]] — Die bei Vergleichen entdeckten Dimensionen sind diagnostisches Material über den Lernstand
- [[direct-manipulation-lernumgebungen]] — Interaktionsprinzip, das besonders dichte formative Diagnose-Zyklen ermöglicht

## Quellen

- Black, P. & Wiliam, D. (1998). Assessment and Classroom Learning. Assessment in Education, 5(1), 7-74.
- Black, P. & Wiliam, D. (1998). Inside the Black Box: Raising Standards Through Classroom Assessment. Phi Delta Kappan, 80(2), 139-148.
- Kingston, N. & Nash, B. (2011). Formative Assessment: A Meta-Analysis and a Call for Research. *Educational Measurement: Issues and Practice, 30*(4), 28-37. https://doi.org/10.1111/j.1745-3992.2011.00220.x
- Hattie, J. & Timperley, H. (2007). The Power of Feedback. Review of Educational Research, 77(1), 81-112.
- Wiliam, D. (2011). Embedded Formative Assessment. Solution Tree Press.
