---
title: Community of Practice
type: theorie
tags: [soziales-lernen, kooperatives-lernen, wissenstransfer, berufspraxis, identitaet]
related:
  - "[[pair-programming-unterricht]]"
  - "[[code-review-unterricht]]"
  - "[[cognitive-apprenticeship]]"
  - "[[peer-instruction]]"
  - "[[affektive-dimensionen]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[self-determination-theory]]"
  - "[[computational-action]]"
  - "[[engagement-theory]]"
  - "[[kooperatives-lernen]]"
  - "[[expertise-entwicklung]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[lernortkooperation-transfer]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Wengers Modell (1998) erklärt, wie Lernen durch Teilhabe an Praxisgemeinschaften
  geschieht — von der Peripherie (Beobachten, Zuarbeiten) zum Zentrum
  (vollwertige Mitarbeit). Das fehlende Dach-Framework für soziales Lernen
  in der IT-Ausbildung.
---

# Community of Practice

## Kernidee

Wenger (1998) beschreibt Lernen nicht als individuellen Wissenserwerb, sondern als wachsende Teilhabe an einer Praxisgemeinschaft (Community of Practice, CoP). Neuling:e beginnen am Rand (legitimate peripheral participation) und bewegen sich durch Beobachten, Mitwirken und zunehmende Verantwortung ins Zentrum. Dieses Modell erklärt, warum [[pair-programming-unterricht]], [[code-review-unterricht]] und Open-Source-Beiträge funktionieren: Sie sind Formen der Teilhabe an einer Entwickler:innen-Community.

## Beschreibung

### Drei Dimensionen einer CoP

| Dimension | Beschreibung | IT-Ausprägung |
|-----------|-------------|---------------|
| **Gemeinsames Unternehmen** | Geteiltes Ziel, das die Gemeinschaft definiert | "Wir entwickeln Software" / "Wir lösen IT-Probleme" |
| **Gegenseitiges Engagement** | Regelmäßige Interaktion und Zusammenarbeit | Code Reviews, Stand-ups, Pair Programming, Slack-Channels |
| **Gemeinsames Repertoire** | Geteilte Werkzeuge, Begriffe, Geschichten, Praktiken | Git-Workflow, Design Patterns, Coding-Konventionen, "War Stories" |

### Legitimate Peripheral Participation (Lave & Wenger, 1991)

Neulinge lernen, indem sie zunächst einfache, periphere Aufgaben in einer echten Praxisgemeinschaft übernehmen:

| Phase | In der IT-Ausbildung | Lernmechanismus |
|-------|---------------------|-----------------|
| **Beobachten** | Code Reviews lesen, Senior-Entwickler:innen beim Debugging zusehen | [[cognitive-apprenticeship]]: Modeling |
| **Zuarbeiten** | Bug-Fixes, Dokumentation, Test-Schreiben | Scaffolded Participation, Low-Risk-Beiträge |
| **Mitarbeiten** | Features implementieren, an Architekturentscheidungen teilnehmen | Wachsende Verantwortung |
| **Vollwertig beitragen** | Eigenständig Projekte leiten, andere mentoren | Vom Lehrling zum Gesellen |

### Identitätsbildung

Wenger betont: Lernen ist nicht nur Wissenserwerb, sondern **Identitätsentwicklung**. Ein:e Lernende:r wird zum:zur "Entwickler:in" — nicht nur durch Skills, sondern durch Zugehörigkeit zu einer Community. Diese Identität motiviert freiwillige Übung und lebenslanges Lernen (vgl. [[affektive-dimensionen]]: Zugehörigkeitsgefühl, [[selbstgesteuertes-lernen]]).

### IT-Communities als Lernräume

| Community | Typ | Lernform |
|-----------|-----|----------|
| **Open Source** (GitHub) | Global, asynchron | Code lesen, Issues bearbeiten, PRs einreichen |
| **Stack Overflow** | Q&A-Community | Fragen stellen, Antworten bewerten |
| **Dev-Team im Betrieb** | Lokal, synchron | Pair Programming, Code Reviews, Stand-ups |
| **Berufsschulklasse** | Institutionell | Peer Instruction, gemeinsame Projekte |
| **Discord/Slack-Communities** | Informell | Peer-Support, Erfahrungsaustausch |

## Bezug zur IT-Ausbildung

Das duale System ist ein natürliches CoP-Modell: Azubis beginnen als periphere Teilnehmer:innen im Betrieb und der Berufsschulklasse und bewegen sich über 3 Jahre ins Zentrum. Die Berufsschule kann diesen Prozess bewusst gestalten:

- **1. Jahr:** Beobachten und Zuarbeiten — Code Reviews lesen, Pair Programming mit erfahreneren Peers, Beobachten von Live-Coding
- **2. Jahr:** Mitarbeiten — Eigene Features in Teamprojekten, Code Reviews *geben* (nicht nur empfangen), Peer Instruction als ConcepTest-Ersteller:in
- **3. Jahr:** Vollwertig beitragen — Open-Source-Beiträge, eigenes Projekt mit Mentoring für Jüngere, Fachvortrag vor der Klasse

Agile Praktiken (Scrum, Kanban) sind formalisierte CoP-Mechanismen: Retrospektiven = strukturierte Reflexion, Stand-ups = gegenseitiges Engagement, gemeinsame Coding-Standards = geteiltes Repertoire.

## Praktische Anwendung

Ein Agent kann CoP-Prinzipien umsetzen:

1. **Peripherie-Aufgaben anbieten:** Für Neulinge Code-Lese-Aufgaben, Bug-Reports, Dokumentation — nicht sofort große Features. Vgl. [[expertise-entwicklung]]: Tracing vor Writing.
2. **Gemeinschaftliches Repertoire aufbauen:** Gemeinsame Coding-Standards, Glossar, Wiki — Lernende tragen bei und lernen die "Sprache" der Community.
3. **Identität fördern:** Lernende als "Entwickler:innen" adressieren, nicht als "Schüler:innen". Portfolio-Arbeit, GitHub-Profil, Technologie-Blog unterstützen die Identitätsbildung.
4. **Peer-Netzwerk orchestrieren:** [[peer-instruction]], [[code-review-unterricht]] und [[pair-programming-unterricht]] sind CoP-Mechanismen — sie sollten als zusammengehörendes System gestaltet werden, nicht als isolierte Methoden.
5. **Brücke zum Betrieb:** Lernsituationen so gestalten, dass sie die CoP im Ausbildungsbetrieb spiegeln — gleiche Tools, ähnliche Workflows, authentische Aufgaben (vgl. [[handlungsorientierter-unterricht]]).

## Verwandte Konzepte

- [[pair-programming-unterricht]] — Gegenseitiges Engagement in einer Mini-CoP (Paar)
- [[code-review-unterricht]] — Geteiltes Repertoire (Qualitätsstandards) und gegenseitiges Feedback
- [[cognitive-apprenticeship]] — Legitimate Peripheral Participation ist der Lernmechanismus hinter CA
- [[peer-instruction]] — Peers als Lernressourcen füreinander (Wiliams Strategie 4)
- [[affektive-dimensionen]] — Belonging und Identität als zentrale Motivationsfaktoren
- [[handlungsorientierter-unterricht]] — Berufliche CoP als Zielbild der Handlungskompetenz
- [[selbstgesteuertes-lernen]] — Programmier-Identität motiviert freiwillige Weiterentwicklung

## Quellen

- Wenger, E. (1998). Communities of Practice: Learning, Meaning, and Identity. Cambridge University Press.
- Lave, J. & Wenger, E. (1991). Situated Learning: Legitimate Peripheral Participation. Cambridge University Press.
- Wenger, E., McDermott, R. & Snyder, W. M. (2002). Cultivating Communities of Practice. Harvard Business School Press.
