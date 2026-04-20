---
title: "KI-Integrität in Prüfungsleistungen"
type: praxis
tags: [ki-detektion, integritaet, turnitin, gptzero, ap2, deklaration, false-positive, prozess-portfolio, ihk]
related:
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[fachgespraech-didaktik]]"
  - "[[explain-in-plain-english]]"
  - "[[abschlussprojekt-begleitung]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[rubric-design]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[datenschutz-lernumgebungen]]"
  - "[[formatives-assessment]]"
  - "[[lerntagebuch]]"
  - "[[testitem-konstruktion-digital]]"
  - "[[pair-programming-unterricht]]"
  - "[[kritische-ki-bewertungskompetenz]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
evidenzgrad: meta-analyse
created: 2026-04-20
updated: 2026-04-20
summary: >
  Detektion von KI-generierten Prüfungsleistungen funktioniert nicht
  zuverlässig (Liang 2023: 61 % False-Positive bei Non-Native Writers;
  Weber-Wulff 2023: "neither accurate nor reliable"). Statt Detektor-Einsatz:
  prozessorientierte Prüfung (Portfolios, mündliche Verteidigung, Git-History),
  IHK-konforme Deklarationspraxis für AP2 und schulische Richtlinie.
---

# KI-Integrität in Prüfungsleistungen

## Kernidee

Die automatisierte Detektion KI-generierter Texte ist **empirisch gescheitert**. Stanford HAI dokumentierte 61 % False-Positive-Rate bei nicht-muttersprachlichen Schreibern (Liang et al. 2023), Weber-Wulff et al. (2023) bezeichnen die getesteten Werkzeuge als "neither accurate nor reliable", und mehrere US-Universitäten (Vanderbilt, Michigan State, Northwestern) haben Turnitin-AI deaktiviert. Dieser Artikel fasst die Evidenz zusammen, zeigt strukturelle Gründe für das Scheitern — und liefert **prozessorientierte Alternativen**, die für Berufsschule und IHK-AP2 praktikabel sind.

## Beschreibung

### Die Detektions-Evidenz 2023–2026

| Studie | Befund |
|---|---|
| **Liang et al. 2023** (Stanford HAI, *Patterns*) | Sieben GPT-Detektoren klassifizieren 61,22 % der TOEFL-Essays von Non-Native-Speakern fälschlich als KI-generiert; 19 % werden unanim beschuldigt |
| **Weber-Wulff et al. 2023** (*Int. Journal for Educational Integrity*) | 12 Tools (Turnitin, GPTZero, Copyleaks, ZeroGPT, Compilatio …): "neither accurate nor reliable". Paraphrasierung umgeht Detektion trivial |
| **MDPI Information 16/10/904 2025** | "Can We Trust AI Content Detection Tools for Critical Decision-Making?" — explizit verneint |
| **MDPI Information 16/10/905 2025** | False-Positives systematisch; besondere Benachteiligung mehrsprachiger Lernender |
| **Desaire et al. 2023** (*Cell Reports*) | Domänenspezifisches XGBoost-Modell auf Chemie-Abstracts > 98 % Accuracy — generalisiert nicht, damit für Prüfungen nicht einsetzbar |

**Turnitin-Varianz:** Selbst-Claim 1 % FP vs. empirische Befunde 4–15 % (GradPilot 2025). Bei 75.000 Abgaben/Jahr (Vanderbilt-Dimension) entspräche das 750 bis 11.000 falschen Verdachtsfällen.

### Warum Detektion strukturell scheitert

Detektoren messen statistische Oberflächenmerkmale — insbesondere **Perplexity** und **Burstiness** — der Textverteilung. Das führt zu drei strukturellen Problemen:

1. **Perplexity-Korrelation mit Sprachraffinesse.** Non-Native-Schreiber haben niedrigere Perplexity. Formal-gelehrsamer Stil wird als KI fehlklassifiziert.
2. **Triviale Umgehbarkeit.** Der Prompt "Elevate the text using literary language" senkt die Detektionsrate auf nahezu null (Liang et al.). Humanizer-Tools (Quillbot, Humanize AI) erledigen das automatisch.
3. **Modellwechsel.** Detektoren werden gegen GPT-3 kalibriert, dann kommt GPT-4o, dann Claude Opus 4 — jede Generation verschiebt die Verteilung und veraltet den Detektor.

**Kein stabiler Fingerabdruck existiert**, weil LLM-Output per Design menschliche Textverteilung nachbildet.

### Wer wird falsch beschuldigt?

Drei Risikogruppen haben systematisch höhere False-Positive-Raten:

- **Non-Native-Speaker** (bis 61 % FP; Stanford HAI)
- **Neurodivergente Schreibstile** — ritualistisch, formelhaft, wiederholt
- **Gute Schreiber** mit reicher, formaler Syntax

In der Berufsschule betrifft das besonders **DaZ-Azubis** — siehe [[sprachsensibler-it-unterricht]] als Repo-Kontext. Bei Detektor-Verdacht entsteht eine faktische Beweislastumkehr: Der Azubi muss seine Unschuld beweisen.

### Rechtliche Problematik des Detektor-Einsatzes

- **DSGVO**: Upload minderjähriger Azubi-Texte zu Turnitin (USA) oder GPTZero ist Art. 6 und 44 ff. problematisch. Mindestens Einwilligung und Auftragsverarbeitung nötig.
- **Persönlichkeitsrecht und Fürsorgepflicht**: Ein unbegründeter Plagiatsvorwurf ist stigmatisierend.
- **Beweisrecht**: Detektor-Output ist keine forensische Evidenz. Blackbox, keine Falsifikation, keine Einzelfall-Fehlerwahrscheinlichkeit. In Noten-Widerspruchsverfahren haltlos.

## Bezug zur IT-Ausbildung

### IHK-AP2-Deklarationspraxis

Mehrere IHKs (Nord Westfalen, Rhein-Neckar, Baden-Württemberg) haben seit 2024 präzisiert:

- KI-Nutzung zulässig **als Assistenz**
- **Deklarationspflicht im Anhang** der Projektdokumentation
- Prompts und KI-Antworten als Screenshots
- KI-generierte Passagen markieren — **nicht-markierte Übernahme = "ungenügend"**
- Ausnahme: reine Rechtschreib- und Grammatikprüfung ohne Inhaltsänderung
- Eigenleistung muss erkennbar bleiben — nicht ersetzbar

Das eigentliche Prüfungsinstrument ist dabei nicht die Dokumentation, sondern das [[fachgespraech-didaktik|Fachgespräch]]: Der PA prüft die Deckung zwischen Abgabe und Erklärfähigkeit. Wer seinen Code nicht erklären kann, scheitert über das Fachgespräch — unabhängig von Detektor-Scores.

### Schriftliche IHK-Prüfungen sind papierbasiert

AP1 und AP2-Teil-2 sind IHK-seitig handschriftliche Klausuren. Die KI-Umgehung ist hier strukturell gelöst. Für schulische Klassenarbeiten empfiehlt sich dasselbe: **handschriftlich** oder **Safe Exam Browser**.

## Praktische Anwendung

### Alternativen statt Detektion — vier robuste Säulen

**1. Prozess-Portfolio**

Der Azubi dokumentiert nicht nur das Endprodukt, sondern den **Prozess**:
- Git-History mit sinnvollen Commit-Nachrichten und Zeitstempeln
- Zwischenstände (Meilenstein-Abgaben)
- [[lerntagebuch|Lerntagebuch]] mit Reflexion zu Entscheidungen
- Screen-Recordings bei komplexen Aufgaben (optional)

Das macht KI-Nutzung nicht unmöglich — aber trivial-Copy-Paste wird sichtbar, weil Zwischenstände fehlen.

**2. Mündliche Verteidigung (Viva Voce)**

Nach schriftlicher Abgabe fünf bis zehn Minuten Fachgespräch mit gezielten "Erklären Sie diese Stelle"-Fragen — siehe [[explain-in-plain-english|EiPE]] und [[fachgespraech-didaktik]]. Wer den Code nicht erklären kann, fällt durch. Der PA muss nicht beweisen, dass KI genutzt wurde — er prüft, ob der Azubi den Inhalt beherrscht.

**3. Authentische Aufgaben mit lokalem Kontext**

Daten aus dem Ausbildungsbetrieb, die nicht im Trainingskorpus der LLMs sind. Aufgaben, die spezifische Annahmen verlangen, die nur jemand mit konkretem Betriebswissen treffen kann. KI kann nur allgemein antworten — das ist dann erkennbar zu wenig.

**4. In-Class-Abgaben**

Handschriftlich oder mit Safe Exam Browser in begrenzter Zeit. Löst KI-Frage strukturell, auf Kosten von Authentizität und Umfang.

### KI-Deklarations-Vorlage für AP2-Anhang

Als Tabelle im Anhang der Projektdokumentation:

| Tool | Version | Zweck | Betroffene Kapitel/Dateien | Repräsentative Prompts (3–5) | Eigene Prüfung und Änderung | Commit-Hash / Screenshot |
|---|---|---|---|---|---|---|
| GitHub Copilot | — | Code-Vorschläge | `routes/books.js` | "Complete the PUT handler" | Alle Vorschläge manuell geprüft, `validateBody()` eingefügt, Typen angepasst | `a3f2c1d` / Anhang B |
| Claude Sonnet | 4.6 | Doku-Entwurf | Kapitel 4.3 | "Summarize the migration strategy from SQLite to PostgreSQL" | Sprache korrigiert, Beispiele entfernt, fachliche Präzisierung | — / Anhang C |

Die Tabelle ist **kein Verzeichnis jedes Prompts** — das wäre praxisfremd — sondern eine **repräsentative Auswahl** plus Verweise. Der PA prüft stichprobenartig im Fachgespräch.

### Kommunikation mit IHK-Prüfungsausschuss

Typische PA-Fragen im Fachgespräch:
- "Zeigen Sie mir die Stelle, wo Sie *X* entwickelt haben — begründen Sie Ihre Entscheidung."
- "Welche Alternativen haben Sie erwogen?"
- "Warum diese Library und nicht *Y*?"
- "Was passiert, wenn ein Benutzer *Z* eingibt?"

Wer den Code **nicht erklären kann**, fällt über das Fachgespräch. Täuschungsvermutung nach § 17 MPO-IT ist dann möglich — aber gestützt auf die **nachgewiesene Nicht-Erklärbarkeit**, nicht auf Detektor-Scores.

### Schulische Richtlinie — Empfehlung

**Schulkonferenz-Beschluss** als Rückendeckung:

1. **Keine Detektions-Tools** (DSGVO, False-Positives, Beweisproblem)
2. **Prozessnachweise und mündliche Verteidigung** als Standardverfahren
3. **Bei Verdacht**: Beweislast bei der Lehrkraft — nicht beim Azubi
4. **Eltern-/Ausbildergespräch** nur mit konkreter Evidenz (Widerspruch zwischen Abgabe und mündlichem Nachweis), nie allein auf Score gestützt
5. **Klassenarbeiten** handschriftlich oder Safe-Exam-Browser
6. **Projektarbeiten** mit Zwischenständen und Viva Voce

Die KMK-Handlungsempfehlung vom 10.10.2024 stützt diesen Ansatz: "Prüfungskultur umbauen, Dialog und Verteidigung integrieren."

### Häufige Missverständnisse

- *"Wenn ich Turnitin nutze, bin ich auf der sicheren Seite."* — Nein. Bei Widerspruch liefert der Score keine belastbare Evidenz.
- *"Wir müssen einfach bessere Detektoren warten."* — Strukturell unlösbar. LLM-Output ist per Design menschlicher Textverteilung ähnlich.
- *"Die Azubis werden es schon nicht merken."* — Sie merken es, und sie erzählen es weiter. Falsche Beschuldigung zerstört Vertrauen dauerhaft.

## Verwandte Konzepte

- [[ki-nutzungsregeln-unterricht]] — Zwilling-Artikel mit Zonen-Modell für Klassenpolicy
- [[fachgespraech-didaktik]] — mündliche Verteidigung als wirksamste Alternative zu Detektion
- [[explain-in-plain-english]] — Kern-Format für Viva-Voce-Fragen
- [[abschlussprojekt-begleitung]] — AP2-Deklarationspraxis im Kontext der Projektphase
- [[rubric-design]] — Bewertung der Deklarationsqualität und Erklärfähigkeit
- [[kompetenzfeststellung-programmierung]] — authentische Assessment-Formen als Integritäts-Garantie
- [[deskilling-ki-codegenerierung]] — warum Prozess-Nachweise didaktisch sinnvoll sind
- [[datenschutz-lernumgebungen]] — DSGVO-Rahmen für jede Detektions-Initiative
- [[formatives-assessment]] — Prozessdiagnostik ersetzt Detektor-Score
- [[lerntagebuch]] — Reflexions-Instrument als Portfolio-Baustein
- [[testitem-konstruktion-digital]] — Anti-KI-Aufgabendesign in schriftlichen Tests
- [[pair-programming-unterricht]] — kollaborative Produktionsspuren als natürliche KI-Kontrolle

## Quellen

- Liang, W., Yuksekgonul, M., Mao, Y., Wu, E. & Zou, J. (2023). GPT detectors are biased against non-native English writers. *Patterns, 4*(7), 100779.
- Weber-Wulff, D., Anohina-Naumeca, A., Bjelobaba, S., Foltýnek, T., Guerrero-Dib, J., Popoola, O., Šigut, P. & Waddington, L. (2023). Testing of detection tools for AI-generated text. *International Journal for Educational Integrity, 19*, 26.
- Desaire, H., Chua, A. E., Isom, M., Jarosova, R. & Hua, D. (2023). Distinguishing academic science writing from humans or ChatGPT with over 99 % accuracy using off-the-shelf machine learning tools. *Cell Reports Physical Science, 4*(6), 101426.
- *Can we trust AI content detection tools for critical decision-making?* (2025). *Information, 16*(10), 904.
- *Evaluating the effectiveness and ethical implications of AI detection tools in higher education.* (2025). *Information, 16*(10), 905.
- *Beyond detection: Redesigning authentic assessment in an AI-mediated world.* (2025). *Education Sciences, 15*(11), 1537.
- Perkins, M., Furze, L., Roe, J. & MacVaugh, J. (2024). The AI Assessment Scale (AIAS) revisited. *arXiv:2412.09029.*
- Vanderbilt University. (2023, 16. August). *Guidance on AI detection and why we're disabling Turnitin's AI detector.*
- Bildungsministerkonferenz. (2024, 10. Oktober). *Handlungsempfehlung zum Umgang mit KI in schulischen Bildungsprozessen.*
- IHK Nord Westfalen. (2024). *Richtlinie zum Einsatz von KI in der Ausbildung.*
- IHK Rhein-Neckar. (2025). *Dokumentation der betrieblichen Projektarbeit — IT-Berufe.*
- Fachinformatiker.de (2024/2025). Forum-Diskussionen zu KI-markierten Dokumentationen und IHK-Umgang.
