---
title: Blooms Taxonomie (revidierte Fassung)
type: theorie
tags: [lernziele, kompetenzorientierung, taxonomie, kognitive-prozesse]
related:
  - "[[constructive-alignment]]"
  - "[[pair-programming-unterricht]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[cognitive-load-theory]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[code-review-unterricht]]"
  - "[[expertise-entwicklung]]"
  - "[[flipped-classroom]]"
  - "[[formatives-assessment]]"
  - "[[gamification-it-unterricht]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[lernsituationen-gestalten]]"
  - "[[lerntagebuch]]"
  - "[[scaffolding]]"
  - "[[worked-examples]]"
audience: [FIAE, FIDP]
taxonomiestufe: [erinnern, verstehen, anwenden, analysieren, bewerten, erschaffen]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Klassifikationssystem kognitiver Lernziele in sechs Stufen (erinnern bis erschaffen)
  nach Anderson & Krathwohl (2001), zentrales Werkzeug zur Formulierung und
  Einstufung von Lernzielen in der IT-Ausbildung.
---

# Blooms Taxonomie (revidierte Fassung)

## Kernidee

Die revidierte Bloom'sche Taxonomie klassifiziert kognitive Lernziele in sechs aufeinander aufbauende Stufen: erinnern, verstehen, anwenden, analysieren, bewerten, erschaffen. Kombiniert mit vier Wissensdimensionen entsteht eine Matrix, die präzise Lernzielformulierung ermöglicht. Sie ist das meistgenutzte Framework zur Operationalisierung von Lernzielen weltweit.

## Beschreibung

Benjamin Bloom veröffentlichte 1956 die erste Taxonomie kognitiver Lernziele. 2001 revidierten Lorin Anderson (Blooms Doktorand) und David Krathwohl das Modell grundlegend: Substantive wurden zu Verben (handlungsorientiert), und "Erschaffen" ersetzte "Synthese" als höchste Stufe.

### Die sechs kognitiven Prozessstufen

| Stufe | Beschreibung | Typische Operatoren |
|-------|-------------|---------------------|
| **Erinnern** | Wissen aus dem Langzeitgedächtnis abrufen | benennen, auflisten, definieren, wiedergeben |
| **Verstehen** | Bedeutung konstruieren, in eigenen Worten erklären | beschreiben, erklären, zusammenfassen, vergleichen |
| **Anwenden** | Verfahren in einer gegebenen Situation ausführen | implementieren, lösen, demonstrieren, berechnen |
| **Analysieren** | Material in Bestandteile zerlegen, Beziehungen erkennen | differenzieren, untersuchen, kontrastieren, zuordnen |
| **Bewerten** | Urteile anhand von Kriterien fällen | beurteilen, kritisieren, rechtfertigen, priorisieren |
| **Erschaffen** | Elemente zu einem neuen Ganzen zusammenfügen | entwerfen, entwickeln, konstruieren, planen |

### Wissensdimensionen (zweite Achse)

| Dimension | Beschreibung | IT-Beispiel |
|-----------|-------------|-------------|
| **Faktenwissen** | Terminologie, spezifische Details | HTTP-Statuscodes, Datentypen, SQL-Schlüsselwörter |
| **Konzeptwissen** | Prinzipien, Modelle, Kategorien | OOP-Prinzipien (SOLID), OSI-Modell, Entwurfsmuster |
| **Prozedurales Wissen** | Algorithmen, Techniken, Methoden | Sortieralgorithmen, Debugging-Verfahren, Git-Workflow |
| **Metakognitives Wissen** | Strategisches Wissen, Selbstreflexion | Eigene Lernstrategien reflektieren, Aufwandsschätzung |

Die Kombination beider Dimensionen ermöglicht präzise Lernziele: "Prozedurales Wissen + Anwenden" = "Einen Sortieralgorithmus auf ein konkretes Dataset anwenden."

### Kritik

Die Hierarchie ist empirisch nicht eindeutig belegt — Studien zeigen Querverbindungen zwischen nicht-aufeinanderfolgenden Stufen. Operatoren wie "beschreiben" lassen sich mehreren Stufen zuordnen. Die Taxonomie sollte als flexible Heuristik verstanden werden, nicht als starre Hierarchie.

## Bezug zur IT-Ausbildung

Blooms Taxonomie ist für die Fachinformatiker-Ausbildung besonders wertvoll, weil die Lernfelder des Rahmenlehrplans kompetenzorientiert formuliert sind. Konkrete Beispiele pro Stufe:

| Stufe | Lernziel-Beispiel (IT) |
|-------|----------------------|
| Erinnern | Die SuS **benennen** die vier OOP-Grundprinzipien. |
| Verstehen | Die SuS **erklären** den Unterschied zwischen Stack und Heap. |
| Anwenden | Die SuS **implementieren** eine REST-API mit CRUD-Operationen. |
| Analysieren | Die SuS **untersuchen** Code auf Verletzungen des Single-Responsibility-Prinzips. |
| Bewerten | Die SuS **beurteilen**, ob relational oder NoSQL für ein Szenario geeigneter ist. |
| Erschaffen | Die SuS **entwerfen** eine Softwarearchitektur inkl. UML-Diagrammen. |

Die Taxonomiestufen korrelieren mit Lernfeld-Anforderungen: Grundlegende Lernfelder (LF1-4) operieren häufig auf Stufe 1-3, fortgeschrittene Lernfelder (LF5-12) erfordern zunehmend Stufe 4-6.

## Praktische Anwendung

Ein Agent kann Blooms Taxonomie operationalisieren:

1. **Aufgaben-Einstufung:** Aus dem Frontmatter-Feld `taxonomiestufe` die Komplexität einer Lernsituation ableiten und Aufgaben auf dem passenden Niveau generieren.
2. **Scaffolding:** Bei erkannten Schwierigkeiten eine Stufe zurückgehen (von "Analysieren" zu "Verstehen") — progressive Hilfestellung.
3. **Aufgabenvariation:** Zu einem Thema Aufgaben auf allen sechs Stufen generieren. Beispiel SQL-Joins: Erinnern = Syntax benennen → Erschaffen = komplexe Abfrage für reales Szenario entwerfen.
4. **Alignment-Check:** Zusammen mit [[constructive-alignment]] prüfen, ob Lernziel, Aktivität und Prüfung auf der gleichen Taxonomiestufe operieren.

## Verwandte Konzepte

- [[constructive-alignment]] — nutzt Bloom-Verben zur Formulierung von Intended Learning Outcomes
- [[pair-programming-unterricht]] — Methode, die typischerweise auf Stufe "anwenden" und "analysieren" operiert
- [[selbstgesteuertes-lernen]] — Metakognitives Wissen (vierte Wissensdimension) ist die theoretische Basis für Selbstregulation
- [[interaktive-lernumgebungen]] — Taxonomiestufen bestimmen die passende Interaktionstiefe in Lernumgebungen
- [[cognitive-load-theory]] — Höhere Taxonomiestufen erzeugen typischerweise höhere Elementinteraktivität
- [[handlungsorientierter-unterricht]] — Lernfeld-Progression korreliert mit Taxonomiestufen im Spiralcurriculum

## Quellen

- Anderson, L. W. & Krathwohl, D. R. (Hrsg.). (2001). A Taxonomy for Learning, Teaching, and Assessing: A Revision of Bloom's Taxonomy of Educational Objectives (Complete ed.). Longman.
- Krathwohl, D. R. (2002). A Revision of Bloom's Taxonomy: An Overview. Theory into Practice, 41(4), 212-218.
- Bloom, B. S. et al. (1956). Taxonomy of Educational Objectives: The Classification of Educational Goals. Handbook I: Cognitive Domain. David McKay Company.
