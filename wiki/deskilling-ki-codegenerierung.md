---
title: "Deskilling durch KI-Codegenerierung — didaktische Gegenstrategien"
type: evidenz
tags: [deskilling, ki-codegenerierung, skill-erosion, copilot, llm, metakognition, scaffolding, evidenzbasiert]
related:
  - "[[hint-engineering-llm-tutoring]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[use-modify-create]]"
  - "[[worked-examples]]"
  - "[[scaffolding]]"
  - "[[expertise-entwicklung]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[primm-methode]]"
  - "[[debugging-als-kompetenz]]"
  - "[[metakognition]]"
  - "[[affektive-dimensionen]]"
  - "[[live-coding-lehrmethode]]"
  - "[[self-explanation]]"
  - "[[abschlussprojekt-begleitung]]"
  - "[[imposter-phaenomen-it-azubis]]"
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[ki-integritaet-pruefungsleistung]]"
  - "[[kritische-ki-bewertungskompetenz]]"
  - "[[ki-prompt-handwerk]]"
audience: [FIAE, FIDP]
taxonomiestufe: [bewerten, analysieren]
evidenzgrad: rct
created: 2026-04-10
updated: 2026-05-01
summary: >
  Evidenzübersicht zu Skill-Erosion durch KI-Codegenerierung bei Programmier-Anfängern.
  Ein randomisiertes Experiment (Shen & Tamkin, Anthropic 2026) zeigt 17 % niedrigere
  Quizscores bei KI-Nutzern; Bastani et al. (PNAS, 2025) belegen 17 % Leistungsabfall
  ohne Guardrails.
  Der Artikel synthetisiert Gegenstrategien: metakognitives Scaffolding, PRIMM,
  Use-Modify-Create und gezielte KI-freie Übungsphasen.
---

# Deskilling durch KI-Codegenerierung — didaktische Gegenstrategien

## Kernidee

KI-Codegenerierung (Copilot, ChatGPT) steigert die kurzfristige Produktivität, gefährdet aber den nachhaltigen Kompetenzaufbau. Wenn Lernende kognitive Arbeit an die KI delegieren, umgehen sie die "desirable difficulties", die für dauerhafte Skill-Formation nötig sind. Aktuelle RCTs quantifizieren den Effekt und zeigen, dass gezielte didaktische Strategien die Vorteile der KI erhalten und den Skill-Verlust verhindern.

## Studiendesign

Synthese aus vier komplementären Quellen:

- **Randomisiertes Experiment (Shen & Tamkin, Anthropic 2026):** 52 junior Engineers lernten Trio (asynchrone Python-Bibliothek). KI-Gruppe vs. manuelle Kontrollgruppe, Outcome: Verständnisquiz nach der Aufgabe.
- **Bastani et al. (PNAS, 2025):** Feldexperiment, ~1.000 Schüler:innen an türkischer Oberschule. Drei Bedingungen: GPT Base, GPT Tutor (mit Guardrails), Kontrolle. Outcome: Prüfung ohne KI-Zugang.
- **Sonar State of Code Survey (2026):** Branchenumfrage, 1.100+ professionelle Entwickler:innen.
- **METR-RCT (2025):** Erfahrene Open-Source-Contributor:innen, Produktivitätsmessung mit/ohne KI.

## Stichprobe

| Studie | N | Kontext | Population |
|---|---|---|---|
| Shen & Tamkin | 52 | Berufspraxis | Junior Engineers, mind. 1 Jahr Python |
| Bastani et al. | ~1.000 | Schule (Türkei) | Oberschüler:innen, Mathematik |
| Sonar Survey | 1.100+ | Industrie (global) | Professionelle Entwickler:innen |
| METR | k. A. | Open Source | Erfahrene Contributor:innen |

Für die IT-Berufsausbildung ist die Shen-Tamkin-Studie besonders relevant (junior Programmierer:innen, neue Technologien).

## Kernergebnisse

**1. KI-Nutzung senkt den Lernerfolg messbar**
Shen & Tamkin: KI-Gruppe erzielte 50 % vs. 67 % (Kontrollgruppe) im Verständnisquiz — 17 Prozentpunkte Differenz, "the equivalent of nearly two letter grades." Grösste Defizite bei Debugging-Aufgaben.

**2. Nicht jede KI-Nutzung schadet gleich**
Entscheidend ist das Interaktionsmuster: Konzeptuelle KI-Fragen ("Was bedeutet dieses Trio-Konzept?") ergaben Quizscores ab 65 %. Delegation der Codegenerierung ("Schreib mir die Lösung") führte zu Scores unter 40 %. Sechs distinkte Interaktionsmuster wurden identifiziert, drei davon erhalten den Lernerfolg.

**3. Guardrails machen den Unterschied**
Bastani et al.: GPT Base brachte 48 % bessere Übungsleistung, aber 17 % schlechtere Prüfung ohne KI. GPT Tutor (Hinweise statt Lösungen) hob den Negativeffekt vollständig auf.

**4. Vertrauens-Verifikations-Lücke**
Sonar Survey (2026): 96 % vertrauen KI-Code nicht vollständig, aber nur 48 % verifizieren vor dem Commit. Juniors berichten die höchsten Produktivitätszuwächse (40 %), aber auch die grösste Sorge um Skill-Erosion (50 %) und nachlassendes Codebase-Verständnis (56 %).

**5. Wahrnehmungs-Realitäts-Lücke**
METR (2025): Erfahrene Entwickler:innen waren mit KI objektiv 19 % langsamer, glaubten aber, 20 % schneller zu sein — Diskrepanz von ~40 Prozentpunkten.

## Effektstärke

Shen & Tamkin: 17 Prozentpunkte Differenz (50 % vs. 67 %). Bei geschätzter SD von ~20 % entspricht dies Cohen's d ~ 0,85 (grosser Effekt). Zeitersparnis durch KI war nicht signifikant (~2 min).

Bastani et al.: 17 % Leistungsabfall (GPT Base) bei unassistierter Prüfung. Der Guardrail-Effekt (GPT Tutor) kompensiert den Negativeffekt vollständig — hohe Wirksamkeit gezielter didaktischer Einbettung.

## Limitationen

- **Kleine Stichprobe und kurzer Messzeitraum:** N = 52 bei Shen & Tamkin, Messung direkt nach der Aufgabe. Langfristige Retention und Transfer sind ungeklärt.
- **Domänenspezifik:** Shen & Tamkin untersuchen eine einzelne Python-Bibliothek; Bastani Mathematik. Transfer auf IT-Ausbildung plausibel, aber nicht direkt belegt.
- **Fehlende Langzeitstudien:** Keine Longitudinalstudien über ein volles Ausbildungsjahr mit kontrolliertem KI-Einsatz.
- **Selbstselektion:** Sonar-Survey ist keine Zufallsstichprobe.

## Bezug zur IT-Ausbildung

Für die FIAE/FIDP-Ausbildung ist die Evidenz alarmierend und handlungsleitend:

**Das Dilemma:** 42 % des produktiven Codes sind bereits KI-generiert (Sonar, 2026). Auszubildende werden KI nutzen, befinden sich aber in der Phase, in der [[expertise-entwicklung]] gerade eigenständige kognitive Verarbeitung erfordert.

**Der Dreyfus-Bezug:** KI-Codegenerierung kann Anfänger:innen auf der Stufe "Fortgeschrittene:r Anfänger:in" festhalten, weil die für den Übergang zu "Kompetent" nötige eigenständige Problemlösung und Mustererkennung umgangen wird.

**Arbeitsmarkt:** Beschäftigung von Softwareentwickler:innen (22-25 Jahre) sank um ~20 % zwischen 2022 und 2025 (Stanford). Differenzierung durch tiefes Verständnis, nicht Prompt-Geschwindigkeit.

**Zentrale Lehre:** Performanz mit KI ist nicht gleich Lernen. 48 % bessere Übungsleistung (GPT Base) verschleiert 17 % Prüfungsabfall ohne KI (vgl. [[ki-tutoring-evidenzlage]]).

## Praktische Anwendung

Fünf evidenzbasierte Gegenstrategien für die IT-Berufsausbildung:

### 1. Phasierte KI-Integration nach Use-Modify-Create

[[use-modify-create]] KI-bezogen adaptiert: **Use** — KI-generierten Code lesen und analysieren (kein Prompting). **Modify** — KI-Code gezielt verändern, Fehler finden, optimieren. **Create** — eigenständig schreiben, KI deaktiviert.

### 2. PRIMM mit KI-generierten Artefakten

[[primm-methode]] adaptiert für KI-Kontexte: **Predict** ("Was tut dieser KI-Code?") erzwingt aktives Lesen; **Investigate** ("Welche Annahmen? Welche Randfälle fehlen?") fördert kritische Analyse; **Modify/Make** verankert Verständnis durch eigenständige Arbeit.

### 3. KI-freie Übungsphasen ("Deliberate Difficulty")

Regelmässige Aufgabenblöcke ohne KI-Zugang stärken [[metakognition]] und erzwingen "desirable difficulties". Empfehlung: Mindestens 30-40 % der Übungszeit KI-frei, insbesondere bei neuen Konzepten.

### 4. Metakognitives Scaffolding bei KI-Nutzung

Wenn KI eingesetzt wird, dann mit expliziten [[scaffolding]]-Massnahmen:
- **Vor dem Prompt:** "Formuliere die Frage zuerst ohne KI."
- **Nach der Antwort:** "Erkläre den Code Zeile für Zeile einem Partner" (vgl. [[worked-examples]]).
- **Reflexion:** "Hättest du diesen Code auch ohne KI schreiben können?"

Zentral: Die Unterscheidung zwischen konzeptuellen Fragen (65 % Quiz) und Codegenerierungs-Delegation (unter 40 %) muss explizit trainiert werden.

### 5. Debugging als Gegengift

Die grössten Defizite in der Shen-Tamkin-Studie zeigten sich beim [[debugging-als-kompetenz]]. Gezielte Debugging-Übungen an KI-generiertem Code sind besonders wirksam: KI bewusst fehlerhaften Code generieren lassen, Code Reviews von KI-Output als Standardübung etablieren. [[affektive-dimensionen]] beachten: Frustration beim Debugging ist produktiv, wenn sie pädagogisch begleitet wird.

### Technische Umsetzung

Guardrails nach Bastani et al. in [[ki-native-lernumgebungen]] implementieren (vgl. [[llm-integrationsmuster-lernumgebungen]]): Hinweise statt Lösungen, stufenweises Fading, automatische Reflexionsprompts.

## Verwandte Konzepte

- [[ki-tutoring-evidenzlage]] — Bastani-Studie dort ebenfalls analysiert; breiterer Evidenzüberblick
- [[ki-gestuetztes-tutoring]] — Theoretische Grundlage für KI-Tutoring mit Guardrails
- [[use-modify-create]] — Progressionsmodell mit KI-freien Create-Phasen
- [[worked-examples]] — Code-Erklärung als Alternative zur Code-Delegation
- [[scaffolding]] — Metakognitives Scaffolding als zentrale Gegenstrategie
- [[expertise-entwicklung]] — Dreyfus-Modell erklärt Gefährdung von Novizen
- [[ki-native-lernumgebungen]] — Technische Umsetzung von Guardrails
- [[llm-integrationsmuster-lernumgebungen]] — Architekturmuster für didaktisch eingebettete KI
- [[primm-methode]] — Predict-Phase erzwingt aktives Lesen vor KI-Nutzung
- [[debugging-als-kompetenz]] — Bereich mit den grössten KI-bedingten Defiziten
- [[metakognition]] — Selbstregulation als Schlüssel gegen Deskilling
- [[affektive-dimensionen]] — Umgang mit Frustration bei KI-freien Phasen

## Quellen

- Shen, J. H., & Tamkin, A. (2026). How AI impacts skill formation. *arXiv preprint*, arXiv:2601.20245 (Anthropic). https://arxiv.org/abs/2601.20245
- Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakci, Ö., & Mariman, R. (2025). Generative AI without guardrails can harm learning: Evidence from high school mathematics. *Proceedings of the National Academy of Sciences*, *122*(26). https://doi.org/10.1073/pnas.2422633122
- METR (2025). Measuring the impact of early-2025 AI on experienced open-source developer productivity. https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/
- Sonar (2026). State of code developer survey report 2026. https://www.sonarsource.com/state-of-code-developer-survey-report.pdf
- ACM (2025). The AI deskilling paradox. *Communications of the ACM*. https://cacm.acm.org/news/the-ai-deskilling-paradox/
