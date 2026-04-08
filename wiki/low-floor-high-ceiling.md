---
title: Low Floor, High Ceiling, Wide Walls
type: theorie
tags: [heterogenitaet, aufgabendesign, differenzierung, einstieg, wide-walls]
related:
  - "[[scaffolding]]"
  - "[[expertise-entwicklung]]"
  - "[[threshold-concepts]]"
  - "[[worked-examples]]"
  - "[[lernsituationen-gestalten]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[productive-failure]]"
  - "[[self-determination-theory]]"
  - "[[flow-theorie]]"
  - "[[primm-methode]]"
  - "[[use-modify-create]]"
  - "[[computational-action]]"
  - "[[kursarchitektur-lernumgebungen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, erschaffen]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Aufgaben mit niedriger Einstiegshürde und offener Erweiterungstiefe (Papert,
  Resnick) — ergänzt um "Wide Walls" für diverse Lösungswege. Das zentrale
  Designprinzip, um schwache und starke Lernende in derselben Aufgabe zu
  begeistern, ohne Niveaustufen schreiben zu müssen.
---

# Low Floor, High Ceiling, Wide Walls

## Kernidee

Eine gute Aufgabe braucht einen *niedrigen Boden* (jede:r kann sofort einsteigen, ohne Erklärung), eine *hohe Decke* (selbst Fortgeschrittene können Stunden produktiv vertiefen) und *breite Wände* (viele unterschiedliche Lösungswege und Produktformen sind möglich). Erfunden hat das Prinzip Seymour Papert für Logo, Mitchel Resnick hat es für Scratch und das MIT Media Lab um die Wide-Walls-Dimension erweitert. Es ist das wirksamste Einzelprinzip gegen das Heterogenitätsproblem im IT-Unterricht — *eine* Aufgabe statt drei Niveaustufen.

## Beschreibung

### Low Floor — der niedrige Einstieg

Jede:r Lernende muss innerhalb der ersten 60 Sekunden etwas tun können, ohne Vorerklärung. Bei Scratch: einen Block ziehen und etwas passiert. Bei einer SQL-Aufgabe: `SELECT * FROM kunden` läuft sofort, ohne JOIN-Theorie. Der Floor ist niedrig, wenn Alltagssprache, Beispiele und unmittelbares Feedback den Einstieg tragen.

### High Ceiling — die offene Decke

Dieselbe Aufgabe muss tief genug sein, dass auch Hobby-Programmierer:innen mit drei Jahren Vorerfahrung nicht in fünf Minuten am Ende sind. Erweiterungspfade müssen ohne Aufgabenwechsel zugänglich sein — als "Was wenn...?"-Fragen, optionale Constraints, Performance-Optimierungen oder zusätzliche Features.

### Wide Walls — die breiten Wände (Resnick, 2017)

Die dritte Dimension: Diverse *Pfade* zur Lösung und diverse *Produktformen*. Ein Mädchen, das Tiere mag, baut eine Tier-Datenbank; ein Jugendlicher, der Fußball mag, eine Tabellenkalkulation für die Kreisliga. Beide üben SQL, beide bleiben dran, weil das Produkt zu ihrer Identität passt. Wide Walls macht Aufgaben *interessenkompatibel*, nicht nur niveaukompatibel.

### Abgrenzung zu Niveaudifferenzierung

| Klassische Differenzierung | Low Floor / High Ceiling / Wide Walls |
|---------------------------|---------------------------------------|
| Drei Aufgaben (leicht/mittel/schwer) | Eine Aufgabe mit Tiefenspielraum |
| Lernende müssen sich einsortieren | Lernende wachsen organisch in die Tiefe |
| "Schwache" Aufgabe stigmatisiert | Alle arbeiten am gleichen Problem |
| Aufwand: dreifache Aufgabenerstellung | Aufwand: gutes Aufgabendesign einmal |

Das ist auch der Grund, warum LFHC-Aufgaben mit [[productive-failure]] und [[flow-theorie]] besonders gut harmonieren — die Schwierigkeit justiert sich am Lernenden, nicht am Aufgabenetikett.

## Bezug zur IT-Ausbildung

Die Berufsschulklasse ist der Modellfall extremer Heterogenität: Hobby-Programmierer:innen sitzen neben Quereinsteiger:innen, die noch nie eine Schleife geschrieben haben. Klassische Niveaustufen erzeugen sichtbare Hierarchien und untergraben das Zugehörigkeitsgefühl (vgl. [[affektive-dimensionen]]). LFHC-Aufgaben lösen das Problem strukturell.

**Beispiel LF5 (SQL):** "Finde die drei umsatzstärksten Kunden des letzten Quartals."
- *Floor:* `SELECT * FROM bestellungen` läuft sofort.
- *Mittlere Tiefe:* `JOIN`, `GROUP BY`, `ORDER BY`, `LIMIT`.
- *Ceiling:* Window-Functions, Common Table Expressions, Performance mit `EXPLAIN`.
- *Wide Walls:* Visualisierung, CSV-Export, Stored Procedure, Dashboard, REST-Endpoint.

**Beispiel LF8 (APIs):** "Baue eine Wetter-API-Anbindung."
- *Floor:* Eine `requests.get`-Zeile, JSON ausgeben.
- *Ceiling:* Caching, Rate-Limiting, Retry-Logic, Async, Tests.
- *Wide Walls:* CLI-Tool, Discord-Bot, Web-Dashboard, Push-Notification, Sprachausgabe.

**Beispiel LF10-12 (Projekte):** Ganze Lernsituationen lassen sich als LFHC-Brief schreiben — siehe [[lernsituationen-gestalten]]. Der Pflichtkern ist niedrig, das Pflichtenheft offen.

Block-basierte Sprachen wie Scratch, Snap! und App Inventor sind als LFHC-Umgebungen *konstruiert* — sie eliminieren Syntaxhürden und lassen Konzepttiefe (Variablen, Listen, Events, Klone) gleichzeitig zu. Das ist kein Zufall, sondern Paperts Erbe.

## Praktische Anwendung

Ein Agent kann LFHC systematisch in jede generierte Aufgabe einbauen:

1. **Floor-Check:** Lässt sich die Aufgabe in einem Satz Alltagssprache stellen, ohne Fachvorwissen? Wenn nein → umformulieren oder Vorwissen explizit als [[worked-examples]] beilegen.
2. **Ceiling-Check:** Generiere drei "Was wenn...?"-Erweiterungen *als Teil derselben Aufgabe* (nicht als Bonus-Aufgabe), mind. eine davon konzeptuell anspruchsvoll (z.B. Nebenläufigkeit, Skalierbarkeit, Sicherheit).
3. **Wide-Walls-Check:** Biete mind. drei verschiedene *Produktformen* an (CLI / Web / Bot / Visualisierung / Spiel), aus denen Lernende wählen — vgl. [[self-determination-theory]] (Autonomie).
4. **Selbstdiagnose:** Jede Aufgabe enthält eine kleine Selbstcheck-Frage ("Verstehst du, warum hier ein JOIN nötig ist?"), damit Lernende ihre Tiefe selbst justieren können. Vgl. [[formatives-assessment]].
5. **Fading der Hilfen:** Hinweise als ausklappbare Spoiler — wer sie nicht braucht, sieht sie nicht. Vgl. [[scaffolding]].
6. **Lackmustest:** "Können beide — der Hobby-Coder und die absolute Anfängerin — am Ende der Stunde stolz sein auf etwas, das sie geschafft haben?" Wenn nein, ist die Aufgabe nicht LFHC.
7. **Wide-Walls-Generator:** Bei Aufgabengenerierung explizit nach dem Interesse des Lernenden fragen ("Sport / Musik / Gaming / Tiere / ...") und das Beispieldomain entsprechend einsetzen. Das kostet einen Prompt-Tokens, verdoppelt aber die Engagement-Wahrscheinlichkeit.

## Verwandte Konzepte

- [[scaffolding]] — LFHC ist im Kern Scaffolding mit unsichtbaren Stufen
- [[expertise-entwicklung]] — High Ceiling adressiert Fortgeschrittene, Floor die Novizen
- [[threshold-concepts]] — LFHC-Aufgaben können um ein Threshold Concept herum gebaut sein
- [[worked-examples]] — Floor-Sicherung bei sehr unsicheren Lernenden
- [[lernsituationen-gestalten]] — LFHC als Designprinzip für ganze Lernsituationen
- [[productive-failure]] — Hohe Decke ermöglicht produktives Scheitern für die Starken
- [[self-determination-theory]] — Wide Walls erfüllt das Autonomie-Bedürfnis
- [[flow-theorie]] — LFHC erlaubt jedem Lernenden seinen eigenen Flow-Channel
- [[primm-methode]] — Floor-Sicherung über Predict/Run/Investigate
- [[use-modify-create]] — Strukturierte LFHC-Progression für Code-Aufgaben

## Quellen

- Papert, S. (1980). Mindstorms: Children, Computers, and Powerful Ideas. Basic Books.
- Resnick, M. (2017). Lifelong Kindergarten: Cultivating Creativity through Projects, Passion, Peers, and Play. MIT Press.
- McClure, L. (2011). Using Low Threshold High Ceiling tasks. NRICH, University of Cambridge.
- Resnick, M. & Silverman, B. (2005). Some Reflections on Designing Construction Kits for Kids. Proceedings of Interaction Design and Children, 117-122.
