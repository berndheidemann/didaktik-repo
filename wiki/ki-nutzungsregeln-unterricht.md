---
title: "KI-Nutzungsregeln im Unterricht — Zonen-Modell für Berufsschule"
type: praxis
tags: [ki-policy, classroom-management, zonen-modell, aias, ampel, kmk, ihk, regelbruch, referenz]
related:
  - "[[ki-kompetenzrahmen-schule]]"
  - "[[ki-tool-auswahl-berufsschule]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[fachgespraech-didaktik]]"
  - "[[abschlussprojekt-begleitung]]"
  - "[[datenschutz-lernumgebungen]]"
  - "[[self-explanation]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[lernsituationen-gestalten]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[fehlerkultur-im-unterricht]]"
  - "[[formatives-assessment]]"
  - "[[blooms-taxonomie]]"
  - "[[ki-integritaet-pruefungsleistung]]"
  - "[[kritische-ki-bewertungskompetenz]]"
  - "[[ki-prompt-handwerk]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden]
evidenzgrad: praxisbericht
created: 2026-04-20
updated: 2026-04-20
summary: >
  Operative Klassen-Policy für KI-Nutzung statt Verbots- oder Laissez-faire-
  Muster. Rot/Gelb/Grün-Zonen-Modell nach Aufgabentyp mit Header-Template,
  Klassenkontrakt und Regelbruch-Gesprächsleitfaden. Verbindet KMK-
  Handlungsempfehlung (2024), IHK-Deklarationspflicht und Perkins' AIAS-Rahmen.
---

# KI-Nutzungsregeln im Unterricht — Zonen-Modell für Berufsschule

## Kernidee

Die KMK-Handlungsempfehlung vom 10.10.2024 fordert einen "kritisch-konstruktiven Umgang" mit KI — ohne Verbot, aber mit Anpassung der Prüfungsformate. Schulen bleiben damit operativ auf sich gestellt. Der Lehrer am Montagmorgen braucht **keine weitere Rahmenrichtlinie**, sondern eine Klassen-Policy: *Wann darf der Azubi KI nutzen, wann nicht, und wie kommunizieren wir das?* Dieser Artikel liefert ein **Rot/Gelb/Grün-Zonen-Modell**, ein **Aufgaben-Header-Template** und einen **Regelbruch-Gesprächsleitfaden** — abgeleitet aus KMK, IHK, UNESCO und Perkins' AI Assessment Scale.

## Beschreibung

### Policy-Landschaft (Deutschland 2024–2026)

- **KMK-Handlungsempfehlung (10.10.2024, Federführung NRW):** Fünf Themenfelder — Lernen/Didaktik, Prüfungskultur, Lehrkräfteprofessionalisierung, Rechtsrahmen, Chancengerechtigkeit. Kein Verbot, aber Aufforderung zur Prüfungsformat-Anpassung.
- **Hessen-Handreichung "KI in Schule und Unterricht":** Pädagogisch-didaktische Dimension + Rechtlicher Rahmen (Schulgesetz, DSGVO, Urheberrecht).
- **IHK Nord Westfalen Richtlinie:** KI **nur als Assistenzsystem**, nicht als eigenständige Leistung. **Dokumentationspflicht** im AP2-Anhang (Prompts und KI-Antworten als Screenshots). Fehlende Kennzeichnung = "ungenügend".
- **Länder-Tools:** telli (16 Länder, Open Source, keine Trainingsnutzung), fobizz, F13, ByCS-KI, schulKI. Landes-Zugänge sind DSGVO-kompatibel — Unterricht sollte diese Pflicht-Tools einsetzen.

Das Muster ist einheitlich: **keine Detektions-Pflicht, aber Deklarationspflicht**. Das ist die entscheidende Rechtsbasis für unser Zonen-Modell.

### Internationale Referenzpunkte

- **UNESCO (2023):** Alters-Mindestgrenzen, menschliche Aufsicht, Kompetenzaufbau **vor** Nutzung.
- **OECD/EC AILit Framework (Draft 2025, Final 2026, Basis für PISA 2029):** vier Domänen — *Engage / Create / Manage / Design with AI*.
- **Perkins, Furze, Roe & MacVaugh (2024), AIAS v2:** Fünf-Stufen-Skala — 1. No AI, 2. AI Planning, 3. AI Assisted, 4. Full Collaboration, 5. AI Exploration. V2 verzichtet bewusst auf Ampel-Farben, um keine implizite Hierarchie zu suggerieren.
- **College Board AP (2024/2025):** differenzierte Policies je Kurs — AP Art KI komplett verboten; AP CS KI erlaubt, aber Code-Erklärung Pflicht; AP Seminar Deklaration Pflicht.
- **Anthropic Education Report (2025):** CS-Studierende führen 36,8 % aller Claude-Conversations (bei nur 5,4 % Bevölkerungsanteil). **Vier Nutzungstypen:** Direct Problem Solving, Direct Output Creation, Collaborative Problem Solving, Collaborative Output Creation — *augmentative* Nutzung (Collaborative) ist Kennzeichen von AI Fluency, *delegative* nicht.

### Warum ein 3-Zonen-Ampel-Modell für FIAE/FIDP

Perkins' AIAS-5-Stufen sind für Hochschulforschung kalibriert und für die Tagespraxis zu fein. Andererseits kritisiert die University of Sydney das Ampel-Modell grundsätzlich ("Two-Lane"-Ansatz, "AI menu" statt Rot/Gelb/Grün). Für Berufsschule wägt die Abwägung:

- **Einfachheit**: Schüler müssen die Zone pro Aufgabe in einer Sekunde erkennen.
- **Klarheit gegenüber IHK-Richtlinie**: Die Ampel lässt sich auf die IHK-Deklarationspflicht abbilden.
- **Robustheit gegen Regelbruch**: Farbsymbolik ist intuitiv auch für DaZ-Azubis.

**Empfehlung: 3-Zonen-Ampel** (Rot/Gelb/Grün) mit Pflicht-Header auf jeder Aufgabe.

### Die drei Zonen

| Zone | Definition | Typische FIAE/FIDP-Beispiele | Bloom-Stufen |
|---|---|---|---|
| **Rot** | KI-frei, keine Assistenz erlaubt | Klassenarbeit, Fachgespräch-Proben, Debugging-Grundübung, [[notional-machines\|Notional Machines]] (Zeiger, Scope, HTTP-Zyklus), Syntax-Drill, händisches Tracing | Erinnern, Verstehen, Anwenden in der Schemabildungs-Phase |
| **Gelb** | KI-assistiert, **Deklarationspflicht** (Prompt + Output sichtbar) | Recherche, Patterns-Bibliothek, Doku-Entwürfe, Debugging bei echtem Blocker, Unit-Test-Generierung, Refactoring-Vorschläge, Rubber-Ducking | Anwenden, Analysieren |
| **Grün** | KI-zentrierte Aufgaben, Lernziel ist KI-Umgang selbst | Prompt-Experimente, KI-Tool-Evaluation, kritischer Output-Vergleich, RAG-/Agent-Projekte, LF zu KI selbst | Bewerten, Erschaffen |

**Bloom-Heuristik:** Je tiefer die Stufe (wo Schemata aufgebaut werden), desto häufiger rot. Je höher die Stufe (Transfer, Bewertung, Gestaltung), desto häufiger gelb oder grün — mit Reflexionspflicht.

## Bezug zur IT-Ausbildung

### Zone verändert sich über eine Lernsituation

Eine Lernsituation durchläuft typischerweise drei Phasen, die sich in Zonen übersetzen:

1. **Einführung (rot):** Schüler bauen die Notional Machine. Hier würde KI-Einsatz das Lernziel aushebeln.
2. **Vertiefung (gelb):** Produktive Anwendung mit möglichem KI-Support unter Deklaration.
3. **Transfer (grün):** Kritischer Output-Vergleich, Prompt-Refactoring, Lösungs-Alternativen.

Das muss der Lehrkraft **explizit** kommuniziert werden: "Diese Woche sind wir in Rot, weil wir die Grundlage aufbauen. Nächste Woche öffne ich Gelb für den Realfall."

### Heterogenität der Klasse

FIAE/FIDP-Klassen enthalten erfahrene Azubis mit professioneller Copilot-Nutzung im Betrieb neben Azubis, die noch nie ChatGPT geöffnet haben. **Die rote Zone ist der Equalizer** — dort müssen alle gleichermaßen ohne KI bestehen können. Das ist kein Rückschritt, sondern Kompetenz-Fundament.

**Zone pro Aufgabe, nicht pro Schüler** — aus Fairnessgründen. Differenzierung findet in Scaffolds (Worked Examples, Tipp-Karten) statt, nicht in unterschiedlichen Regeln.

### Verknüpfung zur IHK-Deklarationspflicht

Die **gelbe Zone** spiegelt exakt die [[abschlussprojekt-begleitung|IHK-AP2-Richtlinie]]: KI als Assistenz, Prompts und Antworten im Anhang. Wer schulisch in Gelb arbeitet, übt unbewusst das Prüfungsprotokoll ein.

## Praktische Anwendung

### Aufgaben-Header-Template

Jede Aufgabe, die verteilt wird, trägt einen Header. Beispiel für gelbe Zone:

```
╔══════════════════════════════════════╗
║  KI-Zone: GELB (mit Deklaration)    ║
╠══════════════════════════════════════╣
║  Erlaubt:    Recherche, Code-       ║
║              Erklärung, Doku-Entwurf ║
║  Nicht ok:   Lösungscode direkt     ║
║              übernehmen              ║
║  Deklaration: Prompt + Antwort      ║
║               als Anhang              ║
╚══════════════════════════════════════╝
```

Drei Zeilen, eine Sekunde lesen — Schüler weiß sofort, woran er ist.

### Klassenkontrakt (Schuljahresanfang)

Statt Top-Down-Verkündung: Klasse handelt den Kontrakt **mit** aus (Ownership-Effekt, weniger Regelbruch). Zwei Stunden Zeit, drei Leitfragen:

1. Wo hilft KI beim Lernen? Wo verhindert sie es?
2. Was ist fair gegenüber Mitschülern, die kein Premium-Abo haben?
3. Was ist Pflicht (IHK-Richtlinie, Schulordnung) und nicht verhandelbar?

Ergebnis: Gemeinsames Dokument (1 Seite), das im Klassenraum hängt und in jedem Materialpaket als Referenz dient.

### Training der Klasse (2–3 Doppelstunden zu Beginn)

- **Kartensortieraufgabe**: 20 reale FIAE-Aufgaben → Schüler ordnen jeweils Rot/Gelb/Grün zu, anschließend Diskussion der Grenzfälle.
- **Rollenspiele**: Regelbruch-Situation ("Ich habe in der roten Phase KI genutzt") — sowohl aus Lehrer- als auch Schüler-Perspektive.
- **Werkzeug-Tour**: Welche Tools sind erlaubt (telli/fobizz/F13), welche nicht (private ChatGPT-Accounts mit Schuldaten)? Siehe [[datenschutz-lernumgebungen]] und [[ki-tool-auswahl-berufsschule]].

### Regelbruch — konstruktiver Gesprächsleitfaden

Die Detektion von KI-Nutzung ist unzuverlässig (dazu eigener Artikel `ki-integritaet-pruefungsleistung`). Entscheidend ist der Umgang mit **erkannten oder zugegebenen** Regelbrüchen.

**Stufenmodell:**

| Stufe | Situation | Lehrerhandeln |
|---|---|---|
| 1 | Erstmaliger Regelbruch | Gespräch, Aufgabe wiederholen, keine Note-Senkung. Fokus: "Welche Stelle war dir unklar? Wie lösen wir das ohne KI?" |
| 2 | Wiederholt | Schriftliche Dokumentation, Ausbilder-Information |
| 3 | In Prüfung/Abschlussarbeit | Konsequenz gemäß Schulordnung; bei AP2 IHK-Richtlinie ("ungenügend") |

**Gesprächs-Skript Stufe 1:**

> "Ich sehe Indizien, dass du KI genutzt hast — diese Aufgabe war rote Zone. Ich werte die Abgabe nicht. Lass uns kurz zusammensetzen: Welche Stelle war dir unklar? Wie kommen wir da ohne KI hin? Ich möchte, dass du das selbst kannst."

Der Fokus liegt auf **Lernen statt Strafe**. Das funktioniert nur, wenn die Beziehung tragfähig ist — siehe [[fehlerkultur-im-unterricht]].

### Rechtliche Rückendeckung

- **Schulkonferenz-Beschluss**: Das Zonen-Modell sollte formal in der Schulkonferenz verankert sein — dann hat die Lehrkraft Rückendeckung bei Konsequenzen.
- **Ausbilder-Information**: Einmal pro Halbjahr kurze Nachricht an die Ausbildenden, welches Zonen-Modell im Schulteil gilt. Synchronisierung Berufsschule ↔ Betrieb verhindert Widersprüche.
- **Elterngespräch (minderjährige Azubis)**: Das Modell ist der Rahmen, nicht der Einzelfall.

### Was explizit **nicht** empfohlen wird

- **Detektions-Tools** (GPTZero, Turnitin AI): unzuverlässig (15-Punkt-Varianz; False-Positive-Bias gegen L2-Sprecher und Neurodivergente), DSGVO-problematisch. Eigener Artikel: `ki-integritaet-pruefungsleistung`.
- **Private ChatGPT-Accounts mit Schul- oder Betriebsdaten**: DSGVO-Verstoß. Nur Landes- oder DSGVO-konforme Enterprise-Tools.
- **Generelles KI-Verbot**: realitätsfremd (89 % CS-Studierende nutzen KI bereits vor Kursbeginn, SIGCSE 2025). Treibt den Gebrauch in die Grauzone.

## Verwandte Konzepte

- [[ki-kompetenzrahmen-schule]] — Rahmenkompetenzen (AILit/UNESCO/KMK); das Zonen-Modell ist deren operative Umsetzung
- [[ki-tool-auswahl-berufsschule]] — welche Tools für welche Zone DSGVO-konform sind
- [[deskilling-ki-codegenerierung]] — Evidenz, warum rote Zone (KI-freie Phasen) didaktisch zwingend ist
- [[fachgespraech-didaktik]] — Fachgespräch als KI-resistentes Prüfungsformat (rote Zone strukturell)
- [[abschlussprojekt-begleitung]] — IHK-Deklarationspflicht in der AP2-Projektarbeit spiegelt die gelbe Zone
- [[datenschutz-lernumgebungen]] — DSGVO-Rahmen für die Tool-Wahl
- [[self-explanation]] — Gegenmittel gegen Cognitive Offloading in gelber/grüner Zone
- [[pruefungsvorbereitung-lernstrategie]] — rote Zone ist die natürliche Vorbereitung auf schriftliche Prüfungen
- [[fehlerkultur-im-unterricht]] — Grundlage für konstruktiven Regelbruch-Umgang
- [[formatives-assessment]] — Diagnose von Kompetenzstand als Alternative zur Detektion

## Quellen

- Bildungsministerkonferenz. (2024, 10. Oktober). *Handlungsempfehlung zum Umgang mit Künstlicher Intelligenz in schulischen Bildungsprozessen.* KMK.
- Hessisches Kultusministerium. (2024/2025). *Künstliche Intelligenz in Schule und Unterricht — Handreichung.*
- IHK Nord Westfalen. *Richtlinie zum Einsatz von KI in der Ausbildung.* https://www.ihk.de/nordwestfalen/bildung/ausbildung/umgang-mit-ki-6749906
- Perkins, M., Furze, L., Roe, J. & MacVaugh, J. (2024). The AI Assessment Scale revisited: A framework for educational assessment. *arXiv:2412.09029.*
- Perkins, M., Furze, L., Roe, J. & MacVaugh, J. (2024). The AIAS in action: A pilot implementation of GenAI-supported assessment. *Australasian Journal of Educational Technology.*
- UNESCO. (2023). *Guidance for Generative AI in Education and Research.*
- OECD & European Commission. (2025). *Empowering Learners for the Age of AI — AILit Framework (Draft).*
- UK Department for Education. (2025). *Generative AI in education — Product Safety Expectations.*
- College Board. (2025). *AP Generative AI Usage Guidelines.*
- Anthropic. (2025). *Anthropic Education Report: How University Students Use Claude / How Educators Use Claude.*
- Liu, D. & Bridgeman, A. (2024). Menus, not traffic lights: A different way to think about AI and assessments. *Teaching@Sydney.*
- Liu, M. et al. (2025). Analysis of generative AI policies in computing course syllabi. *Proceedings of SIGCSE TS 2025.*
- Juliani, A. J. (2024). *The Traffic Light Protocol: A simple way to manage the AI classroom.*
- TeachAI. (2024). *AI Guidance for Schools Toolkit — Sample Student Agreement.*
- ISB Bayern. (2024). *Handreichung Lernbereich Künstliche Intelligenz.*
