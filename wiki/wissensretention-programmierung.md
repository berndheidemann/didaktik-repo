---
title: Wissensretention und Transfer beim Programmieren
type: evidenz
tags: [retention, transfer, spacing, skill-decay, langzeitlernen]
related:
  - "[[retrieval-practice]]"
  - "[[productive-failure]]"
  - "[[expertise-entwicklung]]"
  - "[[threshold-concepts]]"
  - "[[learning-engineering]]"
  - "[[affektive-dimensionen]]"
  - "[[cognitive-load-theory]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[zeitmanagement-selbstorganisation]]"
  - "[[spaced-repetition-algorithmen]]"
  - "[[code-review-unterricht]]"
  - "[[peer-instruction]]"
  - "[[spaced-repetition-scheduler-bauen]]"
  - "[[desirable-difficulties]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Programmierwissen verfällt ohne Übung innerhalb von Monaten — Syntax schnell,
  algorithmisches Denken langsamer. Spacing, Retrieval Practice und variierende
  Kontexte sind die stärksten Hebel für dauerhaftes Können.
---

# Wissensretention und Transfer beim Programmieren

## Kernidee

Die Methoden, die sich langsamer anfühlen — Spacing, produktiver Struggle, wechselnde Kontexte — sind genau die, die dauerhaft wirken. Anfängliche Lerngeschwindigkeit ist ein schlechter Indikator für langfristiges Können. Ein Lernsystem, das auf Prüfungserfolg optimiert, produziert andere Ergebnisse als eines, das auf bleibende Kompetenz optimiert.

## Studiendesign

Synthese aus Arthurs Meta-Analyse zu Skill Decay (1998), Cepeda et al. (2006) zu Spacing, Roediger & Karpicke (2006) zum Testing Effect, sowie CS-spezifischen Studien zu Transfer zwischen Programmiersprachen und langfristiger Retention.

## Stichprobe

Skill-Decay-Forschung: domänenübergreifend (Militär, Medizin, Industrie). CS-spezifische Transfer-Studien: primär Hochschul-CS1-Kurse. Langzeit-Follow-ups über 6-24 Monate sind selten in der CS-Education-Literatur.

## Kernergebnisse

### Skill Decay

Prozedurale Fähigkeiten (wie Programmieren) verfallen signifikant innerhalb von 6-12 Monaten ohne Übung (Arthur, 1998). CS-spezifisch: Lernende, die CS1 bestehen, können oft ein Semester später keine Grundaufgaben lösen (Ahadi & Lister, 2013).

- **Syntax und API-Wissen** verfällt innerhalb von Wochen bis Monaten
- **Algorithmisches Denken** ist langlebiger, aber degradiert über 12-24 Monate
- **Mentale Modelle** (Notional Machines, vgl. [[threshold-concepts]]) sind am stabilsten — einmal korrekt aufgebaut, bleiben sie Jahre

### Transfer zwischen Sprachen

| Transfer-Ebene | Stärke | Beispiel |
|----------------|--------|---------|
| **Syntax** | Schwach | Python-Syntax hilft kaum bei Java-Syntax |
| **Konzepte** | Moderat | Schleifen, Funktionen, Variablen transferieren gut |
| **Design/Strategie** | Stark | Problemzerlegung, Debugging-Strategien transferieren breit |

**Implikation:** Konzepte und Strategien sprachunabhängig lehren, dann an konkrete Syntax binden. Nicht umgekehrt.

### Near vs. Far Transfer

Near Transfer (strukturell ähnliche Probleme) ist zuverlässig erreichbar. Far Transfer (Programmierdenken auf nicht-Programmier-Kontexte anwenden) tritt selten spontan auf — nur mit expliziter Brücken-Instruktion und variierten Übungskontexten (Gick & Holyoak, 1983).

### Was dauerhaftes Können produziert

| Strategie | Mechanismus | Evidenz |
|-----------|-------------|---------|
| **Spaced Practice** | Verteilte Wiederholung nutzt Vergessenskurve | Cepeda et al. (2006): d=0,42 gegenüber massed practice |
| **Retrieval Practice** | Aktives Abrufen stärkt Gedächtnisspuren | Roediger & Karpicke (2006): Überlegenheit nach 1 Woche |
| **Variierende Kontexte** | Gleiches Konzept in verschiedenen Domänen | Gick & Holyoak (1983): Breiterer Transfer |
| **Elaboratives Erklären** | "Warum funktioniert das?" statt nur "es funktioniert" | [[peer-instruction]], [[code-review-unterricht]] |
| **[[productive-failure]]** | Struggle vor Instruktion erzeugt langlebigeres Wissen | Kapur (2016): Besserer Transfer |
| **Korrekte Notional Machine** | Stabiles mentales Modell als Anker | Sorva (2013): Überdauert Syntax-Verfall |

### Prädiktoren für "Kann noch in 2 Jahren programmieren"

1. **Fortlaufende Praxis** — der stärkste Einzelprädiktor (Ericsson et al., 1993). Selbst 15 Min./Woche verlangsamt den Verfall drastisch.
2. **Qualität des mentalen Modells** — korrekte Notional Machine am Kursende (Sorva, 2013)
3. **Programmier-Identität** — "Ich bin jemand, der programmiert" führt zu freiwilliger Übung (Lewis et al., 2017; vgl. [[affektive-dimensionen]])
4. **Tiefe über Breite** — Weniger Konzepte tief verstehen schlägt viele Konzepte oberflächlich

## Effektstärke

Spacing Effect: d = 0,42 (Cepeda et al., 2006, 317 Studien). Testing Effect: d = 0,50+ in Langzeit-Follow-ups (Roediger & Butler, 2011). Variierende Kontexte: moderate Effekte, schwer zu quantifizieren weil stark studienabhängig.

## Limitationen

- **CS-spezifische Langzeitstudien sind rar.** Die meisten Studien messen am Kursende, nicht nach 6-24 Monaten.
- **Retention vs. Transfer:** Die meisten Studien messen Retention (gleiches Problem nochmal), nicht Transfer (neues Problem).
- **Ausbildungskontext fehlt:** Fast keine Daten aus der Berufsbildung. Der duale Modus (Betrieb + Schule) erzeugt natürliches Spacing — ob das den Verfall verlangsamt, ist unerforscht.

## Bezug zur IT-Ausbildung

Das duale System hat einen natürlichen Vorteil: Der Wechsel zwischen Betrieb und Berufsschule erzeugt Spacing (Konzepte werden über Wochen verteilt wiederholt). Aber: Wenn Betrieb und Schule inhaltlich nicht verknüpft sind, ist das kein effektives Spacing, sondern Fragmentierung.

Die zentrale Designfrage: Optimiert man für die IHK-Prüfung (kurzfristiges Wissen) oder für bleibende Berufskompetenz? Die Methoden unterscheiden sich: Massed Practice produziert kurzfristig bessere Ergebnisse, Spaced Practice langfristig.

## Praktische Anwendung

Ein Agent kann für dauerhafte Kompetenz optimieren:

1. **Spaced Review Queue:** Konzepte nach abklingender Erinnerungskurve erneut auftauchen lassen (vgl. [[learning-engineering]]: Knowledge Tracing). "Du hast SQL-Joins zuletzt vor 3 Wochen geübt."
2. **Kontexte variieren:** Dieselbe Programmieraufgabe in verschiedenen Domänen stellen — SQL für E-Commerce, dann für Bibliothek, dann für Ticketsystem.
3. **Erklären statt nur lösen:** "Warum hast du ein Dictionary gewählt?" produziert langlebigeres Wissen als nur "schreibe eine Lösung."
4. **Mentale Modelle priorisieren:** Notional Machine explizit lehren und prüfen (vgl. [[threshold-concepts]]). Korrekte Modelle überdauern Syntax-Verfall.
5. **Post-Kurs-Retention:** Auch nach Abschluss eines Lernfelds gelegentlich Review-Aufgaben einstreuen — 15 Min./Woche reicht.

## Verwandte Konzepte

- [[retrieval-practice]] — Spaced Repetition und Testing Effect als Retention-Mechanismen
- [[productive-failure]] — Erzeugt langlebigeres Wissen als direkte Instruktion
- [[expertise-entwicklung]] — Mentale Modellqualität als stabilster Retention-Prädiktor
- [[threshold-concepts]] — Korrekte Notional Machines überdauern Syntax-Verfall
- [[learning-engineering]] — Knowledge Tracing optimiert den Spaced-Repetition-Zeitplan
- [[affektive-dimensionen]] — Programmier-Identität führt zu freiwilliger Übung und Retention
- [[spaced-repetition-algorithmen]] — Algorithmische Operationalisierung des Decay-Modells (Leitner, SM-2, FSRS)

## Quellen

- Arthur, W. et al. (1998). Factors That Influence Skill Decay and Retention: A Quantitative Review and Analysis. Human Performance, 11(1), 57-101.
- Cepeda, N. J. et al. (2006). Distributed Practice in Verbal Recall Tasks: A Review and Quantitative Synthesis. Psychological Bulletin, 132(3), 354-380.
- Roediger, H. L. & Karpicke, J. D. (2006). Test-Enhanced Learning. Psychological Science, 17(3), 249-255.
- Gick, M. L. & Holyoak, K. J. (1983). Schema Induction and Analogical Transfer. Cognitive Psychology, 15(1), 1-38.
- Sorva, J. (2013). Notional Machines and Introductory Programming Education. ACM Transactions on Computing Education, 13(2), Article 8.
