---
title: "Notional Machines — Mentale Modelle der Programmausführung"
type: theorie
tags: [notional-machine, mentale-modelle, programmierung, misconceptions, code-tracing, visualisierung, du-boulay, sorva]
related:
  - "[[threshold-concepts]]"
  - "[[misconception-analyse]]"
  - "[[debugging-als-kompetenz]]"
  - "[[primm-methode]]"
  - "[[cognitive-load-theory]]"
  - "[[worked-examples]]"
  - "[[expertise-entwicklung]]"
  - "[[scaffolding]]"
  - "[[parsons-problems]]"
  - "[[use-modify-create]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[explain-in-plain-english]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, analysieren]
created: 2026-04-10
updated: 2026-04-10
summary: >
  Eine Notional Machine ist ein vereinfachtes, pädagogisches Modell davon,
  wie ein Computer Programme ausführt (du Boulay, 1986). Falsche oder fehlende
  Notional Machines sind die häufigste Ursache für Programmier-Misconceptions.
  Korrekte mentale Modelle lassen sich gezielt aufbauen — durch Visualisierung
  (Python Tutor), Code-Tracing und strukturierte Methoden wie PRIMM.
---

# Notional Machines — Mentale Modelle der Programmausführung

## Kernidee

Programmieranfänger:innen scheitern selten an der Syntax — sie scheitern daran, dass sie kein korrektes mentales Modell davon haben, *was der Computer tut*, wenn er Code ausführt. Benedict du Boulay (1986) prägte den Begriff **Notional Machine**: eine vereinfachte, abstrakte Maschine, die erklärt, wie Variablen gespeichert, Anweisungen sequentiell abgearbeitet und Kontrollstrukturen durchlaufen werden. Juha Sorva (2013) zeigte in seiner umfassenden Forschungssynthese: Das Fehlen einer korrekten Notional Machine ist die zentrale Ursache für die hartnäckigsten Misconceptions in der Programmierausbildung.

## Beschreibung

### Ursprung: du Boulays fünf Schwierigkeitsbereiche

Du Boulay (1986) identifizierte fünf Bereiche, die das Programmierenlernen erschweren: (1) General Orientation, (2) **Notional Machine**, (3) Notation, (4) Structures, (5) Pragmatics. Die Notional Machine nimmt eine Sonderstellung ein: Ohne sie bleiben die anderen vier Bereiche unverständlich. Wer nicht weiß, dass eine Variable ein benannter Speicherplatz ist, kann weder Syntax noch Algorithmen sinnvoll verarbeiten.

### Sorvas Forschungssynthese

Sorva (2013) führte in seinem Review in den *ACM Transactions on Computing Education* mehrere Forschungsstränge zusammen: Misconception-Literatur, kognitive Theorie mentaler Modelle, konstruktivistische Lerntheorie und die Theorie der [[threshold-concepts]]. Sein zentrales Argument: Lehrende sollten die Notional Machine als **explizites Lernziel** anerkennen — nicht als implizites Nebenprodukt des Programmierens hoffen. Für OOP empfiehlt er **mehrere Notional Machines auf unterschiedlichen Abstraktionsebenen**. In seiner Dissertation (Sorva, 2012) entwickelte er **Visual Program Simulation (VPS)**: Lernende übernehmen die Rolle des Computers und vollziehen die Ausführung schrittweise nach.

### Typische falsche Notional Machines

Sorva (2018) und die ITiCSE-2020-Working-Group (Fincher et al., 2020) katalogisierten die häufigsten Fehlmodelle:

| Fehlmodell | Beschreibung | Konsequenz |
|------------|-------------|------------|
| **Zuweisung als Gleichung** | `x = x + 1` wird als mathematischer Widerspruch gelesen | Lernende können iterative Updates nicht nachvollziehen |
| **Superbug** | Glaube, der Computer könne die Absicht des Programmierers erraten | Fehlende Fehlermeldungen werden als "Verständnis" interpretiert |
| **Schleife als Einmalausführung** | Nicht verstehen, dass Iterationen sich wiederholen | Schleifenkörper wird nur einmal mental durchgespielt |
| **Scope-Blindheit** | Erwartung, dass Variablen überall sichtbar sind | Unerklärliche NameError-Situationen |
| **Rekursion = Endlosschleife** | Nicht erkennen, wie Basisfälle die Rekursion beenden | Vermeidung von Rekursion oder panisches Hinzufügen von Abbrüchen |
| **Referenz = Kopie** | Aliasing-Effekte unerwartet, Mutation an "anderer" Variable überrascht | Schwer debuggbare Seiteneffekte |

Diese Fehlmodelle sind **kohärente alternative Konzepte**, nicht zufällige Fehler (vgl. [[misconception-analyse]]). Chi (2005) erklärt ihre Robustheit durch ontologische Kategorienfehler: "Variable als Behälter" ist ein Matter-Modell, die korrekte Vorstellung (Bindung in einem Namensraum) eine Process/Relation.

### Listers Stufenmodell: Tracing als Fundament

Lister et al. (2004) zeigten in einer multinationalen Studie (7 Länder): Viele Studierende können am Ende ihres Einführungskurses weder den Output eines kurzen Snippets vorhersagen noch eine fehlende Zeile aus Optionen auswählen. Lister entwickelte ein Dreistufen-Modell: (1) Kann Code nicht tracen, (2) kann tracen, aber nur mechanisch, (3) kann abstrakt über Code schlussfolgern. Code-Tracing ist die **Grundvoraussetzung** aller höheren Programmierfähigkeiten.

### Visualisierungstools

**Python Tutor** (pythontutor.com) ist mit 25+ Millionen Nutzer:innen in 180+ Ländern das verbreitetste Visualisierungstool (Guo, 2021). Es rendert Stack Frames, Heap-Objekte und Referenzpfeile schrittweise. Karnalim & Ayub (2018) fanden positive Effekte besonders bei fortgeschrittenen Themen. Wichtig: Visualisierung allein genügt nicht — Lernende brauchen aktive Aufgaben, die sie zwingen, die Darstellung zu *interpretieren*.

**Thonny** bietet einen integrierten Step-Through-Debugger. **UUhistle** (Sorva, 2012) geht weiter: Lernende simulieren die Ausführung selbst und erhalten Feedback auf ihre Simulation.

## Bezug zur IT-Ausbildung

Azubis kommen mit sehr unterschiedlichem Vorwissen: Hobby-Programmierer:innen haben oft implizit eine teilweise korrekte Notional Machine, Quereinsteiger:innen keine. Diese Heterogenität macht die Notional Machine zum **diagnostischen Schlüssel**.

| Lernfeld | Relevante Notional Machine | Typisches Problem ohne sie |
|----------|---------------------------|---------------------------|
| **LF5** | Sequentielle Ausführung, Variablen, Zuweisungsrichtung | `x = x + 1` als Fehler |
| **LF5 (SQL)** | Mengenbasierte statt zeilenweiser Verarbeitung | Prozedurales Lesen von SQL |
| **LF8 (APIs)** | Asynchrone Request/Response-Zyklen | Synchrones Modell angenommen |
| **LF11a (OOP)** | Klasse vs. Instanz, Referenzsemantik, Call Stack | Aliasing-Überraschungen |

Ein kurzer Code-Tracing-Test (5 Items, 5-10 Min) zu Beginn einer Einheit zeigt, welche Notional Machine fehlt. Beispiel-Item:

```python
a = [1, 2, 3]
b = a
b.append(4)
print(len(a))  # Was wird ausgegeben?
```

Wer "3" antwortet, hat eine Kopie-statt-Referenz-Notional-Machine — ein klares Signal für gezielte Intervention (vgl. [[formatives-assessment]]).

## Praktische Anwendung

**1. Notional Machine explizit unterrichten.** Nicht als Nebensatz ("Variablen sind wie Schubladen"), sondern als eigenes Lernziel. Sorvas Empfehlung: Zuerst die Notional Machine, dann die Syntax.

**2. Code-Tracing als Kernübung.** Lernende sagen Output vorher, bevor sie Code ausführen — die Predict-Phase aus [[primm-methode]]. Diskrepanz zwischen Vorhersage und Realität erzeugt den kognitiven Konflikt, der Conceptual Change auslöst (vgl. [[misconception-analyse]]).

**3. Visualisierung aktiv einsetzen.** Python Tutor nicht als passives Demo, sondern: *zuerst* selbst tracen, *dann* mit Python Tutor vergleichen. Dieser Zweischritt verbindet [[primm-methode]] (Predict) mit Sichtbarmachung der korrekten Notional Machine.

**4. Gestufte Notional Machines.** LF5: Variablen, sequentielle Ausführung, Kontrollfluss. LF11a: Heap, Referenzen, Call Stack. Jede Stufe baut auf der vorherigen auf (vgl. [[scaffolding]], [[expertise-entwicklung]]).

**5. Integration in Lernumgebungen.** Ein Agent kann Notional-Machine-Aufbau systematisch unterstützen:

- **Predict-Lock:** Run-Button erst nach Vorhersage freischalten
- **Tracing-Widget:** Schritt-für-Schritt-Ausführung mit Variableninspektor (vgl. [[direct-manipulation-lernumgebungen]])
- **Misconception-Diagnose:** Bei Fehlvorhersagen automatisch passende Visualisierung einblenden
- **[[parsons-problems]] als Tracing-Vorstufe:** Codezeilen sortieren erzwingt mentale Ausführung bei reduzierter Last (vgl. [[cognitive-load-theory]])
- **[[worked-examples]] mit NM-Annotationen:** Jeder Schritt zeigt Code *und* Maschinenzustand

**6. Use-Modify-Create auf Tracing.** Analog zu [[use-modify-create]]: (1) Tracing-Tabelle lesen, (2) für geänderten Code anpassen, (3) eigene erstellen.

## Verwandte Konzepte

- [[threshold-concepts]] — Notional Machine ist selbst ein Schwellenkonzept
- [[misconception-analyse]] — Methodik zum Diagnostizieren und Korrigieren falscher Notional Machines
- [[debugging-als-kompetenz]] — Korrekte Notional Machine als Voraussetzung für Fehlerhypothesen
- [[primm-methode]] — Predict macht die eigene Notional Machine sichtbar, Run konfrontiert mit der korrekten
- [[cognitive-load-theory]] — Notional Machines als Schema, das Intrinsic Load reduziert
- [[worked-examples]] — Annotierte Beispiele machen die korrekte Notional Machine beobachtbar
- [[expertise-entwicklung]] — Tracing → Explaining → Writing als NM-Aufbauprozess
- [[scaffolding]] — Gestufte Notional Machines als konzeptuelles Scaffolding
- [[parsons-problems]] — Sortieraufgaben erzwingen mentale Ausführung bei reduzierter Last
- [[use-modify-create]] — Tracing-Progression: lesen → anpassen → erstellen
- [[direct-manipulation-lernumgebungen]] — Tracing-Widgets als Direct-Manipulation-Umsetzung

## Quellen

- du Boulay, B. (1986). Some difficulties of learning to program. *Journal of Educational Computing Research*, 2(1), 57-73.
- Sorva, J. (2012). *Visual program simulation in introductory programming education* (Dissertation). Aalto University.
- Sorva, J. (2013). Notional machines and introductory programming education. *ACM Transactions on Computing Education*, 13(2), 1-31.
- Sorva, J. (2018). Misconceptions and the beginner programmer. In S. Sentance et al. (Hrsg.), *Computer Science Education* (S. 171-187). Bloomsbury.
- Fincher, S. et al. (2020). Notional machines in computing education. *Proceedings of the Working Group Reports on ITiCSE*, 57-70. ACM.
- Lister, R. et al. (2004). A multi-national study of reading and tracing skills in novice programmers. *ACM SIGCSE Bulletin*, 36(4), 119-150.
- Guo, P. J. (2021). Ten million users and ten years later. *Proceedings of the 34th ACM UIST*, 1235-1251.
- Karnalim, O. & Ayub, M. (2018). The effectiveness of a program visualization tool on introductory programming. *CommIT Journal*, 12(1), 33-44.
- Chi, M. T. H. (2005). Commonsense conceptions of emergent processes. *Journal of the Learning Sciences*, 14(2), 161-199.
