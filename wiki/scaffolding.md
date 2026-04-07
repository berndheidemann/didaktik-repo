---
title: Scaffolding und Zone der nächsten Entwicklung
type: theorie
tags: [lernunterstuetzung, zpd, fading, differenzierung, vygotsky]
related:
  - "[[cognitive-load-theory]]"
  - "[[worked-examples]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[blooms-taxonomie]]"
  - "[[pair-programming-unterricht]]"
  - "[[formatives-assessment]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Temporäre Lernunterstützung in der Zone der nächsten Entwicklung (Vygotsky, 1978),
  die schrittweise abgebaut wird (Fading), sobald Lernende eigenständig
  handeln können (Wood, Bruner & Ross, 1976).
---

# Scaffolding und Zone der nächsten Entwicklung

## Kernidee

Die Zone der nächsten Entwicklung (ZPD) nach Vygotsky beschreibt den Bereich zwischen dem, was Lernende allein können, und dem, was sie mit Unterstützung erreichen. Scaffolding ist die temporäre Unterstützung in dieser Zone — wie ein Baugerüst wird sie entfernt, sobald das "Gebäude" (die Kompetenz) selbst trägt.

## Beschreibung

### Vygotskys Zone der nächsten Entwicklung

Lev Vygotsky (1978) unterschied drei Zonen:

1. **Zone der aktuellen Entwicklung** — was Lernende selbstständig beherrschen
2. **Zone der nächsten Entwicklung (ZPD)** — was mit Unterstützung erreichbar ist (hier findet optimales Lernen statt)
3. **Unerreichbare Zone** — was auch mit Hilfe noch nicht möglich ist

Zentrale Einsicht: Lernen ist ein sozialer Prozess. Instruktion sollte der Entwicklung vorausgehen, nicht ihr folgen.

### Scaffolding nach Wood, Bruner & Ross (1976)

Wood, Bruner und Ross identifizierten sechs Funktionen des Scaffolding:

| Funktion | Beschreibung | IT-Beispiel |
|----------|-------------|-------------|
| **Aufmerksamkeit wecken** | Interesse für die Aufgabe erzeugen | "Schau dir an, was diese API kann — teste sie im Browser" |
| **Komplexität reduzieren** | Aufgabe auf bearbeitbares Niveau vereinfachen | Nur die WHERE-Klausel ergänzen, Rest ist vorgegeben |
| **Richtung halten** | Bei der Aufgabe bleiben, Fortschritt sichern | Meilensteine in Projektaufgaben setzen |
| **Kritische Merkmale hervorheben** | Auf wichtige Aspekte und Fehler hinweisen | "Achte auf die Rückgabetypen — da liegt oft der Bug" |
| **Frustration kontrollieren** | Stress reduzieren ohne Abhängigkeit zu erzeugen | Teilerfolge sichtbar machen, Hinweise statt Lösungen |
| **Modellieren** | Lösungswege vormachen | Live-Coding einer vergleichbaren Aufgabe |

### Vier Scaffolding-Typen

| Typ | Fokus | Beispiel |
|-----|-------|---------|
| **Konzeptuell** | Was ist wichtig? | Concept Map zu OOP-Prinzipien |
| **Prozedural** | Wie benutze ich die Werkzeuge? | IDE-Kurzanleitung, Git-Workflow-Checkliste |
| **Strategisch** | Welche Lösungswege gibt es? | Debugging-Heuristiken, Entscheidungsbäume |
| **Metakognitiv** | Wie steuere ich mein Lernen? | Reflexionsfragen: "Was weißt du bereits?" |

### Fading — Gradual Release of Responsibility

| Phase | Rolle Lehrkraft | Rolle Lernende |
|-------|----------------|----------------|
| **I do** | Demonstriert und erklärt | Beobachten, Fragen stellen |
| **We do** | Begleitet, gibt Feedback | Arbeiten mit Unterstützung |
| **You do together** | Beobachtet, greift bei Bedarf ein | Arbeiten mit Peers |
| **You do alone** | Steht als Ressource bereit | Selbstständige Bearbeitung |

Signale für Fading-Bereitschaft: konsistent korrekte Ergebnisse, selbstständiger Strategieeinsatz, Fähigkeit das eigene Vorgehen zu erklären.

## Bezug zur IT-Ausbildung

Scaffolding ist besonders relevant für den Programmierunterricht, weil Anfänger:innen gleichzeitig Syntax, Semantik, Problemlösung und Werkzeugbedienung bewältigen müssen (vgl. [[cognitive-load-theory]]).

| Scaffolding-Stufe | LF5 (SQL) | LF8 (APIs) |
|-------------------|-----------|------------|
| **Maximal** | Kommentiertes SQL-Beispiel durchgehen | Fertige API-Calls mit Annotationen studieren |
| **Hoch** | Lücken-Query: JOIN-Bedingung ergänzen | Endpoint-Routing vorgegeben, Handler implementieren |
| **Mittel** | [[pair-programming-unterricht]]: Query gemeinsam entwickeln | API-Sandbox mit automatisierten Tests |
| **Minimal** | "Zeige alle offenen Bestellungen mit Kundennamen" | Eigene API nach Anforderung entwerfen |

Block-basierte Programmierumgebungen (Scratch, Blockly) sind visuelles Scaffolding: Sie eliminieren Syntaxfehler und lassen Anfänger:innen sich auf Logik konzentrieren. Der Übergang zu textbasierter Programmierung ist gezieltes Fading.

## Praktische Anwendung

Ein Agent kann Scaffolding dynamisch anpassen:

1. **ZPD einschätzen** — durch diagnostische Fragen oder Analyse bisheriger Aufgabenlösungen feststellen, was Lernende allein können und wo die ZPD liegt.
2. **Abgestuftes Feedback** — erst Hinweis auf den Fehlertyp, dann auf die Stelle, dann konkrete Hilfe. Nicht sofort die Lösung (vgl. [[formatives-assessment]]).
3. **Adaptive Aufgaben** — bei Schwierigkeiten Lückencode anbieten, bei Erfolg offenere Aufgaben stellen. Vgl. [[worked-examples]] für die Fading-Sequenz.
4. **Metakognitives Scaffolding** — Reflexionsfragen stellen, die [[selbstgesteuertes-lernen]] fördern: "Was hast du bisher versucht?", "Welche Strategie wählst du als nächstes?"
5. **Expertise Reversal vermeiden** — wenn Lernende kein Scaffolding mehr brauchen, zurücktreten. Zu viel Hilfe schadet Fortgeschrittenen (vgl. [[cognitive-load-theory]]).

## Verwandte Konzepte

- [[cognitive-load-theory]] — Scaffolding reduziert extrinsische kognitive Belastung bei Novizen
- [[worked-examples]] — Fading von Worked Examples zu offenen Aufgaben ist eine Scaffolding-Strategie
- [[selbstgesteuertes-lernen]] — Metakognitives Scaffolding fördert Selbstregulation
- [[interaktive-lernumgebungen]] — Scaffolding als zentrales Gestaltungsprinzip
- [[pair-programming-unterricht]] — Navigator als soziales Scaffold für den Driver
- [[blooms-taxonomie]] — Taxonomiestufe bestimmt das nötige Scaffolding-Niveau
- [[formatives-assessment]] — Abgestuftes Feedback ist eine Form von Scaffolding

## Quellen

- Vygotsky, L. S. (1978). Mind in Society: The Development of Higher Psychological Processes. Harvard University Press.
- Wood, D., Bruner, J. S. & Ross, G. (1976). The Role of Tutoring in Problem Solving. Journal of Child Psychology and Psychiatry, 17(2), 89-100.
- Puntambekar, S. & Hubscher, R. (2005). Tools for Scaffolding Students in a Complex Learning Environment: What Have We Gained and What Have We Missed? Educational Psychologist, 40(1), 1-12.
- Belland, B. R. (2014). Scaffolding: Definition, Current Debates, and Future Directions. In J. M. Spector et al. (Hrsg.), Handbook of Research on Educational Communications and Technology (S. 505-518). Springer.
