---
title: Pair Programming im Unterricht
type: methode
tags: [kooperatives-lernen, programmierung, softwareentwicklung, peer-learning]
related:
  - "[[constructive-alignment]]"
  - "[[blooms-taxonomie]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[formatives-assessment]]"
  - "[[scaffolding]]"
  - "[[code-review-unterricht]]"
  - "[[meta-analysen-cs-education]]"
  - "[[affektive-dimensionen]]"
  - "[[cognitive-apprenticeship]]"
  - "[[community-of-practice]]"
  - "[[flipped-classroom]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[self-determination-theory]]"
  - "[[engagement-theory]]"
audience: [FIAE]
taxonomiestufe: [anwenden, analysieren]
sozialform: [partner]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Pair Programming als Lernmethode: Zwei Lernende arbeiten an einem
  Rechner mit verteilten Rollen (Driver/Navigator), was Wissenstransfer,
  Code-Qualität und Problemlösekompetenz fördert.
---

# Pair Programming im Unterricht

## Kernidee

Pair Programming überträgt eine bewährte Praxis der professionellen Softwareentwicklung (Extreme Programming) in den Unterricht. Zwei Lernende arbeiten synchron an einer Aufgabe: Der Driver schreibt Code, der Navigator überprüft, denkt voraus und stellt Fragen. Regelmäßiger Rollenwechsel ist essenziell.

## Beschreibung

Pair Programming stammt aus dem Extreme Programming (XP) nach Kent Beck (1999). In der professionellen Softwareentwicklung dient es der Qualitätssicherung und dem Wissenstransfer. Als Lernmethode hat es zusätzliche didaktische Vorteile: Lernende verbalisieren ihre Denkprozesse (Think Aloud), lernen voneinander und entwickeln kommunikative Kompetenzen.

Die zwei Rollen:
- **Driver:** Schreibt den Code, fokussiert auf die taktische Umsetzung.
- **Navigator:** Behält den Überblick, überprüft auf Fehler, denkt strategisch voraus.

## Durchführung

1. **Paare bilden:** Bewusst heterogen (unterschiedliches Leistungsniveau) oder homogen (ähnliches Niveau), je nach Ziel.
2. **Rollen erklären:** Driver/Navigator-Konzept vorstellen, Rollenwechsel-Intervall festlegen (z.B. alle 10-15 Minuten).
3. **Aufgabe stellen:** Aufgabe muss komplex genug sein, damit zwei Köpfe sinnvoll sind. Triviale Aufgaben frustrieren den Navigator.
4. **Begleiten:** Lehrkraft beobachtet, ob tatsächlich Austausch stattfindet. Häufiges Problem: Navigator wird passiv.
5. **Reflexion:** Am Ende reflektieren: Was hat die Zusammenarbeit gebracht? Was war schwierig?

## Voraussetzungen

- Jedes Paar braucht genau einen Rechner/Arbeitsplatz (nicht zwei!)
- Lernende müssen Grundlagen der Programmiersprache beherrschen
- Aufgaben müssen anspruchsvoll genug sein (nicht trivial lösbar)
- Timer für Rollenwechsel empfohlen

## Varianten

- **Ping-Pong Pairing:** Einer schreibt den Test, der andere die Implementierung. Fördert testgetriebene Entwicklung.
- **Strong-Style Pairing:** "Für eine Idee, die in den Code soll, muss sie durch die Hände einer anderen Person." Der Navigator diktiert, der Driver tippt.
- **Remote Pair Programming:** Über Screen-Sharing/VS Code Live Share. Relevant seit hybriden Unterrichtsformen.

## Zeitbedarf

- **Vorbereitung:** 10-15 Min. (Paare bilden, Aufgabe vorbereiten, Rollen erklären)
- **Durchführung:** Min. 45 Min. produktive Pairzeit (kürzere Sessions lohnen sich kaum)
- **Rollenwechsel:** Alle 10-15 Min. (Timer nutzen)
- **Reflexion:** 10-15 Min. am Ende
- **Gesamtdauer:** Ideal 60-90 Min. pro Session

## Bezug zur IT-Ausbildung

Pair Programming ist direkt berufsrelevant für FIAE — es wird in vielen Unternehmen praktiziert. Besonders geeignet für:
- **Lernfeld 5 (Software zur Verwaltung von Daten anpassen):** Gemeinsam Datenbankabfragen entwickeln.
- **Lernfeld 8 (Daten systemübergreifend bereitstellen):** API-Entwicklung im Pair.
- **Einführung neuer Technologien:** Erfahrenere:r + Neuling als Pair reduziert Einstiegshürden.

Gemäß [[constructive-alignment]]: Wenn das Lernziel "Anwenden" oder "Analysieren" ist, passt Pair Programming als TLA, weil Lernende aktiv Code schreiben und kritisch überprüfen.

## Praktische Anwendung

Ein Agent kann Pair Programming in Lernsituationen einbauen, wenn:
- Das Lernziel praktische Programmierkompetenz fordert (Taxonomiestufe: anwenden+)
- Heterogene Lerngruppen Wissenstransfer brauchen
- Code-Qualität ein explizites Lernziel ist

Konkret: Der Agent kann Pair-Programming-Aufgaben generieren, die die Ping-Pong-Variante nutzen — inklusive vordefinierter Tests, die der Navigator schreibt, und Implementierung durch den Driver.

## Verwandte Konzepte

- [[constructive-alignment]] — Pair Programming als TLA muss zum Lernziel passen
- [[blooms-taxonomie]] — Taxonomiestufen "anwenden" und "analysieren" beschreiben das Kompetenzniveau von Pair Programming
- [[interaktive-lernumgebungen]] — Pair Programming als kooperative Interaktionsform in interaktiven Lernumgebungen
- [[handlungsorientierter-unterricht]] — Pair Programming als Methode für handlungsorientierte Lernsituationen
- [[formatives-assessment]] — Peer-Feedback im Pair als Wiliams Strategie 4 (Lernende als Lernressourcen)
- [[scaffolding]] — Navigator als soziales Scaffold für den Driver

## Quellen

- Beck, K. (1999). Extreme Programming Explained. Addison-Wesley.
- Williams, L. & Kessler, R. (2002). Pair Programming Illuminated. Addison-Wesley.
- Hannay, J.E. et al. (2009). The Effectiveness of Pair Programming: A Meta-Analysis. Information and Software Technology, 51(7), 1110-1122.
