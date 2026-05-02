---
title: "Effektstärken: Was wirkt im Unterricht?"
type: evidenz
tags: [meta-analyse, effektstaerke, visible-learning, evidenzbasiert, entscheidungshilfe]
related:
  - "[[direct-instruction-rosenshine]]"
  - "[[unterrichtsphasen-artikulation]]"
  - "[[formatives-assessment]]"
  - "[[scaffolding]]"
  - "[[worked-examples]]"
  - "[[cognitive-load-theory]]"
  - "[[retrieval-practice]]"
  - "[[learning-engineering]]"
  - "[[meta-analysen-cs-education]]"
  - "[[evaluation-lernumgebungen]]"
  - "[[expertise-entwicklung]]"
  - "[[constructive-alignment]]"
  - "[[productive-failure]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[lerntagebuch]]"
  - "[[peer-instruction]]"
  - "[[gamification-it-unterricht]]"
  - "[[flipped-classroom]]"
  - "[[kooperatives-lernen]]"
  - "[[pair-programming-unterricht]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[feedback-lernumgebungen]]"
  - "[[vier-komponenten-instruktionsdesign]]"
  - "[[mastery-learning]]"
  - "[[rubric-design]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [bewerten]
created: 2026-04-07
updated: 2026-05-01
summary: >
  Hatties Visible Learning und CS-spezifische Meta-Analysen zeigen:
  Feedback, formatives Assessment und Worked Examples wirken stark —
  Technologie allein (d=0,23) nicht. Hatties Werte sind zwischen 2009/2018
  und MetaX 2023 teils erheblich verschoben (Feedback 0,70 → 0,50,
  Deliberate Practice 0,79 → 0,49); die Tabelle weist die Edition pro Zelle aus.
---

# Effektstärken: Was wirkt im Unterricht?

## Kernidee

Fast alles "wirkt" im Unterricht — die Frage ist, was am stärksten wirkt. Hatties Visible Learning und CS-spezifische Meta-Analysen liefern eine evidenzbasierte Entscheidungshilfe: Feedback, formatives Assessment und aktives Lernen haben die höchsten Effektstärken; Technologie allein, Klassengröße und Hausaufgaben ohne Feedback haben kaum Effekt.

## Studiendesign

Hattie (2009) ist eine Meta-Meta-Analyse: Synthese von 800+ Meta-Analysen mit über 80 Millionen Lernenden. Die aktualisierte Fassung (Hattie, 2023: *Visible Learning — The Sequel*) erweitert auf 2.100+ Meta-Analysen mit über 400 Millionen Lernenden. Ergänzt durch CS-spezifische Meta-Analysen (Freeman et al. 2014, Porter et al. 2013, Sailer & Homner 2020, VanLehn 2011).

## Stichprobe

Hatties Daten umfassen alle Altersgruppen, Fächer und Kontexte weltweit. CS-spezifische Studien: primär Hochschul-CS1/CS2-Kurse in USA, Europa, Australien. Berufsbildungs-spezifische Evidenz ist dünn.

## Kernergebnisse

### Top-Interventionen für IT-Unterricht

| Intervention | Hattie 2009/18 | MetaX 2023 | Wiki-Artikel |
|---|---|---|---|
| **Deliberate Practice** | 0,79 | **0,49** | [[retrieval-practice]], [[expertise-entwicklung]] |
| **Teacher Clarity** (Lernziele + Erfolgskriterien) | 0,75 | **0,85** | [[constructive-alignment]] |
| **Feedback** (task/process/self-regulation) | 0,70 | **0,50** | [[formatives-assessment]] |
| **Formative Evaluation** | 0,68 | — | [[formatives-assessment]] |
| **Spaced Practice** | 0,60 | — | [[retrieval-practice]], [[productive-failure]] |
| **Metakognitive Strategien** | 0,60 | — | [[selbstgesteuertes-lernen]], [[lerntagebuch]] |
| **Worked Examples** | 0,57 | **0,47** | [[worked-examples]] |
| **Scaffolding** | 0,54 | — | [[scaffolding]] |
| **Peer Instruction (CS)** | ~0,50 | — | [[peer-instruction]] |
| **Gamification** | 0,36–0,49 | — | [[gamification-it-unterricht]] |
| **Flipped Classroom** | 0,35 | — | [[flipped-classroom]] |
| **Pair Programming**\* | 0,31 | — | [[pair-programming-unterricht]] |

\* Pair Programming hat in MetaX keine eigene Influence — Wert stammt aus Hannay et al. (2009)-Meta-Analyse, nicht aus Hattie selbst.

**Edition-Hinweis:** Die Spalte "Hattie 2009/18" zitiert Werte aus *Visible Learning* (2009) plus der Online-Aktualisierung (Stand 2017/18). "MetaX 2023" sind die aktuellen Werte aus visiblelearningmetax.com, die zusätzliche Meta-Analysen einschließen. Mehrere zentrale Werte haben sich erheblich verändert — besonders **Feedback (0,70 → 0,50)** und **Deliberate Practice (0,79 → 0,49)**. Bei didaktischer Argumentation: entweder den aktuellen MetaX-Wert verwenden oder die Edition explizit nennen.

### Schwache Interventionen (populär aber wenig Effekt)

| Intervention | Effektstärke (d) | Implikation |
|---|---|---|
| **Technologie allein** | 0,23 | Nicht die Technik wirkt, sondern die Pädagogik darin |
| **Hausaufgaben (ohne Feedback)** | 0,23 | Coding-Aufgaben ohne Review sind verschwendete Zeit |
| **Klassengröße** | 0,15 | Teuer, kaum Effekt — besser in Feedback-Qualität investieren |

### CS-spezifische Schlüsselfunde

**Active Learning in STEM (Freeman et al., 2014):** 225 Studien, 55% weniger Durchfaller bei aktivem Lernen. Die Autoren sprachen von "educational malpractice"; Eric Mazur (Harvard) nannte Weiter-Vorlesung "unethisch" angesichts der Evidenz.

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
- Hannay, J. E., Dybå, T., Arisholm, E. & Sjøberg, D. I. K. (2009). The Effectiveness of Pair Programming: A Meta-Analysis. *Information and Software Technology*, 51(7), 1110–1122.
- Slavin, R. E. (2018). Evidence-Based Reform in Education. *Best Evidence Encyclopedia* / Center for Research and Reform in Education, Johns Hopkins University.
