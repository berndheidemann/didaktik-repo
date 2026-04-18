---
title: "Subgoal Labeling — Teilziel-Labels für Programmieraufgaben"
type: methode
tags: [kognitive-belastung, worked-examples, transfer, scaffolding, lernmaterial-gestaltung, programmierung, retention]
related:
  - "[[direct-instruction-rosenshine]]"
  - "[[worked-examples]]"
  - "[[cognitive-load-theory]]"
  - "[[parsons-problems]]"
  - "[[scaffolding]]"
  - "[[cognitive-task-analysis]]"
  - "[[browser-ide-gestuetzte-tutorials]]"
  - "[[meta-analysen-cs-education]]"
  - "[[primm-methode]]"
  - "[[use-modify-create]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[expertise-entwicklung]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[differenzierung-inklusion]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[self-explanation]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden]
sozialform: [einzelarbeit, partner]
evidenzgrad: quasi-experimentell
created: 2026-04-12
updated: 2026-04-12
summary: >
  Funktional zusammengehörige Schritte in Lösungsbeispielen unter beschreibenden
  Labels gruppieren — reduziert kognitive Last, verbessert Transfer und senkt
  Dropout-Raten in Programmiereinführungen signifikant (d ≈ 0,44; Margulieux et al. 2020).
---

# Subgoal Labeling — Teilziel-Labels für Programmieraufgaben

## Kernidee

Subgoal Labeling gruppiert die Einzelschritte einer Lösung unter beschreibenden Labels, die das funktionale Teilziel benennen (z. B. "Eingabe validieren", "Ergebnis berechnen", "Ausgabe formatieren"). Diese Gruppierung hilft Lernenden, die Struktur eines Lösungswegs zu erkennen, statt sich in Details zu verlieren. Die Technik stammt aus der CLT-Forschung ([[cognitive-load-theory]]) und wurde von Margulieux, Morrison und Guzdial am Georgia Institute of Technology systematisch für die Informatikausbildung erforscht.

## Beschreibung

### Warum Labels wirken

Ohne Labels sehen Novizen eine Lösung als Abfolge einzelner Schritte. Subgoal Labels schaffen eine Zwischenschicht: Statt "Zeile 1, Zeile 2, … Zeile 15" entstehen 3–5 bedeutungsvolle Blöcke. Das entspricht dem Chunking-Prinzip aus der Arbeitsgedächtnisforschung — weniger Elemente, dafür informationsreichere.

**Mechanismus:** Labels fungieren als organisatorische Schemata. Lernende bauen mentale Modelle auf, die nicht an ein konkretes Beispiel gebunden sind, sondern die *Struktur* des Problemtyps repräsentieren. Dadurch verbessert sich der Transfer auf neue, strukturähnliche Probleme.

### Abgrenzung zu Kommentaren

Subgoal Labels sind keine Code-Kommentare. Kommentare erklären *was* eine Zeile tut ("konvertiert String in Integer"). Labels benennen *wozu* eine Gruppe von Zeilen dient ("TEILZIEL: Benutzereingabe in verarbeitbares Format überführen"). Labels operieren auf einer höheren Abstraktionsebene und sind über verschiedene Aufgaben hinweg wiederverwendbar.

### Forschungslinie

| Studie | Kontext | Zentrales Ergebnis |
|--------|---------|-------------------|
| Margulieux et al. (2012, ICER) | App Inventor, Video-Tutorials | Labels verbessern Retention (1 Woche später) und Transfer |
| Morrison et al. (2015, ICER) | Textbasiertes Programmieren | Labels wirken auch bei Text-Code, aber hohe kognitive Last von Text-Syntax dämpft den Effekt |
| Morrison et al. (2016, SIGCSE) | Parsons Problems | Subgoal Labels verbessern Erfolgsquote bei Parsons Problems |
| Margulieux et al. (2020, IJSE) | Semesterkurs CS1 | Geringere Durchfall-/Dropout-Quote; d ≈ 0,44 über den Kurs |
| Li et al. (2025, SIGCSE) | LLM-generierte Labels | GPT-4 erzeugt Labels vergleichbarer Qualität wie Experten |

### Wann Labels besonders wirken

- **Bei Novizen:** Höchster Effekt in den ersten Wochen eines Kurses. Bei Fortgeschrittenen greift der Expertise Reversal Effect — die Labels werden zu redundanter Information.
- **Bei prozeduralem Wissen:** Klare Schrittfolgen (Algorithmen, CRUD, API-Aufrufe) profitieren stärker als konzeptuelle Erklärungen.
- **Bei Risiko-Lernenden:** Margulieux et al. (2020) zeigten, dass die Labels vor allem Lernende halten, die sonst abbrechen oder durchfallen — ein Equity-Effekt.

## Durchführung

### 1. Subgoals identifizieren

Die Grundlage ist eine [[cognitive-task-analysis]]: Welche funktionalen Teilziele stecken in der Lösung? Als Faustregel: 3–5 Subgoals pro Aufgabe, jedes mit 2–5 Einzelschritten.

### 2. Labels formulieren

- **Handlungsorientiert:** "Eingabe validieren" statt "Validierung"
- **Abstrahiert:** "Datenquelle anbinden" statt "MySQL-Connection öffnen" — damit das Label auf andere Kontexte übertragbar ist
- **Konsistent:** Gleiche Teilziele in verschiedenen Aufgaben gleich benennen

### 3. In Lernmaterial einbetten

```python
# ── TEILZIEL: Eingabe entgegennehmen und validieren ──
user_input = input("Zahl eingeben: ")
if not user_input.isdigit():
    print("Ungültige Eingabe")
    sys.exit(1)
number = int(user_input)

# ── TEILZIEL: Berechnung durchführen ──
result = number ** 2

# ── TEILZIEL: Ergebnis ausgeben ──
print(f"Das Quadrat von {number} ist {result}")
```

### 4. Über Aufgaben hinweg wiederverwenden

Dieselben Labels tauchen in verschiedenen Aufgaben auf: "Eingabe validieren" in einem Taschenrechner, einer Subnetting-Übung, einem API-Handler. Lernende erkennen das Muster und können es auf neue Probleme anwenden.

### 5. Labels schrittweise ausblenden (Fading)

| Phase | Sichtbarkeit |
|-------|-------------|
| 1 — Worked Example | Alle Labels sichtbar, alle Schritte ausformuliert |
| 2 — Completion Problem | Labels sichtbar, einzelne Schritte fehlen |
| 3 — Label-only | Nur Labels sichtbar, Lernende schreiben alle Schritte |
| 4 — Freies Problem | Keine Labels, Lernende strukturieren selbst |

## Voraussetzungen

- Aufgaben mit klarer prozeduraler Struktur (Schritt-für-Schritt-Lösungen)
- Labels müssen vorab durch CTA oder Expertenanalyse identifiziert werden
- Konsistente Label-Benennung über ein Modul oder einen Kurs hinweg

## Varianten

### Learner-Generated Subgoal Labels

Lernende erstellen selbst Labels für Worked Examples (Margulieux & Catrambone, 2019, JLS). Kombiniert Subgoal Labeling mit Self-Explanation ([[metakognition]]). Funktioniert nur, wenn Lernende bereits erste Schemata aufgebaut haben — nicht für absolute Anfänger.

### Subgoal Labels in Parsons Problems

Labels dienen als Gruppen-Header. Lernende sortieren Code-Blöcke innerhalb der Subgoals in die richtige Reihenfolge. Reduziert den Suchraum und macht die Aufgabe zugänglicher ([[parsons-problems]]).

### LLM-generierte Labels

Li et al. (2025, SIGCSE) zeigten, dass GPT-4 Subgoal Labels erzeugt, die von Experten als qualitativ vergleichbar bewertet werden. Für interaktive Lernumgebungen bedeutet das: Labels können on-the-fly für dynamisch generierte Aufgaben erzeugt werden ([[ki-native-lernumgebungen]]).

## Zeitbedarf

- **Vorbereitung:** Mittel — CTA und Label-Formulierung erfordern didaktische Analyse. Bei Einsatz von LLMs zur Label-Generierung: gering
- **Durchführung:** Kein Zusatzaufwand im Unterricht — Labels sind Teil des Materials
- **Nachbereitung:** Gering

## Bezug zur IT-Ausbildung

Subgoal Labeling passt besonders gut zur IT-Ausbildung, weil Programmieraufgaben häufig klare prozedurale Strukturen haben:

| Lernfeld | Subgoal-Labels (Beispiel) |
|----------|--------------------------|
| **LF5 (SQL)** | *Datenquelle identifizieren → Filter definieren → Aggregation anwenden → Sortierung festlegen* |
| **LF5 (OOP)** | *Verantwortlichkeit bestimmen → Klasse definieren → Methoden implementieren → Testen* |
| **LF8 (REST-API)** | *Route definieren → Request validieren → Geschäftslogik ausführen → Response formatieren* |
| **LF4 (Security)** | *Schutzbedarf analysieren → Maßnahme auswählen → Konfiguration umsetzen → Wirksamkeit prüfen* |

Der besondere Wert liegt im **Equity-Effekt**: Die Lernenden, die am meisten gefährdet sind (schwächere Vorbildung, DaZ, Quereinsteiger), profitieren überproportional. In heterogenen Berufsschulklassen ist das ein starkes Argument.

## Praktische Anwendung

Ein Agent kann Subgoal Labeling systematisch einsetzen:

1. **Worked Examples strukturieren:** Bei jeder generierten Lösung automatisch Subgoal Labels einfügen. Labels konsistent über den gesamten Kurs halten.
2. **Parsons Problems generieren:** Code-Blöcke nach Subgoals gruppieren. Lernende sortieren innerhalb der Gruppen — niedrigere kognitive Last als ungegruppierte Puzzles.
3. **Adaptive Fading-Sequenz:** Labels anfangs komplett zeigen, dann schrittweise ausblenden (vgl. [[scaffolding]]). Wenn Lernende in der "Label-only"-Phase konsistent korrekt arbeiten → freie Aufgaben.
4. **Transfer-Check:** Dieselben Subgoal-Labels in neuen Kontexten verwenden. Erkennt der Lernende "Eingabe validieren" in einer REST-API wieder, wenn er es bei einer CLI-App gelernt hat?
5. **LLM-gestützte Label-Generierung:** Für dynamische Aufgaben Labels on-the-fly erzeugen lassen ([[llm-integrationsmuster-lernumgebungen]]). Qualität per Rubric prüfen: handlungsorientiert, abstrakt genug, konsistent.

## Verwandte Konzepte

- [[worked-examples]] — Hauptanwendungskontext: Labels strukturieren Lösungsbeispiele
- [[cognitive-load-theory]] — Theoretische Grundlage: Chunking reduziert Arbeitsgedächtnisbelastung
- [[parsons-problems]] — Labels als Gruppen-Header in Code-Puzzles
- [[scaffolding]] — Labels sind eine Form von Scaffolding, die via Fading abgebaut wird
- [[cognitive-task-analysis]] — CTA liefert die Subgoals, die dann gelabelt werden
- [[browser-ide-gestuetzte-tutorials]] — Labels strukturieren Schritt-für-Schritt-Tutorials

## Quellen

- Margulieux, L. E., Guzdial, M. & Catrambone, R. (2012). Subgoal-labeled instructional material improves performance and transfer in learning to develop mobile applications. *ICER '12*, 71-78.
- Morrison, B. B., Margulieux, L. E. & Guzdial, M. (2015). Subgoals, context, and worked examples in learning computing problem solving. *ICER '15*, 21-29.
- Morrison, B. B., Margulieux, L. E., Ericson, B. & Guzdial, M. (2016). Subgoals help students solve Parsons Problems. *SIGCSE '16*, 42-47.
- Margulieux, L. E., Morrison, B. B. & Decker, A. (2020). Reducing withdrawal and failure rates in introductory programming with subgoal labeled worked examples. *International Journal of STEM Education*, 7, Article 19.
- Margulieux, L. E. & Catrambone, R. (2019). Finding the best types of guidance for constructing self-explanations of subgoals in programming. *Journal of the Learning Sciences*, 28(1), 108-151.
- Li, Z., Margulieux, L. E. & Decker, A. (2025). How good are large language models at generating subgoal labels? *SIGCSE '25*.
- Catrambone, R. (1998). The subgoal learning model: Creating better examples so that students can solve novel problems. *Journal of Experimental Psychology: General*, 127(4), 355-376.
