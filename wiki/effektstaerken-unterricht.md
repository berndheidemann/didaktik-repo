---
title: "Effektstärken: Was wirkt im Unterricht?"
type: evidenz
tags: [meta-analyse, effektstaerke, visible-learning, evidenzbasiert, entscheidungshilfe]
related:
  - "[[formatives-assessment]]"
  - "[[scaffolding]]"
  - "[[worked-examples]]"
  - "[[cognitive-load-theory]]"
  - "[[retrieval-practice]]"
  - "[[learning-engineering]]"
  - "[[meta-analysen-cs-education]]"
  - "[[evaluation-lernumgebungen]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [bewerten]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Hatties Visible Learning (2009/2023) und CS-spezifische Meta-Analysen
  zeigen: Feedback (d=0,70), formatives Assessment (d=0,68) und Worked
  Examples (d=0,57) wirken am stärksten — Technologie allein (d=0,23) nicht.
---

# Effektstärken: Was wirkt im Unterricht?

## Kernidee

Fast alles "wirkt" im Unterricht — die Frage ist, was am stärksten wirkt. Hatties Visible Learning und CS-spezifische Meta-Analysen liefern eine evidenzbasierte Entscheidungshilfe: Feedback, formatives Assessment und aktives Lernen haben die höchsten Effektstärken; Technologie allein, Klassengröße und Hausaufgaben ohne Feedback haben kaum Effekt.

## Studiendesign

Hattie (2009, aktualisiert 2023) ist eine Meta-Meta-Analyse: Synthese von 2.100+ Meta-Analysen mit über 300 Millionen Lernenden. Ergänzt durch CS-spezifische Meta-Analysen (Freeman et al. 2014, Porter et al. 2013, Sailer & Homner 2020, VanLehn 2011).

## Stichprobe

Hatties Daten umfassen alle Altersgruppen, Fächer und Kontexte weltweit. CS-spezifische Studien: primär Hochschul-CS1/CS2-Kurse in USA, Europa, Australien. Berufsbildungs-spezifische Evidenz ist dünn.

## Kernergebnisse

### Top-Interventionen für IT-Unterricht

| Intervention | Effektstärke (d) | Wiki-Artikel |
|---|---|---|
| **Deliberate Practice** | 0,79 | [[retrieval-practice]], [[expertise-entwicklung]] |
| **Teacher Clarity** (Lernziele + Erfolgskriterien) | 0,75 | [[constructive-alignment]] |
| **Feedback** (task/process/self-regulation) | 0,70 | [[formatives-assessment]] |
| **Formative Evaluation** | 0,68 | [[formatives-assessment]] |
| **Spaced Practice** | 0,60 | [[retrieval-practice]], [[productive-failure]] |
| **Metakognitive Strategien** | 0,60 | [[selbstgesteuertes-lernen]], [[lerntagebuch]] |
| **Worked Examples** | 0,57 | [[worked-examples]] |
| **Scaffolding** | 0,54 | [[scaffolding]] |
| **Peer Instruction (CS)** | ~0,50 | [[peer-instruction]] |
| **Gamification** | 0,36-0,49 | [[gamification-it-unterricht]] |
| **Flipped Classroom** | 0,35 | [[flipped-classroom]] |
| **Pair Programming** | 0,31 | [[pair-programming-unterricht]] |

### Schwache Interventionen (populär aber wenig Effekt)

| Intervention | Effektstärke (d) | Implikation |
|---|---|---|
| **Technologie allein** | 0,23 | Nicht die Technik wirkt, sondern die Pädagogik darin |
| **Hausaufgaben (ohne Feedback)** | 0,23 | Coding-Aufgaben ohne Review sind verschwendete Zeit |
| **Klassengröße** | 0,15 | Teuer, kaum Effekt — besser in Feedback-Qualität investieren |

### CS-spezifische Schlüsselfunde

**Active Learning in STEM (Freeman et al., 2014):** 225 Studien, 55% weniger Durchfaller bei aktivem Lernen. Die Autoren argumentieren, traditionelle Vorlesung sei "unethisch" angesichts der Evidenz.

**ITS fast so effektiv wie menschliche Tutoren (VanLehn, 2011):** Intelligente Tutorsysteme mit Step-Level-Feedback erreichen d=0,76 — fast identisch mit menschlichem 1:1-Tutoring (d=0,79). Answer-Level-Feedback allein ist deutlich schwächer.

## Effektstärke

Hatties Hinge Point: **d = 0,40** ist der Durchschnitt aller Interventionen. Alles darüber ist "überdurchschnittlich wirksam." Cohen-Konventionen: d=0,20 (klein), d=0,50 (mittel), d=0,80 (groß). Feedback und Formatives Assessment liegen im Bereich "mittel bis groß."

## Limitationen

- **Äpfel und Birnen** (Simpson, 2017): Hattie kombiniert Meta-Analysen mit unterschiedlichen Outcome-Maßen, Populationen und Methoden in einem einzigen Wert.
- **Qualitätsfilter fehlt** (Slavin, 2018): Effektstärken schrumpfen, wenn nur rigorose RCTs einbezogen werden.
- **CS-Evidenzlücke:** Die stärkste Evidenz stammt aus allgemeiner Kognitionswissenschaft, nicht aus IT-Berufsbildung. Transfer auf FIAE/FIDP ist plausibel aber nicht direkt belegt.
- **Hattie als Kompass, nicht als GPS:** Die Rangliste ist eine Heuristik, kein präzises Messinstrument. Kontext, Implementierungsqualität und Zielgruppe entscheiden.

## Bezug zur IT-Ausbildung

Die drei stärksten Hebel für IT-Unterricht sind: (1) **Feedback-Dichte** — automatisierte Tests, Code-Reviews, KI-Hints sind natürliche Implementierungen; (2) **Formative Evaluation** — jede Coding-Aufgabe mit automatisiertem Feedback ist formatives Assessment; (3) **Explizite Lernziele** — vor jeder Aufgabe klar sagen, woran Erfolg erkennbar ist.

Die schwächste Stelle vieler Berufsschulklassen: Technologie (IDEs, Plattformen) wird eingesetzt, ohne die Pädagogik zu ändern. Hattie zeigt: Die Technik allein wirkt nicht (d=0,23). Erst die eingebettete Pädagogik (Feedback, Scaffolding, Retrieval) macht den Unterschied.

## Praktische Anwendung

Ein Agent kann Effektstärken als Entscheidungsfilter nutzen:

1. **Design-Entscheidungen priorisieren:** Investiere in Feedback-Loops und formatives Assessment, nicht in UI-Features.
2. **Methoden-Wahl:** Bei zwei Optionen die mit höherer Effektstärke bevorzugen — aber Kontext berücksichtigen.
3. **Technologie ≠ Lernen:** Nicht annehmen, dass eine Plattform automatisch Lernen verbessert. Die Qualität der Pädagogik *in* der Plattform entscheidet.
4. **Step-Level-Feedback:** VanLehns Befund nutzen: Feedback auf jeden Lösungsschritt (nicht nur am Ende) ist fast so wirksam wie ein menschlicher Tutor.

## Verwandte Konzepte

- [[formatives-assessment]] — Höchste Effektstärke unter den Unterrichtsmethoden
- [[scaffolding]] — Solide Effektstärke, besonders für Novizen
- [[worked-examples]] — d=0,57, stark bei hoher Elementinteraktivität
- [[cognitive-load-theory]] — Theoretische Basis für die Wirksamkeit von Scaffolding und Worked Examples
- [[retrieval-practice]] — Spaced Practice und Testing Effect mit starker Evidenz
- [[learning-engineering]] — Effektstärken als Metrik für Plattform-Optimierung

## Quellen

- Hattie, J. (2009). Visible Learning: A Synthesis of Over 800 Meta-Analyses Relating to Achievement. Routledge.
- Hattie, J. (2023). Visible Learning: The Sequel. Routledge.
- Freeman, S. et al. (2014). Active Learning Increases Student Performance in Science, Engineering, and Mathematics. PNAS, 111(23), 8410-8415.
- VanLehn, K. (2011). The Relative Effectiveness of Human Tutoring, Intelligent Tutoring Systems, and Other Tutoring Systems. Educational Psychologist, 46(4), 197-221.
- Simpson, A. (2017). The Misdirection of Public Policy: Comparing and Combining Standardised Effect Sizes. Journal of Education Policy, 32(4), 450-466.
