---
title: Aufgabentypen interaktiver Lernumgebungen — Katalog
type: methode
tags: [aufgabenformate, widget-katalog, interaktive-aufgaben, lernumgebungs-design, h5p, qti, katalog]
related:
  - "[[interaktive-lernumgebungen]]"
  - "[[primm-methode]]"
  - "[[use-modify-create]]"
  - "[[worked-examples]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[blooms-taxonomie]]"
  - "[[cognitive-load-theory]]"
  - "[[formatives-assessment]]"
  - "[[scaffolding]]"
  - "[[debugging-als-kompetenz]]"
  - "[[productive-failure]]"
  - "[[threshold-concepts]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[contrasting-cases]]"
  - "[[parsons-problems]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[constructive-alignment]]"
  - "[[explorable-explanations-im-unterricht]]"
  - "[[browser-ide-gestuetzte-tutorials]]"
  - "[[generative-learning-aktivitaeten]]"
audience: [FIAE, FIDP]
taxonomiestufe: [erinnern, verstehen, anwenden, analysieren, bewerten, erschaffen]
created: 2026-04-07
updated: 2026-04-09
summary: >
  Referenz-Katalog von 21 interaktiven Aufgabentypen für digitale Lernumgebungen
  mit Bloom-Einordnung, Produktionsaufwand und LLM-Upgrade-Potenzial. Plus
  Kombinationsmuster, Lernziel→Typ-Mapping und häufige Design-Fehler.
---

# Aufgabentypen interaktiver Lernumgebungen — Katalog

## Kernidee

Interaktive Aufgabentypen unterscheiden sich nicht nur in der UI-Mechanik, sondern in ihrer **didaktischen Tiefe**: Multiple Choice trifft "Erinnern", Construct-Tools und LLM-bewertete Freitexte erreichen "Erschaffen" und "Bewerten". Wer eine Lernumgebung selbst baut, wählt Aufgabentypen nicht nach Optik, sondern nach dem Ziel-Outcome, nach der Passung zur Cognitive-Load-Lage der Lernenden und nach dem Aufwand für Ground-Truth-Daten. LLM-Integration verschiebt die Grenze: Formate, die früher nur "Erinnern/Anwenden" abdeckten, werden durch Rubric-Bewertung und Adaptive Generation bis "Bewerten" hochziehbar.

Dieser Artikel ist bewusst als **Referenz-Katalog** angelegt, auf den andere Artikel verweisen können.

## Beschreibung

### Der Katalog: 21 Aufgabentypen

| # | Typ | Bloom-Stufe | Produktionsaufwand | LLM-Upgrade |
|---|---|---|---|---|
| 1 | **Multiple Choice** (mit pro-Distraktor-Feedback) | erinnern, verstehen | niedrig | mittel |
| 2 | **Multiple Response** (n aus m) | verstehen, analysieren | niedrig | mittel |
| 3 | **True/False + Justify** | verstehen, bewerten | niedrig | hoch |
| 4 | **Matching / Paare bilden** | verstehen | niedrig | niedrig |
| 5 | **Drag-Sort (Reihenfolge)** | verstehen, analysieren | mittel | mittel |
| 6 | **Drag-Categorize** | verstehen, analysieren | mittel | mittel |
| 7 | **Hotspot / klickbares Bild** | erinnern, analysieren | mittel | niedrig |
| 8 | **Text-Highlighter / Mark-the-Words** | analysieren, bewerten | niedrig | hoch |
| 9 | **Cloze (strukturiert)** mit Dropdowns | erinnern, verstehen | niedrig | mittel |
| 10 | **Cloze (frei)** mit Regex-Validierung | anwenden | niedrig | hoch |
| 11 | **Free-Text + LLM-Rubric** | analysieren, bewerten, erschaffen | mittel | **sehr hoch** |
| 12 | **Branching Scenario** | anwenden, bewerten | hoch | hoch |
| 13 | **Simulation / Sandbox** | anwenden, analysieren | sehr hoch | mittel |
| 14 | **Rollenspiel / Dialog-Widget** | bewerten, erschaffen | mittel (mit LLM) | **sehr hoch** |
| 15 | **Construct-Tool** (Builder) | anwenden, erschaffen | hoch | hoch |
| 16 | **Code-Execution / Live-Coding** | anwenden, erschaffen | hoch | hoch |
| 17 | **Predict-the-Output** | verstehen, analysieren | niedrig | mittel |
| 18 | **Parsons Problem** | verstehen, anwenden | mittel | mittel |
| 19 | **Bug-Hunt / Erroneous Example** | analysieren, bewerten | mittel | hoch |
| 20 | **Peer-Review mit Rubric** | bewerten | mittel | hoch |
| 21 | **Reflexions-Prompt mit LLM-Follow-up** | bewerten (metakognitiv) | niedrig | hoch |

### Die sechs didaktisch wichtigsten Typen im Detail

**Multiple Choice mit Feedback-Ebenen.** Oft unterschätzt: Mit *pro-Distraktor-Feedback* (jede falsche Option mit spezifischer Erklärung des dahinterliegenden Fehlkonzepts) wird MC vom Erinnern-Tool zum Misconception-Diagnose-Werkzeug. Produktionsaufwand niedrig, aber gute Distraktoren sind die eigentliche didaktische Arbeit. Failure Mode: Offensichtlich falsche Optionen machen die Aufgabe zum Ratespiel.

**Branching Scenario.** Verzweigte Entscheidungsgeschichten bilden Berufssituationen ab: Datenschutzvorfall → welche Reaktion? Jede Entscheidung führt zu neuem Zustand plus Feedback. Produktionsaufwand hoch (Baum mit 8-20 Knoten), aber Lerneffekt für Anwendung und Bewertung ist überragend. In Kombination mit Adaptive Case Generator aus [[llm-integrationsmuster-lernumgebungen]] wird der Baum dynamisch statt statisch.

**Free-Text mit LLM-Rubric-Bewertung.** Der strukturelle Durchbruch für Lernumgebungen: Statt fixer Lösungen wird nach Kriterien bewertet. Öffnet Bloom-Stufen "bewerten" und "erschaffen", die in klassischen Quiz-Systemen unerreichbar bleiben. Kernarbeit verschiebt sich von Content zu Rubric. Failure Modes: Bewertungsinflation, Inkonsistenz. Mitigation: grobe Punkteskala (0-3), JSON-Schema erzwingen, niedrige Temperature.

**Parsons Problems.** Code-Snippets in korrekte Reihenfolge bringen. Empirisch sehr gut belegt (Ericson et al. 2022, Systematic Literature Review (677 initial identifizierte, nach Screening deutlich weniger analysierte Arbeiten)): **gleiche Lernergebnisse wie freies Schreiben bei deutlich reduziertem Zeitaufwand und geringerer kognitiver Last**. Ideale Zwischenstufe im Fading-Pfad zwischen Worked Example und freiem Code. In React mit drag-and-drop in einem Tag baubar.

**Construct-Tool.** Der Lernende baut ein strukturiertes Artefakt: ER-Diagramm, SQL-Query per Builder, Consent-Builder, Regex-Builder, State-Machine. Unterschied zum Freitext: Die Struktur ist maschinenparsebar, also **automatisch bewertbar ohne LLM**. Hoher initialer Aufwand, skaliert aber perfekt. Failure Mode: UI-Komplexität frisst kognitive Ressourcen (extrinsische Last nach [[cognitive-load-theory]]) — Werkzeug muss einfacher sein als das Problem.

**Rollenspiel / Dialog-Widget.** Freier Chat mit einer LLM-gespielten Rolle. Direktes Muster aus [[llm-integrationsmuster-lernumgebungen]] (Adversary Partner). Zwingt zur **Articulation** — Kompetenz, die kein anderes Format erzwingt. Produktion: vor allem Prompt-Engineering und Ground-Truth-Daten. Failure Modes: Answer Leak, Rollenverlust — siehe [[prompt-engineering-didaktisch]] für Mitigation.

## Durchführung

### Kombinationsmuster (welche Typen gut zusammenspielen)

| Sequenz | Warum |
|---|---|
| **Predict-the-Output → Code-Execution → Bug-Hunt** | Der PRIMM-Pfad ([[primm-methode]]) |
| **Worked Example → Parsons → Completion-Cloze → Free Code** | Klassisches Fading nach [[worked-examples]] |
| **MC (Diagnose) → Branching Scenario → Rubric-Freitext** | Bloom-Progression in einer Session |
| **Construct-Tool → Rollenspiel (verteidigen)** | Lernender baut Lösung und verteidigt sie gegen kritischen Stakeholder |
| **Adaptive Case Generator → Drag-Categorize → Reflexions-Prompt** | LLM erzeugt Case, Lernender ordnet ein, reflektiert |
| **Hotspot → Text-Highlighter → Free-Text** | Klassische Analysesequenz für Dokumente (z.B. Datenschutzerklärungen) |
| **Peer-Review + LLM-Review + Self-Assessment** | Triangulation, kalibriert die Selbsteinschätzung |

### Entscheidungshilfe: Lernziel → Typ

| Lernziel | Bloom | Empfohlen |
|---|---|---|
| HTTP-Statuscodes kennen | erinnern | MC oder Matching |
| REST-Prinzipien erklären | verstehen | Cloze + Self-Explain Prompt |
| SQL-Query schreiben | anwenden | Code-Execution (Parsons als Scaffold) |
| Fehler in Code lokalisieren | analysieren | Bug-Hunt / Text-Highlighter auf Code |
| Datenschutzmaßnahme auswählen | bewerten | Branching Scenario / Rollenspiel |
| Architektur entwerfen | erschaffen | Construct-Tool + Rubric |
| Schwellenkonzept auflösen | verstehen (threshold) | Predict-the-Output + Sokratischer Tutor |
| Begründungskompetenz (Fachgespräch) | bewerten, erschaffen | Rollenspiel (Adversary) |
| Prozess-Schritte ordnen | verstehen | Drag-Sort / Parsons |
| Dokument analysieren | analysieren | Text-Highlighter |
| Metakognition fördern | bewerten (meta) | Reflexions-Prompt + LLM-Nachfrage |

## Voraussetzungen

- Lernziel ist auf Bloom-Stufe verankert — "Wissen" reicht nicht, es muss ein Verb sein
- Eigene Bauinfrastruktur (React, Vue o.ä.) oder Plattform mit ausreichend Widget-Vielfalt (H5P, Moodle)
- Ground-Truth-Daten oder Rubrics für die gewählten Typen
- Bei LLM-Varianten: Infrastruktur aus [[prompt-engineering-didaktisch]]

## Varianten

Im Wesentlichen sind die 21 Typen bereits die Varianten. Zu jedem Typ gibt es Untervarianten (z.B. Cloze strukturiert vs. frei, MC single vs. multi), die man in der konkreten Implementierung wählt.

## Zeitbedarf

Als Grobschätzung pro Widget-Typ, wenn von Null gestartet wird: MC/Matching/Cloze ~ 4-8h, Drag-and-Drop-Varianten ~ 8-16h, Parsons/Predict/Bug-Hunt ~ 8-16h, Branching-Engine ~ 16-32h, Construct-Tool stark content-abhängig ~ 20-60h, LLM-integrierte Widgets (Rubric, Dialog) ~ 16-32h plus Prompt-Arbeit.

## Bezug zur IT-Ausbildung

Azubis bauen im letzten Ausbildungsjahr oft selbst Lern-Apps — als Projekt, als Schulungstool für den Ausbildungsbetrieb oder als Abschlussprojekt. Der Katalog dient dann als Referenz beim **Design-Entscheid**: Welcher Aufgabentyp passt zu welchem Lernziel? Der Katalog ist dadurch nicht nur für den Lehrer-Entwickler wertvoll, sondern Teil des curricularen Inhalts in LF10a-12a.

## Praktische Anwendung

1. **Bloom-Stufe ermitteln** für jedes angestrebte Lernziel.
2. **Kandidaten-Typen aus der Tabelle wählen** — meist 2-3 passen.
3. **Nach Produktionsaufwand filtern** — was schaffst du realistisch im Zeitbudget?
4. **LLM-Upgrade-Spalte prüfen** — lohnt sich hier der Aufwand aus [[llm-integrationsmuster-lernumgebungen]]?
5. **Kombinationssequenz planen** — selten ist ein einzelner Typ genug; Sequenzen aus der Kombinationstabelle liefern meist bessere Lernwirkung.
6. **Widget-Komplexität ≤ Problem-Komplexität** — sonst frisst UI die kognitiven Ressourcen, die fürs Lernen gebraucht werden ([[cognitive-load-theory]]).
7. **Ground Truth zuerst, UI zuletzt** — gute Distraktoren, Rubrics und Musterlösungen sind die eigentliche didaktische Arbeit.

## Häufige Design-Fehler

- **Bloom-Mismatch**: "Implementiere X" als MC reduziert "erschaffen" auf "erinnern" — [[constructive-alignment]]-Versagen.
- **Distraktor-Armut**: Offensichtlich falsche Optionen machen MC zum Ratespiel.
- **Feedback ohne Ebenen**: "Falsch" reicht nicht — mindestens *warum* + *wohin denken*.
- **Extrinsische Last durch UI**: 30 Drag-Items oder komplexer Builder überlastet Arbeitsgedächtnis.
- **Parsons mit >30% Distraktoren**: wird zum Such-Such statt Strukturverständnis.
- **Branching ohne echte Konsequenzen**: alle Pfade gleich → Lerneffekt null.
- **Reflexions-Prompts als Pflicht-Textfeld**: ohne Rückkopplung reines Klick-durch.
- **Hotspot als Ratespiel**: wenn Hotspots visuell erkennbar sind, ist das Lernen verloren.
- **Predict überspringbar**: wenn "Run" ohne Predict geht, vernichtet das den Lerneffekt.
- **LLM-Bewertung inflationär**: ohne Rubric und Few-Shot wird LLM-Feedback beliebig positiv.

## Verwandte Konzepte

- [[interaktive-lernumgebungen]] — Gestaltungsprinzipien, in die dieser Katalog die Widget-Ebene einfügt
- [[primm-methode]] — Predict-Run-Investigate-Modify-Make als Sequenz aus Typen #17, #16, #19, #16 (Modify), Free Code
- [[use-modify-create]] — Progression operiert auf Construct-Tool und Code-Execution
- [[worked-examples]] — Parsons ist der empirisch belegte Übergang im Fading-Pfad
- [[llm-integrationsmuster-lernumgebungen]] — die LLM-Upgrade-Dimension des Katalogs
- [[blooms-taxonomie]] — jeder Typ ist an eine Bloom-Stufe gebunden
- [[cognitive-load-theory]] — Widget-Komplexität darf Problem-Komplexität nicht übersteigen
- [[formatives-assessment]] — jeder Typ ist potenzielles formatives Werkzeug, sofern Feedback-Ebenen stimmen
- [[scaffolding]] — Fading-Sequenzen durchziehen den Katalog (Cloze → Parsons → Free Code)
- [[debugging-als-kompetenz]] — Bug-Hunt und Erroneous Examples sind die Widget-Form
- [[productive-failure]] — Predict-the-Output und Bug-Hunt produzieren kontrolliertes Scheitern
- [[threshold-concepts]] — Dialog-Widgets adressieren Schwellenkonzepte gezielt
- [[contrasting-cases]] — Parallel-View, Vergleichsmatrix und "Finde den Unterschied" als eigenständige Aufgabenformate
- [[parsons-problems]] — Eigener Methoden-Artikel; Typ #18 im Katalog
- [[direct-manipulation-lernumgebungen]] — Designprinzip für Live-Editor, Linked-View und Parameter-Slider

## Quellen

- Ericson, B. J., Denny, P., Prather, J., Duran, R., Hellas, A., Leinonen, J., Miller, C. S., Morrison, B. B., Pearce, J. L., & Rodger, S. H. (2022). Parsons problems and beyond: Systematic literature review and empirical study designs. *Proceedings of the 2022 Working Group Reports on Innovation and Technology in Computer Science Education (ITiCSE-WGR)*, 191-234.
- Parsons, D., & Haden, P. (2006). Parsons programming puzzles: A fun and effective learning tool for first programming courses. *Proceedings of the 8th Australasian Conference on Computing Education*, 157-163.
- Denny, P., Luxton-Reilly, A., & Simon, B. (2008). Evaluating a new exam question: Parsons problems. *Proceedings of ICER '08*, 113-124.
- 1EdTech Consortium. (2022). *Question and Test Interoperability (QTI) v3.0 Specification.* https://www.imsglobal.org/spec/qti/v3p0/
- H5P Group. (2024). *H5P Content Types Documentation.* https://h5p.org/content-types-and-applications
- Sweller, J., van Merriënboer, J. J. G., & Paas, F. (2019). Cognitive architecture and instructional design: 20 years later. *Educational Psychology Review*, 31(2), 261-292.
- Mayer, R. E. (2009). *Multimedia Learning* (2nd ed.). Cambridge University Press.
- Aleven, V., McLaughlin, E. A., Glenn, R. A., & Koedinger, K. R. (2017). Instruction based on adaptive learning technologies. In R. E. Mayer & P. Alexander (Eds.), *Handbook of Research on Learning and Instruction* (2nd ed., pp. 522-560). Routledge.
