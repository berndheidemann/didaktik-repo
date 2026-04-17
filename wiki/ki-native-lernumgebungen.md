---
title: KI-native Lernumgebungen
type: theorie
tags: [ki-tutoring, multi-agent, adaptives-lernen, prompt-engineering, frontier]
related:
  - "[[ki-gestuetztes-tutoring]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[scaffolding]]"
  - "[[cognitive-load-theory]]"
  - "[[pair-programming-unterricht]]"
  - "[[productive-failure]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[learning-engineering]]"
  - "[[meta-analysen-cs-education]]"
  - "[[threshold-concepts]]"
  - "[[use-modify-create]]"
  - "[[computational-action]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[kursarchitektur-lernumgebungen]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[datenschutz-lernumgebungen]]"
  - "[[formatives-assessment]]"
  - "[[spaced-repetition-algorithmen]]"
  - "[[spaced-repetition-scheduler-bauen]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[ki-kompetenzrahmen-schule]]"
  - "[[ki-erfahrungsberichte-berufliche-bildung]]"
  - "[[ki-tool-auswahl-berufsschule]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[rag-tutoring-systeme]]"
  - "[[subgoal-labeling]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, erschaffen]
created: 2026-04-07
updated: 2026-04-09
summary: >
  Frontier-Ansätze, die KI nicht als Add-on, sondern als Lernmedium behandeln —
  Multi-Agent-Tutoring, adaptives KI-Pair-Programming, Prompt Engineering als
  Programmier-Pädagogik und dynamische Aufgabengenerierung.
---

# KI-native Lernumgebungen

## Kernidee

Die meisten KI-im-Unterricht-Ansätze behandeln KI als Werkzeug, das man *zusätzlich* einsetzt. KI-native Lernumgebungen gehen weiter: KI ist das Medium, durch das Lernen stattfindet — nicht ein Add-on zum bestehenden Unterricht. Das ist ein Paradigmenwechsel von "Unterricht + KI" zu "KI-vermitteltes Lernen". Vgl. [[ki-gestuetztes-tutoring]] für den etablierten Ansatz; dieser Artikel beschreibt die Frontier.

## Beschreibung

### Copilot-First-Pädagogik

Der bestehende Konsens ([[ki-gestuetztes-tutoring]]: "erst ohne, dann mit KI") wird herausgefordert. Becker et al. (2023) und UT Austin (2024) argumentieren: Da jede:r Absolvent:in mit KI-Tools arbeiten wird, ist "Programmieren ohne KI lernen" wie "Autofahren ohne Motor lernen." In ihrem CS1-Kurs lernen Studierende von Tag 1, KI-generierten Code zu *lesen, bewerten und modifizieren*. Code-Comprehension und -Evaluation werden zur Kernkompetenz — statt Code-Generierung.

**Vorläufige Evidenz:** UT Austin (Fall 2024, n≈200): Vergleichbare Prüfungsleistung, signifikant bessere Debugging-Skills in der Copilot-first-Kohorte.

### Multi-Agent-Tutoring

Statt eines einzelnen KI-Tutors interagieren Lernende mit spezialisierten Agenten:

| Agent | Rolle | Pädagogische Funktion |
|-------|-------|----------------------|
| **Explainer** | Konzepte aufbrechen | [[scaffolding]] auf verschiedenen Abstraktionsebenen |
| **Challenger** | Sokratische Gegenfragen | [[productive-failure]] provozieren |
| **Debugger** | Execution-Traces durchgehen | [[formatives-assessment]] auf Process-Level |
| **Motivator** | Affekt und Frustration managen | Frustrationskontrolle (Wood et al., 1976) |

Georgia Tech (Goel, 2024, n≈150) zeigt: Multi-Agent-Konfiguration reduziert Over-Reliance gegenüber einem einzelnen hilfreichen Agenten, weil der Challenger Agent Begründungen erzwingt.

### Adaptives KI-Pair-Programming

Stanford HAI (2024-2025) entwickelt ein System, in dem die KI dynamisch zwischen Driver- und Navigator-Rolle wechselt — basierend auf dem Kompetenzmodell des Lernenden:

- **Novize → KI als Driver:** KI schreibt Code, Lernende erklären und reviewen (Worked-Example-Effekt)
- **Fortgeschrittene → KI als Navigator:** Lernende schreiben Code, KI gibt strategische Hinweise
- **Expert:innen → KI als Peer:** Gleichberechtigtes Pair Programming

Das ist funktional ein automatisierter Expertise-Reversal-Effekt (vgl. [[cognitive-load-theory]]) angewandt auf [[pair-programming-unterricht]].

### Prompt Engineering als Programmier-Pädagogik

Denny et al. (2024, SIGCSE) entwickelten "Prompt Problems": Lernende formulieren Prompts, die korrekten Code erzeugen, und verifizieren das Ergebnis. Vorarbeit zu automatischer Aufgabengenerierung per LLM lieferten Sarsa et al. (2022, ICER). Das invertiert den traditionellen Flow — statt Code zu schreiben, spezifizieren Lernende Intent und evaluieren Output. Trainiert Spezifikation, Dekomposition und Testing — die schwierigeren Teile des Programmierens.

**Ergebnis:** Prompt Problems sind effektiv für Computational Thinking ohne syntaktische Fluenz — besonders stark in den ersten Wochen eines Kurses.

### Dynamische Aufgabengenerierung

CMU LearnLab und Aalto entwickeln Systeme mit: Knowledge Graph der Konzepte + Bayesian Learner Model pro Lernende:r + LLM als Exercise-Generator. Das System generiert Aufgaben, die gezielt die schwächsten Knoten im Knowledge Graph adressieren, mit Schwierigkeit kalibriert auf die Zone der nächsten Entwicklung. Anders als statische Aufgabenpools erzeugt das System *neue* Aufgaben on-the-fly.

## Bezug zur IT-Ausbildung

Diese Ansätze sind für die IT-Ausbildung besonders relevant, weil die Absolvent:innen in einer KI-durchdrungenen Berufswelt arbeiten werden. Ein Knowledge Graph der IHK-Lernfelder mit Bayesian Mastery-Tracking pro Skill, ein sokratischer KI-Tutor mit Guardrails und Spaced Repetition für Retention — das wäre die nächste Generation der Fachinformatiker-Ausbildung.

Das Copilot-First-Modell passt besonders gut ab LF5: Lernende lesen und bewerten KI-generierten SQL-Code, identifizieren Fehler, optimieren Performance — statt alles von Null zu schreiben.

## Praktische Anwendung

Ein Agent kann KI-native Prinzipien direkt umsetzen:

1. **Multi-Agent-Architektur:** Verschiedene Rollen annehmen — mal Erklärer, mal Herausforderer, mal Debugging-Partner. Rolle basierend auf Lernphase wählen.
2. **Adaptives Pair Programming:** Bei Novizen Code generieren und erklären lassen (Driver-Rolle). Bei Fortgeschrittenen nur strategische Hinweise geben (Navigator-Rolle).
3. **Prompt Problems:** Aufgaben generieren, bei denen Lernende Prompts formulieren statt Code schreiben — dann das Ergebnis gegen Tests prüfen.
4. **Dynamische Aufgaben:** Basierend auf bisherigem Lernverlauf Aufgaben generieren, die gezielt Wissenslücken adressieren — nicht zufällig, sondern modellgesteuert.

## Verwandte Konzepte

- [[ki-gestuetztes-tutoring]] — Etablierter Ansatz (Stufenmodell); dieser Artikel geht darüber hinaus
- [[interaktive-lernumgebungen]] — KI-native Umgebungen als nächste Evolutionsstufe
- [[scaffolding]] — Multi-Agent-System als dynamisches Scaffolding mit Rollenverteilung
- [[cognitive-load-theory]] — Automatisierter Expertise-Reversal-Effekt im KI-Pair-Programming
- [[pair-programming-unterricht]] — KI als adaptiver Pair-Programming-Partner
- [[productive-failure]] — Challenger-Agent provoziert produktives Scheitern

## Quellen

- Becker, B. A. et al. (2023). Programming Is Hard — Or at Least It Used to Be. Proceedings of ITiCSE 2023.
- Denny, P. et al. (2024). Computing Education in the Era of Generative AI. Communications of the ACM, 67(2), 56-67.
- Sarsa, S. et al. (2022). Automatic Generation of Programming Exercises and Code Explanations Using Large Language Models. Proceedings of ICER 2022.
- Denny, P. et al. (2024). Prompt Problems: A New Programming Exercise for the Generative AI Era. Proceedings of SIGCSE 2024.
- Kazemitabaar, M. et al. (2024). Studying the Effect of AI Code Generators on Supporting Novice Learners. Proceedings of CHI 2024.
- Goel, A. (2024). AI Teaching Assistants: Lessons from Jill Watson. AI Magazine, 45(1), 78-89.
