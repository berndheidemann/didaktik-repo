---
title: "KI-Prompt-Handwerk im Berufsalltag"
type: methode
tags: [prompt-handwerk, clear, few-shot, pair-mit-ki, azubi-kompetenz, anti-patterns, berufsalltag, iteration]
related:
  - "[[prompt-engineering-didaktisch]]"
  - "[[kritische-ki-bewertungskompetenz]]"
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[self-explanation]]"
  - "[[explain-in-plain-english]]"
  - "[[debugging-als-kompetenz]]"
  - "[[code-review-unterricht]]"
  - "[[pair-programming-unterricht]]"
  - "[[abschlussprojekt-begleitung]]"
  - "[[lerntagebuch]]"
  - "[[ki-tool-auswahl-berufsschule]]"
  - "[[ki-kompetenzrahmen-schule]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren]
sozialform: [einzelarbeit, partner]
created: 2026-04-20
updated: 2026-05-01
summary: >
  Prompt-Handwerk statt Prompt-Engineering: Alltagsroutinen für Azubis, die
  KI-Tools im Betrieb produktiv und verantwortungsvoll einsetzen wollen.
  CLEAR-Heuristik (Lo 2023), sechs Pair-mit-KI-Modi, Kontext-Framing,
  Iterationsprotokoll und Anti-Patterns — abgegrenzt von der Engineering-
  Disziplin für Plattform-Bauer.
---

# KI-Prompt-Handwerk im Berufsalltag

## Kernidee

Wenn Azubis in zwei Jahren im Betrieb mit Copilot, Cursor oder ChatGPT arbeiten, brauchen sie **keine Engineering-Disziplin**, sondern ein **robustes Handwerk** — wiederholbare Routinen für typische Tasks. Prompt-Engineering optimiert Systeme, Prompt-Handwerk erledigt Tagesgeschäft. Dieser Artikel liefert Azubis die CLEAR-Heuristik (Lo 2023), sechs Pair-mit-KI-Modi und ein Anti-Pattern-Katalog — und Lehrkräften die dazu passenden Unterrichtsformate. Abgrenzung: [[prompt-engineering-didaktisch]] behandelt die Engineering-Disziplin für Lernumgebungs-Bauer. Dieser Artikel ist für die **produktiv arbeitende Azubine**.

## Beschreibung

### Handwerk versus Engineering

| Dimension | Prompt-Engineering | Prompt-Handwerk |
|---|---|---|
| Ziel | Reproduzierbares System | Produktives Tagesgeschäft |
| Kontext | Plattform-Entwicklung, Eval-Suiten | Debugging, Doku, Lernen im Betrieb |
| Artefakt | System-Prompt, Evaluation-Framework | Dialog-Verlauf, iterierter Output |
| Kompetenz | Ingenieurssicht | Routinen, Erfahrungswissen |
| Zielgruppe | Plattform-Bauer | Azubi, junior Dev, Wissensarbeiter |

Die Unterscheidung ist nicht trivial: Engineering-Ressourcen (System-Prompts, A/B-Tests, Evaluator-Modelle) sind für Tagesarbeit unpraktikabel. Handwerk-Ressourcen (CLEAR, Pair-Modi, Iterationsprotokoll) sind für Plattform-Entwicklung zu lose. Die Artikel sind Zwillinge, keine Substitute.

### CLEAR als Merkheuristik (Lo 2023)

Leo S. Lo veröffentlichte 2023 im *Journal of Academic Librarianship* das **CLEAR-Framework**, das sich für Azubis als Grund-Heuristik eignet:

| Buchstabe | Prinzip | Beispiel |
|---|---|---|
| **C**oncise | Kompakt, nicht geschwätzig | "Schreibe JOIN-Query für X, mit Alias" |
| **L**ogical | Kohärente Struktur | Kontext → Task → Constraint → Format |
| **E**xplicit | Explizit statt implizit | "In Python 3.11+, max. 20 Zeilen" |
| **A**daptive | Iterativ verfeinern | V1 → V2 → V3, nicht Single-Shot |
| **R**eflective | Output reflektieren | "Stimmt das? Wie prüfe ich?" |

CLEAR ist eine Merkhilfe, kein Rezept. Azubis sollen das Muster verinnerlichen — nicht pedantisch abarbeiten.

### Anthropic-, OpenAI- und Google-Best-Practices

Die drei großen LLM-Anbieter veröffentlichen seit 2024 offizielle Prompting-Guides. Gemeinsame Kern-Patterns für Code-Tasks:

- **Role + Task + Constraints + Output-Format** als Grundstruktur
- **Few-Shot-Examples** (3–5 Beispiele) für nicht-triviale Formate
- **XML-Tags oder klare Abschnitte** für Strukturierung längerer Prompts
- **Step-by-Step / Chain-of-Thought** bei Reasoning-Tasks
- **"Think before answering"** als expliziter Trigger

Für Azubis übersetzt: vier bis fünf Zeilen Kontext, dann die eigentliche Task.

### Sechs Pair-mit-KI-Modi

GitHubs "Rubber Duck"-Review-Agent (2025) macht deutlich: KI-Nutzung ist **modusabhängig**. Wer immer im selben Modus prompt, verschenkt den Großteil der Wirksamkeit. Sechs Modi für die Alltagspraxis:

| Modus | Wann? | Prompt-Start |
|---|---|---|
| **Rubber Ducking** | Problem verbalisieren | "Ich versuche X und habe Y probiert. Hilf mir, das Problem zu verstehen." |
| **Brainstorming** | Ideen sammeln | "Nenne 5 Ansätze für …, mit Vor- und Nachteilen." |
| **Drafting** | KI entwirft, Mensch editiert | "Entwirf ein ERD für … mit den Tabellen …" |
| **Sparring** | Mensch entwirft, KI challenged | "Hier ist mein Ansatz. Wo sind Schwächen?" |
| **Review** | Fertiges prüfen lassen | "Review diesen Code auf Security-Issues und Performance." |
| **Learning** | Konzept verstehen | "Erkläre X auf meinem Niveau, mit einem Minimal-Beispiel." |

**Mode-Switching** trainieren — explizit ansagen: "Ich mache jetzt Sparring, bitte widersprich." Das aktiviert einen anderen Antwort-Stil des Modells.

### Anti-Patterns

Die häufigsten Fehler bei Azubis (Anthropic Education Report 2025 bestätigt empirisch ~47 % "Direct"-Nutzung ohne kognitive Beteiligung):

| Anti-Pattern | Problem | Gegenmittel |
|---|---|---|
| **ChatGPT-Dump** | Hausaufgabe copy-paste als Prompt | Task in eigene Worte fassen |
| **No-Context-Prompt** | "Mach mir SQL" | CLEAR-L: Logical Kontext geben |
| **Single-Shot-Optimismus** | Erste Antwort akzeptieren | CLEAR-A: Adaptiv iterieren |
| **Delegation ohne Verständnis** | Output übernehmen, nicht prüfen | CLEAR-R: Reflective, siehe [[kritische-ki-bewertungskompetenz]] |
| **Prompt-Loop** | Gleichen Prompt wiederholen | Iteration mit echter Variation |
| **Tool-Hopping** | Bei jeder Frage neues Tool | Bei einem Tool bleiben, iterieren |
| **Over-Prescription** | Jedes Detail vorschreiben | Raum für KI-Mehrwert lassen |

### Output-Refactoring als Pflichtschritt

Jeder KI-Output ist **Draft**, nicht Lösung. Typische Refactor-Checkliste:

- [ ] Variablen-Konventionen an Codebase angepasst
- [ ] Fehlerbehandlung ergänzt
- [ ] Performance-Check (N+1 Queries?)
- [ ] Security-Check (Input-Validation?)
- [ ] Style-Guide angewendet
- [ ] Tests geschrieben oder ergänzt

Dieser Refactor-Schritt trennt professionelle KI-Nutzung von Copy-Paste. Prinzip: **KI liefert die Form, Mensch liefert die Verantwortung.**

## Bezug zur IT-Ausbildung

### Im Unterricht — Zonen-Einordnung

Prompt-Handwerk ist typischerweise eine **gelbe Zone**-Aktivität (siehe [[ki-nutzungsregeln-unterricht]]): KI-Nutzung erlaubt mit Deklaration. Der Unterricht trainiert das Handwerk, nicht das Ersetzen des Lernens. In der roten Zone (Grundlagen, Klassenarbeit) bleibt das Prompten außen vor.

### Im Betrieb — drei Anwendungsfelder

1. **Debug-Hilfe**: Fehlermeldung + Code + erwartetes Verhalten + bereits Versuchtes → KI. Schlecht: nur Fehlermeldung kopieren. Gut: CLEAR-strukturiert.
2. **Neue Library lernen**: Learning-Modus, "Erkläre X mit Minimalbeispiel". Anschließend Minimal-Test.
3. **Doku-Draft**: Drafting-Modus, KI entwirft — Mensch verifiziert Fachbegriffe und Vollständigkeit.

### In AP2 und Fachgespräch

Die [[abschlussprojekt-begleitung|AP2-Projektarbeit]] verlangt IHK-seitig Deklaration der KI-Nutzung. Gute Prompt-Handwerk-Praxis macht diese Deklaration einfach: Iterationsprotokoll zeigt die eigene Denkarbeit.

Im [[fachgespraech-didaktik|Fachgespräch]] hilft Handwerk doppelt: Azubi kann seine Denkpfade rekonstruieren, weil Prompts bewusst gestellt wurden — nicht blind abgeworfen.

## Praktische Anwendung

### Die Fünf-Zeilen-Kontext-Regel

Für die meisten produktiven Prompts reichen fünf Zeilen:

```
Rolle: Senior-Node-Entwickler
Kontext: Express.js-API mit PostgreSQL 14, JWT-Auth
Task: Implementiere DELETE /books/:id mit Soft-Delete
Constraints: Max. 30 Zeilen, async/await, error-handling middleware
Format: TypeScript mit JSDoc-Kommentaren
```

Fünf Zeilen Kontext + eine Zeile Problem → zwei Minuten gesparter Iterationszyklus.

### Iterationsprotokoll

Jede nicht-triviale Task durchläuft drei Prompt-Runden:

- **V1**: erste Formulierung, oft zu vage
- **V2**: nach Blick auf Output präzisieren — was fehlt, was ist überflüssig?
- **V3**: finalisieren, Output übernehmen und refactorn

Im [[lerntagebuch]] oder Git-Commit festgehalten: "Prompt V1 → V2 → V3, Refactor-Änderungen: …". Das ist die Deklarationspraxis aus der Prüfung, die sich im Alltag bewährt.

### Didaktische Formate

**1. Prompt-Baukasten-Übung (45 Min)**
Kartenset mit Komponenten (Role, Task, Constraints, Examples, Format). Schüler kombinieren zu Prompts für drei gegebene Problemstellungen. Diskussion, welche Kombination funktioniert.

**2. Prompt-Iterations-Protokoll (Lerntagebuch-Integration)**
Über zwei Wochen: für jede produktive KI-Nutzung V1 → V2 → V3 protokollieren mit kurzer Begründung der Änderungen. Reflexion am Ende.

**3. Pair-mit-KI-Rollenspiel (Doppelstunde)**
Einer spielt Azubi, einer spielt KI mit Antwortkarten. Drittel protokolliert. Was funktioniert, was nicht?

**4. Anti-Pattern-Bingo**
Beobachtung echter KI-Nutzung in Paaren. Wer entdeckt welches Anti-Pattern?

**5. Prompt-Gallery**
Klassenweit werden gute Prompts pro Aufgabentyp gesammelt (SQL-Query, Regex, Doku, Test). Nach einem Halbjahr entsteht ein Kompendium, das die nächste Klasse erbt.

### Verknüpfung mit weiteren Kompetenzen

- **Bevor du promptest**: Kannst du das Problem ohne KI skizzieren? Wenn nein, kläre erst das Problem. Siehe [[self-explanation]].
- **Nach dem Output**: [[kritische-ki-bewertungskompetenz]] — 5-Schritt-Check durchlaufen.
- **Für Code spezifisch**: [[explain-in-plain-english]] — kannst du den übernommenen Code in einem Satz erklären? Wenn nein, ist er fragil.
- **Im Pair**: [[pair-programming-unterricht]] mit KI als drittem Partner — neue Rollenverteilung, neue Konventionen.

### Evidenz

- **Denny et al. (2024, SIGCSE):** "Prompt Problems" als neuer Aufgabentyp — Schüler schreiben natürlichsprachige Prompts für visuell gegebene Aufgaben. Tool Promptly wertet gegen Testsuite aus. Positive Engagement-Effekte in CS1/CS2.
- **Denny et al. (2024, ITiCSE):** "Explaining Code with a Purpose" — Verbindung von Code-Comprehension und Prompting.
- **Anthropic Education Report (2025):** 574.000 analysierte Conversations, vier Nutzungsmuster — *Collaborative* schlägt *Direct* in Lerneffekt.
- **Pădurean et al., "Prompt Programming" (arXiv 2503.04267, ITiCSE 2025):** Dialog-basiertes Problem-Solving im CS1-Kontext, Plattform-Studie mit >900 Studierenden.

## Verwandte Konzepte

- [[prompt-engineering-didaktisch]] — Engineering-Disziplin für Plattform-Bauer (Zwilling-Artikel mit anderer Zielgruppe)
- [[kritische-ki-bewertungskompetenz]] — Output-Prüfung nach dem Prompt
- [[ki-nutzungsregeln-unterricht]] — Klassenpolicy, in welcher Zone gepromptet werden darf
- [[deskilling-ki-codegenerierung]] — Evidenz, warum Handwerk inkl. Reflexion zwingend ist
- [[self-explanation]] — Voraussetzung: Problem in eigenen Worten verstehen
- [[explain-in-plain-english]] — Check nach KI-Output-Übernahme
- [[debugging-als-kompetenz]] — Klassische Kompetenz, die durch Prompting nicht ersetzt wird
- [[code-review-unterricht]] — KI als dritter Reviewer
- [[pair-programming-unterricht]] — Pair-mit-KI als Ausweitung der Rollenverteilung
- [[abschlussprojekt-begleitung]] — AP2-Deklarationspraxis als Anwendungsfall
- [[lerntagebuch]] — Iterationsprotokoll als Dokumentationsformat
- [[ki-tool-auswahl-berufsschule]] — welche Tools in welcher Zone prompten dürfen

## Quellen

- Anthropic. (2024). *Prompt engineering overview & best practices.* https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview
- Anthropic. (2024). *Use examples (multishot prompting) to guide Claude's behavior.*
- Anthropic. (2025). *Anthropic Education Report: How university students use Claude.*
- Denny, P., Leinonen, J., Prather, J., Luxton-Reilly, A., Amarouche, T., Becker, B. A. & Reeves, B. N. (2024). Prompt problems: A new programming exercise for the generative AI era. *Proceedings of SIGCSE 2024.*
- Denny, P., Smith, D. H., Fowler, M., Prather, J., Becker, B. A. & Leinonen, J. (2024). Explaining code with a purpose: An integrated approach for developing code comprehension and prompting skills. *Proceedings of ITiCSE 2024.*
- GitHub. (2025). GitHub Copilot CLI adds Rubber Duck review agent.
- Hoffman, R. (2023). *Impromptu: Amplifying our humanity through AI.* Dallepedia.
- Lo, L. S. (2023). The CLEAR path: A framework for enhancing information literacy through prompt engineering. *The Journal of Academic Librarianship, 49*(4), 102720.
- OpenAI. (2024). *Prompt engineering guide.*
