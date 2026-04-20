---
title: "LLM-as-Grader — Automatisierte Bewertung von Freitext und Code"
type: evidenz
tags: [ki, grading, assessment, rubric, eipe, freitext, llm]
related:
  - "[[testitem-konstruktion-digital]]"
  - "[[formatives-assessment]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[evaluation-lernumgebungen]]"
  - "[[feedback-lernumgebungen]]"
  - "[[rag-tutoring-systeme]]"
  - "[[rubric-design]]"
  - "[[explain-in-plain-english]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
evidenzgrad: meta-analyse
created: 2026-04-18
updated: 2026-04-18
summary: >
  Systematic Reviews (Wu et al. 2025 MDPI, Jiang et al. L@S 2024) zeigen für LLM-Grading von Short-Answer-Aufgaben Spitzenwerte QWK=0.99 mit sauberer Rubric, aber starke Spreizung bis r=0.38 ohne. GPT-4 erreicht untere Hälfte des menschlichen Inter-Rater-Korridors (0.70–0.85). Reasoning-First + Anker-Beispiele + analytische Rubric sind Pflicht. "Explain in Plain English" (Denny 2024) ist ideale Assessment-Form, weil LLMs natürliche Sprache und optionale Code-Generation-Based-Grading kombinieren können. Governance-Pattern: "LLM-first, Human-final" — formativ ok, summativ nur mit Human-Review.
---

# LLM-as-Grader — Automatisierte Bewertung von Freitext und Code

## Kernidee

Large Language Models können Short-Answer- und Code-Antworten bewerten — aber die Qualität ist ein direktes Ergebnis der Rubric-Engineering-Disziplin. Spitzenwerte erreichen menschliche Inter-Rater-Reliabilität (QWK ≈ 0.8–0.99), Default-Prompts ohne Rubric liegen bei QWK ≈ 0.4–0.6. Für die Berufsschule ist LLM-Grading ein realistisches **formatives** Werkzeug und eine Ergänzung zu **summativen** Prozessen mit Human-Final-Sign-Off, nicht deren Ersatz.

## Studiendesign

Aggregation aus einem systematischen Review und mehreren Primärstudien 2023–2025:

- **Wu et al. (2025), Systematic Review**, *MDPI Applied Sciences* 15(10) — 49 peer-reviewed Studien 2018–2024 zu LLM-Powered Automated Assessment
- **Jiang et al. (2024)**, *L@S 2024* — GPT-4 Short-Answer Scoring auf ASAP-SAS, 10 Prompts
- **Cohn et al. (2024)**, Science-Formative, Chain-of-Thought-Effekt
- **Zhang et al. GradeOpt (2024/2025)**, arXiv 2410.02165 + EDM 2025 — Multi-Agent
- **Phung et al. (2023/2024)**, EDM/LAK — GPT-4 Code-Feedback
- **Denny et al. (2024)**, ITiCSE + L@S — Explain-in-Plain-English (EiPE)
- **Smith IV & Zilles (2024)**, SIGCSE — Code Generation Based Grading (CGBG)

## Stichprobe

Studiendesigns variieren: Short-Answer-Grading in Science/Humanities (Oberstufe, College), CS-Education (Einführungskurse Python/Java), Essay-Scoring in Sprachen. Für die deutschsprachige Berufsausbildung gibt es bislang keine direkte Studie; Übertragung per Analogie zu englischsprachigen CS-Kursen.

## Kernergebnisse

### Short-Answer-Grading

Wu et al. (2025) berichten stark gespreizte Ergebnisbandbreite:

| Bedingung | QWK / Korrelation |
|---|---|
| GPT-4 mit ausgereifter Rubric + Anker | 0.85–0.99 |
| GPT-4 mit einfachem Prompt | 0.60–0.75 |
| Schwache Items / ohne Rubric | 0.38–0.55 |
| Human-Human Inter-Rater (Benchmark) | 0.70–0.85 (typisch) |

**Jiang et al. (L@S 2024)** auf dem ASAP-SAS-Dataset zeigen die Prompt-Effekte isoliert:
- Base-Prompt: Accuracy = 0.661, QWK = 0.610
- + Rubric-Anker-Beispiele: QWK + 0.067 → ~0.677
- **Reasoning-First** (Rationale zuerst, Score als zweiter Call) > Score-First

**Cohn et al. (2024)**: Chain-of-Thought + Rubric erhöht Zero-Shot-Accuracy um **+13.4 %**, Few-Shot um +3.7 %. Balancierteres Scoring über Proficiency-Levels.

### Code-Grading

**Phung et al. (EDM 2023 / LAK 2024)**: GPT-4 nähert sich menschlichen Tutoren bei Hint-Qualität und Bug-Fixing in einigen Szenarien, bleibt aber bei konzeptuellen Fehlklassifikationen zurück — besonders bei logischen Bugs ohne Syntax-Hinweise. GPT-3.5 als Validator-Agent kann unzuverlässige Hints vorfiltern.

**"Rubric Is All You Need" (ICER 2025)**: Frage-spezifische Rubrics heben LLM-Code-Evaluation substanziell über rein testcase-basiertes Grading — erlauben Teilpunkte für korrekte Struktur bei falschem Output.

**Smith IV & Zilles (SIGCSE 2024)**: EiPE-Antworten werden als LLM-Prompt verwendet, der generierte Code gegen Testcases geprüft. Das liefert **objektives** Grading für Freitext-Code-Erklärungen (*Code Generation Based Grading*, CGBG).

### Multi-Agent-Grading

**GradeOpt (Zhang et al., arXiv 2410.02165, EDM 2025)**: Drei Agenten (Grader, Reflector, Refiner) optimieren Rubric-Guidelines selbst via Self-Reflection. Übertrifft Single-Agent-Baselines domänenübergreifend. Nachfolger **GradeHITL** integriert Human-in-the-Loop ins Rubric-Optimization-Looping. Verwandte Ansätze: **AutoSCORE** (strukturierte Komponenten-Erkennung), **LLM-Rubric** (ACL 2024, multidimensional kalibriert).

Multi-Agent reduziert **Varianz** messbar, hilft aber nicht gegen systematische Bias (längenpräferierend, Fluency-over-Facts).

## Effektstärke

Keine klassische Cohen's-d-Literatur; in Grading-Forschung dominieren **Quadratic Weighted Kappa (QWK)** und **Pearson r**. Faustwerte:

- **Human-Human Benchmark:** QWK 0.70–0.85 je nach Task
- **GPT-4 mit Rubric-Engineering:** QWK 0.75–0.90 → bewegt sich in der **unteren Hälfte** des menschlichen Korridors
- **GPT-4 ohne Rubric:** QWK 0.40–0.60 → unzureichend, auch formativ fragwürdig

Übersetzt in die didaktische Frage: Mit Engineering kann ein LLM-Grader Lehrkraft-Qualität *annähern*, aber nicht routinemäßig übertreffen. Für Übungs-Feedback meist ausreichend, für Prüfungsbewertung unter erhöhtem Human-Review-Vorbehalt.

## Limitationen

Mehrere in der aktuellen Literatur systematisch dokumentierte Fehlerquellen:

- **Halluzinierte Rechtfertigungen:** LLM vergibt plausible Begründungen für objektiv falsche Scores — wirken glaubwürdig.
- **Längen-Bias:** Längere, floridere Antworten werden systematisch bevorzugt, auch wenn Rubric dagegenspricht.
- **Oberflächen-Sanktionierung:** Stil/Fluency übergewichtet, fundamentale Defekte (Fehlkonzepte, Halbsatz-Logik-Lücken) untergewichtet.
- **Prompt-Sensitivität:** Gleiche Antwort → andere Scores bei leichter Umformulierung oder Reihenfolge-Änderung der Items.
- **Score-Drift:** GPT-4 tendenziell strenger, GPT-3.5 milder als Menschen.
- **Deutsch vs. Englisch:** Dialekt- und Sprach-Bias dokumentiert (arXiv 2411.10954, Indic-EiPE 2024). Deutsche Fachsprache mit anglizistischen Code-Begriffen ist Risiko-Zone — Kalibrierung auf deutschen Musterantworten nötig.
- **Rechtliche Grauzone (summativ):** Prüfungsrelevanz, DSGVO, Einspruchsrecht. Formative Nutzung in Übungsphasen deutlich unproblematischer.

Übertragbarkeit auf Berufsausbildung: Englischsprachige CS-Ed-Studien sind die primäre Quelle. Deutschsprachige Validierung fehlt; ein einfacher Weg ist, den eigenen Fixture-Goldstandard mit 20–30 Antworten zu bauen und daran zu kalibrieren.

## Bezug zur IT-Ausbildung

### Wo sich LLM-Grading lohnt

- **Explain-in-Plain-English (EiPE)** zu Code-Snippets in LF5/LF6 — ideal, weil Antwort natürliche Sprache ist und durch CGBG objektiv validierbar.
- **Freitext-Begründungen** zu Architektur-Entscheidungen in LF9 ("Warum hier Repository-Pattern?") — rubric-gegradet, formative Feedback-Schleife.
- **Fallbeurteilungen DSGVO** ("Welche Rechtsgrundlage passt, warum?") — analytische Rubric mit lit.-spezifischen Ankern.
- **Code-Quality-Kommentare** in LF6/LF10 — Teilpunkte für Lesbarkeit, Testabdeckung, Separation of Concerns.

### Wo es sich nicht lohnt

- **Prüfungsrelevante summative Bewertung** ohne Human-Final-Sign-Off — rechtlich und fair heikel.
- **Konzeptuelle Fehler ohne Syntax-Hinweise** (siehe Phung et al. 2024) — z.B. subtil falsche Schleifen-Invarianten, Race Conditions.
- **Stark textbasierte Essays** — Längen-Bias verfälscht systematisch.

## Praktische Anwendung

### Rubric-Engineering — 6 Kern-Regeln

1. **Analytisch > holistisch.** Getrennte Kriterien mit je 0–3 Punkten schlagen eine Gesamtnote. Beispiel: "SQL-Grammatik 0–2, Join-Logik 0–2, Ergebnis-Korrektheit 0–2, Effizienz-Begründung 0–1".
2. **Anker-Beispiele pro Score-Stufe.** Mindestens ein konkretes Beispiel, das Score 3 verdient, und eines für Score 0. Hebt QWK empirisch um 0.05–0.10.
3. **Reasoning-First / Chain-of-Thought.** Das Modell begründet zuerst, dann scored. Zwei Calls schlagen einen.
4. **0–5-Skala.** Höchstes Human-LLM-Alignment. 0–100 lädt zur Hallucinations ein, binär verliert Information.
5. **Negative Constraints.** "Ziehe Punkte ab, wenn…" wirkt stärker als rein positive Kriterien.
6. **Fehlende Kriterien werden nicht halluziniert.** Was nicht in der Rubric steht, wird nicht sanktioniert — also *jedes* relevante Kriterium explizit benennen.

### Prompt-Skelett (Rubric-gegradet, Reasoning-First)

```
System: Du bist Grader für Kurz-Antworten im Informatik-Unterricht.

RUBRIC:
Kriterium 1 (SQL-Grammatik, 0–2):
  0 = syntaktisch falsch
  1 = syntaktisch korrekt, aber ungewöhnlicher Stil
  2 = syntaktisch korrekt, idiomatisch
Kriterium 2 (...)

ABLAUF:
1. Analysiere die Antwort schrittweise. Bezug auf jedes Kriterium.
2. Begründe pro Kriterium in einem Satz, welcher Score zu welchem Beleg passt.
3. Gib am Ende: {"K1": N, "K2": N, ..., "total": N, "rationale": "..."}

Wenn du unsicher bist → Score niedriger. Keine Punkte für nicht explizit Belegtes.

EINGABE: <Schüler-Antwort>
MUSTERLÖSUNG: <Gold>
```

### Governance-Pattern "LLM-first, Human-final"

1. **Kalibrierung:** Lehrkraft grade 20–30 Antworten manuell → Gold-Set → iteriert Prompt/Rubric bis QWK(LLM, Lehrer) ≥ 0.75 auf einer Hold-Out-Teilmenge.
2. **Tier-1 LLM-Scoring** aller Antworten, **mit Rationale**.
3. **Tier-2 Human Review** auf (a) stratifizierter Zufallsstichprobe 10–15 %, (b) Low-Confidence-Cases, (c) Grenzfällen nahe Score-Übergängen.
4. **Drift-Monitoring:** Monatlich Re-Check gegen Gold-Set. LLM-Versionen ändern sich, Drift ist real.
5. **Formative Nutzung:** ok ohne Sonderaufwand.
6. **Summative Nutzung:** nur mit Human-Final-Sign-Off, nie reine LLM-Note. Schülerinnen und Schüler müssen Einspruchsweg haben.

### EiPE + CGBG als Muster-Kombination

Die stärkste LLM-Grader-Konfiguration für Code-Verständnis ist aktuell:

1. Schüler bekommt Code-Snippet, schreibt in natürlicher Sprache, was der Code tut (EiPE, Denny et al. 2024).
2. LLM-Grader erzeugt aus der Erklärung ausführbaren Code.
3. Der erzeugte Code läuft gegen Testcases.
4. Score = Testcase-Pass-Rate + Rubric-Score auf Erklärungsqualität.

Das koppelt **sprachliches Verstehen** (EiPE) mit **objektiver Validierung** (Testcases) — Halluzinationsrisiko im Grading deutlich reduziert.

### Rote Linie

Nie den Schülern einen LLM-Score als "Note" präsentieren. Immer "Einschätzung" oder "Vorab-Bewertung" nennen; immer den Einspruchsweg mitteilen; immer die Human-Final-Revision als Lehrer-Aufgabe behalten.

## Verwandte Konzepte

- [[testitem-konstruktion-digital]] — Schwester-Thema: geschlossene Items (MC/T-F) haben andere Auto-Grading-Logik; LLM-Grader ergänzt um Freitext/Code
- [[formatives-assessment]] — LLM-Grader ist primär formatives Werkzeug; Black & Wiliam-Rahmen verankert Governance
- [[llm-integrationsmuster-lernumgebungen]] — Grader ist konkretes Integrationsmuster (Evaluator-/Rubric-Rolle)
- [[prompt-engineering-didaktisch]] — Rubric-Engineering als Spezialfall: CoT, Anker, Rollenstabilität
- [[ki-tutoring-evidenzlage]] — gemeinsame Evidenz-Basis zu LLM-Zuverlässigkeit
- [[kompetenzfeststellung-programmierung]] — EiPE/CGBG als innovative Code-Kompetenz-Assessment-Form
- [[evaluation-lernumgebungen]] — Kalibrierungs- und Drift-Monitoring-Pattern aus dem allgemeinen Eval-Loop
- [[feedback-lernumgebungen]] — Score ≠ Feedback; guter Grader liefert beides
- [[rag-tutoring-systeme]] — RAG-Integration ins Grading (Rubric-Retrieval, siehe EDM 2025)
- [[self-explanation]] — EiPE ist operationalisierbare Self-Explanation

## Quellen

- Wu, Z. et al. (2025). Large Language Model-Powered Automated Assessment: A Systematic Review. *Applied Sciences*, 15(10), 5683.
- Jiang, Y. et al. (2024). Short answer scoring with GPT-4. *L@S 2024*.
- Cohn, C. et al. (2024). Applying LLMs and Chain-of-Thought for Automatic Scoring. *Computers & Education: Artificial Intelligence*.
- Zhang, S. et al. (2024/2025). GradeOpt: LLM-Powered Automatic Grading Framework. arXiv:2410.02165 / *EDM 2025*.
- Phung, T. et al. (2024). Generative AI for Programming Education: Benchmarking ChatGPT, GPT-4, and Human Tutors. *LAK 2024*.
- Denny, P. et al. (2024). Explaining Code with a Purpose. *ITiCSE 2024*. arXiv:2403.06050.
- Smith IV, D. H., & Zilles, C. (2024). Code Generation Based Grading. *SIGCSE 2024*.
- Stahl, M. et al. (2024). From Automation to Augmentation. arXiv:2401.06431.
- Murphy, L., Fitzgerald, S., et al. (2012). 'Explain in plain English' questions revisited. *SIGCSE 2012*.
- "Rubric Is All You Need" (2025). *ICER 2025*. arXiv:2503.23989.
- LLM-Rubric: Multidimensional Calibrated Evaluation (2024). *ACL 2024*.
