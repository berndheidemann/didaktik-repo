---
title: Self-Determination Theory (Autonomie, Kompetenz, Verbundenheit)
type: theorie
tags: [motivation, autonomie, kompetenz, verbundenheit, intrinsisch, ryan-deci]
related:
  - "[[affektive-dimensionen]]"
  - "[[gamification-it-unterricht]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[lernsituationen-gestalten]]"
  - "[[productive-failure]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[community-of-practice]]"
  - "[[pair-programming-unterricht]]"
  - "[[low-floor-high-ceiling]]"
  - "[[flow-theorie]]"
  - "[[intrinsic-integration]]"
  - "[[engagement-theory]]"
  - "[[computational-action]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
created: 2026-04-07
updated: 2026-04-07
evidenzgrad: meta-analyse
summary: >
  Ryan & Decis Selbstbestimmungstheorie identifiziert drei psychologische
  Grundbedürfnisse — Autonomie, Kompetenz, Verbundenheit — als Voraussetzung
  für intrinsische Motivation. Stärkste empirische Basis aller
  Motivationstheorien (Howard et al., 2021).
---

# Self-Determination Theory (Autonomie, Kompetenz, Verbundenheit)

## Kernidee

Edward Deci und Richard Ryan haben über vier Jahrzehnte gezeigt: Menschen sind nicht "von Natur aus faul" — sie sind von Natur aus neugierig und lernbereit, *wenn* drei psychologische Grundbedürfnisse erfüllt sind: **Autonomie** (selbstbestimmtes Handeln), **Kompetenz** (Wirksamkeitserleben) und **Verbundenheit** (soziale Eingebundenheit). Werden diese Bedürfnisse frustriert, kollabiert intrinsische Motivation — egal wie viele Punkte oder Noten man drumherum streut. SDT ist die empirisch am besten belegte Motivationstheorie der Bildungspsychologie.

## Beschreibung

### Die drei Basic Needs

| Need | Bedeutet | Frustriert durch |
|------|---------|-----------------|
| **Autonomie** | Selbstbestimmt handeln, hinter eigenen Handlungen stehen | "Du musst", Zwangswege, fehlende Wahl |
| **Kompetenz** | Wirksam sein, etwas können, Fortschritt erleben | Überforderung, fehlendes Feedback, Vergleiche |
| **Verbundenheit** | Zugehörig sein, gesehen werden, mit anderen verbunden | Isolation, anonyme Massen, Konkurrenzkultur |

Wichtig: Autonomie ≠ Beliebigkeit. Auch eine strukturierte Aufgabe kann hohe Autonomie-Erfahrung ermöglichen, *wenn* der Lernende den Sinn versteht und Wahlmöglichkeiten *innerhalb* der Struktur hat ("welche Daten du analysierst, ist dir überlassen").

### Das Motivationskontinuum

SDT unterscheidet sechs Motivationsstufen — von amotiviert über extrinsisch (Strafe, Belohnung, Identifikation) bis intrinsisch:

| Stufe | Beispiel im Unterricht |
|------|-------------------------|
| Amotivation | "Wozu das Ganze?" |
| External | "Sonst gibt's eine Sechs" |
| Introjected | "Sonst schäme ich mich" |
| Identified | "Das brauche ich später im Job" |
| Integrated | "Ich bin Entwickler:in, also lerne ich das" |
| Intrinsic | "Es macht einfach Spaß" |

Lernen ist nachhaltig ab Stufe 4 (Identified) — und qualitativ hochwertig erst ab Stufe 5-6.

### Evidenz

Howard et al. (2021) integrieren in einer Meta-Analyse über 344 Studien (~224.000 Lernende): Befriedigung der drei Grundbedürfnisse korreliert robust mit Engagement (r ≈ 0,40), Wohlbefinden (r ≈ 0,48), Lernleistung (r ≈ 0,21) und negativ mit Dropout. Ryan & Deci (2020) berichten: SDT ist auf alle Bildungsstufen, Kulturen und Fachgebiete anwendbar.

**Wichtige Praxisbefunde:**
- Externe Belohnungen *senken* intrinsische Motivation für interessante Tätigkeiten ("Crowding-Out"-Effekt) — Vorsicht bei Punktesystemen ohne SDT-Basis (vgl. [[gamification-it-unterricht]]).
- "Müssen/sollt"-Sprache der Lehrkraft korreliert mit niedrigerer Selbstregulation der Lernenden.
- Selbst kleine Wahlmöglichkeiten (zwischen drei Aufgaben wählen) erhöhen Engagement messbar.

## Bezug zur IT-Ausbildung

In der heterogenen Berufsschulklasse adressiert SDT alle drei großen Probleme gleichzeitig:

- **Autonomie** löst das Heterogenitätsproblem strukturell. Statt "leichte/mittlere/schwere Variante" → Wahl zwischen drei verschiedenen *Domänen* oder *Produkten* (vgl. Wide Walls in [[low-floor-high-ceiling]]). Die Hobby-Programmiererin baut einen Discord-Bot, der Quereinsteiger eine Vereinsmitglieder-Liste — beide üben dieselben SQL-Konzepte.
- **Kompetenz** adressiert die Frustrations- und Dropout-Spirale. Sichtbarer Fortschritt (Tests werden grün, Features wachsen) ist Kompetenzerleben in Reinform — vgl. [[affektive-dimensionen]].
- **Verbundenheit** adressiert das Isolationsproblem beim Programmieren. [[pair-programming-unterricht]] und [[community-of-practice]] sind keine Methoden-Spielereien, sondern SDT-Anwendungen.

**Berufsschul-Spezifikum:** Azubis kommen aus echten Betrieben mit echten Aufgaben — die "Identified"-Stufe (Stufe 4) ist oft schon erreicht, weil Inhalte beruflichen Sinn haben. Ein guter Unterricht muss diese Identifikation aktiv nutzen, statt sie durch generische Schulaufgaben zu untergraben.

## Praktische Anwendung

Ein Agent kann SDT operationalisieren:

1. **Autonomie-Check:** Mind. eine bedeutsame Wahl pro Aufgabe (Domäne / Produkt / Tool / Reihenfolge). Vgl. Wide Walls in [[low-floor-high-ceiling]].
2. **Sprache neutralisieren:** "Du musst" → "Ich schlage vor". Imperative aus der KI-Tutor-Sprache verbannen (Vansteenkiste et al., 2004).
3. **Kompetenz sichtbar machen:** Mastery-Bar statt Score, "Was du jetzt kannst:" am Ende jeder Session.
4. **Mastery- statt Performance-Framing:** "Du verstehst Joins jetzt" statt "7/10 Punkte". Performance-Sprache aktiv vermeiden.
5. **Verbundenheit stiften:** Jede Lernsituation mit sozialem Touchpoint (Pair, Peer-Feedback, Galerie). Vgl. [[engagement-theory]].
6. **Crowding-Out vermeiden:** Keine externen Belohnungen für intrinsisch interessante Tätigkeiten. Punkte nur für Drill, nicht für Kreativaufgaben.
7. **Heterogenitäts-Strategie:** Statt Niveaustufen → Autonomie-Korridore. 3-5 Varianten einer gemeinsamen Aufgabe.
8. **SDT-Audit:** Jede Lernsituation gegen die drei Bedürfnisse prüfen. Fehlt eines → ergänzen.

## Verwandte Konzepte

- [[affektive-dimensionen]] — SDT ist eine der vier dort referenzierten Motivationssäulen
- [[gamification-it-unterricht]] — Wirkt nachhaltig nur, wenn SDT-Bedürfnisse adressiert sind
- [[selbstgesteuertes-lernen]] — Autonomie ist Voraussetzung für Selbstregulation
- [[lernsituationen-gestalten]] — SDT-Audit als Designkriterium
- [[productive-failure]] — Kompetenzerleben durch echtes Aufgabenwachstum
- [[interaktive-lernumgebungen]] — Wahlmöglichkeiten als Architekturprinzip
- [[community-of-practice]] — Verbundenheit als Strukturprinzip
- [[pair-programming-unterricht]] — Verbundenheit konkret in Methode gegossen
- [[low-floor-high-ceiling]] — Wide Walls erfüllt Autonomie strukturell
- [[flow-theorie]] — Kompetenzerleben überlappt mit Flow

## Quellen

- Deci, E. L. & Ryan, R. M. (2000). The "what" and "why" of goal pursuits: Human needs and the self-determination of behavior. Psychological Inquiry, 11(4), 227-268.
- Ryan, R. M. & Deci, E. L. (2020). Intrinsic and extrinsic motivation from a self-determination theory perspective: Definitions, theory, practices, and future directions. Contemporary Educational Psychology, 61, 101860.
- Howard, J. L., Bureau, J. S., Guay, F., Chong, J. X. Y. & Ryan, R. M. (2021). Student motivation and associated outcomes: A meta-analysis from self-determination theory. Perspectives on Psychological Science, 16(6), 1300-1323.
- Vansteenkiste, M., Simons, J., Lens, W., Sheldon, K. M. & Deci, E. L. (2004). Motivating learning, performance, and persistence: The synergistic effects of intrinsic goal contents and autonomy-supportive contexts. Journal of Personality and Social Psychology, 87(2), 246-260.
