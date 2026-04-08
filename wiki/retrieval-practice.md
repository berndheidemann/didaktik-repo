---
title: Retrieval Practice und Microlearning
type: methode
tags: [retrieval-practice, spaced-repetition, microlearning, interleaving, code-katas]
related:
  - "[[productive-failure]]"
  - "[[formatives-assessment]]"
  - "[[worked-examples]]"
  - "[[cognitive-load-theory]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[learning-engineering]]"
  - "[[wissensretention-programmierung]]"
  - "[[effektstaerken-unterricht]]"
  - "[[peer-instruction]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[metakognition]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [erinnern, verstehen, anwenden]
sozialform: [einzelarbeit]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Aktives Abrufen aus dem Gedächtnis (Testing Effect) und verteilte Kurzübungen
  stärken Langzeitbehalten und Transfer stärker als Wiederlesen oder Wiederholen —
  operationalisiert durch Code-Katas, Parsons Problems und Spaced-Repetition-Systeme.
---

# Retrieval Practice und Microlearning

## Kernidee

Retrieval Practice nutzt den Testing Effect (Roediger & Karpicke, 2006): Aktives Abrufen aus dem Gedächtnis stärkt Erinnerung und Transfer stärker als passives Wiederlesen. Kombiniert mit Spaced Repetition (verteilte Wiederholung) und Microlearning (Kurzübungen) entsteht ein System, das Wissen nachhaltig verankert. Für Programmierung bedeutet das: Code-Tracing, Parsons Problems und tägliche Katas statt Tutorial-Videos schauen.

## Beschreibung

### Der Testing Effect

Roediger & Karpicke (2006) zeigten: Studierende, die getestet wurden, behielten nach einer Woche signifikant mehr als Studierende, die den Stoff erneut studierten. Das gilt auch für Programmierung — Yang et al. (2024) fanden ~15% bessere Klausurergebnisse durch Low-Stakes-Code-Tracing-Quizzes vor jeder Einheit.

### Spaced Repetition

Ebbinghaus' Vergessenskurve zeigt: Ohne Wiederholung geht Wissen exponentiell verloren. Spaced Repetition Systeme (SRS) wie Anki optimieren den Zeitpunkt der Wiederholung — kurz bevor das Vergessen einsetzt. Duolingo nutzt ein Half-Life-Regression-Modell: Für jedes Konzept wird geschätzt, wann P(recall) unter einen Schwellenwert fällt.

**Für Programmierung:** SRS funktioniert für deklaratives Wissen (API-Signaturen, SQL-Syntax, Design-Pattern-Namen), weniger für prozedurales Wissen (wann/warum man es einsetzt). Best Practice: SRS für Fakten + [[worked-examples]]/Katas für Anwendung.

### Interleaved Practice

Statt Aufgaben nach Thema zu blocken (alle SQL, dann alle Python), werden Aufgabentypen gemischt. Das zwingt Lernende, zuerst zu identifizieren, *welcher* Aufgabentyp vorliegt — wie im echten IT-Alltag, wo Probleme nicht nach Lernfeld sortiert auftreten. Tafliovich et al. (2023) fanden signifikant bessere Prüfungsleistungen bei interleaved CS1-Kursen.

### Microlearning

Kurze, fokussierte Übungseinheiten (5-20 Min.). Effektiv für isolierte Konzepte und tägliche Routine. **Nicht** geeignet für komplexe Integrationsaufgaben — dafür braucht es längere Sessions (vgl. [[handlungsorientierter-unterricht]]: Lernsituationen).

## Durchführung

1. **Code-Prediction als Warmup** — Zu Beginn jeder Einheit: "Was gibt dieser Code aus?" Erst denken, dann ausführen. Trainiert mentale Simulation und ist [[formatives-assessment]] gleichzeitig.
2. **Parsons Problems** — Code-Zeilen in die richtige Reihenfolge bringen. Weniger kognitive Last als freies Schreiben, aber stärkerer Lerneffekt als nur Lesen. Gut als Übergang von [[worked-examples]] zu eigener Lösung.
3. **Tägliche Code-Katas** — 10-15 Min. fokussierte Übung auf eine Kompetenz (nicht ein Thema). Plattformen: Codewars, Exercism, eigene Aufgaben.
4. **Spaced Review Queue** — Automatisierte Wiederholung früherer Themen. "Du hast SQL-Joins zuletzt vor 3 Wochen geübt — hier ist eine Aufgabe."
5. **Interleaved Übungssets** — Gemischte Aufgaben über mehrere Lernfelder. Lernende müssen erst entscheiden, welches Wissen gefragt ist.

## Voraussetzungen

- Grundlagenwissen muss vorhanden sein (Retrieval Practice funktioniert nicht bei völlig unbekanntem Stoff)
- Aufgaben müssen atomar und klar formuliert sein (eine Kompetenz pro Aufgabe)
- Für SRS: Tool-Zugang (Anki, Moodle-Quizzes, eigene Lösungen)
- Regelmäßigkeit ist entscheidend — lieber 10 Min. täglich als 60 Min. wöchentlich

## Varianten

- **Flashcards für Syntax/APIs:** Anki-Karten mit Code-Snippets. Gut für: "Was macht `.filter()`?", "Welcher HTTP-Statuscode für 'nicht gefunden'?"
- **Debugging-Drills:** Kurze Code-Snippets mit einem Bug — finden und erklären. Trainiert Pattern-Matching.
- **Prompt-of-the-Day:** Tägliche kurze Aufgabe als Ritual (im LMS, Slack oder Terminal).
- **Interleaved Weekly Review:** Freitags gemischte Aufgaben aus allen bisherigen Lernfeldern.

## Zeitbedarf

- **Code-Prediction Warmup:** 5 Min. zu Beginn jeder Einheit
- **Parsons Problem:** 3-5 Min. pro Aufgabe
- **Tägliche Kata:** 10-15 Min.
- **Spaced Review:** 5-10 Min. automatisiert im eigenen Tempo
- **Interleaved Weekly Review:** 20-30 Min.

## Bezug zur IT-Ausbildung

Retrieval Practice ist für die IT-Ausbildung besonders wertvoll, weil Programmierung sowohl deklaratives Wissen (Syntax, APIs) als auch prozedurales Wissen (Problemlösung, Debugging) erfordert — und beides vergessen wird.

| Lernfeld | Retrieval-Practice-Format |
|----------|--------------------------|
| **LF3/LF9** | Flashcards für Ports, Protokolle, Subnetting-Regeln |
| **LF5** | Code-Prediction für SQL-Queries, Parsons Problems für Algorithmen |
| **LF6** | Debugging-Drills mit realistischen Fehlermeldungen |
| **LF8** | API-Endpoint-Quiz: "Welche HTTP-Methode für Löschen?" |
| **Alle LF** | Interleaved Weekly Review über alle bisherigen Inhalte |

## Praktische Anwendung

Ein Agent kann Retrieval Practice systematisch integrieren:

1. **Spaced Review Queue pflegen:** Basierend auf dem Lernverlauf Aufgaben zum optimalen Zeitpunkt wieder auftauchen lassen (vgl. [[learning-engineering]]: Knowledge Tracing).
2. **Code-Prediction generieren:** Kurze Code-Snippets erzeugen und "Was ist die Ausgabe?" fragen — verschiedene Schwierigkeitsstufen basierend auf [[blooms-taxonomie]].
3. **Interleaved Practice erstellen:** Aufgaben aus verschiedenen Lernfeldern mischen. Erst muss identifiziert werden, *welche* Kompetenz gefragt ist.
4. **Retrieval vor Instruction:** Neue Einheiten mit einer Abruf-Aufgabe starten statt mit Erklärung — macht vorhandenes Wissen sichtbar und aktiviert Vorwissen für [[productive-failure]].
5. **SRS-Karten generieren:** Aus Unterrichtsinhalten automatisch Flashcards für deklaratives Wissen erstellen.

## Verwandte Konzepte

- [[productive-failure]] — Retrieval Practice und Productive Failure nutzen beide den Abruf als Lernmechanismus
- [[formatives-assessment]] — Retrieval Practice ist gleichzeitig Assessment und Lernstrategie
- [[worked-examples]] — Parsons Problems als Zwischenschritt: mehr als lesen, weniger als frei schreiben
- [[cognitive-load-theory]] — Microlearning hält kognitive Belastung pro Einheit niedrig
- [[selbstgesteuertes-lernen]] — Spaced Repetition als Werkzeug für eigenständiges Lernen
- [[learning-engineering]] — Knowledge Tracing optimiert den Spaced-Repetition-Zeitplan

## Quellen

- Roediger, H. L. & Karpicke, J. D. (2006). Test-Enhanced Learning: Taking Memory Tests Improves Long-Term Retention. Psychological Science, 17(3), 249-255.
- Yang, C. et al. (2024). Retrieval Practice in Computer Science Education. Computers & Education, 210, Article 104963.
- Tafliovich, A. et al. (2023). Interleaved Practice in CS1. Proceedings of ACM SIGCSE 2023.
- Bjork, R. A. & Bjork, E. L. (2011). Making Things Hard on Yourself, But in a Good Way. In M. A. Gernsbacher et al. (Hrsg.), Psychology and the Real World (S. 56-64). Worth.
- Settles, B. & Meeder, B. (2016). A Trainable Spaced Repetition Model for Language Learning. Proceedings of ACL 2016.
