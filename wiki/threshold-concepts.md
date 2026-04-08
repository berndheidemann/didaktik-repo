---
title: Threshold Concepts und Notional Machines
type: theorie
tags: [schwellenkonzepte, mentale-modelle, misconceptions, programmierung, diagnostik]
related:
  - "[[cognitive-load-theory]]"
  - "[[scaffolding]]"
  - "[[worked-examples]]"
  - "[[productive-failure]]"
  - "[[formatives-assessment]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[expertise-entwicklung]]"
  - "[[wissensretention-programmierung]]"
  - "[[debugging-als-kompetenz]]"
  - "[[peer-instruction]]"
  - "[[low-floor-high-ceiling]]"
  - "[[use-modify-create]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[misconception-analyse]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, analysieren]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Bestimmte Konzepte (Variablen, Rekursion, Referenzen) sind transformative
  Schwellen — einmal verstanden, verändern sie das Denken irreversibel.
  Sorvas Notional Machines erklären, warum Anfänger:innen falsche mentale
  Modelle der Programmausführung haben und wie man sie korrigiert.
---

# Threshold Concepts und Notional Machines

## Kernidee

Nicht alle Konzepte sind gleich schwer. Meyer & Land (2003) zeigen: Bestimmte "Schwellenkonzepte" wirken als Portale — einmal verstanden, transformieren sie das gesamte Verständnis eines Fachs irreversibel. In der Informatik sind das u.a. Variablen, Rekursion und Referenzen. Sorva (2012) erklärt die Schwierigkeit durch fehlende "Notional Machines" — korrekte mentale Modelle der Programmausführung.

## Beschreibung

### Was macht ein Concept zum Threshold Concept?

| Eigenschaft | Beschreibung | Beispiel |
|-------------|-------------|---------|
| **Transformativ** | Verändert die Wahrnehmung des gesamten Fachs | Wer Abstraktion versteht, sieht Code anders |
| **Irreversibel** | Man kann nicht zum alten Denken zurück | Wer Referenzen versteht, kann die Verwirrung nicht mehr nachfühlen |
| **Integrativ** | Verbindet zuvor getrennte Ideen | Rekursion verbindet Funktionen, Stacks und Basisfälle |
| **Troublesome** | Inhärent schwierig, oft kontraintuitiv | `x = x + 1` ist für Mathematik-Denker ein Widerspruch |

### Identifizierte Threshold Concepts in der Informatik

- **Variablen als Speicherplätze** — Novizen verwechseln Name und Wert oder glauben, Zuweisung erzeugt eine permanente mathematische Beziehung
- **Iteration** — Mentales Durchspielen von Schleifendurchläufen überfordert das Arbeitsgedächtnis (vgl. [[cognitive-load-theory]])
- **Rekursion** — Kanonisches Schwellenkonzept. Erfordert gleichzeitiges Verständnis von Call Stack, Basisfällen und Selbstreferenz
- **Abstraktion** — Details unterdrücken und auf höherer Ebene arbeiten (Funktionen, Klassen, Interfaces)
- **Referenzen und Pointer** — Die Unterscheidung Wert vs. Referenz; Aliasing; die häufigste Fehlerquelle bei Novizen
- **State und Mutabilität** — Programmzustand ändert sich über die Zeit; gleicher Code kann verschiedene Ergebnisse liefern

### Notional Machines (Sorva, 2012)

Novizen scheitern, weil ihnen eine korrekte **Notional Machine** fehlt — ein mentales Modell davon, wie der Computer Code ausführt. Häufige Fehlmodelle:

- **Zuweisung als Gleichung** — `x = x + 1` wird als Widerspruch gelesen
- **Der "Superbug"** — Glaube, der Computer kann die Absicht erraten
- **Schleife als Einmalausführung** — Nicht verstehen, dass Iterationen sich wiederholen
- **Scope-Blindheit** — Erwartung, dass Variablen überall sichtbar sind
- **Rekursion = Endlosschleife** — Nicht erkennen, wie Basisfälle die Rekursion beenden

Sorva (2018) argumentiert: Das Schwellenkonzept ist nicht "Rekursion" abstrakt, sondern eine korrekte Notional Machine, die rekursive Ausführung tracen kann.

### Visualisierungstools

**Python Tutor** (pythontutor.com) rendert schrittweise Ausführung mit Stack Frames, Heap-Objekten und Referenz-Pfeilen. Studien zeigen, dass es korrekte Notional Machines aufbaut. **Thonny** ist eine Anfänger-IDE mit integriertem Step-Through-Debugger.

## Bezug zur IT-Ausbildung

Threshold Concepts erklären, warum bestimmte Lernfelder systematisch Schwierigkeiten bereiten:

| Lernfeld | Threshold Concept | Typische Misconception |
|----------|-------------------|----------------------|
| **LF5 (SQL)** | Mengenbasiertes Denken | SQL verarbeitet Mengen, nicht Zeilen — Novizen denken prozedural |
| **LF5 (Programmierung)** | Variablen, Schleifen | `x = x + 1` als Widerspruch |
| **LF8 (APIs)** | Asynchronität, State | Request/Response ist nicht synchron wie Funktionsaufrufe |
| **LF11a (OOP)** | Abstraktion, Referenzen | Klasse vs. Instanz verwechseln; Aliasing-Überraschungen |

Ein adaptives Lernsystem sollte diagnostizieren, welche Schwellenkonzepte ein:e Lernende:r (nicht) überschritten hat, und gezielt intervenieren — statt pauschal weiterzuunterrichten.

## Praktische Anwendung

Ein Agent kann Threshold Concepts gezielt adressieren:

1. **Diagnostik:** Code-Tracing-Aufgaben und Parsons Problems als schnelle Tests, ob ein Schwellenkonzept überschritten ist. Vgl. [[formatives-assessment]].
2. **Gezielte Intervention:** Bei identifizierter Misconception nicht einfach nochmal erklären, sondern die Notional Machine explizit korrigieren — z.B. mit Python Tutor visualisieren.
3. **[[productive-failure]] nutzen:** Lernende Code schreiben lassen, der an der Misconception scheitert, dann die Notional Machine zeigen.
4. **Prerequisite-Prüfung:** Kein Weiterschalten zu Themen, die auf nicht-überschrittenen Schwellen aufbauen (vgl. [[learning-engineering]]: Knowledge Graph).
5. **Misconception-aware Feedback:** Bei typischen Fehlern nicht nur "falsch" sagen, sondern die dahinterliegende Misconception adressieren.

## Verwandte Konzepte

- [[cognitive-load-theory]] — Threshold Concepts haben hohe Elementinteraktivität
- [[scaffolding]] — Gezielte Unterstützung beim Überschreiten der Schwelle
- [[worked-examples]] — Annotierte Beispiele machen die korrekte Notional Machine sichtbar
- [[productive-failure]] — Misconceptions durch Scheitern aufdecken, dann korrigieren
- [[formatives-assessment]] — Code-Tracing als Diagnostik für Schwellenkonzept-Status
- [[ki-native-lernumgebungen]] — Misconception-aware KI-Tutoring
- [[expertise-entwicklung]] — Schwellenkonzepte markieren Übergänge zwischen Expertise-Stufen

## Quellen

- Meyer, J. H. F. & Land, R. (2003). Threshold Concepts and Troublesome Knowledge. In C. Rust (Hrsg.), Improving Student Learning (S. 412-424). OCSLD.
- Sorva, J. (2012). Visual Program Simulation in Introductory Programming Education. Dissertation, Aalto University.
- Sorva, J. (2018). Misconceptions and the Beginner Programmer. In S. Sentance et al. (Hrsg.), Computer Science Education: Perspectives on Teaching and Learning (S. 171-187). Bloomsbury.
- Lister, R. et al. (2004). A Multi-National Study of Reading and Tracing Skills in Novice Programmers. ACM SIGCSE Bulletin, 36(4), 119-150.
