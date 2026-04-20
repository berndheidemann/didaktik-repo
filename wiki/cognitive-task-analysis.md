---
title: "Cognitive Task Analysis (CTA) für Programmierunterricht"
type: methode
tags: [expertenwissen, wissensextraktion, instruktionsdesign, implicit-knowledge, expert-blind-spot, ACTA]
related:
  - "[[expertise-entwicklung]]"
  - "[[worked-examples]]"
  - "[[scaffolding]]"
  - "[[lernsituationen-gestalten]]"
  - "[[cognitive-load-theory]]"
  - "[[debugging-als-kompetenz]]"
  - "[[metakognition]]"
  - "[[threshold-concepts]]"
  - "[[cognitive-apprenticeship]]"
  - "[[constructive-alignment]]"
  - "[[formatives-assessment]]"
  - "[[lernortkooperation-transfer]]"
  - "[[subgoal-labeling]]"
  - "[[vier-komponenten-instruktionsdesign]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten, erschaffen]
sozialform: [einzelarbeit, partner]
created: 2026-04-10
updated: 2026-04-10
summary: >
  Systematische Methode zur Extraktion impliziten Expertenwissens (Clark, Feldon
  et al., 2008). CTA deckt 40–70 % der Entscheidungen und Cues auf, die Experten
  beim Unterrichten unbewusst auslassen (Expert Blind Spot). Die Ergebnisse fließen
  direkt in Worked Examples, Scaffolding und Lernsituationen für den
  Programmierunterricht ein. Effektstärke d = 1,29 bei Hattie.
---

# Cognitive Task Analysis (CTA) für Programmierunterricht

## Kernidee

Erfahrene Programmierer:innen haben so viel automatisiert, dass sie beim Erklären entscheidende Denkschritte überspringen — der **Expert Blind Spot** (Nathan & Petrosino, 2003). Cognitive Task Analysis ist eine Familie von Interview- und Beobachtungsmethoden, die dieses implizite Wissen systematisch freilegt. Das Ergebnis wird zum Rohmaterial für [[worked-examples]], [[scaffolding]]-Stufen und [[lernsituationen-gestalten]].

## Beschreibung

Clark, Feldon, van Merriënboer, Yates & Early (2008) definieren CTA als Strategien, die "akkurate und vollständige Beschreibungen der kognitiven Prozesse und Entscheidungen erfassen, die Expert:innen bei komplexen Problemen nutzen." CTA stammt aus der Militär-/Luftfahrtausbildung und hat sich über die Medizin ins Instruktionsdesign verbreitet.

### Warum CTA nötig ist

Ohne CTA fehlen typischerweise **40–70 % der Schlüsselschritte** in Instruktionsmaterialien. Im Programmierunterricht: Eine Lehrkraft, die "intuitiv" ein Dictionary wählt, vergisst zu verbalisieren, dass sie O(1)-Lookup braucht und `None`-Fälle abfangen muss. CTA zwingt dazu, genau diese impliziten Entscheidungen zu dokumentieren.

### Evidenzlage

- **Meta-Analyse Tofel-Grehl & Feldon (2013):** Hedges' g = 0,87 gegenüber konventionell entwickelten Materialien (27 Studien).
- **Hattie Visible Learning MetaX:** d = 1,29 — eine der höchsten Effektstärken (Durchschnitt: d = 0,40).
- CTA ist keine eigenständige Lehrmethode, sondern verbessert die **Qualität jeder nachgelagerten Methode**: [[worked-examples]] werden vollständiger, [[scaffolding]] präziser, [[formatives-assessment]] trifft die kritischen Denkschritte.

## Durchführung

Die **ACTA-Methode** (Militello & Hutton, 1998) ist die praxistauglichste CTA-Variante — drei Phasen:

### Phase 1: Task Diagram — Überblick erstellen

1. Expert:in benennt 3–7 Hauptschritte der Zielaufgabe.
2. Jeden Schritt markieren: **kognitiv anspruchsvoll?** (Entscheidungen, Unsicherheit, Fehlerquellen?)
3. **Ergebnis:** Ablaufplan mit markierten "Hotspots".

*Beispiel [[debugging-als-kompetenz]]:* Fehlermeldung lesen → Hypothese bilden → Stelle lokalisieren → Ursache eingrenzen → Fix → Regressionstest

### Phase 2: Knowledge Audit — Implizites Wissen freilegen

Für jeden kognitiv anspruchsvollen Schritt werden Sonden eingesetzt:

- **Cues & Muster:** "Woran erkennst du, dass...?" → "Ich sehe `NullPointerException` und schaue sofort, welches Objekt dereferenziert wird."
- **Big Picture:** "Wie ordnest du das ein?" → "Keine DI, also könnte die Null aus fehlendem Mock kommen."
- **Novizenfehler:** "Was machen Anfänger falsch?" → "Sie suchen in der Exception-Zeile statt im aufrufenden Code."
- **Entscheidungspunkte:** "Was hast du abgewogen?" → "Logging vs. Debugger — bei Nebenläufigkeit ist Logging zuverlässiger."
- **Workarounds:** "Was, wenn der Standardweg versagt?" → "Abgeschnittener Stacktrace → `Thread.dumpStack()`."

### Phase 3: Cognitive Demands Table — Wissen strukturieren

Die Daten werden in eine **Cognitive Demands Table** überführt — das **Kernartefakt** der CTA:

| Schwieriger Schritt | Warum schwierig | Cues / Strategien | Novizenfehler |
|--------------------|-----------------|--------------------|--------------|
| Hypothese bilden | Mentales Modell des Programmflusses nötig | Stacktrace-Muster, Breakpoint-Werte | Raten statt systematisch eingrenzen |
| Ursache lokalisieren | Abstraktionsebenen durchqueren | Logging, Data Flow rückwärts | Nur Exception-Zeile prüfen |

## Voraussetzungen

- **Expert:innen-Zugang:** Mindestens 1 Person mit nachweislicher Expertise (Senior-Entwickler:in, erfahrene Lehrkraft); idealerweise 2–3 zum Abgleich.
- **Interviewer:in:** Sondentechnik (Probing, nicht Suggestivfragen). ACTA wurde explizit für Nicht-Psycholog:innen entwickelt (Militello & Hutton, 1998).
- **Aufnahmegerät:** Audio-/Videoaufzeichnung; Transkription erleichtert Analyse.
- **Domänenwissen:** Genug zum Nachfragen, aber nicht selbst Expert:in — den Novizen-Blick bewahren.

## Varianten

- **ACTA** (Militello & Hutton, 1998) — Drei strukturierte Interview-Phasen; **empfohlen** für Lehrkräfte (niedrige Einstiegshürde).
- **Critical Decision Method (CDM)** — Retrospektives Interview zu einer konkreten Episode; ideal für [[debugging-als-kompetenz]] und Incident Response.
- **Think-Aloud-Protokoll** — Expert:in verbalisiert beim Bearbeiten; direkt nutzbar für [[cognitive-apprenticeship]] Modeling.
- **Concepts-Processes-Principles (CPP)** — Trennt konzeptuelles, prozedurales und Bedingungswissen; für strukturierte Themen (OOP, SQL).
- **KI-gestütztes CTA** — LLM als Interviewer mit systematischen Sonden; experimentell, erfordert Expert:innen-Validierung.

## Zeitbedarf

- **Vorbereitung:** 30–60 Min. (Zielaufgabe abgrenzen, Leitfaden)
- **Phase 1 Task Diagram:** 15–30 Min.
- **Phase 2 Knowledge Audit:** 60–90 Min. pro Expert:in
- **Phase 3 Cognitive Demands Table:** 60–120 Min. (Transkript → Tabelle)
- **Übersetzung in Lernmaterial:** 2–4 Std.
- **Gesamt: ca. 5–8 Stunden** — einmalig pro Zielaufgabe, Ergebnis vielfach wiederverwendbar.

## Bezug zur IT-Ausbildung

Softwareentwicklung ist eine **kognitive Expertentätigkeit**, deren kritische Schritte unsichtbar im Kopf ablaufen. CTA adressiert dieses Kernproblem direkt:

1. **LF5/LF8 — Datenbank-/API-Design:** "Wie entscheidest du, ob 1:n oder m:n?" → [[worked-examples]] mit Sub-Goal-Labels.
2. **LF6 — Debugging:** CDM-Interview: "Erzähle von einem schwierigen Bug — Schritt für Schritt." → Annotierter Debugging-Walkthrough.
3. **LF10-12 — Projektplanung:** CTA zu Sprint-Planning: "Wie schätzt du User Stories?" → [[scaffolding]]-Checkliste.
4. **[[threshold-concepts]] identifizieren:** CTA offenbart Konzepte, die Expert:innen für selbstverständlich halten (Rekursion, Referenzsemantik, Asynchronität).
5. **[[lernortkooperation-transfer]]:** Ausbilder:innen als Expert:innen interviewen — systematischer Transfer von Praxiswissen in den Berufsschulunterricht.

## Praktische Anwendung

Die Cognitive Demands Table wird zum Ausgangspunkt für drei Produkte: [[worked-examples]] mit Sub-Goal-Labels an den schwierigen Schritten, [[scaffolding]]-Stufen mit Fading-Plan und Diagnostik-Items für [[formatives-assessment]].

### Empfehlungen für Agenten

1. **CTA als Prompt-Input:** Die Cognitive Demands Table direkt als LLM-Tutor-Kontext nutzen: "Wenn der Lernende bei Schritt X stockt, prüfe Cue Y."
2. **Scaffolding ableiten:** Jede Tabellenzeile wird zur Scaffolding-Stufe — von maximalem Hint bis zur offenen Frage (vgl. [[scaffolding]]: Fading).
3. **[[worked-examples]] anreichern:** Sub-Goal-Labels entsprechen den schwierigen Schritten; Denkprozess verbalisieren, nicht nur Ergebnis zeigen.
4. **[[metakognition]] fördern:** CTA-Ergebnisse als Selbstmonitoring-Checkliste: "Habe ich Edge Cases bedacht?"
5. **[[constructive-alignment]]:** CTA-Denkschritte → Lernziele → Übungsaufgaben → Prüfung.

## Verwandte Konzepte

- [[cognitive-apprenticeship]] — CTA liefert Rohmaterial für die Modeling-Phase
- [[expertise-entwicklung]] — CTA operationalisiert die Dreyfus-Stufen
- [[worked-examples]] — CTA bestimmt Sub-Goals und Entscheidungspunkte
- [[scaffolding]] — Cognitive Demands Table definiert Hilfen und Fading-Plan
- [[cognitive-load-theory]] — CTA identifiziert intrinsic Load und ermöglicht gezielte Reduktion
- [[threshold-concepts]] — CTA deckt für Expert:innen unsichtbare Schwellenkonzepte auf
- [[debugging-als-kompetenz]] — CDM extrahiert Debugging-Expertise
- [[metakognition]] — CTA-Ergebnisse werden zu Selbstmonitoring-Checklisten
- [[lernsituationen-gestalten]] — CTA liefert die kognitive Analyse für authentische Lernsituationen
- [[constructive-alignment]] — CTA sichert Alignment zwischen Denkprozessen und Lernzielen
- [[formatives-assessment]] — CTA identifiziert diagnostisch wertvolle Prüfpunkte
- [[lernortkooperation-transfer]] — CTA-Interviews als Brücke Betrieb/Berufsschule

## Quellen

- Clark, R. E., Feldon, D., van Merriënboer, J. J. G., Yates, K. & Early, S. (2008). Cognitive task analysis. In J. M. Spector et al. (Hrsg.), *Handbook of Research on Educational Communications and Technology* (3. Aufl., S. 577–593). Macmillan/Gale.
- Tofel-Grehl, C. & Feldon, D. F. (2013). Cognitive task analysis-based training: A meta-analysis of studies. *Journal of Cognitive Engineering and Decision Making, 7*(3), 293–304.
- Militello, L. G. & Hutton, R. J. B. (1998). Applied cognitive task analysis (ACTA). *Ergonomics, 41*(11), 1618–1641.
- Nathan, M. J. & Petrosino, A. (2003). Expert blind spot among preservice teachers. *American Educational Research Journal, 40*(4), 905–928.
- Hattie, J. (2023). *Visible Learning: The Sequel*. Routledge.
- Brown, O., Power, N. & Gore, J. (2025). Cognitive task analysis: Eliciting expert cognition in context. *Organizational Research Methods*.
