---
title: Expertise-Entwicklung im Programmieren
type: theorie
tags: [dreyfus-modell, subskills, novize-experte, code-reading, diagnostik]
related:
  - "[[blooms-taxonomie]]"
  - "[[cognitive-load-theory]]"
  - "[[scaffolding]]"
  - "[[worked-examples]]"
  - "[[threshold-concepts]]"
  - "[[productive-failure]]"
  - "[[learning-engineering]]"
  - "[[wissensretention-programmierung]]"
  - "[[debugging-als-kompetenz]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[low-floor-high-ceiling]]"
  - "[[primm-methode]]"
  - "[[use-modify-create]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[effektstaerken-unterricht]]"
  - "[[metakognition]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, analysieren, bewerten]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Das Dreyfus-Modell (Novize → Expert:in) und die Subskill-Zerlegung
  (Tracing → Explaining → Writing → Designing) beschreiben den Weg zur
  Programmierkompetenz und bestimmen, wann welche Instruktionsmethode passt.
---

# Expertise-Entwicklung im Programmieren

## Kernidee

Nicht jede Instruktionsmethode passt zu jedem Lernstand. Das Dreyfus-Modell beschreibt fünf Stufen vom Novizen zur Expert:in; Lister et al. (2006) zeigen eine empirisch belegte Progression der Programmier-Subskills: Tracing → Explaining → Writing → Designing. Ein adaptives Lernsystem muss wissen, *wo* ein:e Lernende:r steht, um die richtige Methode zu wählen.

## Beschreibung

### Dreyfus-Modell für Programmierer:innen

| Stufe | Kennzeichen | Instruktionsbedarf |
|-------|------------|-------------------|
| **Novize** | Folgt Regeln starr, ohne Kontext | [[worked-examples]], maximales [[scaffolding]], Lückencode |
| **Fortgeschrittene Anfänger:in** | Erkennt Muster aus Erfahrung, sieht aber nicht das Ganze | Fading: weniger Scaffolding, mehr eigenständige Aufgaben |
| **Kompetent** | Plant bewusst, wählt Strategien, debuggt systematisch | [[productive-failure]], offene Probleme, Code Reviews |
| **Versiert** | Erfasst Situationen ganzheitlich, erkennt Anti-Patterns intuitiv | Exploration, Mentoring, komplexe Projekte |
| **Expert:in** | Handelt aus tiefer Intuition, reflektiert nur bei Neuem | Peer-Diskussion auf Augenhöhe, Forschungs-/Architekturaufgaben |

**Ziel der FIAE-Ausbildung:** Stufe "Kompetent" — eigenständiges Problemlösen mit bewusster Strategiewahl. Das ist die Stufe, ab der Handlungskompetenz im Sinne des Rahmenlehrplans erreicht ist.

### Subskill-Progression (Lister et al., 2006)

| Subskill | Beschreibung | Bloom-Stufe |
|----------|-------------|-------------|
| **Tracing** | Code mental Zeile für Zeile ausführen | Verstehen |
| **Explaining** | Zweck von Code in eigenen Worten beschreiben | Verstehen/Analysieren |
| **Debugging** | Fehler lokalisieren und diagnostizieren | Analysieren |
| **Completing** | Lücken in vorgegebenem Code füllen | Anwenden |
| **Modifying** | Bestehenden Code an neue Anforderungen anpassen | Anwenden/Analysieren |
| **Implementing** | Code von einer Spezifikation schreiben | Anwenden/Erschaffen |
| **Designing** | Probleme zerlegen, Abstraktionen wählen | Erschaffen |
| **Reviewing** | Code-Qualität und Trade-offs bewerten | Bewerten |
| **Testing** | Sinnvolle Testfälle generieren | Analysieren/Erschaffen |

**Zentrale Erkenntnis:** Wer Code nicht tracen kann, kann Code nicht schreiben. Lesekompetenz ist Voraussetzung, nicht Parallelkompetenz. Die Sequenz "Code lesen vor Code schreiben" ist empirisch belegt (Lister et al., 2004; Lopez et al., 2008).

### SOLO-Taxonomie für Code-Qualität

Biggs' SOLO-Taxonomie beschreibt die Strukturqualität von Lösungen:

- **Prestrukturell:** Code ist irrelevant oder unsinnig
- **Unistrukturell:** Ein Aspekt richtig (z.B. Schleife korrekt, aber Bedingung falsch)
- **Multistrukturell:** Mehrere Elemente, aber nicht integriert (Brute-Force-Lösung)
- **Relational:** Kohärente Lösung mit sauberer Struktur (= Dreyfus "Kompetent")
- **Extended Abstract:** Generalisierung, Trade-off-Bewertung, wiederverwendbare Patterns

Nützlich für Rubric-Design in [[code-review-unterricht]] und [[formatives-assessment]].

## Bezug zur IT-Ausbildung

Die Subskill-Progression ermöglicht eine didaktische Sequenzierung über die Ausbildungsjahre:

| Ausbildungsjahr | Dominante Subskills | Passende Methoden |
|----------------|--------------------|--------------------|
| **1. Jahr (LF1-5)** | Tracing, Explaining, Completing | [[worked-examples]], Parsons Problems, Code-Tracing mit Python Tutor |
| **2. Jahr (LF6-9)** | Debugging, Modifying, Implementing | [[productive-failure]], [[pair-programming-unterricht]], [[flipped-classroom]] |
| **3. Jahr (LF10-12)** | Designing, Reviewing, Testing | [[code-review-unterricht]], offene Projekte, [[lernsituationen-gestalten]] |

Das korreliert mit dem Spiralcurriculum des Rahmenlehrplans und mit [[blooms-taxonomie]]: Grundlegende Lernfelder auf Stufe 1-3, fortgeschrittene auf Stufe 4-6.

## Praktische Anwendung

Ein Agent kann die Expertise-Stufe einschätzen und Instruktion anpassen:

1. **Subskill diagnostizieren:** Code-Tracing-Aufgabe stellen. Korrekt gelöst → Explaining testen. Auch korrekt → Implementing testen. So den aktuellen Subskill-Level bestimmen.
2. **Methode an Stufe anpassen:** Novize → [[worked-examples]] und [[scaffolding]]. Kompetent → [[productive-failure]] und offene Probleme. Vgl. [[cognitive-load-theory]]: Expertise Reversal.
3. **"Code lesen vor Code schreiben":** Neue Konzepte immer erst mit Tracing-Aufgaben einführen, dann Explaining, dann Writing. Nicht umgekehrt.
4. **SOLO für Feedback nutzen:** Studentenlösung einordnen (uni-/multistrukturell/relational) und Feedback geben, das zur nächsten SOLO-Stufe führt.
5. **[[learning-engineering]]:** Subskills als Knowledge Components im Knowledge Graph abbilden und Mastery pro Subskill tracken.

## Verwandte Konzepte

- [[blooms-taxonomie]] — Taxonomiestufen korrelieren mit Subskill-Progression
- [[cognitive-load-theory]] — Expertise Reversal: Instruktion muss sich mit der Stufe ändern
- [[scaffolding]] — Scaffolding-Dichte hängt von der Expertise-Stufe ab
- [[worked-examples]] — Optimal für Novizen, kontraproduktiv für Kompetente (Expertise Reversal)
- [[threshold-concepts]] — Schwellenkonzepte markieren Übergänge zwischen Stufen
- [[productive-failure]] — Erst ab "Fortgeschrittene Anfänger" wirksam (etwas Vorwissen nötig)
- [[learning-engineering]] — Subskills als Knowledge Components für Mastery-Tracking

## Quellen

- Dreyfus, S. E. & Dreyfus, H. L. (1980). A Five-Stage Model of the Mental Activities Involved in Directed Skill Acquisition. Operations Research Center, University of California, Berkeley.
- Lister, R. et al. (2006). Not Seeing the Forest for the Trees: Novice Programmers and the SOLO Taxonomy. Proceedings of ITiCSE 2006, 118-122.
- Lister, R. et al. (2004). A Multi-National Study of Reading and Tracing Skills in Novice Programmers. ACM SIGCSE Bulletin, 36(4), 119-150.
- Lopez, M. et al. (2008). Relationships Between Reading, Tracing and Writing Skills in Introductory Programming. Proceedings of ICER 2008, 101-112.
- Biggs, J. B. & Collis, K. F. (1982). Evaluating the Quality of Learning: The SOLO Taxonomy. Academic Press.
