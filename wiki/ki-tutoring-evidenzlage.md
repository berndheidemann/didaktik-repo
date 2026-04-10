---
title: "Evidenzlage KI-Tutoring: Was wirkt wirklich?"
type: evidenz
tags: [ki-tutoring, llm, meta-analyse, rct, guardrails, evidenzbasiert, kritisch, referenz]
related:
  - "[[ki-gestuetztes-tutoring]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[effektstaerken-unterricht]]"
  - "[[meta-analysen-cs-education]]"
  - "[[scaffolding]]"
  - "[[cognitive-load-theory]]"
  - "[[productive-failure]]"
  - "[[formatives-assessment]]"
  - "[[evaluation-lernumgebungen]]"
  - "[[datenschutz-lernumgebungen]]"
  - "[[ki-kompetenzrahmen-schule]]"
  - "[[ki-erfahrungsberichte-berufliche-bildung]]"
  - "[[ki-tool-auswahl-berufsschule]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[rag-tutoring-systeme]]"
evidenzgrad: rct
audience: [FIAE, FIDP]
taxonomiestufe: [bewerten]
created: 2026-04-09
updated: 2026-04-09
summary: >
  Kritischer Evidenzüberblick zu KI-Tutoring 2024-2026. Meta-Analysen zeigen
  g ≈ 0,45-0,60 — aber nur mit Guardrails. Eine RCT mit ~1000 Schüler:innen
  (Bastani et al., PNAS 2025) belegt: Ungeschützter GPT-Zugriff verschlechtert
  die Prüfungsleistung um 17 %. Performance während Übung ist nicht gleich Lernen.
---

# Evidenzlage KI-Tutoring: Was wirkt wirklich?

## Kernidee

KI-Tutoring kann wirken — aber die Evidenz 2024-2026 ist **konditional**, nicht pauschal. Der entscheidende Moderator ist nicht das Modell (GPT-4, Claude, Gemini), sondern die **didaktische Rahmung**: Ungeschützter Chatbot-Zugriff kann messbar schaden, während strukturierte "Tutor-Framing"-Varianten moderate bis starke Lerneffekte erzielen. Dieser Artikel sammelt die belastbarsten Studien und die zentrale Einsicht "Performance ≠ Lernen" — als Evidenzanker gegen Hype-getriebene Entscheidungen beim Bau eigener KI-Lernumgebungen.

## Studiendesign

Dieser Artikel ist eine kuratierte Synthese, keine eigenständige Meta-Analyse. Berücksichtigt werden:

- **Systematische Reviews und Meta-Analysen** 2025 zu generativer KI in Bildungskontexten
- **Einzelne RCTs** mit belastbaren Outcome-Messungen (nicht nur Präferenz-Ratings)
- **Null- und Negativ-Ergebnisse**, weil diese in KI-Debatten systematisch untergehen
- **Nutzungs- und Präferenz-Studien** als Kontextinformation, aber explizit getrennt von Wirksamkeitsevidenz

## Stichprobe

Die zitierten Studien decken K-12 bis Hochschule ab, überwiegend Mathematik, Physik und CS1. Berufsbildungs-spezifische RCTs zu LLM-Tutoring **existieren nicht** (Stand April 2026) — die Übertragung auf FIAE/FIDP erfolgt mechanismus-basiert, nicht empirisch gesichert.

## Kernergebnisse

### Meta-Analysen 2025 — der positive Befund

Mehrere systematische Reviews konvergieren auf moderate positive Effekte:

| Studie | Sample | Effekt | Typ |
|---|---|---|---|
| Ma et al. (2025), J. Computer Assisted Learning | 68 Studien | **SMD = 0,45** [0,43-0,47] | Meta-Analyse |
| GenAI vs. traditionelle Tools (Review 2025) | 21 Studien | **g = 0,572** | Meta-Analyse (Quelle nicht eindeutig zuordenbar — Werte aus Trainingsdaten, Primärquelle ausstehend) |
| — davon kognitive Outcomes | | g = 0,604 | |
| — davon affektive Outcomes | | g = 0,478 | |

**Zentrale Moderatoren** aus diesen Reviews:

- **Tutor-Framing ≫ passives Tool** — wie das System eingesetzt wird, wirkt stärker als welches Modell läuft
- **Inverted-U bei Interventionsdauer** — 8-16 Wochen sind optimal; sehr kurze (&lt;4 Wochen) und sehr lange Einsätze zeigen schwächere Effekte
- **Scaffolded Hints &gt; Direct Answers** — Systeme, die Hinweise statt Lösungen liefern, führen zu höheren Transferleistungen

### Positive RCTs mit sauberem Design

**Kestin et al. (Nature Scientific Reports, 2025) — Harvard-Physik.** KI-Tutor schlägt aktives Lernen in Präsenz bei Einführungsphysik. RCT, sauber kontrolliert, etabliertes Outcome-Instrument. **Wichtigste Limitation**: Elite-Hochschulkontext, hochmotivierte Lernende.

**WestEd (2025) — Khanmigo-Evaluation.** 47 Schulen, strukturierte Mathematik-Nutzung. Ergebnis: "meaningful but modest" Gewinne. Nicht das große Versprechen, aber auch kein Null-Ergebnis. Qualitativ bemerkenswert: Lehrkraft-Einbindung und strukturierter Einsatz waren die stärksten Moderatoren.

### Die wichtigste Studie: Bastani et al., PNAS 2025 — das Krücken-Experiment

**Setup.** Randomisiertes Feld-Experiment mit ~1000 türkischen Oberstufen-Schüler:innen im Mathematik-Unterricht. Drei Bedingungen:

1. **Kontrolle** — regulärer Unterricht
2. **GPT Base** — Zugriff auf ungeschützten GPT-4 während der Übungsphase
3. **GPT Tutor** — Zugriff auf GPT-4 mit Tutor-System-Prompt (Guardrails: keine direkten Lösungen, sokratische Hinweise, gestufte Unterstützung)

Messung: Leistung **während** der Übung (Performance) und **ohne KI-Zugriff** in der anschließenden Klausur (Lernen).

**Ergebnis.**

| Bedingung | Performance während Übung | Klausurleistung (ohne KI) |
|---|---|---|
| Kontrolle | Baseline | Baseline |
| **GPT Base (ohne Guardrails)** | +48 % vs. Kontrolle | **−17 % vs. Kontrolle** |
| GPT Tutor (mit Guardrails) | ≈ +127 % vs. Kontrolle | ≈ Baseline (kein signifikanter Gewinn, aber auch kein Verlust) |

**Mechanismus.** Schüler:innen mit ungeschütztem GPT nutzten das System als Krücke — sie kopierten Lösungen, arbeiteten sie durch den Übungssatz, ohne die zugrundeliegenden Verfahren zu verinnerlichen. Die Übungsphase wurde effizient absolviert, aber kein Wissensaufbau fand statt. In der Klausur, wo die Krücke fehlte, schnitten sie **schlechter** ab als die Kontrollgruppe — nicht nur unverändert, sondern messbar schlechter.

**Die Guardrails-Version neutralisierte den Schaden**, lieferte aber auch keinen Lerngewinn gegenüber dem regulären Unterricht — sie war "harmless", nicht "helpful".

Das ist der einzige bisherige harte Kausalbeweis, dass ungeschützter Chatbot-Einsatz im Lernkontext nicht nur "möglicherweise weniger nützlich", sondern **aktiv schädlich** sein kann.

### Null-Ergebnisse und Ernüchterungen

- **Khanmigo-SWOT-Studie (EduPIJ 2025, n=108).** Mixed-Methods: hohe Akzeptanz und Präferenz, aber **keine signifikanten Lernzuwächse** gegenüber Kontrollgruppe. Schüler:innen sehen das System als Supplement, nicht als Lehrerersatz.
- **Khanmigo Undergrad-Physik.** Positive Wahrnehmung, keine signifikante Lernoutcome-Differenz.
- **ITS-Chatbot-Meta-Analyse.** Kein signifikanter Effekt auf Self-Efficacy — wahrgenommene Kompetenz steigt nicht automatisch mit Tool-Nutzung.

## Effektstärke

- Meta-Analysen konvergieren bei **g ≈ 0,45-0,60** für GenAI-Tutoring mit didaktischer Rahmung — entspricht einem **moderaten Effekt** nach Cohen (klein: 0,2 / mittel: 0,5 / groß: 0,8).
- Zum Vergleich aus [[effektstaerken-unterricht]]: Feedback d = 0,70, Worked Examples d = 0,57, Pair Programming d = 0,31. KI-Tutoring liegt im Bereich etablierter guter Praktiken — **nicht darüber**.
- **Der Bastani-Effekt in die Gegenrichtung**: ungeschützter Chatbot-Zugriff −17 % Klausurleistung entspricht etwa d ≈ −0,5 (mittelstarker negativer Effekt).

## Limitationen

- **Keine Berufsbildungs-RCTs.** Alle belastbaren Studien stammen aus K-12 (Mathe) oder Hochschul-CS/Physik. Übertragbarkeit auf FIAE/FIDP ist Mechanismus-basiert, nicht empirisch.
- **Kurzzeit-Messungen dominieren.** Die meisten Studien messen Outcomes nach Wochen, selten nach Monaten. Langzeit-Retention und Transfer bleiben offene Fragen.
- **Produkt-Drift.** Khanmigo, CodeHelp, CS50 Duck, GPT-4 sind 2026 nicht mehr dieselben Systeme wie zum Studienzeitpunkt. Mechanismus-Einsichten (Krücken-Effekt, Guardrail-Notwendigkeit) sind stabil; konkrete Produktnamen in den Studien sind historisch.
- **Publication Bias.** Positive Ergebnisse werden häufiger veröffentlicht. Die tatsächliche Null-Effekt-Rate dürfte höher liegen als die Review-Literatur suggeriert.
- **"Nutzungsstudien" sind keine Wirksamkeitsstudien.** Der Anthropic-Report zu Claude for Education (574k Konversationen) beschreibt, *wie* KI genutzt wird — nicht, *ob* die Nutzung zu besseren Lernergebnissen führt. Diese Unterscheidung geht im öffentlichen Diskurs häufig verloren.

## Bezug zur IT-Ausbildung

**Performance ist nicht Lernen — und das gilt auch (besonders) für Programmieraufgaben.**

Ein FIAE-Azubi, der mit Copilot eine CRUD-Anwendung in einer Stunde fertigstellt, mag die Übung "erfolgreich" absolviert haben. Die Frage der Lehrkraft muss sein: Könnte er/sie dasselbe in einer Prüfungssituation ohne Tool-Unterstützung? Der Bastani-Mechanismus ("Krücke statt Schema-Aufbau") ist 1:1 auf Programmier-Scaffolding durch LLMs übertragbar.

Zwei konkrete Konsequenzen:

1. **Das Stufenmodell in [[ki-gestuetztes-tutoring]] ist nicht optional, sondern evidenz-notwendig.** Phase 1 ohne KI ist der Schema-Aufbau, der in ungeschützten Szenarien wegfällt. Wer diese Phase überspringt, kauft Übungs-Effizienz auf Kosten von Prüfungskompetenz.
2. **Eigene Lernumgebungen müssen Guardrails als Feature haben, nicht als Option.** Das Rubric-Evaluator- und Sokratische-Tutor-Muster aus [[llm-integrationsmuster-lernumgebungen]] sind nicht nur didaktisch schöner, sondern der einzige nachgewiesene Weg, Schaden zu vermeiden. "Schüler:innen können auch ChatGPT direkt nutzen" ist didaktisch **nicht** äquivalent.

Die Meta-Moderatoren geben eine zusätzliche Planungsheuristik: Interventionen von **8-16 Wochen Dauer** sind optimal — passt direkt auf Lernsituations-Zyklen im Lernfeldkonzept. Längere "dauerhaft-immer-verfügbar"-Szenarien sind nicht nachweislich besser und bergen das Risiko der Normalisierung.

## Praktische Anwendung

Für ein Agent oder eine Lehrkraft, die diese Evidenz beim Bau einer Lernumgebung nutzen will:

1. **Bastani als Ankerbefund zitieren** in jeder Diskussion, in der argumentiert wird, "die Azubis können ja Copilot selbst bedienen". Der Effekt ist kein Meinungs-, sondern ein RCT-Ergebnis.
2. **Pre-/Post-Messung mit KI-freier Kontrollphase** einbauen (vgl. [[evaluation-lernumgebungen]]). Ohne diese Messung lässt sich Performance nicht von Lernen unterscheiden.
3. **Guardrails-First-Design** in jedem neuen LLM-gestützten Feature. Konkret: System-Prompt mit expliziter "Keine Lösungen, nur Hinweise"-Direktive; Rubric-Evaluator für Feedback statt Direct-Solution-Generation; Konversations-Limit/Turn-Budget in Dialog-Modi.
4. **KI-freie Prüfungs-Milestones** einplanen. Transfer wird nur sichtbar, wenn die Krücke weggenommen wird. Diese Messpunkte sind das einzige valide Lernzeugnis.
5. **"Wir haben Copilot eingesetzt" ≠ Evidenz.** Nutzungszahlen und Präferenz-Ratings sind **keine** Wirksamkeitsnachweise — das gilt auch für eigene Lernumgebungen.

### Warnsignale, die auf den Krücken-Effekt hindeuten

- Übungsleistung steigt, Klausurleistung stagniert oder sinkt
- Lernende können Aufgaben mit Tool lösen, aber das Verfahren nicht ohne Tool erklären
- Debugging-Dauer bei neuen Fehlern bleibt konstant oder steigt (kein Schema-Aufbau)
- "Explain-before-use"-Nachfragen werden inhaltsleer beantwortet

## Verwandte Konzepte

- [[ki-gestuetztes-tutoring]] — Das Stufenmodell ist die didaktische Konsequenz aus dieser Evidenz
- [[llm-integrationsmuster-lernumgebungen]] — Die vier Muster sind allesamt Guardrails-Implementierungen
- [[prompt-engineering-didaktisch]] — Wie Guardrails technisch umgesetzt werden
- [[effektstaerken-unterricht]] — Einordnung g ≈ 0,45-0,60 in den Kanon etablierter Interventionen
- [[meta-analysen-cs-education]] — CS-spezifische Effektstärken als Vergleichsrahmen
- [[productive-failure]] — Warum der "Struggle" in Phase 1 notwendig ist, den die Krücke beseitigt
- [[cognitive-load-theory]] — Expertise Reversal erklärt, warum Anfänger:innen besonders gefährdet sind
- [[evaluation-lernumgebungen]] — Pre-/Post-Design als Methodenvoraussetzung zur Messung
- [[datenschutz-lernumgebungen]] — Guardrails haben technische und rechtliche Bezüge

## Quellen

- Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö., & Mariman, R. (2025). Generative AI Without Guardrails Can Harm Learning: Evidence from High School Mathematics. *Proceedings of the National Academy of Sciences*. DOI: 10.1073/pnas.2422633122
- Ma, W. et al. (2025). The effects of generative AI on learning outcomes: A meta-analysis. *Journal of Computer Assisted Learning*. DOI: 10.1111/jcal.70117
- Kestin, G. et al. (2025). AI tutoring outperforms in-class active learning in introductory physics. *Scientific Reports*, 15. DOI: 10.1038/s41598-025-97652-6
- WestEd (2025). Khanmigo Evaluation Report. Khan Academy.
- EduPIJ (2025). A SWOT analysis of Khanmigo: Student perspectives on AI tutoring. *Educational Process International Journal*.
- Liffiton, M. et al. (2023). CodeHelp: Using Large Language Models with Guardrails for Scalable Support in Programming Classes. *Proceedings of Koli Calling '23*.
- Khan Academy (November 2024). Khanmigo Efficacy Results.
- Anthropic (2025). How university educators use Claude: An analysis of 574k conversations. *Anthropic Research Report*.
- Wharton Knowledge (2025). Without Guardrails, Generative AI Can Harm Education.
