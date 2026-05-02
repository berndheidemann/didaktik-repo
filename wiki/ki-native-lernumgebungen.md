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
updated: 2026-05-01
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

Der bestehende Konsens ([[ki-gestuetztes-tutoring]]: "erst ohne, dann mit KI") wird in der Diskussion herausgefordert. Becker et al. (SIGCSE 2023, Position-Paper) diskutieren das Argument: Da jede:r Absolvent:in mit KI-Tools arbeiten wird, könnte Code-Comprehension und -Evaluation früh in den Mittelpunkt rücken — statt Code-Generierung von Null. In einer "Copilot-First"-Variante würden Studierende von Tag 1 KI-generierten Code lesen, bewerten und modifizieren.

**Evidenzlage:** Stand Mai 2026 keine peer-reviewte RCT-Evidenz, die "Copilot-First" gegen klassische CS1-Sequenzen kontrolliert vergleicht. Die Bastani et al. (PNAS 2025)- und Shen & Tamkin (Anthropic 2026)-Befunde zur Skill-Erosion bei ungeführter KI-Nutzung sprechen eher *gegen* einen unscaffolded Copilot-First-Ansatz (vgl. [[deskilling-ki-codegenerierung]]).

### Multi-Agent-Tutoring

Statt eines einzelnen KI-Tutors interagieren Lernende mit spezialisierten Agenten:

| Agent | Rolle | Pädagogische Funktion |
|-------|-------|----------------------|
| **Explainer** | Konzepte aufbrechen | [[scaffolding]] auf verschiedenen Abstraktionsebenen |
| **Challenger** | Sokratische Gegenfragen | [[productive-failure]] provozieren |
| **Debugger** | Execution-Traces durchgehen | [[formatives-assessment]] auf Process-Level |
| **Motivator** | Affekt und Frustration managen | Frustrationskontrolle (Wood et al., 1976) |

Diese Multi-Agent-Architektur ist als Konzeptskizze didaktisch attraktiv, weil ein Challenger-Agent strukturell Begründungen erzwingt. Belastbare RCT-Evidenz zur Über-Reliance-Reduktion durch Multi-Agent-Konfigurationen liegt Stand Mai 2026 nicht vor — die hier genannten Rollen sind Design-Vorschlag, keine etablierte Architektur.

### Adaptives KI-Pair-Programming (Konzeptskizze)

Eine theoretisch konsistente Architektur wäre, die KI-Rolle dynamisch am Kompetenzmodell der Lernenden auszurichten:

- **Novize → KI als Driver:** KI schreibt Code, Lernende erklären und reviewen (Worked-Example-Effekt)
- **Fortgeschrittene → KI als Navigator:** Lernende schreiben Code, KI gibt strategische Hinweise
- **Expert:innen → KI als Peer:** Gleichberechtigtes Pair Programming

Das ist funktional ein automatisierter Expertise-Reversal-Effekt (Kalyuga 2007, vgl. [[cognitive-load-theory]]) angewandt auf [[pair-programming-unterricht]]. Konkrete produktive Implementierungen mit empirischer Evaluation sind Stand Mai 2026 nicht peer-reviewt publiziert — das Modell ist theoretisch ableitbar, nicht empirisch validiert.

### Prompt Engineering als Programmier-Pädagogik

Denny et al. (SIGCSE 2024) entwickelten "Prompt Problems": Lernende formulieren Prompts, die korrekten Code erzeugen, und verifizieren das Ergebnis. Vorarbeit zu automatischer Aufgabengenerierung per LLM lieferten Sarsa et al. (ICER 2022). Das invertiert den traditionellen Flow — statt Code zu schreiben, spezifizieren Lernende Intent und evaluieren Output. Trainiert Spezifikation, Dekomposition und Testing — die schwierigeren Teile des Programmierens.

**Empirie:** Denny et al. berichten positive Selbstauskunft und Engagement aus Pilot-Deployments in CS1 und CS2 (freiwillige Teilnahme: 58/414 in CS1, 182/444 in CS2). Eine Wirksamkeitsmessung auf Computational Thinking liegt nicht vor — das Format ist als Aufgabentyp pilotiert, nicht als Lernintervention quantitativ evaluiert.

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

- Becker, B. A., Denny, P., Finnie-Ansley, J., Luxton-Reilly, A., Prather, J., & Santos, E. A. (2023). Programming Is Hard — Or at Least It Used to Be: Educational Opportunities and Challenges of AI Code Generation. *Proceedings of SIGCSE 2023.*
- Denny, P., Prather, J., Becker, B. A., Finnie-Ansley, J., Hellas, A., Leinonen, J., Luxton-Reilly, A., Reeves, B. N., Santos, E. A., & Sarsa, S. (2024). Computing Education in the Era of Generative AI. *Communications of the ACM, 67*(2), 56-67.
- Sarsa, S., Denny, P., Hellas, A., & Leinonen, J. (2022). Automatic Generation of Programming Exercises and Code Explanations Using Large Language Models. *Proceedings of ICER 2022.*
- Denny, P., Leinonen, J., Prather, J., Luxton-Reilly, A., Amarouche, T., Becker, B. A., & Reeves, B. N. (2024). Prompt Problems: A New Programming Exercise for the Generative AI Era. *Proceedings of SIGCSE 2024.*
- Kazemitabaar, M., Chow, J., Ma, C. K. T., Ericson, B. J., Weintrop, D., & Grossman, T. (2023). Studying the Effect of AI Code Generators on Supporting Novice Learners in Introductory Programming. *Proceedings of CHI 2023.*
- Kalyuga, S. (2007). Expertise reversal effect and its implications for learner-tailored instruction. *Educational Psychology Review, 19*(4), 509–539.
- Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö., & Mariman, R. (2025). Generative AI Without Guardrails Can Harm Learning. *PNAS, 122*(26).
- Shen, J. H., & Tamkin, A. (2026). How AI Impacts Skill Formation. arXiv:2601.20245 (Anthropic).
- Wood, D., Bruner, J. S. & Ross, G. (1976). The Role of Tutoring in Problem Solving. *Journal of Child Psychology and Psychiatry*, 17(2), 89-100. https://doi.org/10.1111/j.1469-7610.1976.tb00381.x
