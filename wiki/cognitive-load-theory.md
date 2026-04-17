---
title: Cognitive Load Theory
type: theorie
tags: [kognitive-belastung, instruktionsdesign, arbeitsgedaechtnis, lernmaterial-gestaltung, challenge-point]
related:
  - "[[aktivierung-lehrervortrag]]"
  - "[[direct-instruction-rosenshine]]"
  - "[[worked-examples]]"
  - "[[scaffolding]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[blooms-taxonomie]]"
  - "[[productive-failure]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[wissensretention-programmierung]]"
  - "[[effektstaerken-unterricht]]"
  - "[[expertise-entwicklung]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[learning-engineering]]"
  - "[[peer-instruction]]"
  - "[[retrieval-practice]]"
  - "[[threshold-concepts]]"
  - "[[flow-theorie]]"
  - "[[primm-methode]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[immersive-simulationen]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[zeitmanagement-selbstorganisation]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[misconception-analyse]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[contrasting-cases]]"
  - "[[parsons-problems]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[spaced-repetition-algorithmen]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[browser-ide-gestuetzte-tutorials]]"
  - "[[neurodidaktik-programmieren]]"
  - "[[notional-machines]]"
  - "[[live-coding-lehrmethode]]"
  - "[[cognitive-task-analysis]]"
  - "[[generative-learning-aktivitaeten]]"
  - "[[subgoal-labeling]]"
  - "[[explorable-explanations-im-unterricht]]"
  - "[[testitem-konstruktion-digital]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, analysieren]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Swellers Theorie (1988) zur begrenzten Arbeitsgedächtniskapazität, die
  intrinsische, extrinsische und lernförderliche kognitive Belastung
  unterscheidet und daraus Gestaltungsprinzipien für Lernmaterialien ableitet.
---

# Cognitive Load Theory

## Kernidee

Das Arbeitsgedächtnis kann nur wenige Informationselemente gleichzeitig verarbeiten (ca. 4 bei neuem Material; Cowan, 2001). Cognitive Load Theory (CLT) nach Sweller (1988) unterscheidet drei Belastungsarten und leitet daraus Gestaltungsprinzipien ab, die extrinsische Belastung minimieren und lernförderliche Verarbeitung maximieren.

## Beschreibung

### Drei Arten kognitiver Belastung

| Typ | Ursache | Steuerbar durch |
|-----|---------|-----------------|
| **Intrinsisch** | Komplexität des Inhalts (Elementinteraktivität) | Sequenzierung, Vorwissen aufbauen |
| **Extrinsisch** | Schlechtes Instruktionsdesign | Design optimieren (Hauptziel von CLT) |
| **Lernförderlich (germane)** | Schema-Aufbau und Automatisierung | Kapazität freisetzen durch Reduktion extrinsischer Last |

Im klassischen Modell sind die drei Typen additiv: Übersteigt ihre Summe die Arbeitsgedächtniskapazität, bricht Lernen zusammen. **Hinweis:** Sweller selbst hat 2010 das Modell revidiert: Germane Load wird inzwischen als Teil der intrinsischen Last betrachtet, nicht als unabhängige dritte Größe. Das Zwei-Faktor-Modell (intrinsisch + extrinsisch) gilt als aktueller Forschungsstand (Sweller et al., 2019). — Bei hoher intrinsischer Last (typisch für IT) reicht schon wenig extrinsische Last, um Überlastung auszulösen.

### Zentrale CLT-Effekte

| Effekt | Prinzip | IT-Beispiel |
|--------|---------|-------------|
| **Split-Attention** | Zusammengehörige Infos integrieren | Code-Kommentare inline statt auf separatem Blatt |
| **Redundanz** | Überflüssige Informationsquellen entfernen | Nicht gleichzeitig Folie vorlesen, die SuS selbst lesen können |
| **Worked Example** | Ausgearbeitete Lösungen studieren statt Probleme lösen | Annotierte Code-Walkthroughs vor eigenen Programmieraufgaben |
| **Expertise Reversal** | Hilfen für Novizen schaden Experten | Weniger Scaffolding für erfahrene Azubis |
| **Modalität** | Visuell + auditiv nutzt beide Kanäle | ER-Diagramm mündlich erklären statt mit Textblöcken |
| **Isolated Elements** | Teile erst einzeln, dann kombiniert lehren | SQL: Erst SELECT, dann WHERE, dann JOINs — dann kombinieren |

### Elementinteraktivität als Schlüsselkonzept

Die Anzahl der Elemente, die gleichzeitig im Arbeitsgedächtnis verarbeitet werden müssen, bestimmt die intrinsische Last. Ein einfacher SQL-SELECT hat niedrige Elementinteraktivität; ein Multi-Table-JOIN mit WHERE, GROUP BY und HAVING hat hohe Elementinteraktivität, weil alle Klauseln gleichzeitig bedacht werden müssen.

## Bezug zur IT-Ausbildung

IT-Inhalte haben oft hohe Elementinteraktivität: Beim Programmieren müssen Syntax, Semantik, Programmlogik, Datentypen und Werkzeugbedienung gleichzeitig verarbeitet werden. Das macht CLT-gerechtes Design besonders wichtig.

| Lernfeld | Hohe Elementinteraktivität | CLT-Strategie |
|----------|---------------------------|---------------|
| **LF5** | SQL-JOINs mit Aggregation | Isolated Elements: Klauseln einzeln, dann kombinieren |
| **LF6** | Mehrstufige Fehlerdiagnose | [[worked-examples]] für Troubleshooting-Prozesse |
| **LF8** | REST-API-Design (HTTP, JSON, Auth, Routing) | Integrierte API-Dokumentation (kein Split-Attention) |
| **LF11a** | Design Patterns (mehrere interagierende Klassen) | Fading: vollständiges Beispiel → Lückencode → offene Aufgabe |

Der Expertise Reversal Effect ist besonders relevant für heterogene Berufsschulklassen: Dieselbe Anleitung, die Anfänger:innen brauchen, bremst erfahrene Hobby-Programmierer:innen.

### Bezug zum Challenge Point Framework

CLT begrenzt die *absolute* Schwierigkeit durch die Arbeitsgedächtniskapazität, das Challenge Point Framework (Guadagnoli & Lee, 2004) individualisiert die *relative* Schwierigkeit am Skill-Stand. Zusammen ergeben sie ein zweistufiges Modell: CLT setzt die Obergrenze (was darf insgesamt an Last entstehen?), Challenge Point wählt innerhalb dieser den optimalen Punkt für die individuelle Lernende. Ausführlich beschrieben in [[scaffolding]].

## Praktische Anwendung

Ein Agent kann CLT-Prinzipien operationalisieren:

1. **Vorwissen einschätzen** und darauf basierend Elementinteraktivität steuern — bei Novizen Aufgaben in isolierte Elemente zerlegen, bei Fortgeschrittenen integrierte Aufgaben stellen.
2. **Extrinsische Last minimieren** — Erklärungen direkt in den Code integrieren, nicht in separaten Textblöcken. Relevante Dokumentation direkt anzeigen statt darauf zu verweisen.
3. **[[worked-examples]] mit Fading** einsetzen — vollständig ausgearbeitete Lösungen für neue Konzepte, schrittweise Übergang zu [[scaffolding]] mit Lückencode.
4. **Expertise Reversal erkennen** — wenn Lernende Aufgaben konsistent schnell und korrekt lösen, Hilfestellung reduzieren.
5. **Sequenzierung** bei komplexen Themen — erst Teilkonzepte isoliert, dann Kombination (Isolated Elements → Integration).

## Verwandte Konzepte

- [[worked-examples]] — Der Worked Example Effect ist der bekannteste und best-untersuchte CLT-Effekt
- [[scaffolding]] — Fading von Hilfestellung folgt direkt aus CLT: Novizen brauchen mehr, Experten weniger
- [[interaktive-lernumgebungen]] — CLT liefert die theoretische Basis für Feedback- und Aufgabendesign
- [[blooms-taxonomie]] — Höhere Taxonomiestufen erzeugen typischerweise höhere Elementinteraktivität
- [[contrasting-cases]] — Vergleichen erhöht intrinsische Last; funktioniert nur bei ausreichendem Vorwissen
- [[parsons-problems]] — Senkt Produktions-Last bei gleichem Schema-Aufbau
- [[direct-manipulation-lernumgebungen]] — Reduziert Execution- und Evaluation-Distance (Hutchins/Hollan/Norman) als externe Last

## Quellen

- Sweller, J. (1988). Cognitive Load During Problem Solving: Effects on Learning. Cognitive Science, 12(2), 257-285.
- Sweller, J., Ayres, P. & Kalyuga, S. (2011). Cognitive Load Theory. Springer.
- Sweller, J., van Merriënboer, J. J. G. & Paas, F. (2019). Cognitive Architecture and Instructional Design: 20 Years Later. Educational Psychology Review, 31, 261-292.
- Paas, F., Renkl, A. & Sweller, J. (2003). Cognitive Load Theory and Instructional Design: Recent Developments. Educational Psychologist, 38(1), 1-4.
- Cowan, N. (2001). The Magical Number 4 in Short-Term Memory: A Reconsideration of Mental Storage Capacity. Behavioral and Brain Sciences, 24(1), 87-114.
- Guadagnoli, M. A. & Lee, T. D. (2004). Challenge point: A framework for conceptualizing the effects of various practice conditions in motor learning. Journal of Motor Behavior, 36(2), 212-224.
