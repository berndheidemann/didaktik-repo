---
title: Hint-Engineering für LLM-Tutoring
type: methode
tags: [llm, ki-tutoring, hints, scaffolding, prompt-engineering, programmieren, guardrails, help-seeking]
related:
  - "[[ki-gestuetztes-tutoring]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[scaffolding]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[self-explanation]]"
  - "[[worked-examples]]"
  - "[[subgoal-labeling]]"
  - "[[debugging-als-kompetenz]]"
  - "[[metakognition]]"
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[rag-tutoring-systeme]]"
  - "[[primm-methode]]"
  - "[[productive-failure]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, erschaffen]
sozialform: [einzelarbeit]
created: 2026-04-30
updated: 2026-04-30
summary: >
  Operationalisierung des "Hints statt Lösungen"-Prinzips als gestaffelte
  Hint-Hierarchie für LLM-Tutoren (Aktivierung → Orientierung → Strategie →
  Subgoal-Pseudocode → Code-Skelett → Bottom-Out mit Pflicht-Reflexion).
  Adaptiert die 4-Stufen-Hierarchie der Cognitive Tutors (Aleven, Koedinger)
  auf LLM-Tutoring und schließt die Lücke zwischen Bastani-Evidenz
  ("ungeschützter LLM-Zugriff -17%") und konkreter System-Prompt-Konstruktion.
---

# Hint-Engineering für LLM-Tutoring

## Kernidee

Bastanis RCT (PNAS 2025) ist der einzige bekannte Kausalbeweis, dass ungeschützter LLM-Zugriff im Lernkontext aktiv schaden kann (−17 % Klausurleistung). Die Schadensvermeidung lag an genau einem Mechanismus: **Hints statt Lösungen.** Die Direktive "gib keine Lösung" allein reicht aber nicht — LLMs kollabieren ohne weitere Struktur entweder in Lösungs-Spoiler oder unbrauchbare Allgemeinplätze.

**Hint-Engineering** operationalisiert das Prinzip als **gestaffelte Hierarchie**: Der Tutor antwortet zunächst auf höchster Abstraktionsebene und eskaliert nur auf konkretere Stufen, wenn die Lernende explizit nachfragt oder festfährt — Vollständige Lösung erst als ausdrücklicher letzter Ausweg ("Bottom-Out") mit Pflicht-Reflexion. Das Konzept stammt aus den Cognitive Tutors (Aleven & Koedinger, 2000–2016) und wird hier auf LLM-Tutoren übertragen, wo die Hierarchie zur **Prompt-Engineering-Aufgabe** wird statt zur statischen Tutor-Datenbank.

## Beschreibung

### Warum reicht "Hints statt Lösungen" nicht?

Drei strukturelle LLM-Probleme, die naive Prompts nicht lösen:

1. **Lösungs-Drift.** Auch mit Direktive geben LLMs nach 2–3 User-Turns oft die Lösung — User haken höflich nach, Sycophancy verstärkt das. Sharma et al. (Anthropic 2023) zeigen, dass alle fünf untersuchten State-of-the-Art-Assistenten konsistent Sycophancy zeigen; SycEval (2025) und ELEPHANT (2025) bestätigen das mit neueren Modellen — LLMs bevorzugen User-bestätigende Antworten auch dann, wenn sie sachlich falsch sind.
2. **Hint-Inflation.** Naive Hint-Prompts produzieren entweder zu vage Hilfen ("schau die Schleife an") oder direkt Pseudocode-Lösungen — die didaktisch produktive **Mittelschicht** wird übersprungen. Xiao et al. (CHI 2024) belegen das in einer Think-Aloud-Studie mit 12 Novizen: hochstufige Natural-Language-Hints sind oft "helpless or misleading".
3. **Help Abuse** (Aleven & Koedinger 2000): Lernende klicken/fragen sich durch alle Stufen, bis der Bottom-Out die Lösung enthält — ohne die früheren Stufen zu verarbeiten. Das negiert den Lerneffekt der Hierarchie.

### Klassische Hint-Hierarchie (Cognitive Tutor)

Aleven, Koedinger und Kollegen haben über 20 Jahre eine vierstufige Hint-Hierarchie entwickelt: **Orientation** (wo schauen?) → **Instrumental** (welche Strategie?) → **Worked-Example** (annotiertes Beispiel) → **Bottom-Out** (die Antwort als annotiertes Beispiel zur Reflexion). Stufen werden **on-demand** angefordert — wer Hilfe holt, muss metakognitiv erkennen, dass er nicht weiterkommt (Roll et al. 2011).

### LLM-Adaption: 5 Stufen mit Code-Spezifik

**Wichtige Einordnung:** Bastanis GPT-Tutor selbst nutzte keine 5-Stufen-Hierarchie — der System-Prompt enthielt Musterlösungen, Lehrer-Input zu typischen Fehlern und die Direktive "Hints statt Lösungen". Das war ausreichend für die Schadensvermeidung, lieferte aber keine strukturierte Eskalationslogik. Die hier vorgeschlagene 5-Stufen-Hierarchie ist eine **Synthese**: Bastani liefert den Wirksamkeitsbeleg für "Hints statt Lösungen", die Stufung adaptiert die klassische Cognitive-Tutor-Hierarchie auf LLM-Generation. Empirisch ist diese spezifische Synthese noch nicht in einer RCT validiert — sie ist eine konsequente, theoretisch fundierte Ableitung, kein evidenzbasiertes Pflichtmuster.

In Cognitive Tutors waren Hints handgeschrieben pro Aufgabe — das skaliert nicht. LLMs können die Stufen **prompt-getrieben generieren**, was Code-spezifische Zwischenstufen erlaubt:

| Stufe | Funktion | Beispiel (SQL: "JOIN gibt 0 Zeilen") |
|---|---|---|
| **0 Aktivierung** | Was hat die Lernende selbst probiert, was ist die konkrete Frage? | "Welche Tabellen verbindest du? Hast du das Ergebnis ohne JOIN angeschaut?" |
| **1 Orientierung** | Auf relevante Stelle zeigen, kein "Was tun" | "Schau dir die ON-Bedingung an. Was steht da konkret?" |
| **2 Strategie** | Konzeptioneller Ansatz, ohne Code | "Bei JOINs vergleichst du Spalten beider Tabellen. Sind Datentypen und Werte tatsächlich vergleichbar?" |
| **3 Subgoal-Pseudocode** | Strukturierte Schritte mit Subgoal-Labels ([[subgoal-labeling]]) | "1. Linke Tabelle isoliert prüfen. 2. Rechte isoliert. 3. Stichprobe der ON-Spalten manuell vergleichen. 4. Falls inkompatibel: woher kommen die Werte?" |
| **4 Code-Skelett** | Code mit Lücke an nicht-trivialer Stelle | `SELECT … FROM a LEFT JOIN b ON a.??? = b.??? — fülle nach Stufe 3 aus` |
| **5 Bottom-Out** | Vollständige Lösung **plus** Erklärung **plus** verpflichtende Self-Explanation | Code mit Anmerkungen + "Erkläre in 2 Sätzen, warum vorher 0 Zeilen kamen. Erst danach geht's weiter." |

**Stufe 0 ist die wichtigste Help-Abuse-Prävention:** Bevor das LLM überhaupt einen Hint generiert, muss die Lernende formulieren, was sie probiert hat. Das wirkt als doppelter Filter — viele Probleme lösen sich beim Formulieren (Rubber-Duck-Effekt), und der Tutor erhält Kontext für die richtige Stufenwahl.

**Stufe 3** ist die Adaption von **CodeAid** (Kazemitabaar et al., CHI 2024, n=700, 12 Wochen): Pseudocode mit hierarchischen Subgoal-Labels statt Code als bevorzugte Hint-Form — empirisch fördert das Engagement ohne Lösung zu spoilern.

**Stufe 5** ist der einzige Kontext, in dem die Lösung erlaubt ist — und an Pflicht-Self-Explanation gebunden. Self-Explanation ist mit g≈0,55 über 64 Studien (Bisra et al. 2018) eine der wirksamsten generativen Lernstrategien und das einzige robust belegte Gegenmittel gegen Cognitive Offloading nach KI-Output ([[self-explanation]]).

### Eskalations-Logik

- Erste Tutor-Antwort ist immer Stufe 0 oder 1, nie höher.
- Eskalation um maximal **eine** Stufe pro User-Turn.
- Trigger: explizite Nachfrage ("verstehe es immer noch nicht") oder Stuck-Detection (3+ Versuche ohne Fortschritt).
- Kein Stufen-Sprung, auch wenn das LLM die Lösung "schon weiß" — als harte Constraint im System-Prompt.

## Prompt-Skelett

```
Du bist ein Programmier-Tutor. Du gibst NIEMALS die vollständige Lösung,
außer der Lernende ist ausdrücklich auf Stufe 5 angekommen.

Hint-Stufen (du wählst exakt EINE pro Antwort):
0. AKTIVIERUNG — frag, was sie versucht hat und woran genau es scheitert.
1. ORIENTIERUNG — zeig auf die relevante Codestelle, ohne Lösungsansatz.
2. STRATEGIE — beschreib den passenden konzeptionellen Ansatz, ohne Code.
3. PSEUDOCODE — strukturierte Schritte mit Subgoal-Labels, kein Code.
4. CODE-SKELETT — Code mit Lücken an der nicht-trivialen Stelle.
5. BOTTOM-OUT — vollständige Lösung MIT Pflicht-Reflexionsfrage danach.

Eskalationsregeln (HART):
- Erste Antwort ist Stufe 0 oder 1, nie höher.
- Maximal EINE Stufe weiter pro User-Turn, kein Sprung.
- Code-Blöcke verboten in Stufen 0-3 (auch keine Inline-Schnipsel).
- Stufe 5 nur mit konkreter Reflexionsfrage, die VOR dem nächsten Schritt
  beantwortet werden muss.

Output (JSON):
{
  "hint_level": 0-5,
  "answer": "die Hint-Antwort",
  "next_step_for_learner": "konkrete Mini-Aufgabe vor der nächsten Frage"
}

Aufgabe: {AUFGABE}
Musterlösung (NICHT zeigen außer Stufe 5): {LOESUNG}
Lerner-Versuch: {USER_VERSUCH}
Hint-Historie: {HINT_HISTORY}
```

Drei harte Design-Entscheidungen: **JSON-Output** macht `hint_level` maschinell prüfbar (Verletzungen detektierbar, Re-Prompt möglich). **`next_step_for_learner`** als Pflichtfeld zwingt zu Aktivität statt nur Information — Bottom-Out-Abuse-Prävention auf jeder Stufe. **Hint-History** im Kontext jedes Turns verhindert Stufen-Reset durch Browser-Refresh.

**Pragmatische Alternative:** CodeHelp (Liffiton 2023, Open Source als Teil von **Gen-Ed**) nutzt eine zweite Eingangsschleife — wenn die LLM-Antwort einen Code-Block enthält, ruft ein zweiter Prompt das LLM auf, den Code zu entfernen und die Erklärung zu rewriten. Robust gegen Schema-Drift kleinerer Modelle.

## Anti-Pattern und Failure Modes

| Failure Mode | Symptom | Mitigation |
|---|---|---|
| **Lösungs-Spoiler** | Code-Block in Stufe 1-3 | JSON-Schema-Validierung; Code-Block-Detector; CodeHelp-Re-Prompt |
| **Hint-Inflation** | Zu vage ("schau Code an") oder zu konkret (Pseudocode auf Stufe 1) | Stufen-Definitionen mit Few-Shot-Beispielen im Prompt |
| **Bottom-Out Abuse** | Lernende fordert Stufen 1→5 ohne ernsthaften Versuch | Pflicht-Versuch zwischen Stufen + `next_step_for_learner`-Aktivität |
| **Sycophancy** | LLM gibt nach bei Frust ("brauche die Lösung jetzt") | Anti-Sycophancy-Direktive (Sharma et al. 2023); Eskalations-Regel als unverhandelbar; Stress-Tests im Eval-Set, die gezielt drängen |
| **Kontext-Kollaps** | Tutor vergisst Hint-Historie nach 8+ Turns, re-startet bei Stufe 0 | Hint-History explizit re-injecten |
| **Hallucinated Hint** | Strategie-Hint nennt nicht-existente API | RAG mit kuratierter Doku ([[rag-tutoring-systeme]]) |

## Durchführung

1. **Aufgabentyp prüfen:** Hint-Engineering passt für Aufgaben mit definiertem Lösungsweg (SQL, REST-Endpoint, Algorithmus). Bei offenen Designaufgaben eher Sokratischer Tutor ([[llm-integrationsmuster-lernumgebungen]] Muster 2).
2. **Musterlösung bereitstellen** — Anker im Kontext, nicht zur Anzeige. Ohne sie halluziniert das LLM Stufe 5.
3. **System-Prompt aus Skelett adaptieren**, mit domänenspezifischen Few-Shot-Beispielen pro Stufe.
4. **Eval-Set mit 10–20 echten Stuck-Szenarien** aus früheren Klassen, manuell bewertet auf richtige Stufenwahl.
5. **Eskalations-Logging:** `hint_level` pro Antwort + Lerner-Verhalten protokollieren — nach 1–2 Wochen analysieren.
6. **Klassenkontrakt** ([[ki-nutzungsregeln-unterricht]]): Lernenden vorab erklären, dass der Tutor *bewusst* nicht sofort hilft. Sonst wird er als "kaputt" wahrgenommen.

## Voraussetzungen

- LLM mit zuverlässiger strukturierter Ausgabe (GPT-4o, Claude 3.5+, lokal Llama 3.1+ mit JSON-Schema-Constrained-Decoding)
- Persistenz für Hint-History pro Aufgabe pro Lernende (sonst Reset durch Refresh)
- Musterlösungen pro Aufgabe — der nicht wegrationalisierbare Aufwand
- Optional: RAG-Backend ([[rag-tutoring-systeme]]) gegen Halluzinationen in Strategie- und Skelett-Hints

## Varianten

- **PRIMM-Anker:** Vor Stufe 0 immer eine Predict-Phase ([[primm-methode]]): "Was passiert, wenn du das ausführst?" — erzeugt Commitment, das spätere Hints relevanter macht.
- **Time-Lock auf Eskalation:** Mindestzeit zwischen Stufen (z.B. 90 Sek). Härtere Bottom-Out-Abuse-Prävention, aber Frust-Risiko.
- **Kein Bottom-Out:** Manche Aufgaben enden auf Stufe 4 — Lernende muss am nächsten Tag weiter. Sinnvoll für Threshold Concepts.

## Zeitbedarf

Erstimplementierung pro Domäne: 8–16 h Prompt-Iteration (mehr Prompt-Design als Code). Pro neuer Aufgabe: 30–60 min für Musterlösung + 2–3 Few-Shot-Beispiele. Wartung: monatliche Eval-Runde mit 10–20 echten Sessions. Im Vergleich nennen Aleven et al. (2006) für klassische Cognitive Tutors die kanonische Schätzung von **200–300 Stunden Entwicklungszeit pro Stunde Unterricht** — der Hauptaufwand lag im Authoring von Hints, Misconception-Modellen und Tutor-Modellen pro Aufgabe. LLM-basiertes Hint-Engineering invertiert das Verhältnis: viel einmaliger Prompt-Setup-Aufwand, dann fast lineare Skalierung mit der Zahl der Aufgaben.

## Bezug zur IT-Ausbildung

Hint-Engineering ist die direkte Antwort auf die zentrale Frage: **Wie nutze ich KI im Unterricht, ohne Bastanis −17 % zu kassieren?**

- **LF5 (OOP/SOLID + DB-Erweiterung):** Refactoring-Tutor — Stufe 0 "Welche Verantwortungen siehst du in der Klasse?", Stufe 4 Skelett der refaktorierten Struktur, Stufe 5 nur mit Pflicht-Reflexion zur SOLID-Verletzung.
- **LF8 (DB + REST mit Spring Boot):** SQL-Tutor wie im Beispiel oben. REST-Tutor für Statuscode-Wahl: Stufe 1 "Was bedeutet 201 vs. 200?", Stufe 3 Pseudocode für Validierungslogik.
- **LF11 (Prüfungsvorbereitung):** Hint-Tutor für AP2-SQL-Drill. Bottom-Out-Sperre erst nach 3 Versuchen — entspricht Prüfungs-Realität.
- **LF12 (Großprojekt):** Hint-Tutor als **optionale** Sparring-Instanz neben Copilot, mit explizitem Schalter — bringt Phase 3 aus [[ki-gestuetztes-tutoring]] in die Praxis (KI als Werkzeug, didaktisches Sicherheitsnetz verfügbar).

## Praktische Anwendung

Ein Agent, der eine Lernumgebung um einen LLM-Tutor erweitert:

1. **Nicht naiv "Du bist ein Tutor"-Prompts schreiben.** Bastanis GPT Base war genau das — und hat geschadet. Der Hierarchie-Aufwand ist die Schadensvermeidung.
2. **JSON-Output mit `hint_level` als Pflicht-Feld** einführen — die einzige zuverlässige Stelle, an der die Eskalations-Logik validierbar wird.
3. **Hint-History persistieren** und in jeden System-Prompt re-injecten.
4. **Stufe 5 nie ohne Self-Explanation-Prompt** — der einzige nachgewiesene Mechanismus gegen den Krücken-Effekt am Ausgabepunkt.
5. **Lehrkraft-Dashboard:** Wer landet häufig auf Stufe 5? Wer bleibt auf 1-2 und kommt voran? Diese Daten sind diagnostischer als Aufgaben-Bewertungen — sie zeigen Help-Seeking-Muster.
6. **Diskriminator gegen Sokratischen Tutor** ([[llm-integrationsmuster-lernumgebungen]] Muster 2): Sokratisch ist die Wahl bei **falscher Theorie** (Misconception); Hint-Engineering bei **konkretem Aufgaben-Stuck**. Beides kombinieren — sokratisch in Stufe 0/1, dann Hint-Eskalation — funktioniert für Aufgaben mit Misconception-Komponente.

Der Kern-Shift: Die Lehrkraft schreibt nicht mehr Hints, sondern definiert die **Eskalations-Hygiene** — weniger Pro-Aufgaben-Arbeit als ein klassischer Cognitive Tutor, aber mehr Disziplin im Prompt-Engineering.

## Verwandte Konzepte

- [[ki-tutoring-evidenzlage]] — Bastani-RCT als empirisches Fundament; Hint-Engineering ist die didaktische Konsequenz aus −17 %
- [[ki-gestuetztes-tutoring]] — Stufenmodell für Ausbildungsjahre; Hint-Engineering operationalisiert Phase 2 ("KI als Scaffold") konkret
- [[llm-integrationsmuster-lernumgebungen]] — Sokratischer Tutor (Muster 2) ist die Misconception-Variante; Hint-Engineering ist die Stuck-Variante
- [[prompt-engineering-didaktisch]] — generelle Prompt-Patterns; Hint-Engineering ist eines davon vollständig ausgearbeitet
- [[scaffolding]] — theoretischer Rahmen (Vygotsky); Hint-Engineering ist die LLM-spezifische Implementierung mit Fading
- [[deskilling-ki-codegenerierung]] — Coppock 2025 zeigt das Problem; Hint-Engineering ist eine konkrete Gegenstrategie
- [[self-explanation]] — Pflicht-Reflexion in Stufe 5 als Bottom-Out-Schutz
- [[subgoal-labeling]] — Margulieux: Subgoal-Labels in Stufe 3 (Pseudocode) operationalisiert
- [[worked-examples]] — Bottom-Out-Hint ist die dynamische Variante eines Worked Examples
- [[primm-methode]] — Predict-Phase als Hint-Stufe-0-Variante: vor Hilfe immer Vorhersage
- [[productive-failure]] — Reibung in den Stufen 0–3 ist gewollt, nicht Bug
- [[metakognition]] — Help-Seeking als metakognitive Kompetenz (Roll et al.); Hint-Hierarchie trainiert sie
- [[ki-nutzungsregeln-unterricht]] — Klassenkontrakt erklärt, warum der Tutor "absichtlich" nicht sofort hilft
- [[rag-tutoring-systeme]] — RAG als Halluzinations-Schutz für domänenspezifische Hints

## Quellen

- Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö., & Mariman, R. (2025). Generative AI Without Guardrails Can Harm Learning: Evidence from High School Mathematics. *PNAS*. DOI: 10.1073/pnas.2422633122
- Aleven, V., Roll, I., McLaren, B. M., & Koedinger, K. R. (2016). Help Helps, But Only So Much: Research on Help Seeking with Intelligent Tutoring Systems. *International Journal of Artificial Intelligence in Education*, 26(1), 205–223. DOI: 10.1007/s40593-015-0089-1
- Aleven, V., & Koedinger, K. R. (2000). Limitations of Student Control: Do Students Know When They Need Help? In G. Gauthier, C. Frasson, & K. VanLehn (Eds.), *Proceedings of the 5th International Conference on Intelligent Tutoring Systems (ITS 2000)*, pp. 292–303. (Best Paper Award)
- Aleven, V., McLaren, B. M., Sewall, J., & Koedinger, K. R. (2006). The Cognitive Tutor Authoring Tools (CTAT): Preliminary Evaluation of Efficiency Gains. *Proceedings of ITS 2006*. — kanonische Schätzung 200–300 h Entwicklung pro 1 h Unterricht
- Roll, I., Aleven, V., McLaren, B. M., & Koedinger, K. R. (2011). Improving students' help-seeking skills using metacognitive feedback in an intelligent tutoring system. *Learning and Instruction*, 21(2), 267–280.
- Liffiton, M., Sheese, B. E., Savelka, J., & Denny, P. (2023). CodeHelp: Using Large Language Models with Guardrails for Scalable Support in Programming Classes. *Proceedings of Koli Calling 2023*. arXiv:2308.06921
- Kazemitabaar, M., Ye, R., Wang, X., Henley, A. Z., Denny, P., Craig, M., & Grossman, T. (2024). CodeAid: Evaluating a Classroom Deployment of an LLM-based Programming Assistant that Balances Student and Educator Needs. *Proceedings of CHI 2024*. arXiv:2401.11314 / DOI: 10.1145/3613904.3642773
- Xiao, R., Hou, X., & Stamper, J. (2024). Exploring How Multiple Levels of GPT-Generated Programming Hints Support or Disappoint Novices. *Extended Abstracts of CHI 2024*. arXiv:2404.02213
- Margulieux, L. E., Morrison, B. B., & Decker, A. (2020). Reducing withdrawal and failure rates in introductory programming with subgoal labeled worked examples. *International Journal of STEM Education*, 7(19).
- Bisra, K., Liu, Q., Nesbit, J. C., Salimi, F., & Winne, P. H. (2018). Inducing Self-Explanation: A Meta-Analysis. *Educational Psychology Review*, 30, 703–725. (64 Studien, g = 0.55)
- Sharma, M., Tong, M., Korbak, T., et al. (2023). Towards Understanding Sycophancy in Language Models. *arXiv:2310.13548* (Anthropic).
- Fanous, A., Goldberg, J., Agarwal, A. A., et al. (2025). SycEval: Evaluating LLM Sycophancy. *arXiv:2502.08177*.
- Cheng, M., Yu, S., Lee, C., et al. (2025). ELEPHANT: Measuring and Understanding Social Sycophancy in LLMs. *arXiv:2505.13995*.
