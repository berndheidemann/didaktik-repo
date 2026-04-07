---
title: Productive Failure und Desirable Difficulties
type: theorie
tags: [lernwiderstand, spacing, interleaving, retrieval-practice, transfer, kognitive-belastung]
related:
  - "[[cognitive-load-theory]]"
  - "[[worked-examples]]"
  - "[[scaffolding]]"
  - "[[formatives-assessment]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[wissensretention-programmierung]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Lernen wird nachhaltiger, wenn es gezielt erschwert wird — Kapur (2008)
  zeigt, dass Scheitern vor Instruktion tieferes Verständnis erzeugt,
  und Bjork identifiziert Spacing, Interleaving und Retrieval Practice
  als "wünschenswerte Schwierigkeiten" mit starker Evidenzbasis.
---

# Productive Failure und Desirable Difficulties

## Kernidee

Intuitiv scheint es richtig, Lernen so einfach wie möglich zu machen. Die Forschung zeigt das Gegenteil: Gezielte Schwierigkeiten verbessern langfristiges Behalten und Transfer. Productive Failure (Kapur) lässt Lernende *vor* der Instruktion scheitern; Desirable Difficulties (Bjork) machen Übung durch Spacing, Interleaving und Retrieval Practice kurzfristig schwerer, aber langfristig wirksamer.

## Beschreibung

### Productive Failure (Kapur, 2008)

Die traditionelle Sequenz ist: Instruktion → Übung. Productive Failure kehrt das um: **Exploration → Scheitern → Instruktion**. Lernende versuchen ein Problem zu lösen, bevor sie die Theorie kennen. Sie produzieren fehlerhafte, naive oder brute-force-Lösungen — und genau das aktiviert Vorwissen, deckt Lücken auf und schafft "Wissensbedarf", der die folgende Instruktion bedeutsamer macht.

**Evidenz:** Meta-Analyse von Loibl, Roll & Rummel (2024) bestätigt robuste Effekte (d ≈ 0,36-0,53) auf konzeptuellen Transfer, besonders wenn die Explorationsphase diverse Lösungen produziert.

**Spannung mit [[cognitive-load-theory]]:** PF scheint CLT zu widersprechen — [[worked-examples]] minimieren Struggle für Novizen. Die Auflösung: PF funktioniert, wenn Lernende *etwas* Vorwissen haben, um partielle Lösungen zu generieren. Für absolute Anfänger:innen bleiben Worked Examples überlegen. Der Übergang von Worked Examples zu Productive Failure markiert den Weg vom Novizen zum kompetenten Problemlöser.

### Desirable Difficulties (Bjork)

Robert und Elizabeth Bjork identifizieren vier Bedingungen, die Lernen kurzfristig erschweren, aber Langzeitbehaltung und Transfer verbessern:

| Difficulty | Prinzip | IT-Beispiel |
|-----------|---------|-------------|
| **Spacing** | Übung über Zeit verteilen statt massieren | SQL-Joins jede Woche üben statt alles in einer Einheit |
| **Interleaving** | Aufgabentypen mischen statt blocken | Python, SQL und Netzwerk in einer Übungssession mischen |
| **Retrieval Practice** | Aktives Abrufen statt Wiederlesen | "Was gibt dieser Code aus?" bevor man ihn ausführt |
| **Generation** | Selbst generieren statt vorgefertigt lesen | Pseudocode schreiben bevor die Lösung gezeigt wird |

**Evidenz Spacing:** Leppink et al. (2023) zeigten 40% bessere Retention bei verteilter vs. massierter SQL-Übung nach 4 Wochen.

**Evidenz Interleaving:** Tafliovich et al. (2023) fanden signifikant bessere Prüfungsleistungen bei CS1-Studierenden mit interleaved vs. blocked Practice.

**Evidenz Retrieval Practice:** Yang et al. (2024) zeigten ~15% bessere Klausurergebnisse durch Low-Stakes-Code-Tracing-Quizzes vor jeder Einheit. Parsons Problems (Code-Zeilen sortieren) funktionieren als Retrieval Practice mit niedrigerer kognitiver Last als freies Schreiben.

## Bezug zur IT-Ausbildung

**Productive Failure in der Programmierung:** Lernende versuchen einen Sortieralgorithmus zu schreiben, *bevor* sie Sortieralgorithmen kennen. Ihre naiven Lösungen (verschachtelte Schleifen, Brute Force) werden dann mit Selection Sort, Insertion Sort etc. verglichen. Der vorherige Struggle macht die "Warum"-Frage (Warum O(n log n) statt O(n²)?) erlebbar statt abstrakt.

**Interleaving über Lernfelder:** Statt LF5 "fertig" zu machen und dann LF6 zu starten, gemischte Übungssets: eine SQL-Aufgabe, eine Debugging-Aufgabe, eine Netzwerk-Aufgabe. Das zwingt Lernende, zuerst zu identifizieren, *welche* Kompetenz gefragt ist — wie im echten Berufsalltag.

**Spacing im Spiralcurriculum:** Konzepte aus LF5 in LF8 wieder aufgreifen, nicht als "Wiederholung", sondern in neuem Kontext (SQL in LF5 → API-Datenbankzugriff in LF8).

## Praktische Anwendung

Ein Agent kann Desirable Difficulties systematisch einbauen:

1. **Productive Failure orchestrieren:** Vor einer neuen Einheit eine Aufgabe stellen, die mit aktuellem Wissen nicht lösbar ist — aber partielle Lösungen ermöglicht. Nach dem Scheitern die Theorie einführen und explizit mit den gescheiterten Ansätzen vergleichen.
2. **Spacing automatisieren:** Review-Queue, die Themen nach abklingender Erinnerungskurve wieder auftauchen lässt. "Du hast SQL-Joins zuletzt vor 3 Wochen geübt — hier ist eine Aufgabe."
3. **Interleaved Practice generieren:** Gemischte Aufgabensets über mehrere Lernfelder statt thematisch sortierte Übungsblätter.
4. **Retrieval vor Instruction:** "Was gibt dieser Code aus?" als Einstieg — bevor der Code erklärt wird.
5. **[[scaffolding]]-Entscheidung:** Wenn Lernende gar nichts produzieren können → [[worked-examples]]. Wenn sie partielle Lösungen generieren → Productive Failure zulassen. Die Entscheidung scaffold-or-struggle basiert auf dem Lernstand.

## Verwandte Konzepte

- [[cognitive-load-theory]] — Spannung und Komplementarität: CLT für Novizen, PF für Fortgeschrittene
- [[worked-examples]] — Das andere Ende des Kontinuums: Worked Examples → Completion → PF
- [[scaffolding]] — Wann scaffolden (Novize) vs. wann scheitern lassen (Fortgeschrittene)?
- [[formatives-assessment]] — Retrieval Practice ist gleichzeitig Assessment und Lernstrategie
- [[interaktive-lernumgebungen]] — Adaptive Schwierigkeit muss Desirable Difficulties einbauen
- [[selbstgesteuertes-lernen]] — Generation und Retrieval fördern metakognitives Bewusstsein

## Quellen

- Kapur, M. (2008). Productive Failure. Cognition and Instruction, 26(3), 379-424.
- Kapur, M. & Bielaczyc, K. (2012). Designing for Productive Failure. Journal of the Learning Sciences, 21(1), 45-83.
- Loibl, K., Roll, I. & Rummel, N. (2024). Towards a Theory of When and How Problem Solving Followed by Instruction Supports Learning. Educational Psychology Review, 29, 693-715.
- Bjork, R. A. & Bjork, E. L. (2011). Making Things Hard on Yourself, But in a Good Way. In M. A. Gernsbacher et al. (Hrsg.), Psychology and the Real World (S. 56-64). Worth.
- Roediger, H. L. & Karpicke, J. D. (2006). Test-Enhanced Learning. Psychological Science, 17(3), 249-255.
