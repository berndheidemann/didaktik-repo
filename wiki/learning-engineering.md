---
title: Learning Engineering
type: theorie
tags: [lernplattform, adaptives-lernen, knowledge-tracing, a-b-testing, frontier]
related:
  - "[[interaktive-lernumgebungen]]"
  - "[[formatives-assessment]]"
  - "[[scaffolding]]"
  - "[[cognitive-load-theory]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[retrieval-practice]]"
  - "[[effektstaerken-unterricht]]"
  - "[[expertise-entwicklung]]"
  - "[[wissensretention-programmierung]]"
  - "[[evaluation-lernumgebungen]]"
  - "[[kursarchitektur-lernumgebungen]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[datenschutz-lernumgebungen]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[spaced-repetition-algorithmen]]"
  - "[[threshold-concepts]]"
  - "[[spaced-repetition-scheduler-bauen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, erschaffen]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Die Wissenschaft des Bauens effektiver Lernsysteme — vereint Kognitionswissenschaft,
  Data Science und Software Engineering. Leitprinzipien von Duolingo, Carnegie Learning
  und Khan Academy für den Aufbau KI-gestützter Lernplattformen.
---

# Learning Engineering

## Kernidee

Learning Engineering behandelt Bildung als Ingenieursdisziplin: Lernumgebungen werden datengetrieben entworfen, iterativ getestet und systematisch optimiert. Statt auf Intuition setzt Learning Engineering auf Lernmodelle (Knowledge Tracing), A/B-Tests und Metriken — die gleichen Prinzipien, die Softwareprodukte erfolgreich machen, angewandt auf Lernen.

## Beschreibung

### Leitprinzipien führender Plattformen

| Plattform | Kernmechanismus | Lernwissenschaftliche Basis |
|-----------|----------------|---------------------------|
| **Duolingo** | Spaced Repetition + A/B-Testing auf alles | Ebbinghaus, Gamification, Half-Life Regression |
| **Carnegie Learning** | Model Tracing + Knowledge Tracing | ACT-R (Anderson), Bayesian Knowledge Tracing |
| **Khan Academy** | Mastery-Progression + sokratischer KI-Tutor | Bloom's Mastery Learning + GPT-4 Guardrails |
| **Brilliant** | Problem-First, keine Vorlesungen | Konstruktivismus, Active Learning |
| **JetBrains Academy** | Knowledge Graph + IDE-integrierte Theorie | Prerequisite-Graphen, Spaced Repetition |

### Knowledge Component Decomposition

Carnegie Learnings zentrales Prinzip: Jedes Thema wird in **feinkörnige Knowledge Components (KCs)** zerlegt. Für jede KC wird die Meisterungswahrscheinlichkeit geschätzt (Bayesian Knowledge Tracing). Aufgaben werden erst als gemeistert gewertet, wenn P(known) einen Schwellenwert übersteigt.

Übertragen auf FIAE: Die IHK-Lernfelder lassen sich in KCs zerlegen — z.B. LF5 → {SELECT-Grundlagen, WHERE-Klausel, JOINs, Aggregation, Subqueries, Normalisierung}. Pro KC wird Mastery getrackt und die nächste Aufgabe gezielt auf die schwächste KC ausgerichtet.

### Sokratische Guardrails

Khan Academys Khanmigo zeigt: Die wichtigste Design-Entscheidung bei KI-Tutoring ist **was die KI NICHT tut**. Guardrails erzwingen: "Was denkst du, was passiert wenn diese Schleife läuft?" statt "Hier ist die Lösung." Vgl. [[scaffolding]]: Hilfe geben, ohne die kognitive Arbeit abzunehmen.

### A/B-Testing als Kultur

Duolingo testet tausende Varianten pro Jahr — jedes UI-Element, jeder Übungstyp, jede Benachrichtigung wird gegen Retention-Metriken optimiert. Für Lernplattformen bedeutet das: Nicht raten, ob Worked Examples oder Parsons Problems besser funktionieren — beides testen und messen.

### Progressive Scaffolding Removal

freeCodeCamp und The Odin Project zeigen: Effektive selbstgesteuerte Plattformen starten mit geführten Übungen und enden mit offenen Projekten. Das entspricht dem Fading-Prinzip aus [[scaffolding]] und dem Expertise-Reversal-Effekt aus [[cognitive-load-theory]] — aber systematisch über den gesamten Lernpfad implementiert.

## Bezug zur IT-Ausbildung

Learning Engineering ist direkt relevant für den Aufbau einer KI-gestützten Lernplattform für Fachinformatiker:innen. Die höchste Hebelwirkung hat die Kombination aus:

1. **Knowledge Graph der Lernfelder** mit Prerequisite-Kanten (LF3 Netzwerk-Grundlagen → LF9 Dienste bereitstellen)
2. **Bayesian Knowledge Tracing** pro Skill und Lernende:r
3. **Sokratischer KI-Tutor** mit Guardrails (vgl. [[ki-native-lernumgebungen]])
4. **Spaced Repetition** für Retention (vgl. [[retrieval-practice]])
5. **Adaptive Aufgabenauswahl**, die [[scaffolding]] basierend auf Mastery-Level steuert

## Praktische Anwendung

Ein Agent kann Learning-Engineering-Prinzipien umsetzen:

1. **Knowledge Components identifizieren:** Lernfeld-Kompetenzen in atomare Skills zerlegen. Für jede Aufgabe dokumentieren, welche KCs sie testet.
2. **Mastery einschätzen:** Aus bisherigen Aufgabenergebnissen die Meisterungswahrscheinlichkeit pro KC ableiten — und die nächste Aufgabe gezielt auf Lücken ausrichten.
3. **Sokratisch statt lösungsorientiert:** Guardrails einhalten — Fragen stellen statt Antworten geben. Nur bei nachgewiesener Hilflosigkeit eskalieren.
4. **[[formatives-assessment]] als Datenquelle:** Jede Interaktion (richtig/falsch, Antwortzeit, Hilfe-Nutzung) als Signal für das Lernmodell nutzen.
5. **Iteration über Intuition:** Verschiedene Aufgabenformate ausprobieren und beobachten, was bei welchen Lernenden besser funktioniert.

## Verwandte Konzepte

- [[interaktive-lernumgebungen]] — Learning Engineering liefert die Prinzipien für deren Konstruktion
- [[formatives-assessment]] — Jede Lerninteraktion als formativer Datenpunkt
- [[scaffolding]] — Progressive Scaffolding Removal als Kernmechanismus
- [[cognitive-load-theory]] — Knowledge Tracing operationalisiert den Expertise-Reversal-Effekt
- [[ki-native-lernumgebungen]] — Learning Engineering + KI = nächste Generation
- [[retrieval-practice]] — Spaced Repetition als Retention-Mechanismus
- [[spaced-repetition-algorithmen]] — Algorithmen-Ergänzung mit Leitner, SM-2, FSRS und HLR im Detail

## Quellen

- Dede, C. & Richards, J. (Hrsg.). (2020). The 60-Year Curriculum: New Models for Lifelong Learning in the Digital Economy. Routledge.
- Corbett, A. T. & Anderson, J. R. (1994). Knowledge Tracing: Modeling the Acquisition of Procedural Knowledge. User Modeling and User-Adapted Interaction, 4(4), 253-278.
- Settles, B. & Meeder, B. (2016). A Trainable Spaced Repetition Model for Language Learning. Proceedings of ACL 2016.
- Bloom, B. S. (1984). The 2 Sigma Problem: The Search for Methods of Group Instruction as Effective as One-to-One Tutoring. Educational Researcher, 13(6), 4-16.
