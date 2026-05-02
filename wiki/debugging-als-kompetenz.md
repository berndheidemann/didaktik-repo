---
title: Debugging als Kompetenz
type: methode
tags: [debugging, fehlersuche, problemloesung, troubleshooting, programmierung]
related:
  - "[[hint-engineering-llm-tutoring]]"
  - "[[threshold-concepts]]"
  - "[[cognitive-apprenticeship]]"
  - "[[formatives-assessment]]"
  - "[[scaffolding]]"
  - "[[lerntagebuch]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[worked-examples]]"
  - "[[expertise-entwicklung]]"
  - "[[primm-methode]]"
  - "[[intrinsic-integration]]"
  - "[[use-modify-create]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[blooms-taxonomie]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[metakognition]]"
  - "[[fehlerkultur-im-unterricht]]"
  - "[[misconception-analyse]]"
  - "[[affektive-dimensionen]]"
  - "[[gamification-it-unterricht]]"
  - "[[poe-methode]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[notional-machines]]"
  - "[[live-coding-lehrmethode]]"
  - "[[cognitive-task-analysis]]"
  - "[[explain-in-plain-english]]"
  - "[[kritische-ki-bewertungskompetenz]]"
  - "[[ki-prompt-handwerk]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
sozialform: [einzelarbeit, partner]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Debugging ist eine eigenständige, lehrbare Kompetenz — nicht nur ein
  Nebenprodukt des Programmierens. Systematische Strategien (hypothesengetrieben,
  Bisektions-Methode, Rubber-Duck) müssen explizit gelehrt und geübt werden.
---

# Debugging als Kompetenz

## Kernidee

Die meisten Programmier-Curricula lehren, wie man Code *schreibt* — aber nicht, wie man Fehler *findet*. Dabei verbringen professionelle Entwickler:innen 35-50% ihrer Zeit mit Debugging (häufig zitierte Schätzung; Vessey, 1985 untersucht Debugging-Strategien von Experten vs. Novizen). Debugging ist eine eigenständige Kompetenz mit eigenen Strategien, die explizit gelehrt werden muss. Erfahrene Debugger arbeiten hypothesengetrieben; Anfänger:innen probieren zufällig — dieser Unterschied ist lehrbar.

## Beschreibung

### Debugging als kognitive Fertigkeit

Debugging erfordert drei Fähigkeiten gleichzeitig: (1) eine korrekte Notional Machine (vgl. [[threshold-concepts]]), um den erwarteten vs. tatsächlichen Ablauf zu vergleichen; (2) Hypothesenbildung ("Wo könnte der Fehler liegen?"); (3) systematische Teststrategien ("Wie kann ich meine Hypothese überprüfen?"). Das macht Debugging zu einer Aktivität auf [[blooms-taxonomie]]-Stufe "analysieren" und "bewerten".

### Debugging-Strategien

| Strategie | Beschreibung | Wann einsetzen |
|-----------|-------------|---------------|
| **Fehlermeldung lesen** | Erste Informationsquelle — Typ, Zeile, Stack Trace interpretieren | Immer zuerst |
| **Hypothesengetrieben** | Vermutung bilden, gezielt testen, ausschließen | Bei klarer Fehlerhypothese |
| **Bisektions-Methode** | Code halbieren (Breakpoints/Print-Statements), eingrenzen | Bei unklarem Fehlerort |
| **Rubber-Duck-Debugging** | Code Zeile für Zeile laut erklären (vgl. [[cognitive-apprenticeship]]: Articulation) | Wenn man "festsitzt" |
| **Minimales Beispiel** | Problem auf kleinstmöglichen reproduzierenden Fall reduzieren | Bei komplexen Systemen |
| **Diff-Debugging** | Letzte funktionierende Version vergleichen (git diff) | Nach kürzlicher Änderung |

### Experten vs. Novizen beim Debugging

| Aspekt | Novize | Expert:in |
|--------|--------|-----------|
| **Strategie** | Zufälliges Ändern ("trial and error") | Hypothesengetrieben, systematisch |
| **Fehlermeldung** | Wird ignoriert oder nicht verstanden | Wird als primäre Informationsquelle genutzt |
| **Mentales Modell** | Fehlerhaft oder fehlend → kann Expected vs. Actual nicht vergleichen | Korrekte Notional Machine → sieht sofort, wo Abweichung liegt |
| **Werkzeuge** | Print-Statements (wenn überhaupt) | Debugger, Breakpoints, Watch-Variablen, Logging |
| **Reflexion** | Fehler wird gefixt, nicht verstanden | Ursache wird analysiert und Muster erkannt |

## Durchführung

1. **Debugging-Strategien explizit lehren** — Nicht voraussetzen, dass Lernende "von selbst" debuggen lernen. Die Strategien (s.o.) vorstellen und demonstrieren.
2. **Live-Debugging modellieren** — Lehrkraft debuggt vor der Klasse und denkt dabei laut (vgl. [[cognitive-apprenticeship]]: Modeling). "Die Fehlermeldung sagt NullPointer in Zeile 42... meine Hypothese ist, dass die Variable nicht initialisiert wurde... ich setze einen Breakpoint..."
3. **Bug-Hunting-Aufgaben** — Code mit absichtlichen Fehlern vorgeben. Lernende müssen den Fehler finden, die Ursache erklären und den Fix beschreiben (vgl. [[worked-examples]]: Erroneous Examples).
4. **Debugging-Journal** führen (vgl. [[lerntagebuch]]): Fehlermeldung → Hypothese → Versuch → Ergebnis → Erkenntnis. Macht den Debugging-Prozess sichtbar und reflexiv.
5. **Pair Debugging** — Zu zweit debuggen, Rollen (Hypothesen-Bildner / Tester) wechseln. Fördert Verbalisierung und systematisches Vorgehen.

## Voraussetzungen

- Grundlegende Programmierkenntnisse (Code lesen können, vgl. [[expertise-entwicklung]]: Tracing-Skill)
- Zugang zu Debugging-Werkzeugen (IDE-Debugger, nicht nur Print-Statements)
- Fehlertolerante Atmosphäre — Bugs sind normal, nicht peinlich (vgl. [[affektive-dimensionen]])

## Varianten

- **Fehlermeldungs-Klinik:** Sammlung kryptischer Fehlermeldungen mit Übersetzung in verständliche Sprache
- **Debugging-Wettbewerb:** Wer findet den Bug am schnellsten? (vgl. [[gamification-it-unterricht]])
- **Historische Bugs:** Berühmte Bugs analysieren (Ariane 5, Heartbleed) — zeigt reale Konsequenzen
- **Gegenseitiges Bug-Einbauen:** Lernende verstecken Bugs im Code des Partners

## Zeitbedarf

- **Strategien einführen:** 45-90 Min. (einmalig)
- **Bug-Hunting-Aufgabe:** 15-30 Min. pro Aufgabe
- **Debugging-Journal:** 5 Min. pro Debugging-Session (fortlaufend)

## Bezug zur IT-Ausbildung

Debugging ist in jedem Lernfeld relevant — wo Code geschrieben wird, werden Bugs produziert:

| Lernfeld | Debugging-Kontext |
|----------|------------------|
| **LF5** | SQL-Fehler: falsche JOINs, fehlende WHERE-Klausel, Typ-Mismatches |
| **LF6** | Systematisches Troubleshooting bei Serviceanfragen |
| **LF8** | API-Debugging: HTTP-Statuscodes, JSON-Parsing-Fehler, Auth-Probleme |
| **LF11a** | Laufzeitfehler, Logikfehler, OOP-Bugs (NullPointer, Aliasing) |

Die IHK-Abschlussprüfung (Teil 1 + 2) enthält Code-Analyse-Aufgaben — Debugging-Kompetenz ist prüfungsrelevant.

## Praktische Anwendung

Ein Agent kann Debugging-Kompetenz systematisch aufbauen:

1. **Abgestuftes Debugging-[[scaffolding]]:** Bei Fehlern erst fragen "Was sagt die Fehlermeldung?" → dann "Welche Hypothese hast du?" → erst dann konkreten Hint geben. Nie sofort den Fix zeigen.
2. **Erroneous Examples generieren:** Code mit gezielten Bugs (syntaktisch für Anfänger, logisch für Fortgeschrittene) als [[worked-examples]]-Variante. "Finde und erkläre den Bug."
3. **Debugging-Prozess sichtbar machen:** Lernende auffordern, ihren Debugging-Weg zu dokumentieren, bevor sie die Lösung erhalten. Vgl. [[formatives-assessment]] auf Process-Level.
4. **Fehlermeldungen entschärfen:** Kryptische Compiler-/Laufzeit-Meldungen in verständliche Sprache übersetzen und Kontext geben (vgl. [[affektive-dimensionen]]: Emotional Design).

## Verwandte Konzepte

- [[threshold-concepts]] — Korrekte Notional Machine ist Voraussetzung für effektives Debugging
- [[cognitive-apprenticeship]] — Live-Debugging als Modeling, Rubber-Duck als Articulation
- [[formatives-assessment]] — Debugging-Aufgaben als Process-Level-Assessment
- [[scaffolding]] — Abgestuftes Debugging-Scaffolding: Fehlermeldung → Hypothese → Hint → Fix
- [[lerntagebuch]] — Debugging-Journal als Reflexionsinstrument
- [[ki-gestuetztes-tutoring]] — KI-Tutor begleitet den Debugging-Prozess statt den Fix zu geben
- [[worked-examples]] — Erroneous Examples als Debugging-Übungsformat
- [[expertise-entwicklung]] — Debugging als eigener Subskill in der Progression

## Quellen

- Vessey, I. (1985). Expertise in Debugging Computer Programs: A Process Analysis. International Journal of Man-Machine Studies, 23(5), 459-494.
- Ko, A. J. & Myers, B. A. (2004). Designing the Whyline: A Debugging Interface for Asking Questions About Program Behavior. Proceedings of CHI 2004, 151-158.
- Michaeli, T. & Romeike, R. (2019). Improving Debugging Skills in the Classroom — The Effects of Teaching a Systematic Debugging Process. *Proceedings of WiPSCE 2019* (14th Workshop in Primary and Secondary Computing Education), 1-7. https://doi.org/10.1145/3361721.3361724
- Michaeli, T. & Romeike, R. (2019). Current Status and Perspectives of Debugging in the K-12 Classroom: A Qualitative Study. *Proceedings of EDUCON 2019* (IEEE Global Engineering Education Conference), 1030-1038. https://doi.org/10.1109/EDUCON.2019.8725282
