---
title: LLM-Integrationsmuster für interaktive Lernumgebungen
type: methode
tags: [llm, ki-tutoring, interaktive-lernumgebungen, prompt-engineering, patterns, lernumgebungs-design, katalog]
related:
  - "[[ki-native-lernumgebungen]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[scaffolding]]"
  - "[[formatives-assessment]]"
  - "[[cognitive-apprenticeship]]"
  - "[[threshold-concepts]]"
  - "[[productive-failure]]"
  - "[[intrinsic-integration]]"
  - "[[engagement-theory]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[datenschutz-lernumgebungen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten, erschaffen]
sozialform: [einzelarbeit]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Vier wiederverwendbare Muster, um LLMs als didaktisches Element in interaktive
  Lernumgebungen einzubauen: Adversary Partner, Sokratischer Tutor, Rubric-Evaluator
  und Adaptive Case Generator. Jedes Muster mit didaktischer Verankerung,
  Prompt-Skelett und typischen Failure Modes.
---

# LLM-Integrationsmuster für interaktive Lernumgebungen

## Kernidee

Während [[ki-native-lernumgebungen]] die Frontier-Landschaft beschreibt und [[ki-gestuetztes-tutoring]] das Stufenmodell für CS-Unterricht, liefert dieser Artikel **konkrete Muster für das Baukastensystem einer Lernumgebung**. Jedes Muster ist eine wiederverwendbare Einheit mit klarer didaktischer Funktion, einem Prompt-Skelett und bekannten Failure Modes. Die Muster sind fachunabhängig — sie funktionieren für DSGVO genauso wie für SQL, Netzwerktechnik oder BWL.

Der Unterschied zu klassischen interaktiven Lernumgebungen: Inhalte sind nicht mehr fest einkompiliert. Ein LLM generiert oder bewertet zur Laufzeit — und öffnet damit die [[blooms-taxonomie]]-Stufen "bewerten" und "erschaffen", die in fixen Quiz-Systemen strukturell unerreichbar bleiben.

## Beschreibung

### Muster 1: Adversary Partner — LLM als Gegenposition

Das LLM verkörpert einen kritischen Stakeholder (Kunde, Chef, DSGVO-Skeptiker, Code-Reviewer) und *widerspricht* aktiv der Position des Lernenden. Der Lernende muss seine Antwort verteidigen und nachschärfen.

**Didaktische Funktion:** Articulation-Pflicht (vgl. Herringtons 9 Elemente in [[lernsituationen-gestalten]] und [[cognitive-apprenticeship]]). Implizites Wissen wird explizit verbalisiert. Statt nur Faktenabfrage wird *Begründungskompetenz* trainiert — was in fixen Multiple-Choice-Umgebungen strukturell nicht möglich ist.

**Prompt-Skelett:**
```
Du bist {ROLLE — z.B. ein pragmatischer Mittelstandschef}, der {HALTUNG — z.B. DSGVO als lästige Bürokratie sieht}.
Der Lernende hat soeben argumentiert: "{USER_ANTWORT}"
Kontext der Aufgabe: {SZENARIO}
Korrekte Fachposition (nicht offenlegen): {GROUND_TRUTH}

Deine Aufgabe:
1. Antworte in Rolle, maximal 3 Sätze.
2. Stelle mindestens einen plausiblen Gegeneinwand, den jemand in dieser Rolle wirklich bringen würde.
3. Bringe die Fachposition NICHT selbst vor — der Lernende soll sie verteidigen.
4. Wenn der Lernende nach 3 Runden die Kernbegründung nicht gebracht hat, gib einen Hinweis.
```

**Failure Modes:** LLM gibt die Antwort vorweg. LLM wird zu höflich/zustimmend. LLM erfindet Gegenargumente, die fachlich falsch sind. **Mitigation:** Ground Truth explizit in den System-Prompt, Temperature niedrig, Rundenlimit einbauen.

### Muster 2: Sokratischer Tutor — Misconception-Buster

Das LLM nimmt die Rolle eines Sokratischen Fragers ein. Der Lernende startet mit einer Hypothese oder einem Fehlkonzept; das LLM stellt so lange Rückfragen, bis der Lernende die Inkonsistenz selbst erkennt.

**Didaktische Funktion:** Direkt auf [[threshold-concepts]] zugeschnitten. Adressiert produktives Scheitern (vgl. [[productive-failure]]) auf Konzept-Ebene statt auf Aufgaben-Ebene. Der Lernende wird nicht korrigiert, sondern korrigiert sich selbst — was empirisch nachhaltiger wirkt als direkte Instruktion.

**Prompt-Skelett:**
```
Du bist ein sokratischer Tutor. Der Lernende hat diese Annahme geäußert: "{USER_HYPOTHESE}"
Das verbreitete Fehlkonzept dahinter: {MISCONCEPTION_NAME}
Der korrekte Kern: {CORRECT_CORE}

Regeln:
1. Niemals direkt korrigieren oder die Antwort geben.
2. Stelle eine einzige Frage, die einen konkreten Gegenfall aufspannt.
3. Falls der Lernende einknickt, würdige die Erkenntnis in einem Satz.
4. Maximal 5 Fragen insgesamt — danach Zusammenfassung anbieten.
```

**Failure Modes:** LLM verfällt in Erklärmodus. LLM stellt zu abstrakte Fragen ohne Fallbezug. **Mitigation:** "Frage stellen, nicht erklären" explizit als Constraint. Rundenzähler im State.

### Muster 3: Rubric-Evaluator — Freitext-Bewertung mit Kriterien

Der Lernende formuliert eine freie Antwort (Erklärung, Datenschutzerklärung, SQL-Query, Code-Kommentar). Das LLM bewertet nach einem vordefinierten Rubric und gibt kriterienbasiertes Feedback.

**Didaktische Funktion:** Öffnet Bloom-Stufen "bewerten" und "erschaffen". Transformiert [[formatives-assessment]] von "klickbarer Auswahl" zu "produktiver Leistung". Ermöglicht Aufgaben, die in einer fix-codierten Umgebung unmöglich sind — weil der Lösungsraum offen ist.

**Prompt-Skelett:**
```
Du bewertest die Antwort eines Lernenden nach folgendem Rubric.
Aufgabe: {AUFGABE}
Musterlösung (nicht zeigen): {MUSTER}
Rubric:
- Kriterium A ({GEWICHT}): {BESCHREIBUNG}
- Kriterium B ({GEWICHT}): {BESCHREIBUNG}
- Kriterium C ({GEWICHT}): {BESCHREIBUNG}

Lernendenantwort: "{USER_ANTWORT}"

Gib zurück als JSON:
{
  "kriterien": [{"name": "...", "punkte": 0-3, "begründung": "...", "konkreter_verbesserungshinweis": "..."}],
  "gesamtstärke": "...",
  "nächster_schritt": "..."
}
```

**Failure Modes:** LLM ist inflationär ("alles gut"), inkonsistent zwischen Durchläufen, oder pflückt irrelevante Details auseinander. **Mitigation:** Rubric eng fassen, Punkteskala grob (0-3, nicht 0-100), immer einen "nächster Schritt" erzwingen, JSON-Schema validieren.

### Muster 4: Adaptive Case Generator — Szenarien on-the-fly

Statt fixer Szenariopools erzeugt das LLM neue Cases, kalibriert auf die bisherigen Schwächen des Lernenden (aus dem Lernstand-Store).

**Didaktische Funktion:** Löst das Endlichkeits-Problem klassischer Lernumgebungen. Bedient die Zone der nächsten Entwicklung (vgl. [[scaffolding]]) und hält die Challenge-Skill-Balance. Macht Retrieval Practice (vgl. [[retrieval-practice]]) varianzreich statt repetitiv.

**Prompt-Skelett:**
```
Generiere ein neues Fallszenario im Domänenkontext {DOMAIN}.
Zielkonzept: {KONZEPT}
Schwierigkeit: {EASY|MEDIUM|HARD}
Bereits gesehene Cases (Titel): {SEEN_CASES}
Aktueller Schwachpunkt des Lernenden: {WEAK_SUBSKILL}

Anforderungen:
1. Situation in 2-3 Sätzen, alltagsnah, konkrete Personen/Firmen.
2. 3-4 Entscheidungsoptionen, darunter mindestens eine "debatable" (fachlich vertretbar, aber suboptimal).
3. Ground-Truth-Begründung pro Option (für spätere Auswertung).
4. Keine Wiederholung bestehender Cases.

Gib als JSON im Schema {CASE_SCHEMA} zurück.
```

**Failure Modes:** LLM produziert trotz Constraints Wiederholungen. Schwierigkeitsgrad unzuverlässig. Debatable-Option fehlt oder ist offensichtlich falsch. **Mitigation:** Embedding-basierte Deduplizierung gegen `SEEN_CASES`. Difficulty-Kalibrierung via Few-Shot-Beispiele. Post-Check: Prüft ein separater LLM-Call, ob wirklich eine debatable Option enthalten ist.

## Durchführung

Muster auswählen nach didaktischem Ziel:

| Lernziel | Passendes Muster |
|---|---|
| Faktenwissen prüfen | *Kein LLM* — klassisches Quiz reicht |
| Begründungskompetenz aufbauen | Adversary Partner |
| Fehlkonzepte auflösen | Sokratischer Tutor |
| Produktive Leistung bewerten ("erschaffen") | Rubric-Evaluator |
| Unbegrenzte Übungsvarianz | Adaptive Case Generator |

Muster lassen sich **kombinieren**: z.B. Case Generator erzeugt Szenario → User entscheidet → Adversary Partner widerspricht → Rubric-Evaluator bewertet die finale Begründung.

## Voraussetzungen

- LLM-Zugang mit stabiler API (Temperature-Kontrolle, JSON-Mode empfohlen)
- State-Management in der Lernumgebung (Rundenzähler, Lernerprofil, gesehene Cases)
- Ground-Truth-Daten oder Rubrics pro Konzept — das bleibt die **Kernarbeit der Lehrkraft**
- Failure-Mode-Monitoring: Stichprobenartige manuelle Review der LLM-Ausgaben in der Entwicklungsphase
- Guardrails gegen Prompt Injection bei User-Eingaben (besonders bei Muster 1 und 2)

## Varianten

- **Stakeholder-Simulator:** Adversary Partner mit mehreren, abwechselnden Rollen (DSB, Dev, Kunde, Prüfer) — pro Szenario eine andere Perspektive.
- **Reflexions-Coach:** Sokratischer Tutor auf Metaebene — fragt nach Lernstrategien und Selbstwahrnehmung statt nach Fachkonzepten (siehe [[selbstgesteuertes-lernen]], [[lerntagebuch]]).
- **Peer-LLM-Gegner:** Zwei Lernende argumentieren, LLM moderiert und fasst zusammen — verbindet mit [[peer-instruction]].
- **Prüfungs-Simulator:** Adversary + Rubric in Kombination — simuliert IHK-Fachgespräch mit kriterienbasiertem Feedback.

## Zeitbedarf

Implementierung pro Muster: 4-16 h (Prompt-Iteration ist der Hauptaufwand, nicht der Code). Rubric-Erstellung für ein Fachthema: 2-4 h. Erste Fassung eines Musters kann in wenigen Stunden prototypisiert werden; Qualitätssicherung und Failure-Mode-Testing dauert länger als die eigentliche Integration.

## Bezug zur IT-Ausbildung

Die Muster sind fachunabhängig, aber die Mehrwertkurve ist in der IT-Ausbildung besonders steil:

- **LF4 (Schutzbedarf/DSGVO):** Adversary Partner für DSGVO-Begründungen, Case Generator für Compliance-Szenarien
- **LF5 (Datenbanken):** Rubric-Evaluator für SQL-Queries mit Effizienz-/Korrektheit-/Stil-Rubric
- **LF6 (Serviceanfragen):** Adversary Partner als schwieriger Kunde im Ticket-System
- **LF10-12 (Projekte):** Prüfungs-Simulator als Vorbereitung auf Fachgespräch
- **Querschnitt:** Sokratischer Tutor für Threshold Concepts (Rekursion, Referenzen, Nebenläufigkeit)

## Praktische Anwendung

Ein Agent, der eine Lernumgebung erweitert oder neu baut, sollte:

1. **Ziel-Bloom-Stufe prüfen:** Unter "anwenden" reicht klassisches Quiz — LLM nur ab "analysieren" einsetzen, sonst ist es Overkill.
2. **Passendes Muster wählen** aus der Tabelle oben.
3. **Prompt-Skelett übernehmen** und Platzhalter mit Fachdaten füllen.
4. **Failure Modes explizit testen**, bevor das Muster live geht — mit 10-20 handgeschriebenen Edge Cases.
5. **Ground Truth versionieren** — Rubrics und Musterlösungen sind die eigentliche didaktische Arbeit und müssen wartbar bleiben.
6. **Kombination statt Isolation:** Die stärkste Wirkung entsteht, wenn mehrere Muster zusammenarbeiten (Case Generator → Adversary → Rubric).

Der Kern-Shift: Die Lehrkraft schreibt nicht mehr *Inhalte*, sondern *Beurteilungskriterien und Gegenpositionen*. Das ist weniger Arbeit pro Case, aber höhere didaktische Dichte pro Aufwandseinheit.

## Verwandte Konzepte

- [[ki-native-lernumgebungen]] — Frontier-Theorielandschaft, in die diese Muster fallen
- [[ki-gestuetztes-tutoring]] — Stufenmodell, in das die Muster einzubetten sind
- [[interaktive-lernumgebungen]] — Gestaltungsprinzipien, die durch LLM-Muster erweitert werden
- [[scaffolding]] — Adversary und Sokratischer Tutor als dynamisches Scaffolding
- [[formatives-assessment]] — Rubric-Evaluator skaliert formatives Feedback auf offene Aufgaben
- [[cognitive-apprenticeship]] — Articulation und Modeling werden durch Adversary Partner erzwungen
- [[threshold-concepts]] — Sokratischer Tutor als gezielte Intervention
- [[productive-failure]] — Adversary Partner provoziert kontrolliertes Scheitern
- [[intrinsic-integration]] — LLM-Muster müssen die Lernmechanik verkörpern, nicht dekorieren

## Quellen

- Liffiton, M. et al. (2023). CodeHelp: Using Large Language Models with Guardrails for Scalable Support in Programming Classes. Proceedings of Koli Calling 2023.
- Denny, P. et al. (2024). Computing Education in the Era of Generative AI. Communications of the ACM, 67(2), 56-67.
- Sarsa, S. et al. (2022). Automatic Generation of Programming Exercises and Code Explanations Using Large Language Models. Proceedings of ACE 2022.
- Kazemitabaar, M. et al. (2024). CodeAid: Evaluating a Classroom Deployment of an LLM-based Programming Assistant. Proceedings of CHI 2024.
- Mollick, E. & Mollick, L. (2023). Assigning AI: Seven Approaches for Students, with Prompts. Wharton Working Paper.
