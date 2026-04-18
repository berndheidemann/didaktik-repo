---
title: Worked Examples (Lösungsbeispiele)
type: methode
tags: [kognitive-belastung, lernmaterial-gestaltung, programmierung, fading, uebungsaufgaben, parsons-problems]
related:
  - "[[direct-instruction-rosenshine]]"
  - "[[cognitive-load-theory]]"
  - "[[scaffolding]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[blooms-taxonomie]]"
  - "[[formatives-assessment]]"
  - "[[productive-failure]]"
  - "[[retrieval-practice]]"
  - "[[meta-analysen-cs-education]]"
  - "[[effektstaerken-unterricht]]"
  - "[[cognitive-apprenticeship]]"
  - "[[debugging-als-kompetenz]]"
  - "[[expertise-entwicklung]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[threshold-concepts]]"
  - "[[low-floor-high-ceiling]]"
  - "[[primm-methode]]"
  - "[[use-modify-create]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[misconception-analyse]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[differenzierung-inklusion]]"
  - "[[contrasting-cases]]"
  - "[[parsons-problems]]"
  - "[[affektive-dimensionen]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[spaced-repetition-algorithmen]]"
  - "[[spaced-repetition-scheduler-bauen]]"
  - "[[browser-ide-gestuetzte-tutorials]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[neurodidaktik-programmieren]]"
  - "[[notional-machines]]"
  - "[[live-coding-lehrmethode]]"
  - "[[cognitive-task-analysis]]"
  - "[[generative-learning-aktivitaeten]]"
  - "[[subgoal-labeling]]"
  - "[[self-explanation]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden]
sozialform: [einzelarbeit, partner]
created: 2026-04-07
updated: 2026-04-14
summary: >
  Vollständig ausgearbeitete Lösungen zum Studieren statt eigenes Problemlösen,
  um kognitive Belastung bei Novizen zu reduzieren (Sweller & Cooper, 1985) —
  Fading zu Lückencode und offenen Aufgaben als zentrale Scaffolding-Strategie.
---

# Worked Examples (Lösungsbeispiele)

## Kernidee

Worked Examples sind vollständig ausgearbeitete, schrittweise Expertenlösungen, die Lernende studieren statt selbst Probleme zu lösen. Sie reduzieren extrinsische kognitive Belastung (vgl. [[cognitive-load-theory]]), weil Novizen keine ineffizienten Suchstrategien (Means-Ends-Analysis) einsetzen müssen und ihre Arbeitsgedächtniskapazität für Schema-Aufbau nutzen können.

## Beschreibung

Sweller & Cooper (1985): Lernende mit Worked Examples brauchten in Posttests die halbe Zeit und machten ein Fünftel der Fehler verglichen zur Kontrollgruppe. Der Worked Example Effect ist der bekannteste CLT-Effekt.

### Gestaltungsprinzipien

1. **Integration:** Text und Code räumlich zusammenführen (kein Split-Attention). Erklärungen als Inline-Kommentare.
2. **Sub-Goal Labels:** Zusammengehörige Schritte unter beschreibenden Labels gruppieren (z.B. `# TEILZIEL: Eingabe validieren`, `# TEILZIEL: Berechnung`, `# TEILZIEL: Ausgabe`).
3. **Self-Explanation Prompts:** Lernende erklären lassen ("Warum hier `int()`?"). Fördert Transfer.
4. **Fading:** Schrittweiser Übergang von vollständiger Lösung zu offener Aufgabe.

### Fading-Sequenz

| Stufe | Beispiel (SQL) |
|-------|----------------|
| 1 | **Vollständiges Worked Example** — komplette Query mit Kommentaren |
| 2 | **Completion Problem** — Query mit fehlendem JOIN |
| 3 | **Mehr Lücken** — nur SELECT und FROM gegeben |
| 4 | **Offenes Problem** — "Offene Bestellungen mit Kundennamen" |

Renkl, Atkinson, Maier & Staley (2002): Fading + Self-Explanation-Prompts verbessert Near-Transfer; Far-Transfer-Effekte sind weniger robust belegt.

### Expertise Reversal Effect

Worked Examples helfen Novizen, schaden Fortgeschrittenen: Wer Schemata hat, muss redundante Information verarbeiten. Daher ist Fading essenziell und an den Lernstand anzupassen (vgl. [[scaffolding]]).

## Durchführung

1. **Worked Example präsentieren** — Lösung mit Sub-Goal Labels und Inline-Kommentaren.
2. **Studierphase** — Self-Explanation Prompts bearbeiten ("Warum hier eine Schleife statt Rekursion?").
3. **Completion Problem** — ähnliche Aufgabe mit 1-2 fehlenden Schritten.
4. **Fading fortsetzen** — schrittweise mehr Lücken bis zur Eigenständigkeit.
5. **Isomorphes Problem** — offene Aufgabe gleicher Struktur in neuem Kontext.

## Voraussetzungen

- Novizen im Thema (bei Experten: Expertise Reversal)
- Klare Lösungsschritte (weniger für völlig offene Aufgaben)
- Self-Explanation Prompts sorgfältig einsetzen — Barbieri et al. (2023) fanden in ihrer Meta-Analyse, dass Self-Explanation-Prompts als Moderator einen negativen Effekt auf Mathematik-Leistung hatten; der Nutzen hängt stark vom Aufgabendesign ab

## Varianten

### Erroneous Examples
Code mit absichtlichen Fehlern zum Finden und Korrigieren — syntaktische Fehler für Anfänger, logische für Fortgeschrittene. Mit Prompts zur Fehlererklärung kombinieren.

### Paired Examples
Worked Example → isomorphes Problem (gleiche Struktur) → Transfer-Problem (veränderte Anforderung).

### Parsons Problems als Übergang

Parsons Problems sind eine empirisch belegte Zwischenstufe im Fading-Pfad: **Worked Example → Parsons Problem → Completion Problem → freies Schreiben**. Lernende sortieren vorgegebene Code-Snippets in die richtige Reihenfolge, statt Code von Grund auf zu schreiben.

**Empirischer Befund:** Denny et al. (2008) und Ericson et al. (2022) zeigen konsistent reduzierte kognitive Last bei gleichen Lernergebnissen verglichen mit freiem Schreiben — bei deutlich geringerem Zeitaufwand. Lernende konstruieren die *Reihenfolge* aktiv, ohne gleichzeitig Syntax produzieren zu müssen.

**Distraktoren:** Falsche Codezeilen erhöhen die Anforderung schrittweise. **Faded Parsons Problems** kombinieren Sortieren + Lücken füllen.

**Für den Agent:** Fading-Stufen lassen sich aus einem Lösungscode programmatisch generieren — mischen, Distraktoren beimischen, Tokens/Blöcke entfernen. Vgl. Fading-Sequenz unter [[scaffolding]].

### Code-Completion als Prüfungsformat

Worked Examples mit entfernten Teilen lassen sich über das Fading hinaus auch **summativ** einsetzen: Lernende erhalten einen weitgehend vorgegebenen Code, in dem gezielt einzelne Tokens, Zeilen oder Subgoal-Blöcke fehlen, und füllen diese aus. In QTI bildet `fill_in_blank_multi` (mehrere Lücken mit eigenen Antwort-Regeln) das Format nativ ab. Vorteil gegenüber freiem Code: Der Stimulus kontrolliert Struktur und Scope; die Bewertung ist automatisch und objektiv.

Die Kernentscheidung ist, **was** geblankt wird:
- **Token-Cloze** (einzelne Schlüsselwörter, Operatoren, Methodennamen) → prüft erinnern/verstehen.
- **Zeilen-Cloze** (eine ganze Anweisung fehlt) → prüft anwenden, wenn der Kontext den Zweck erzwingt.
- **Subgoal-Cloze** (ein funktionaler Teilschritt — "Eingabe validieren", "Ergebnis aggregieren" — als zusammenhängender Block) → prüft anwenden/analysieren und aktiviert die Schema-Struktur nach [[subgoal-labeling]]. Morrison, Margulieux, Ericson & Guzdial (2016) zeigten, dass Subgoal-Labels in Parsons Problems Transfer und Lösungsrate erhöhen; der Befund überträgt sich auf Code-Completion als enge Schwester.
- **Faded Parsons** (Sortieren + Lücken kombiniert) — Weinman, Fox & Hearst (2021, CHI): reduziert Abbrüche gegenüber freiem Schreiben bei gleicher Lernwirkung; eignet sich als Brücke zwischen Parsons und reinem Cloze.

Für Prüfungen in itsLearning ist Zeilen- oder Subgoal-Cloze oft die beste Wahl, wenn echte Programmierkompetenz aus organisatorischen Gründen nicht über Performance-Tasks geprüft werden kann (siehe [[kompetenzfeststellung-programmierung]]). Gestaltungsregel: Lücken so wählen, dass **eine eindeutige, schreibweisen-stabile Antwort** existiert — sonst explodiert die Antwort-Regex-Liste. Für Konstruktionsregeln siehe [[testitem-konstruktion-digital]].

## Zeitbedarf

- **Vorbereitung:** Mittel (Annotationen erstellen)
- **Durchführung:** 20-45 Min. pro Fading-Sequenz
- **Nachbereitung:** Gering

## Bezug zur IT-Ausbildung

Worked Examples sind für IT besonders wertvoll, weil Programmieren hohe Anfangshürden hat. "Code lesen vor Code schreiben" — Verständnis hierarchisch aufbauen: Tracing → Explaining → Writing.

| Lernfeld | Worked Example |
|----------|---------------|
| **LF5 (SQL)** | Schrittweise Query-Entwicklung mit Zwischenergebnissen |
| **LF5 (Programmierung)** | Kommentierter Sortieralgorithmus, dann Lückencode |
| **LF6 (Troubleshooting)** | Debugging-Walkthrough: Fehlermeldung → Hypothese → Fix |
| **LF8 (APIs)** | curl-Call mit annotierter Response |

## Praktische Anwendung

Ein Agent kann Worked Examples adaptiv einsetzen:

1. **Generierung:** Worked Examples mit Sub-Goal Labels und Self-Explanation Prompts erzeugen, an [[blooms-taxonomie]]-Stufe angepasst.
2. **Adaptive Sequenzierung:** Schwache Leistung → weiteres Worked Example; mittlere → Completion Problem; starke → offenes Problem.
3. **Erroneous Examples:** Für Fortgeschrittene fehlerhaften Code generieren ("Finde und erkläre den Bug").
4. **[[formatives-assessment]] integrieren:** Completion Problems diagnostisch nutzen.
5. **Fading steuern:** Mehr Schritte ausblenden, wenn Lücken konsistent korrekt gefüllt werden — Expertise Reversal vermeiden.

## Verwandte Konzepte

- [[cognitive-load-theory]] — Theoretische Grundlage: Reduktion extrinsischer Last
- [[scaffolding]] — Fading als Brücke zum selbstständigen Problemlösen
- [[productive-failure]] — Anderes Ende des Kontinuums
- [[formatives-assessment]] — Completion Problems als diagnostisches Werkzeug
- [[contrasting-cases]] — Ein Worked Example zeigt eine Lösung, Contrasting Cases zeigen Unterschiede — komplementäre Formate
- [[parsons-problems]] — Etablierte Zwischenstufe zwischen Worked Example und freiem Schreiben

## Quellen

- Sweller, J. & Cooper, G. A. (1985). The Use of Worked Examples as a Substitute for Problem Solving in Learning Algebra. Cognition and Instruction, 2(1), 59-89.
- Atkinson, R. K., Derry, S. J., Renkl, A. & Wortham, D. (2000). Learning from Examples: Instructional Principles. Review of Educational Research, 70(2), 181-214.
- Renkl, A. (2014). Toward an Instructionally Oriented Theory of Example-Based Learning. Cognitive Science, 38(1), 1-37.
- Barbieri, C. A. et al. (2023). A Meta-Analysis of the Worked Examples Effect on Mathematics Performance. Educational Psychology Review, 35(1), Article 11.
- Margulieux, L. E., Morrison, B. B. & Decker, A. (2020). Reducing Withdrawal and Failure Rates in Introductory Programming with Subgoal Labeled Worked Examples. Int. Journal of STEM Education, 7, Article 19.
- Denny, P., Luxton-Reilly, A. & Simon, B. (2008). Evaluating a new exam question: Parsons problems. ICER 2008.
- Morrison, B. B., Margulieux, L. E., Ericson, B. & Guzdial, M. (2016). Subgoals Help Students Solve Parsons Problems. *SIGCSE 2016*, 42-47.
- Weinman, N., Fox, A. & Hearst, M. A. (2021). Improving Instruction of Programming Patterns with Faded Parsons Problems. *CHI 2021*.
- Ericson, B. J., Denny, P., Prather, J., Duran, R., Hellas, A., Leinonen, J., Miller, C. S., Morrison, B. B., Pearce, J. L. & Rodger, S. H. (2022). Parsons Problems and Beyond: Systematic Literature Review. ITiCSE-WGR 2022.
