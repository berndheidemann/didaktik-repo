---
title: "Kritische KI-Bewertungskompetenz"
type: methode
tags: [critical-ai-literacy, halluzination, verifikation, bias, output-pruefung, system-2, coding-llm, checklist]
related:
  - "[[deskilling-ki-codegenerierung]]"
  - "[[debugging-als-kompetenz]]"
  - "[[self-explanation]]"
  - "[[metakognition]]"
  - "[[code-review-unterricht]]"
  - "[[misconception-analyse]]"
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[ki-integritaet-pruefungsleistung]]"
  - "[[ki-kompetenzrahmen-schule]]"
  - "[[ki-tool-auswahl-berufsschule]]"
  - "[[explain-in-plain-english]]"
  - "[[testitem-konstruktion-digital]]"
  - "[[lerntagebuch]]"
  - "[[fachgespraech-didaktik]]"
  - "[[ki-prompt-handwerk]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
sozialform: [einzelarbeit, partner, gruppe]
created: 2026-04-20
updated: 2026-04-20
summary: >
  Critical AI Literacy operationalisiert für Azubis: Halluzinations-Typologie
  in Code (Liu 2024: 5 Kategorien; Spracher 2024: 19,7 % fabrizierte Packages),
  5-Schritt-Verifikations-Routine, Bias-Erkennung und Unterrichtsformate.
  Kernbefund (CHI 2025): Wissen über KI-Risiken allein verhindert nicht
  Overreliance — erst die eingeübte Routine wirkt.
---

# Kritische KI-Bewertungskompetenz

## Kernidee

"Kritisches Denken" reicht als Bildungsziel nicht mehr — Azubis brauchen **konkrete Prüf-Routinen** gegenüber KI-Output, sonst gewinnt das schnelle System-1 jeder Abwägung. Yang et al. (CHI 2025) zeigen paradox: **höhere selbstberichtete AI Literacy korreliert nicht mit mehr Fact-Checking** — im Gegenteil, informierte Nutzer verlassen sich oft stärker auf LLM-Output ("Trap of AI Literacy"). Die didaktische Konsequenz: **Routinen schlagen Wissen**. Der Artikel liefert eine 5-Schritt-Verifikations-Routine, eine Halluzinations-Typologie für Code und Unterrichtsformate, die diese Routine einüben.

## Beschreibung

### Critical AI Literacy — Begriff und Rahmen

- **Sperling et al. (2024), International Journal of Child-Computer Interaction:** Synthese in vier Dimensionen (adaptiert aus Critical Literacy): *Disrupting the commonplace*, *Considering multiple viewpoints*, *Focusing on the sociopolitical*, *Taking action*. Abgrenzung zu allgemeiner AI Literacy: nicht nur Nutzung, sondern evaluativ.
- **Long & Magerko (2020, CHI):** 17 Kompetenzen in fünf Themenfeldern — u. a. "Critically Interpreting Data", "AI's Strengths & Weaknesses", "Ethics". Critical AI Literacy konkretisiert diese Teilmenge.
- **UNESCO AI Competency Framework for Students (2024):** 12 Kompetenzen, 4 Dimensionen, 3 Stufen — "critical judgement of AI solutions" als zentrales Element.
- **The Trap of AI Literacy (Yang et al., CHI EA 2025):** Wissen *über* KI-Risiken verhindert Overreliance nicht. Nur eingeübte Prüf-Praxis wirkt.

### Halluzinations-Typologie für Code

Liu et al. (2024, *arXiv:2404.00971*) etablieren mit HalluCode fünf Primärkategorien:

| Kategorie | Bedeutung | IT-Beispiel |
|---|---|---|
| **Intent conflicting** | Code erfüllt Anforderung nicht | Sortierung statt Gruppierung |
| **Context deviation** | Ignoriert gegebenen Kontext | Import, der außerhalb Scope liegt |
| **Knowledge conflicting** | Fakten falsch | `pandas.read_json(lines=True)` in Pandas < 0.19 |
| **Inconsistency** | Widerspricht sich | zwei Returns mit inkompatiblen Typen |
| **Repetition** | Identische Blöcke | Boilerplate statt Abstraktion |

Für Azubis übersetzt in **sieben Fehlerklassen**, die unmittelbar erkennbar sein sollten:

1. **Fabrizierte APIs** — Methoden, die nicht existieren. Spracher et al. (2024, UT San Antonio/Virginia Tech): **19,7 % der empfohlenen Packages** in 576.000 Samples existieren nicht — "slopsquatting"-Angriffsfläche.
2. **Falsche Library-Versionen** — Syntax aus anderer Major-Version.
3. **Veraltete Syntax** — Python-2-Muster, alte Node-Versionen.
4. **Silent failures** — Code läuft, tut aber das Falsche.
5. **Semantisch korrekt, aber kontextfalsch** — optimaler Sort-Algorithmus für die falsche Problemstruktur.
6. **Security-Anti-Patterns** — SQL-Injection-anfällige Templates, unsichere Regex. NYU-Studie: 29–45 % der Copilot-Snippets mit Schwachstellen.
7. **Happy-Path-Bias und Default-Bias** — fehlende Error-Handling; englische Default-Namen; gender-kodierte Variablen.

### Evidenzlage Coding-LLMs

- **Liu et al. 2024 (HalluCode):** strukturierte Halluzinations-Taxonomie
- **Lei et al. 2024 (ACM FSE):** LLM-Halluzinationen in praktischer Code-Generierung
- **GitClear 2024:** Code-Churn hat sich seit 2021 verdoppelt — KI-produzierter Code wird häufiger kurz danach zurückgenommen
- **Uplevel Data Labs 2024:** Copilot-Nutzer mit signifikant höherer Bug-Rate
- **EvalPlus (NeurIPS 2023):** HumanEval-Testcases decken reale Fehler nur unvollständig ab

Die Botschaft für den Unterricht: **Plausibler Output ist keine Garantie**. Der Azubi muss lernen, das Misstrauen zur Gewohnheit zu machen.

## Bezug zur IT-Ausbildung

### Zwei Ausbildungsrealitäten

- **Im Betrieb**: Senior-Reviewer akzeptieren Code nur mit Tests und Begründung. Wer KI-Output ungeprüft einreicht, blockiert den Merge. Kritische Bewertung ist keine akademische Tugend, sondern Voraussetzung für produktives Arbeiten.
- **In der AP2**: Der Prüfungsausschuss fragt: "Warum dieser Code? Welche Alternativen?" Wer Output nicht verifiziert hat, kann das Fachgespräch nicht bestehen. Siehe [[fachgespraech-didaktik]] und [[ki-integritaet-pruefungsleistung]].

### Kognitive Modi

Kahneman-Terminologie: **System 1** (schnell, intuitiv) akzeptiert plausibel klingenden Output. **System 2** (langsam, kritisch) prüft. Der Default-Modus beim Copilot-Drücken ist System 1 — genau deshalb braucht es explizite Routinen, die System 2 aktivieren.

## Praktische Anwendung

### Der 5-Schritt-Check — Kern-Routine für Azubis

Jeder KI-Output durchläuft vor Übernahme diese fünf Schritte:

1. **Nachfragen** — Die KI selbst befragen: *"Welche Quelle? Ab welcher Version? Gibt es Alternativen?"* Halluzinationen entlarven sich oft im Nachfragen selbst.
2. **Gegenprompt** — Dasselbe Problem anders formulieren, Outputs vergleichen. Differenzen zeigen Unsicherheit.
3. **Doku-Gegencheck** — Offizielle Referenz, Changelog, Release Notes konsultieren. Kein Vertrauen gegen Dokumentation.
4. **Minimal-Testfall** — REPL oder Unit-Test **vor** Integration. Ausführbare Verifikation schlägt Plausibilitäts-Intuition.
5. **Erklärbarkeits-Gate** — *"Kannst du's dem Nachbarn in einem Satz erklären?"* Wenn nein: fragil, Einsatz zurückhalten. Direkter Bezug zu [[explain-in-plain-english]].

Dieser 5-Schritt-Check ist ein Handwerk, keine Philosophie. Er dauert bei normalem Code zwei Minuten. Der Azubi lernt ihn so früh wie die IDE-Bedienung.

### Bias-Erkennung als Übung

| Bias-Typ | Typisches Muster |
|---|---|
| **Default-Bias** | Englische Namen in Code-Beispielen, binäre Gender-Muster, westliche Währung und Zeitformate |
| **Happy-Path-Bias** | Kein Error-Handling, fehlende Eingabevalidierung, keine Tests |
| **Security-Bias** | SQL-Injection-anfällige Templates, unsichere Regex, Klartext-Passwörter |
| **Framework-Bias** | LLM bevorzugt populäres Framework unabhängig von Anforderung |
| **Kulturelle Annahmen** | US-Zeitformate, $-Währung, imperiale Einheiten |

### Unterrichtsformate

**1. KI-Output-Review-Übung (30 Min)**
Azubi bekommt einen KI-generierten Code-Ausschnitt mit drei bis fünf eingebauten Fehlern. Aufgabe: Fehler finden, kategorisieren (Liu-Typologie), Verifikations-Schritte anwenden. Debrief im Plenum.

**2. Gegenprompt-Battle (45 Min)**
Zwei Teams, dasselbe Problem, zwei unterschiedliche Prompts. Die Outputs werden diff-verglichen: Wo widersprechen sie sich? Welches Team liegt richtig? Anschluss: welche Prompt-Formulierung erzeugt was.

**3. Library-Version-Falle**
Bewusst veraltete Umgebung (z. B. altes Pandas, altes Node). Azubi fordert KI-Code an, entdeckt Halluzinationen in der Umgebung. Sehr wirksam, weil nicht-abstrakt.

**4. Halluzinations-Bingo**
Karte mit typischen Fehler-Kategorien (fabrizierte API, veraltete Syntax, fehlende Fehlerbehandlung, Security-Anti-Pattern, Default-Bias). Azubis arbeiten mit echtem KI-Output und haken ab, was sie entdecken.

**5. Edge-Case-Stress-Test**
KI generiert Lösung, Azubi entwickelt bewusst adversariale Eingaben: Null, leer, sehr groß, Unicode, negative Zahlen, Grenzwerte. Welche davon bricht die KI-Lösung?

**6. Prompt-Ablehnungs-Übung**
Umgekehrter Modus: "Warum sollte ich *diesen* Vorschlag nicht übernehmen?" Trainiert die Ablehnungs-Begründung — eine Kompetenz, die Azubis fast nie üben.

### Test-Driven-Thinking als Default

Jeder KI-Vorschlag wird als **Hypothese** behandelt, nicht als Lösung. Testfall schreiben **vor** Code-Übernahme — Red, Green, Refactor mit KI. Das setzt auf dem auf, was der neue [[ihk-pruefungskatalog-2025|IHK-Prüfungskatalog]] ab 2025 ohnehin verbindlich verlangt (TDD).

### Dokumentation und Reflexion

Im [[lerntagebuch]] oder in der AP2-Doku sichtbar machen:
- Welchen KI-Output habe ich **nicht** übernommen? Warum?
- Welche Halluzination habe ich gefunden? Wie?
- Welche Prüf-Routine hat gegriffen?

Das macht die Kompetenz nachweisbar — relevant für Fachgespräch und Bewerbung.

### Abgrenzung zu verwandten Kompetenzen

| Kompetenz | Fokus |
|---|---|
| [[self-explanation]] | Generative Erklärung während des Lernens |
| [[debugging-als-kompetenz]] | Klassische Fehlersuche im eigenen Code |
| [[code-review-unterricht]] | Peer-Review menschlichen Codes |
| **Kritische KI-Bewertungskompetenz** | **Systematische Prüfung fremder (KI-)Outputs** |

Alle vier Kompetenzen verstärken sich gegenseitig — sind aber nicht ersetzbar.

## Verwandte Konzepte

- [[deskilling-ki-codegenerierung]] — Evidenz, warum Routinen zwingend sind
- [[debugging-als-kompetenz]] — Verifikation als klassische Prüfroutine
- [[self-explanation]] — Erklärbarkeits-Gate als Schritt 5 der Routine
- [[metakognition]] — Monitoring der eigenen KI-Nutzung
- [[code-review-unterricht]] — KI-Output als Review-Objekt
- [[misconception-analyse]] — Erkennen fehlerhafter Muster
- [[ki-nutzungsregeln-unterricht]] — Klassenpolicy als Rahmen
- [[ki-integritaet-pruefungsleistung]] — Verifikation als Deklarations-Grundlage
- [[explain-in-plain-english]] — Erklärbarkeits-Test in Routine und Assessment
- [[testitem-konstruktion-digital]] — Test als Prüfinstrument vor Übernahme
- [[lerntagebuch]] — Reflexion über eigene KI-Nutzung
- [[fachgespraech-didaktik]] — Verifikation als Voraussetzung für Erklärung

## Quellen

- Sperling, A., Veldhuis, A., Lo, P. Y. et al. (2024). Critical artificial intelligence literacy: A scoping review and framework synthesis. *International Journal of Child-Computer Interaction, 43*, 100708.
- Long, D. & Magerko, B. (2020). What is AI literacy? Competencies and design considerations. *Proceedings of CHI 2020,* 1–16.
- Yang, J. et al. (2025). The trap of AI literacy: Paradoxical relationships between college students' LLM use, AI literacy, and fact-checking. *Extended Abstracts of CHI 2025.*
- Liu, F. et al. (2024). Exploring and evaluating hallucinations in LLM-powered code generation. *arXiv:2404.00971.*
- Lei, Y. et al. (2024). LLM hallucinations in practical code generation: Phenomena, mechanism, and mitigation. *Proceedings of the ACM on Software Engineering.*
- Spracher, S. et al. (2024). Package hallucinations in code-generating LLMs. *UT San Antonio / Virginia Tech / Oklahoma (Preprint)* — 19,7 % fabrizierte Packages in 576.000 Samples.
- UNESCO. (2024). *AI competency framework for students.*
- Kasneci, E. et al. (2023). ChatGPT for good? On opportunities and challenges of large language models for education. *Learning and Individual Differences, 103*, 102274.
- Ng, D. T. K. et al. (2024). AI literacy scale for K-12. *Computers & Education: AI.*
- Anthropic. (2025). *Anthropic Education Report: How university students use Claude.*
- Tandfonline. (2026). AI literacy for K-12 education: An international Delphi study. *Interactive Learning Environments.*
- Cook, J. et al. (2024). TICKing all the boxes: Generated checklists improve LLM evaluation. *arXiv:2410.03608.*
- Stanford HAI. (2025). *Artificial Intelligence Index Report 2025, Chapter 3: Responsible AI.*
