---
title: PRIMM — Predict, Run, Investigate, Modify, Make
type: methode
tags: [programmieren-lernen, code-tracing, scaffolding, sentance, raspberry-pi]
related:
  - "[[worked-examples]]"
  - "[[scaffolding]]"
  - "[[peer-instruction]]"
  - "[[debugging-als-kompetenz]]"
  - "[[code-review-unterricht]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[cognitive-load-theory]]"
  - "[[expertise-entwicklung]]"
  - "[[low-floor-high-ceiling]]"
  - "[[use-modify-create]]"
  - "[[productive-failure]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[misconception-analyse]]"
  - "[[parsons-problems]]"
  - "[[anchored-instruction]]"
  - "[[metakognition]]"
  - "[[retrieval-practice]]"
  - "[[spaced-repetition-algorithmen]]"
  - "[[poe-methode]]"
  - "[[spaced-repetition-scheduler-bauen]]"
  - "[[browser-ide-gestuetzte-tutorials]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[neurodidaktik-programmieren]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, analysieren]
sozialform: [partner, gruppe, einzelarbeit]
created: 2026-04-07
updated: 2026-04-09
summary: >
  Fünf-Phasen-Struktur für Programmieraufgaben (Sentance, Waite & Kallia,
  2019): Predict → Run → Investigate → Modify → Make. Differenzierung ist
  strukturell eingebaut — schwache Lernende verweilen länger in den frühen
  Phasen, starke springen zu Modify/Make. Code-Spezialisierung der
  generischen POE-Methode ([[poe-methode]]).
---

# PRIMM — Predict, Run, Investigate, Modify, Make

## Kernidee

PRIMM ist eine fünfstufige Sequenz für Programmierunterricht: **Predict** (Output vorhersagen), **Run** (ausführen), **Investigate** (zergliedern), **Modify** (anpassen), **Make** (eigenen ähnlichen Code schreiben). Sue Sentance und Kolleg:innen (Raspberry Pi Foundation, King's College London) entwickelten PRIMM, um den "Code anstarren und nichts verstehen"-Effekt zu durchbrechen und Differenzierung *strukturell* in jede Aufgabe einzubauen.

## Beschreibung

PRIMM hat einen sozio-konstruktivistischen Hintergrund: Predict aktiviert Vorwissen, Run liefert Feedback auf mentale Modelle, Investigate macht Wissen explizit, Modify/Make sind aktive Konstruktion. Sentance, Waite & Kallia (2019) berichten aus einer Studie mit 493 Schüler:innen (11-14 Jahre) in 13 UK-Schulen: PRIMM-Klassen zeigten höhere Beteiligung und besseres Verständnis als Klassen, in denen sofort eigenständig geschrieben wird.

PRIMM ist verwandt mit [[use-modify-create]] (andere Granularität) und nutzt [[worked-examples]] als Material. Entscheidender Unterschied: Predict zwingt zum *aktiven Engagement* mit dem Code, statt zum passiven Überfliegen.

## Durchführung

### Die fünf Phasen

| Phase | Aktivität | Dauer | Ziel | Was der Agent generiert |
|-------|----------|-------|------|--------------------------|
| **Predict** | Lernende sagen Output voraus, *bevor* sie Code ausführen. Begründen ihre Vorhersage. | 5-10 Min. | Mentales Modell aktivieren, Lücken aufdecken | Code-Schnipsel + Predict-Prompt + Begründungsfeld |
| **Run** | Code ausführen, Output mit Vorhersage vergleichen. Diskussion der Diskrepanzen. | 5 Min. | Sofortiges Feedback auf mentales Modell | "Run"-Button + Diff-Anzeige Vorhersage vs. Realität |
| **Investigate** | Code zergliedern: Variablen umbenennen, Werte ändern, Tracing-Tabellen ausfüllen, Diskussion warum so geschrieben | 10-15 Min. | Code von außen verstehen statt sofort selbst schreiben | Tracing-Tabelle, Variableninspektor, Frage-Sets |
| **Modify** | Gezielte kleine Änderungen: "Mache es so, dass...", "Erweitere um...", "Was passiert, wenn du Zeile 5 löschst?" | 10-15 Min. | Verständnis durch gezielte Eingriffe vertiefen | Modify-Quests mit klarem Ziel |
| **Make** | Eigenen, ähnlichen Code von Grund auf — gleiche Struktur, neue Anwendung. | 15-30 Min. | Transfer auf eigenes Problem | Offenes Briefing mit Bezug zum Beispiel |

### Beispiel: Python Listen-Comprehension (LF6)

```python
# PREDICT — Was gibt dieser Code aus?
zahlen = [1, 4, 7, 12, 15, 22]
ergebnis = [z * 2 for z in zahlen if z % 3 == 0]
print(ergebnis)
```

- *Predict:* Vermutung + Begründung notieren
- *Run:* Ausführen, vergleichen mit `[12, 24, 30, 42]`
- *Investigate:* "Was, wenn `if z % 3 == 0` weg ist?" "Warum nicht 1?" Tracing-Tabelle
- *Modify:* "Filtere Zahlen > 10" / "Verdopple statt verdreifachen"
- *Make:* "Comprehension, die nur Strings mit > 5 Buchstaben in Großbuchstaben gibt"

## Voraussetzungen

- Code-Schnipsel kurz (5-15 Zeilen), ein klares Konzept
- Schnelle Ausführungsumgebung (REPL, Browser-IDE)
- Gewöhnung: "Run" erst nach Predict — nicht überspringen
- Bei Pair-Variante: doppelte Diskussionsqualität (vgl. [[peer-instruction]])

## Varianten

- **Pair-PRIMM:** Predict im Paar, Investigate im Paar, Modify wechselnd. Stark gegen Frustration.
- **Differenzierte Tiefe:** Schwächere verweilen in Predict/Run/Investigate, Stärkere springen früh zu Modify/Make — gleiches Material, kein sichtbares Niveau. Vgl. [[low-floor-high-ceiling]].
- **PRIMM mit KI:** Investigate als Tutor-Dialog, Modify als KI-Quests, Make mit KI-Assist nach klaren Regeln.
- **PRIMM für Bug-Fixing:** Fehlerhafter Code, Predict: "Was *sollte* das tun?" Vgl. [[debugging-als-kompetenz]].

## Beziehung zu POE (Predict-Observe-Explain)

PRIMM ist eine Code-Spezialisierung der generischen **Predict-Observe-Explain**-Methode von White & Gunstone (1992). POE selbst funktioniert ohne Code — für Netzwerk, Security, DB-Verhalten, Dateisystem etc. —, und ist für FIDP-Themen oft das passendere Format. Eigener Methoden-Artikel mit Einsatzmustern außerhalb des Code-Kontexts: [[poe-methode]].

## Zeitbedarf

Eine vollständige PRIMM-Sequenz dauert 45-90 Minuten — passend für eine Doppelstunde. Predict und Run sind kurz (zusammen 10-15 Min.), Investigate und Modify mittel, Make ist die längste Phase. Bei Zeitnot kann Make in die Folgestunde wandern.

## Bezug zur IT-Ausbildung

PRIMM passt strukturell zur Berufsschulrealität: Azubis arbeiten im Betrieb meist mit *fremdem* Code (Wartung, Bugfix, Erweiterung) — also Lesen und Verändern, nicht ständig Greenfield-Schreiben.

**Lernfeldspezifisch:**
- **LF5 (SQL):** Predict für Joins — "Welche Zeilen erscheinen?". Wirkt gegen "Theorie verstanden, Praxis versagt".
- **LF6 (Skripting):** PRIMM auf Bash- und PowerShell-Snippets. Predict: "Welche Dateien werden verschoben?"
- **LF8 (APIs):** PRIMM auf REST-Calls und JSON-Parsing. Investigate: Header ändern.
- **LF10-12 (Projekte):** PRIMM als Onboarding in fremde Codebases.

**Differenzierung:** Die Hobby-Programmiererin landet schnell bei Make, der Quereinsteiger verweilt bei Predict/Run. Beide am gleichen Material, kein sichtbares Niveau.

## Praktische Anwendung

Ein Agent kann PRIMM-Aufgaben automatisch generieren und orchestrieren:

1. **PRIMM-Generator:** Aus Lernziel → Beispielcode + Predict-Prompt + Tracing-Fragen + 3 Modify-Quests + 1 Make-Briefing in einem Durchgang.
2. **Predict-Lock:** Run-Button erst nach Predict-Eingabe freischalten — verhindert das "ich klick einfach"-Verhalten.
3. **Diskrepanz-Diagnose:** Bei Predict ≠ Run automatisch Erklärung und Investigate-Schritt einschieben. Vgl. [[productive-failure]].
4. **Phasen-Tracking:** Bei Frustration in Investigate → Hilfe einblenden; bei Schnellläufer:in → früher zu Make.
5. **Pair-Modus:** Getrennte Predict-Eingaben + gemeinsame Diskussion. Vgl. [[peer-instruction]].
6. **Make-Bewertung:** Strukturvergleich mit Beispielcode (statische Analyse + KI-Review).
7. **Spaced PRIMM:** Predict-Snippets als Spaced-Repetition-Karten. Vgl. [[retrieval-practice]].
8. **Anti-Pattern:** Predict niemals überspringen — der Schritt *ist* der Lerneffekt.

## Verwandte Konzepte

- [[worked-examples]] — PRIMM nutzt Worked Examples als Material, ergänzt durch aktives Engagement
- [[scaffolding]] — Eingebautes Fading (jede Phase weniger gestützt)
- [[peer-instruction]] — Predict im Pair erhöht Diskussionsqualität
- [[debugging-als-kompetenz]] — Bug-Fix-Variante trainiert Fehlersuche
- [[interaktive-lernumgebungen]] — Voraussetzung: Predict-Lock + Run-Button
- [[cognitive-load-theory]] — Lesen vor Schreiben senkt initiale Last
- [[expertise-entwicklung]] — Trainiert Tracing → Explaining → Writing
- [[low-floor-high-ceiling]] — Predict/Run als Floor, Modify/Make als Ceiling
- [[use-modify-create]] — Verwandte Methode auf größerer Granularität
- [[parsons-problems]] — Passt in die Investigate-Phase; in der Modify-Phase als Bausatz einsetzbar

## Quellen

- Sentance, S., Waite, J. & Kallia, M. (2019). Teaching computer programming with PRIMM: a sociocultural perspective. Computer Science Education, 29(2-3), 136-176.
- Sentance, S., Waite, J. & Kallia, M. (2019). Implementation of the PRIMM approach in K-12 schools. Proceedings of WiPSCE 2019.
- Raspberry Pi Foundation (2021). PRIMM: A pedagogical approach to teaching programming. https://primmportal.com/
