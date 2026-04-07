---
title: KI-gestütztes Tutoring im Programmierunterricht
type: praxis
tags: [ki-tutoring, programmierung, llm, feedback, differenzierung]
related:
  - "[[scaffolding]]"
  - "[[formatives-assessment]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[worked-examples]]"
  - "[[cognitive-load-theory]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[cognitive-apprenticeship]]"
  - "[[affektive-dimensionen]]"
  - "[[debugging-als-kompetenz]]"
  - "[[flow-theorie]]"
  - "[[intrinsic-integration]]"
  - "[[use-modify-create]]"
  - "[[computational-action]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren]
sozialform: [einzelarbeit]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Erfahrungsberichte zum Einsatz von LLM-basierten Tutoring-Systemen (CS50 AI,
  CodeHelp, Copilot) im Programmierunterricht — ein Stufenmodell von "erst ohne,
  dann mit KI" hat sich als Best Practice etabliert.
---

# KI-gestütztes Tutoring im Programmierunterricht

## Kernidee

LLM-basierte Tutoring-Systeme können individuelles Feedback im Programmierunterricht skalieren — vorausgesetzt, sie geben Hinweise statt Lösungen. Erfahrungen aus CS50 (Harvard), CodeHelp und Copilot-Studien zeigen: KI-Tutoring wirkt als [[scaffolding]], wenn es didaktisch gerahmt wird, schadet aber als "Answer Oracle" ohne Rahmung.

## Kontext

Die Erfahrungsberichte stammen aus CS1/CS2-Kursen an Hochschulen (2023-2026), sind aber auf FIAE/FIDP-Berufsschulklassen übertragbar, da die Herausforderungen (Heterogenität, Anfänger:innen-Hürden, begrenztes Lehrkraft-Feedback) identisch sind.

## Durchführung

### Erprobte Systeme

| System | Ansatz | Ergebnis |
|--------|--------|----------|
| **CS50 AI (Harvard)** | GPT-4-basiert, sokratisch, gibt keine Lösungen | Gut für Debugging und Konzeptfragen, schwächer bei Architekturentscheidungen |
| **CodeHelp** (Open Source) | LLM-Antworten gefiltert — Hinweise ja, Code nein | Vergleichbare Prüfungsleistung, höhere Selbstwirksamkeit beim Debugging (n≈300) |
| **GitHub Copilot** | Code-Completion in der IDE | Löst ~70-80% typischer CS1-Aufgaben; Anfänger:innen entwickeln schlechtere mentale Modelle bei frühem Einsatz |

### Das Stufenmodell (Best Practice)

1. **Phase 1 (ohne KI):** Grundlagen erarbeiten — Syntax, Kontrollstrukturen, mentale Modelle aufbauen. KI-Tools sind gesperrt.
2. **Phase 2 (KI als Scaffold):** KI darf für Debugging-Hilfe und Konzepterklärungen genutzt werden. Regel: "Explain before use" — Lernende müssen KI-generierten Code erklären können.
3. **Phase 3 (KI als Werkzeug):** Professioneller Einsatz wie im Betrieb — Copilot, ChatGPT als Produktivitätswerkzeug. Fokus auf Prompt-Kompetenz und kritische Bewertung.

## Ergebnisse

**Was funktioniert:**
- Scaffolded Hints statt Lösungen erhalten den Lerneffekt (Liffiton et al., 2023)
- KI-Tutoren sind besonders effektiv bei Fehleranalyse und Debugging (Leinonen et al., 2023)
- Personalisierte Erklärungen auf verschiedenen Abstraktionsniveaus helfen heterogenen Lerngruppen
- Sofortiges [[formatives-assessment]] skaliert über die Klassengröße hinaus

**Was nicht funktioniert:**
- ~30% der Studierenden reichen KI-Lösungen ein, ohne sie zu verstehen (Presti et al., 2024)
- Ohne didaktische Rahmung wird KI zum "Answer Oracle" — der produktive Struggle entfällt
- LLMs halluzinieren gelegentlich falschen Code oder erfinden APIs — Anfänger:innen erkennen das nicht
- Klassische Implementierungsaufgaben werden durch KI trivial → Aufgabendesign muss sich ändern

## Lessons Learned

- **Aufgabendesign anpassen:** Prozessorientierte Aufgaben (Debugging-Protokolle, Code-Reviews, Refactoring) statt reiner Implementierung
- **Prompt-Kompetenz ist Lernziel:** Gezieltes Formulieren von Fragen an KI ist eine eigenständige Kompetenz
- **KI-Policy transparent machen:** Klare Regeln, wann KI erlaubt ist und wann nicht — variiert je nach Lernphase
- **Expertise Reversal beachten:** Anfänger:innen brauchen KI-freie Phasen zum Schema-Aufbau (vgl. [[cognitive-load-theory]]), Fortgeschrittene profitieren von KI als Werkzeug

## Bezug zur IT-Ausbildung

Das Stufenmodell passt zum Lernfeldkonzept: LF1-4 (Grundstufe) eher ohne KI, LF5-9 mit KI als Scaffold, LF10-12 mit KI als professionellem Werkzeug. Azubis arbeiten nach der Ausbildung mit Copilot & Co. — der Unterricht muss beides leisten: solide Grundlagen *und* kompetenten KI-Einsatz.

## Praktische Anwendung

Ein Agent kann KI-Tutoring-Prinzipien direkt umsetzen:

1. **Hints statt Lösungen:** Bei Fehlern erst Fehlertyp nennen, dann betroffene Stelle, dann konkreten Hinweis — nie direkt die Lösung (vgl. [[scaffolding]] Fading).
2. **Explain-before-use:** Bevor eine Lösung gezeigt wird, Lernende auffordern zu erklären, was sie versucht haben und warum es nicht funktioniert.
3. **Debugging begleiten:** Statt den Fix zu geben, den Debugging-Prozess anleiten: "Was sagt die Fehlermeldung? Welche Zeile? Was hast du dort erwartet?"
4. **Aufgaben generieren,** die KI-resistent sind: Code-Tracing, Fehler finden und erklären, Refactoring mit Begründung, [[worked-examples]] mit Self-Explanation-Prompts.
5. **Lernphase erkennen** und KI-Unterstützung entsprechend dosieren — mehr Hilfe in Phase 1, weniger in Phase 3.

## Verwandte Konzepte

- [[scaffolding]] — KI-Tutoring als adaptives Scaffolding mit Fading über die Ausbildungsjahre
- [[formatives-assessment]] — Sofortiges, individuelles Feedback als Kern-Funktion von KI-Tutoring
- [[interaktive-lernumgebungen]] — KI-Tutoring als Mensch-KI-Interaktionsform
- [[selbstgesteuertes-lernen]] — Explain-before-use fördert metakognitive Reflexion
- [[worked-examples]] — KI-resistente Aufgabenformate wie Code-Tracing und Erroneous Examples
- [[cognitive-load-theory]] — Expertise Reversal: Anfänger:innen brauchen KI-freie Phasen

## Quellen

- Liffiton, M. et al. (2023). CodeHelp: Using Large Language Models with Guardrails for Scalable Support in Programming Classes. Proceedings of the 23rd Koli Calling Conference.
- Leinonen, J. et al. (2023). Using Large Language Models to Enhance Programming Error Messages. Proceedings of the 54th ACM Technical Symposium on Computer Science Education (SIGCSE).
- Finnie-Ansley, J. et al. (2022). The Robots Are Coming: Exploring the Implications of OpenAI Codex on Introductory Programming. Proceedings of ACE 2022.
- Denny, P. et al. (2024). Computing Education in the Era of Generative AI. Communications of the ACM, 67(2), 56-67.
- Presti, A. et al. (2024). Student Over-Reliance on AI Code Generation Tools. Proceedings of ITiCSE 2024.
