---
title: Worked Examples (Lösungsbeispiele)
type: methode
tags: [kognitive-belastung, lernmaterial-gestaltung, programmierung, fading, uebungsaufgaben]
related:
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
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden]
sozialform: [einzelarbeit, partner]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Vollständig ausgearbeitete Lösungen zum Studieren statt eigenes Problemlösen,
  um kognitive Belastung bei Novizen zu reduzieren (Sweller & Cooper, 1985) —
  Fading zu Lückencode und offenen Aufgaben als zentrale Scaffolding-Strategie.
---

# Worked Examples (Lösungsbeispiele)

## Kernidee

Worked Examples sind vollständig ausgearbeitete, schrittweise Expertenlösungen, die Lernende studieren statt selbst Probleme zu lösen. Sie reduzieren extrinsische kognitive Belastung (vgl. [[cognitive-load-theory]]), weil Novizen keine ineffizienten Suchstrategien (Means-Ends-Analysis) einsetzen müssen und ihre Arbeitsgedächtniskapazität für Schema-Aufbau nutzen können.

## Beschreibung

Sweller & Cooper (1985) zeigten: Lernende, die Worked Examples studierten, brauchten in Posttests die Hälfte der Zeit und machten ein Fünftel der Fehler verglichen mit der Kontrollgruppe. Der Worked Example Effect ist der bekannteste CLT-Effekt.

### Gestaltungsprinzipien

1. **Integration:** Text und Code räumlich zusammenführen (kein Split-Attention-Effekt). Erklärungen als Inline-Kommentare, nicht auf separatem Blatt.
2. **Sub-Goal Labels:** Zusammengehörige Schritte unter beschreibenden Labels gruppieren:

```python
# TEILZIEL: Eingabedaten einlesen und validieren
user_input = input("Zahl eingeben: ")
number = int(user_input)

# TEILZIEL: Berechnung durchführen
result = number * 2 + 10

# TEILZIEL: Ergebnis formatiert ausgeben
print(f"Ergebnis: {result}")
```

3. **Self-Explanation Prompts:** Lernende auffordern, Schritte selbst zu erklären ("Warum wird hier `int()` verwendet?"). Fördert Transfer auf neue Probleme.
4. **Fading:** Schrittweiser Übergang von vollständiger Lösung zu offener Aufgabe.

### Fading-Sequenz

| Stufe | Format | Beispiel (SQL) |
|-------|--------|----------------|
| 1 | **Vollständiges Worked Example** | Komplette Query mit Kommentaren zu jedem Schritt |
| 2 | **Completion Problem** (Lückencode) | Query mit fehlendem JOIN — Lernende ergänzen |
| 3 | **Mehr Lücken** | Nur SELECT und FROM gegeben — Rest selbst |
| 4 | **Offenes Problem** | "Zeige alle offenen Bestellungen mit Kundennamen" |

Renkl, Atkinson & Maier (2002) zeigten, dass Fading + Self-Explanation-Prompts mittlere bis große Effekte auf Nah- und Ferntransfer erzeugt.

### Expertise Reversal Effect

Worked Examples helfen Novizen, schaden aber Fortgeschrittenen: Wer bereits über Schemata verfügt, muss redundante Information verarbeiten, was die kognitive Last erhöht. Daher ist Fading essenziell — und die Anpassung an den Lernstand (vgl. [[scaffolding]]).

## Durchführung

1. **Worked Example präsentieren** — vollständig ausgearbeitete Lösung mit Sub-Goal Labels und Inline-Kommentaren zeigen.
2. **Studierphase** — Lernende lesen und bearbeiten Self-Explanation Prompts ("Warum wird hier eine Schleife statt Rekursion verwendet?").
3. **Completion Problem** — ähnliche Aufgabe mit 1-2 fehlenden Schritten, die Lernende ergänzen.
4. **Fading fortsetzen** — schrittweise mehr Lücken, bis Lernende eigenständig arbeiten.
5. **Isomorphes Problem** — offene Aufgabe mit gleicher Struktur aber anderem Kontext zum Transfer.

## Voraussetzungen

- Lernende sind Novizen im jeweiligen Thema (bei Experten: Expertise Reversal)
- Aufgaben haben klare Lösungsschritte (weniger geeignet für völlig offene Aufgaben)
- Self-Explanation Prompts müssen sorgfältig gestaltet sein — schlecht formulierte Prompts können den Effekt verringern (Barbieri et al., 2023)

## Varianten

### Erroneous Examples (fehlerhafte Beispiele)
Code mit absichtlichen Fehlern, die Lernende finden und korrigieren:
- **Syntaktische Fehler** — für Anfänger (fehlende Klammern, Tippfehler)
- **Logische Fehler** — für Fortgeschrittene (Off-by-one, falsche Bedingungen)
- Müssen mit Prompts zur Fehlererklärung kombiniert werden

### Parsons Problems (Code-Rearrangement)
Korrekte Codezeilen in die richtige Reihenfolge bringen. Weniger kognitive Last als freies Schreiben bei vergleichbarem Lernerfolg. **Faded Parsons Problems** kombinieren Sortieren + Lücken füllen.

### Paired Examples (Worked + Practice)
1. Worked Example zeigen (z.B. SQL-Query mit GROUP BY)
2. Isomorphes Problem lösen (gleiche Struktur, andere Tabellen)
3. Transfer-Problem lösen (leicht veränderte Anforderung)

## Zeitbedarf

- **Vorbereitung:** Mittel (Worked Examples erstellen und annotieren)
- **Durchführung:** Pro Fading-Sequenz ca. 20-45 Min. je nach Komplexität
- **Nachbereitung:** Gering (Ergebnisse der Completion Problems prüfen)

## Bezug zur IT-Ausbildung

Worked Examples sind für IT-Ausbildung besonders wertvoll, weil Programmieren hohe Anfangshürden hat. "Code lesen vor Code schreiben" — Lernende bauen Verständnis hierarchisch auf: Tracing → Explaining → Writing.

| Lernfeld | Worked Example |
|----------|---------------|
| **LF5 (SQL)** | Schrittweise Query-Entwicklung mit Zwischenergebnissen |
| **LF5 (Programmierung)** | Kommentierter Sortieralgorithmus, dann Lückencode |
| **LF6 (Troubleshooting)** | Annotierter Debugging-Walkthrough: Fehlermeldung → Hypothese → Fix |
| **LF8 (APIs)** | Vollständiger curl-Call mit annotierter Response |
| **LF9 (Netzwerk)** | Dokumentierte Subnetting-Berechnung Schritt für Schritt |

## Praktische Anwendung

Ein Agent kann Worked Examples adaptiv einsetzen:

1. **Generierung:** Zu einem Thema Worked Examples mit Sub-Goal Labels und Self-Explanation Prompts erzeugen. Schwierigkeit an [[blooms-taxonomie]]-Stufe anpassen.
2. **Adaptive Sequenzierung:** Basierend auf Lernstand: schwache Leistung → weiteres Worked Example; mittlere → Completion Problem; starke → offenes Problem.
3. **Erroneous Examples:** Für Fortgeschrittene absichtlich fehlerhaften Code generieren mit der Aufforderung "Finde und erkläre den Bug."
4. **[[formatives-assessment]] integrieren:** Completion Problems als diagnostisches Werkzeug nutzen — welche Lücken können Lernende füllen, welche nicht?
5. **Fading steuern:** Automatisch mehr Schritte ausblenden, wenn Lernende Lücken konsistent korrekt füllen. Expertise Reversal vermeiden.

## Verwandte Konzepte

- [[cognitive-load-theory]] — Theoretische Grundlage: Worked Examples reduzieren extrinsische Last
- [[scaffolding]] — Fading ist die Brücke zwischen Worked Examples und selbstständigem Problemlösen
- [[interaktive-lernumgebungen]] — Worked Examples als Kernbaustein interaktiver Lernpfade
- [[formatives-assessment]] — Completion Problems als diagnostisches Werkzeug
- [[blooms-taxonomie]] — Worked Examples operieren auf Stufe "Verstehen"/"Anwenden"

## Quellen

- Sweller, J. & Cooper, G. A. (1985). The Use of Worked Examples as a Substitute for Problem Solving in Learning Algebra. Cognition and Instruction, 2(1), 59-89.
- Atkinson, R. K., Derry, S. J., Renkl, A. & Wortham, D. (2000). Learning from Examples: Instructional Principles from the Worked Examples Research. Review of Educational Research, 70(2), 181-214.
- Renkl, A. (2014). Toward an Instructionally Oriented Theory of Example-Based Learning. Cognitive Science, 38(1), 1-37.
- Barbieri, C. A. et al. (2023). A Meta-Analysis of the Worked Examples Effect on Mathematics Performance. Educational Psychology Review, 35(1), Article 11.
- Margulieux, L. E., Morrison, B. B. & Decker, A. (2020). Reducing Withdrawal and Failure Rates in Introductory Programming with Subgoal Labeled Worked Examples. International Journal of STEM Education, 7, Article 19.
