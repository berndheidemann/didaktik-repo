---
title: "Feedback in Lernumgebungen — Hattie-Levels und LLM-Anwendung"
type: theorie
tags: [feedback, hattie, ki, lernumgebung, formativ, automatisiert]
related:
  - "[[formatives-assessment]]"
  - "[[effektstaerken-unterricht]]"
  - "[[fehlerkultur-im-unterricht]]"
  - "[[misconception-analyse]]"
  - "[[metakognition]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[scaffolding]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[mastery-learning]]"
  - "[[rubric-design]]"
  - "[[llm-as-grader]]"
  - "[[fachgespraech-didaktik]]"
  - "[[abschlussprojekt-begleitung]]"
  - "[[imposter-phaenomen-it-azubis]]"
  - "[[belonging-interventionen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
created: 2026-04-18
updated: 2026-04-18
summary: >
  Hattie & Timperleys 4-Level-Modell (Task, Process, Self-Regulation, Self) als Design-Rahmen für Feedback in digitalen Lernumgebungen. Wisniewski et al. (2020, ḡ=0.48) zeigen: nicht "ob" Feedback, sondern "welches" — High-Information-Feedback wirkt d=0.99, Personen-Lob d=0.24. LLM-generiertes Feedback liefert Task-Ebene gut, Process teilweise, Self-Regulation praktisch nie — mit konkreten Konsequenzen für Widget-Design und Prompt-Guardrails.
---

# Feedback in Lernumgebungen — Hattie-Levels und LLM-Anwendung

## Kernidee

Feedback gehört zu den wirksamsten didaktischen Hebeln (Wisniewski, Zierer & Hattie, 2020, ḡ = 0.48 über 435 Studien), aber **nicht jedes Feedback wirkt** — ein Drittel aller Feedback-Interventionen verschlechtert Leistung (Kluger & DeNisi, 1996). Die Wirkung hängt von der **Ebene** ab, auf die das Feedback zielt: Task und Process schlagen Self-Regulation schlägt Personen-Lob. In automatisierten Lernumgebungen mit LLM-Feedback landet der Default-Modus ohne Engineering bei der schwächsten Variante — zu viel Lob, zu wenig actionable Hinweis.

## Beschreibung

### Hattie & Timperleys 4-Level-Modell (2007)

In "The Power of Feedback" (Review of Educational Research, 77(1)) beschreiben Hattie und Timperley, dass effektives Feedback drei Fragen beantwortet:
- **Feed Up:** Where am I going? (Ziel klar?)
- **Feed Back:** How am I going? (Ist-Zustand klar?)
- **Feed Forward:** Where to next? (Nächster Schritt klar?)

Diese drei Fragen können auf vier Ebenen adressiert werden:

| Level | Beispiel | Wirkung |
|---|---|---|
| **FT — Task/Product** | "Die Schleife läuft einen Schritt zu oft — `i < n` statt `i <= n`." | Wirksam für Novizen/Faktenwissen, schwach generalisierbar |
| **FP — Process** | "Der Fehler ist eine Off-by-one-Situation. Wenn du `< n` im Kopf durchgehst, stoppst du bei n−1." | Stärkster Transfer bei fortgeschrittenen Lernenden |
| **FR — Self-Regulation** | "Deine Tests hätten das Problem gefunden. Welchen Test hättest du vorher schreiben können?" | Verstärkt Wirkung von FT/FP langfristig |
| **FS — Self/Person** | "Gut gemacht! Du bist echt clever." | **Niedrigste Wirkung, oft schädlich** — lenkt vom Artefakt ab |

Ein häufiges Missverständnis: Hattie & Timperley nennen *keine getrennten Effektstärken pro Ebene*. Die d ≈ 0.79 aus Hatties früheren Synthesen ist ein Gesamtwert; die Aussage über die Ebenen ist qualitativ.

### Wisniewski, Zierer & Hattie (2020) — "Feedback Revisited"

Aktuellere Meta-Analyse in *Frontiers in Psychology* (10:3087), 435 Studien, 994 Effektstärken, N ≈ 61 000. Random-Effects-Modell:

- **Gesamt: d = 0.48** — deutlich niedriger als der oft zitierte Hattie-Wert 0.79, aber immer noch großer Effekt.
- **High-Information-Feedback (Task + Process, oft SRL-Komponenten): d = 0.99** — fast Verdopplung.
- Korrektives Feedback allein: d = 0.46.
- **Reinforcement/Punishment (inklusive Lob, FS-nah): d = 0.24** — klarer Verlierer.
- Kognitive Outcomes (d = 0.51) > motivationale Outcomes (d = 0.33).
- Student→Student-Feedback: d = 0.85 (überraschend stark — Peer-Feedback nicht unterschätzen).

**Kernbefund:** Feedback wirkt umso stärker, je mehr handlungsrelevante Information es enthält. Nicht "ob" Feedback, sondern "welches".

### Kluger & DeNisi (1996) — Feedback Intervention Theory (FIT)

Ältere, immer noch zitierte Meta-Analyse (Psychological Bulletin, 119(2)), 607 Effektstärken, d = 0.41. **Mehr als ein Drittel aller Interventionen verschlechtert Performance.** FIT erklärt das über eine Aufmerksamkeits-Hierarchie: Aufmerksamkeit wandert von Task → Task-Motivation → Meta-Task (Self). Je höher die Aufmerksamkeit auf das Selbst, desto stärker greifen ego-protektive Strategien — Feedback auf FS-Ebene schadet systematisch.

### Timing — Shute (2008)

Kein Haupteffekt des Timings, sondern Interaktion mit Aufgabentyp und Lernniveau:

- **Immediate Feedback:** besser für Novizen, prozedurale Skills (Syntax, Mathematik-Routinen), kurze Retention, einfache Fehler.
- **Delayed Feedback:** besser für Transfer, Konzeptlernen, fortgeschrittene Lernende, komplexe Probleme. Verlangsamt den Initial-Lernprozess, fördert aber Tiefe.

**Konsens 2020er:** Per Aufgabentyp entscheiden, nicht global. Für Compiler-Fehler sofort. Für Design-Entscheidungen lieber delayed oder on-demand.

### Narciss' Informative Tutoring Feedback (ITF)

Narciss (2013) typisiert Feedback-Inhalte:

- **KR** (Knowledge of Result): nur "richtig/falsch"
- **KCR** (Knowledge of Correct Result): "Die richtige Antwort ist X"
- **EF** (Elaborated Feedback): Hinweise auf Konzept, Gegenbeispiel, Analogie
- **KH** (Knowledge on How-to-Proceed): "Versuche zunächst, den Wert von `i` nach dem ersten Durchlauf zu bestimmen"

Gute Lernumgebungen stufen: erst KR+KH (mehrere Versuche zulassen), dann EF, zuletzt KCR. LLMs springen im Default sofort zu KCR — das unterdrückt Lernchancen.

## Bezug zur IT-Ausbildung

Für FIAE/FIDP ist Feedback *die* Design-Oberfläche jeder Lernumgebung — Syntaxfehler, Testcase-Feedback, Review-Kommentare, KI-Tutor-Antworten.

### Wo FT dominiert und wo es reicht

- **Syntax, Compiler, lintbare Fehler** — Task-Ebene (FT) ist adäquat. "Fehlendes Semikolon in Zeile 12."
- **Netzwerk-Konfigurations-Fehler** (LF7) — FT reicht oft: "Port 22 ist blockiert."
- **Unit-Test-Versagen** — FT mit KCR abbilden, wenn Test-Assertion spezifisch ist.

### Wo FP / FR unverzichtbar werden

- **Architektur- und Design-Entscheidungen** (LF6, LF9) — FT "dein Code funktioniert" verpasst den Punkt. Process-Feedback: "Die Trennung ist nicht sauber, weil das Repository direkt die UI kennt. Was wäre eine Indirektion?"
- **Refactoring** — FR-Prompts nötig: "Welche Regel hast du dir für Klassennamen überlegt?"
- **Datenschutz/DSGVO** (LF1/LF9) — FP: "Du hast die Einwilligung als Rechtsgrundlage gewählt. Welche anderen wären hier denkbar und warum sind sie hier ungeeignet?"

### Was LLM-Feedback leistet (2023–2025)

- **Phung et al. (ICER/EDM 2023/2024):** GPT-4 liefert brauchbares Feedback auf Syntaxfehler nach Prompt-Engineering, versagt aber regelmäßig bei *semantisch korrektem, logisch falschem* Code und bei Multi-Error-Situationen. GPT-3.5 halluziniert nicht existente Bugs.
- **Dai, Lin, Jin et al. (2023, Monash):** ChatGPT-Feedback ist lesbar und strukturiert, aber **zu stark lobend und wenig kritisch** ("sycophancy"). Task-Ebene gut, Process-Ebene teilweise, **Self-Regulation praktisch nie** — das Modell hat keine Lernhistorie.
- **Meyer et al. (IJAIED 2024):** Bei Concurrency-Aufgaben liefern LLMs häufig fehlerhafte Race-Condition-Diagnosen.

**Bottom line:** LLM-Feedback im Default-Modus landet bei **FT + ein wenig FP + Überdosis FS-ähnlichem Lob**. Ohne Prompt-Guardrails ist das näher an der Kluger/DeNisi-Verlierer-Variante als an High-Information.

## Praktische Anwendung

### 7 Design-Regeln für Feedback-Widgets

1. **Task + Process kombinieren.** Ein Feedback-Satz ist selten genug. "Falsch, weil…" + "Strategie: …".
2. **Kein Personenlob.** Sachlich auf Artefakt, nicht auf Person. "Lösung korrekt" ersetzt "super, du bist clever".
3. **Actionable:** Nächster Schritt explizit. Der Lernende muss wissen, was jetzt zu tun ist.
4. **Stufen nach Narciss:** Erster Versuch KR + KH (Versuch zulassen), zweiter EF (Konzept), dritter ggf. KCR. **Nie sofort die Lösung zeigen.**
5. **Timing pro Aufgabentyp:** sofort bei Compiler/Syntax, delayed oder on-demand bei Konzept/Design.
6. **SRL-Prompts extern:** Lernumgebung muss Self-Regulation-Ebene selbst beitragen ("Was hätte dich früher warnen können?"), da LLMs sie nicht zuverlässig generieren.
7. **LLM-Guardrails:** Prompt constraints gegen Überlob, Faktencheck-Anker (Testfälle, RAG-Referenz), "ich weiß es nicht"-Option im Systemprompt aktivieren.

### Beispiel-Prompt-Skelett (für LLM-Feedback-Widget)

```
System: Du bist Feedback-Geber, nicht Lehrer-Cheerleader.
- Beginne NIE mit Lob ("super", "prima", "toll") oder Adjektiven über die Person.
- Erkenne maximal EINEN Hauptfehler. Nenne ihn auf Task-Ebene.
- Gib genau eine Process-Frage oder einen Process-Hinweis.
- Zeige die Lösung NICHT, wenn dies der erste Versuch ist.
- Antworte in ≤ 3 Sätzen.

Eingabe: <Schüler-Code>
Ground-Truth: <korrekte Lösung + typische Misconceptions>
```

### Kalibrierungs-Workflow

1. Schüler-Antworten auf 10 Fixture-Aufgaben generieren lassen.
2. Lehrer bewertet: welche Ebene liefert das LLM? Task ja, Process manchmal, SRL nie?
3. Wenn zu viel Lob: Guardrail anziehen.
4. Wenn Halluzinationen: Ground-Truth als RAG-Anker.
5. Schwellenwert für Rückfall auf Human-Review festlegen.

### Rote Linien

- **Summative Noten rein automatisiert:** nicht empfohlen (siehe [[llm-as-grader]]). Formativ ja, summativ nein.
- **Concurrency, Security, DSGVO-Fälle:** LLM-Feedback validieren, bevor es an Schüler geht — Halluzinationsrisiko zu hoch.

## Verwandte Konzepte

- [[formatives-assessment]] — Feedback ist die operative Kernaktion formativer Diagnose
- [[effektstaerken-unterricht]] — Einordnung der Meta-Analyse-Werte (Hattie, Wisniewski)
- [[fehlerkultur-im-unterricht]] — Klimabedingung dafür, dass FS-Vermeidung nicht als Lieblosigkeit wirkt
- [[misconception-analyse]] — Grundlage für gute Elaborated-Feedback-Inhalte
- [[metakognition]] / [[selbstgesteuertes-lernen]] — Heimat der Self-Regulation-Ebene
- [[scaffolding]] — gestuftes Feedback nach Narciss ist didaktisches Scaffolding
- [[ki-gestuetztes-tutoring]] / [[ki-tutoring-evidenzlage]] — konkrete LLM-Befunde zum Feedback
- [[llm-integrationsmuster-lernumgebungen]] / [[prompt-engineering-didaktisch]] — Guardrails und Muster gegen Halluzination und Überlob
- [[self-explanation]] — ergänzender Lern-Hebel, der Schüler zwingt, eigenes Feedback zu geben
- [[llm-as-grader]] — verwandte, aber andere Frage: summative Bewertung statt formatives Feedback

## Quellen

- Hattie, J., & Timperley, H. (2007). The Power of Feedback. *Review of Educational Research*, 77(1), 81–112. https://doi.org/10.3102/003465430298487
- Wisniewski, B., Zierer, K., & Hattie, J. (2020). The Power of Feedback Revisited: A Meta-Analysis of Educational Feedback Research. *Frontiers in Psychology*, 10, 3087. https://doi.org/10.3389/fpsyg.2019.03087
- Shute, V. J. (2008). Focus on Formative Feedback. *Review of Educational Research*, 78(1), 153–189. https://doi.org/10.3102/0034654307313795
- Kluger, A. N., & DeNisi, A. (1996). The effects of feedback interventions on performance. *Psychological Bulletin*, 119(2), 254–284.
- Narciss, S. (2013). Designing and Evaluating Tutoring Feedback Strategies for Digital Learning Environments. *Digital Education Review*, 23, 7–26.
- Phung, T. et al. (2023/2024). Generating High-Precision Feedback for Programming Syntax Errors using Large Language Models. ICER/EDM.
- Dai, W., Lin, J., Jin, H., et al. (2023). Can Large Language Models Provide Feedback to Students? A Case Study on ChatGPT. Monash University.
- Meyer, J. et al. (2024). Evaluation of LLM Tools for Feedback in Concurrent Programming Tasks. *International Journal of Artificial Intelligence in Education*.
