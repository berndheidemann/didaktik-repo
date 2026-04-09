---
title: Kursarchitektur und Progression-Muster für Lernumgebungen
type: theorie
tags: [kursarchitektur, progression, mastery-learning, knowledge-graph, branching-narrative, learning-design, pacing, katalog]
related:
  - "[[interaktive-lernumgebungen]]"
  - "[[learning-engineering]]"
  - "[[self-determination-theory]]"
  - "[[flow-theorie]]"
  - "[[low-floor-high-ceiling]]"
  - "[[productive-failure]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[gamification-it-unterricht]]"
  - "[[scaffolding]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[differenzierung-inklusion]]"
  - "[[anchored-instruction]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten, erschaffen]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Acht Architektur-Muster für digitale Lernumgebungen (Linear, Mastery-Gate,
  Knowledge Graph, Branching, Rollenbasiert, Spiralcurriculum, Hub-and-Spoke,
  Sandbox) mit Entscheidungshilfe, 3-Phasen-Struktur (Onboarding/Main/Mastery)
  und Progression-Mechaniken.
---

# Kursarchitektur und Progression-Muster für Lernumgebungen

## Kernidee

Die **Architektur** einer Lernumgebung — also wie Aktivitäten, Pfade und Freiheitsgrade auf Makro-Ebene angeordnet sind — entscheidet stärker über Lernerfolg, Motivation und Abbrecherquote als jede einzelne Aufgabe. Acht Grundmuster bieten unterschiedliche Trade-offs zwischen Steuerung und Autonomie und bedienen damit jeweils andere Lernziele und Motivationsbedürfnisse. Die Wahl der Architektur ist eine bewusste pädagogische Entscheidung — und darf kein Zufallsprodukt der ersten Implementierung sein.

## Beschreibung

### Die acht Architektur-Muster

| Muster | Kernprinzip | Passt wenn... | Nicht wenn... |
|---|---|---|---|
| **Linear** | Fixe Sequenz K0→K1→...→Kn | Onboarding, Hook→Aha-Storyline, Compliance-Pfad | Heterogene Vorerfahrung, Wiederholbesuche |
| **Mastery-Gate** | Nächste Stufe erst nach Kompetenznachweis (~80%) | Hierarchische Skills mit echten Prereqs | Explorationslernen, frustsensible Themen |
| **Knowledge Graph (DAG)** | Konzepte als Knoten, Prereqs als Kanten, beliebiger Eintritt | Heterogene Vorerfahrung, viele Themen, Wiederbesucher | Storyline wichtig, wenig Inhalt (<15 Knoten) |
| **Branching Narrative** | Entscheidungen verzweigen Pfade mit Konsequenzen | Ethik, Kommunikation, Case-based Learning | Faktenwissen, Mastery-Pfade |
| **Rollenbasiert** | Persona bestimmt Pfad (Dev / DSB / Betroffener) | Multi-Stakeholder-Themen (DSGVO, Security, PM) | Einheitliche Skill-Pflicht |
| **Spiralcurriculum** | Themen mehrfach in wachsender Tiefe | Schwellenkonzepte, lange Zeiträume, Retention-Fokus | Kurzkurs (<2h), reine Skills |
| **Hub-and-Spoke / Quest** | Zentrum + optionale Seitenmissionen | Differenzierung, heterogenes Tempo, Wide-Walls-Aufgaben | Strenger Compliance-Pfad, sehr enges Zeitbudget |
| **Sandbox + Challenges** | Freie Exploration + optionale Herausforderungen | Tools die man "spielen" muss (SQL, Regex, Shell) | Strukturbedürftige Anfänger |

### Die fünf wichtigsten im Detail

**Linear.** Fixe Reihenfolge, ein Pfad. Kognitive Last minimal — keine Pfadentscheidungen. Stärke: Storyline-fähig (Hook → Konflikt → Lösung), planbar, narrativ aufladbar. Schwäche: Kein Autonomiegefühl (verletzt [[self-determination-theory]]), keine Differenzierung, Wiederholbesuche langweilig. Sinnvoll für **Onboarding-Phasen, Compliance-Themen, Hook-Sequenzen**, in denen Dramaturgie wichtiger ist als Wahlfreiheit. Lernziele: erinnern, verstehen.

**Mastery-Gate (Khan Academy / Duolingo / Bloom).** Bloom (1968) zeigte: Wenn 90% einer Klasse einen Stoff erst gemeistert haben müssen, bevor neuer kommt, erreichen sie Leistungen, die sonst nur das obere Drittel zeigt ("2-Sigma-Problem"). Implementierung: pro Einheit ein Check (Quiz / Code-Submit / Rubric), Schwelle 80-90%, dann Unlock. **Wirksamkeit stark** (Kulik et al. 1990: d ≈ 0.5; Guskey 2010). Risiko: Lernende mit Lücken hängen fest → Frustration → Kompetenzbedürfnis verletzt. Gegenmittel: alternative Wege zur gleichen Mastery (Re-Try mit anderer Aufgabe), niemals Ein-Pfad-Sackgasse.

**Knowledge Graph (DAG).** Inhalte als gerichteter azyklischer Graph: Knoten = Konzepte, Kanten = Prereqs. Lernende sehen ihre "Frontier" (alle Knoten, deren Prereqs erfüllt sind) und wählen frei. Carnegie Learning, JetBrains Academy und Brilliant arbeiten so. Vorteil: maximale Autonomie *innerhalb* einer Struktur, Wiederbesucher sehen sofort was offen ist. Nachteil: Modellierungsaufwand erheblich; lohnt erst ab ~15 Knoten. Verbindung zur Knowledge Component Decomposition aus [[learning-engineering]] und [[lerner-modell-mastery-tracking]].

**Branching Narrative.** Entscheidungen führen zu unterschiedlichen Konsequenzen, oft mit Wiederzusammenführungen (Twine, Inkle). Stark bei **wertorientierten, ethischen, kommunikativen Themen** — DSGVO ist hier ein Paradefall: "Du bist DSB. Mitarbeiter X hat... was tust du?" Drei Optionen, drei Konsequenzen, eine Reflexion. Wirkt durch *consequential Feedback*: nicht "richtig/falsch", sondern "hier sind die Folgen". Risiko: Combinatorial explosion — besser "Hub-and-Loop"-Topologie als echter Baum.

**Hub-and-Spoke / Quest-Map.** Zentrale Übersicht ("Hub") zeigt alle verfügbaren Quests. Pflichtkern (Main Quest) + optionale Side Quests. Spielpendant: Skyrim, Zelda BotW. Didaktisch erfüllt es **drei Bedürfnisse gleichzeitig**: Autonomie (Wahl), Kompetenz (sichtbarer Fortschritt durch Quest-Completion), optionale Verbundenheit (geteilte Galerie). Erlaubt sowohl Linear-Charakter (Main Quest gibt Storyline) als auch Sandbox-Charakter. **Meist der beste erste Schritt weg von Linear.**

### Progression-Mechaniken innerhalb einer Architektur

- **Unlock-Logik**: Sichtbarer Lock (Schloss-Icon mit Prereq) wirkt motivierender als unsichtbarer.
- **Difficulty Scaling**: statisch, regelbasiert (Erfolg → +1, Fehler → -1), oder modellbasiert. Solo-Projekte: regelbasiert ist die pragmatische Mitte — siehe [[lerner-modell-mastery-tracking]].
- **Skill Trees**: visualisierter DAG mit Investitionsentscheidungen ("welchen Ast vertiefe ich?"). Lohnt ab ~10 Skills.
- **Checkpoint-Systeme**: explizite Speicherpunkte nach Sinn-Einheiten, wichtig für Wiedereinsteiger.
- **XP / Levels**: extrinsische Verstärkung — Vorsicht Crowding-Out ([[self-determination-theory]]). Funktioniert nur, wenn an Mastery, nicht an Klick-Anzahl gekoppelt.
- **Streaks**: starker Verhaltensmechanismus (Duolingo), aber moralisch zwiespältig — kann Schuldgefühle erzeugen. Optional anbieten.

### Die 3-Phasen-Struktur (Onboarding / Main Loop / Mastery)

Game Designer (Schell; Koster) trennen jedes lange Erlebnis in drei Phasen mit unterschiedlichen Architekturanforderungen:

| Phase | Anteil | Ziel | Architektur | Pacing |
|---|---|---|---|---|
| **Onboarding** | ~10% | Hook, Vertrauen, erste Erfolge, mentales Modell etablieren | **Linear** mit Microziel alle 60-90 Sek. | tight, geführt |
| **Main Loop** | ~70% | Skill-Aufbau, Wiederholung, Kernlernen | **Mastery-Gate / Hub-and-Spoke / Knowledge Graph** | loose, Wahl |
| **Mastery** | ~20% | Synthese, Transfer, Performance | **Sandbox + Challenges / Branching Cases** | open |

**Praktische Konsequenz**: Viele Lern-Apps sind **vollständig im Onboarding-Modus** — eine lineare Storyline, die irgendwann endet. Das ist für die erste Phase richtig, aber die App "endet im Onboarding" und wechselt nie in Main-Loop oder Mastery-Architektur. Genau dort liegt meist der größte Wachstumsschritt.

## Durchführung

### Entscheidungsbaum: Welche Architektur wann?

```
Hauptzweck der Lernumgebung?
│
├─ Hook / Erstkontakt / Compliance ohne Vorwissen
│     → LINEAR (mit klarer Storyline + Microgoals)
│
├─ Skills mit echten Prerequisites aufbauen
│     ├─ Vorwissen homogen?  → MASTERY-GATE
│     └─ Vorwissen heterogen? → KNOWLEDGE GRAPH
│
├─ Multiple Perspektiven / Ethik / Kommunikation
│     → BRANCHING NARRATIVE
│
├─ Multi-Stakeholder-Thema (DSGVO, Security, PM)
│     → ROLLENBASIERT (oft kombiniert mit Hub-and-Spoke)
│
├─ Tieferes Verständnis über lange Zeit
│     → SPIRALCURRICULUM
│
├─ Heterogenes Tempo, Differenzierung
│     → HUB-AND-SPOKE / QUEST-MAP
│
└─ Tool muss erforscht werden (SQL, Regex, Shell)
      → SANDBOX + CHALLENGES
```

In der Praxis sind fast alle guten Lernumgebungen **Hybride**: Onboarding linear, Main Loop als Hub-and-Spoke mit lokalen Branching Cases, Spiralcurriculum als Meta-Logik.

## Voraussetzungen

- Lernziele sind geklärt — Architekturwahl ohne klare Ziele ist Kosmetik
- Genug Inhalt, damit die gewählte Architektur tragfähig ist (Knowledge Graph mit 5 Knoten ist Overkill)
- Technische Fähigkeit, Unlock-Logik und State-Management zu implementieren
- Bei Hub-and-Spoke/Branching: Story- oder Case-Material in ausreichender Menge

## Varianten

Die acht Muster sind selbst die Varianten. Die wichtigste Designentscheidung ist die **Kombination** — z.B. Rollenbasierter Einstieg → Lineare Onboarding-Sequenz → Hub-and-Spoke Main Loop → Sandbox-Mastery.

## Zeitbedarf

Linear: 1-2 Tage zusätzlich zur Content-Arbeit. Mastery-Gate oder Hub-and-Spoke: 3-7 Tage Architektur-Engineering. Knowledge Graph: 2-3 Wochen (Modellierung dominiert). Branching Narrative: linear zur Anzahl Szenen, ~4-8h pro Szene inkl. Content.

## Bezug zur IT-Ausbildung

Die Architektur einer Lernumgebung ist selbst ein IT-Thema — UX, Informationsarchitektur, State Machines, Graph-Traversal. Azubis, die eigene Lern-Apps oder Onboarding-Strecken bauen (in LF10a-12a), profitieren direkt von dieser Typologie als Designwerkzeug. Auch für nicht-Lern-Apps übertragbar: User Journeys in Onboarding-Flows (z.B. Ticket-Systeme für LF6) sind strukturell dieselben Architekturen.

## Praktische Anwendung

Ein Entwickler, der eine Lernumgebung aufbaut oder umbaut, sollte:

1. **Aktuelle Architektur explizit benennen** — oft ist "wir haben halt mit Kapitel 1 angefangen" bereits die unbewusste Wahl.
2. **3-Phasen-Check**: Bin ich in Onboarding, Main Loop oder Mastery? Viele Apps enden vorzeitig nach der Onboarding-Phase.
3. **Entscheidungsbaum anwenden** auf das Hauptziel, dann auf die Haupt-Sub-Ziele.
4. **Hybride sind Standard**, nicht Ausnahme — der Wechsel zwischen Phasen ist Teil des Designs.
5. **Kleine Eingriffe mit hohem Effekt zuerst**: Rollenbasierter Einstieg vor einer linearen Sequenz kostet 1-2 Tage und verbessert Autonomie-Erleben spürbar.
6. **Kein XP/Streak/Badge drüberkleben**, um eine schwache Architektur zu retten — "chocolate-covered broccoli" (Dichev & Dicheva 2017).

## Häufige Fehler

- **Architektur-Wahl gar nicht treffen**: erste Implementierung wird durch Trägheit zur Architektur.
- **Linear überdehnen**: > 30 Minuten am Stück linear → Dropout. Linear ist Onboarding-Tool, keine Kernarchitektur.
- **Mastery-Gate ohne Alternativwege**: Lernender hängt → einziger Weg "nochmal dasselbe" → SDT-Bruch.
- **Knowledge Graph zu früh**: 5 Inhalte als DAG = Overkill.
- **Verzweigungen ohne Konsequenzen**: Branching, in dem alle Wege zum gleichen Endzustand führen, wirkt wie Betrug.
- **Gamification ohne Architektur-Verankerung**: XP auf schwacher Architektur heilt nichts.
- **Keine Mastery-Phase**: App "endet" am Ende der Inhalte statt in offener Sandbox → Lernende kommen nie wieder.

## Verwandte Konzepte

- [[interaktive-lernumgebungen]] — dieser Artikel ist die Architektur-Ebene über den dortigen Gestaltungsprinzipien
- [[learning-engineering]] — Mastery-Gate und Knowledge Graph sind die Architektur-Implementierungen der dortigen Plattform-Prinzipien
- [[self-determination-theory]] — Architekturwahl entscheidet primär über Autonomie-Erleben
- [[flow-theorie]] — Pacing und Tension Curves sind Architektur-Themen, nicht Aufgaben-Themen
- [[low-floor-high-ceiling]] — Hub-and-Spoke ist die Architektur, in der LFHC-Aufgaben zur Geltung kommen
- [[productive-failure]] — funktioniert nur in Mastery- oder Sandbox-Architekturen
- [[selbstgesteuertes-lernen]] — setzt Architekturen mit Wahlmöglichkeiten voraus
- [[gamification-it-unterricht]] — Gamification-Mechaniken sind Progression-Mechaniken *innerhalb* einer Architektur, kein Ersatz für sie
- [[scaffolding]] — Fading erfolgt entlang der Architektur-Phasen
- [[ki-native-lernumgebungen]] — KI-Tutoring kann jede Architektur unterstützen, ändert aber nicht die Architekturwahl
- [[anchored-instruction]] — Passt besonders zur Hub-and-Spoke- und Spiralcurriculum-Architektur

## Quellen

- Bloom, B. S. (1968). Learning for mastery. *Evaluation Comment*, 1(2), 1-12.
- Bruner, J. S. (1960). *The Process of Education*. Harvard University Press.
- Dichev, C., & Dicheva, D. (2017). Gamifying education: What is known, what is believed and what remains uncertain: A critical review. *International Journal of Educational Technology in Higher Education*, 14(1), 9.
- Gee, J. P. (2003). *What Video Games Have to Teach Us About Learning and Literacy*. Palgrave Macmillan.
- Guskey, T. R. (2010). Lessons of mastery learning. *Educational Leadership*, 68(2), 52-57.
- Kulik, C. C., Kulik, J. A., & Bangert-Drowns, R. L. (1990). Effectiveness of mastery learning programs: A meta-analysis. *Review of Educational Research*, 60(2), 265-299.
- Schell, J. (2019). *The Art of Game Design: A Book of Lenses* (3rd ed.). CRC Press.
- Koster, R. (2013). *A Theory of Fun for Game Design* (2nd ed.). O'Reilly.
- Anderson, J. R., Corbett, A. T., Koedinger, K. R., & Pelletier, R. (1995). Cognitive tutors: Lessons learned. *Journal of the Learning Sciences*, 4(2), 167-207.
