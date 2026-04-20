---
title: Engagement Theory — Relate, Create, Donate
type: theorie
tags: [engagement, kollaboration, projektbasiert, relate-create-donate, kearsley-shneiderman]
related:
  - "[[community-of-practice]]"
  - "[[computational-action]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[pair-programming-unterricht]]"
  - "[[code-review-unterricht]]"
  - "[[lernsituationen-gestalten]]"
  - "[[gamification-it-unterricht]]"
  - "[[immersive-simulationen]]"
  - "[[self-determination-theory]]"
  - "[[intrinsic-integration]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[kooperatives-lernen]]"
  - "[[constructive-alignment]]"
  - "[[anchored-instruction]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[interactive-fiction-twine]]"
audience: [FIAE, FIDP]
taxonomiestufe: [erschaffen, bewerten]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Kearsley & Shneiderman (1998) bieten ein einprägsames Drei-Wort-Framework
  für engagierende Lernsituationen: Relate (kollaborativ arbeiten), Create
  (echtes Artefakt bauen), Donate (an echte Adressaten weitergeben).
  Praktische Designcheckliste, komplementär zur empirisch fundierteren SDT.
---

# Engagement Theory — Relate, Create, Donate

## Kernidee

Greg Kearsley und Ben Shneiderman (1998, University of Maryland) schlagen ein verblüffend simples Designrezept für lernwirksamen Unterricht vor: Jede Lernaktivität sollte alle drei Komponenten haben — **(R)elate** (kollaborative Teamarbeit), **(C)reate** (Erschaffen eines bedeutsamen Artefakts) und **(D)onate** (Weitergabe an einen externen Adressaten). Wenn eine Komponente fehlt, ist die Aktivität typischerweise "tot". Das Framework ist älter und weniger empirisch fundiert als Self-Determination Theory, aber es liefert eine extrem brauchbare praktische Designcheckliste — und passt zu IT-Projekten exzellent.

## Beschreibung

### Die drei Komponenten

| Komponente | Bedeutet | Häufigster Fehler im Unterricht |
|-----------|---------|--------------------------------|
| **Relate** | Im Team arbeiten, kommunizieren, Rollen verteilen, voneinander lernen | Einzelarbeit als Default |
| **Create** | Ein echtes Artefakt erschaffen, das vorher nicht existierte — nicht nur reproduzieren | Reproduktive Aufgaben |
| **Donate** | Das Ergebnis an externe Adressaten weitergeben (außerhalb der Klasse) | Lehrkraft als einziger Adressat |

Kearsley & Shneiderman betonen: **Alle drei** Komponenten müssen vorhanden sein. Eine Gruppenaufgabe ohne echtes Artefakt ist genauso "tot" wie ein Einzelprojekt mit echtem Produkt. Das Engagement entsteht aus der Kombination — soziale Verankerung + produktive Tätigkeit + externe Wirkung.

### Theoretischer Hintergrund und empirische Einordnung

Engagement Theory wurde explizit für *technologie-basiertes* Lernen formuliert. Kearsley und Shneiderman waren HCI-Pioniere und sahen früh, dass das Internet Relate-Create-Donate auf Distanz und in neuer Skalierung ermöglicht.

Engagement Theory ist *keine* empirisch hochbestätigte Theorie wie [[self-determination-theory]]. Was sie liefert, ist eine *Designcheckliste mit hoher Praxistauglichkeit* — und die einzelnen Komponenten sind je für sich gut belegt: *Relate* überlappt mit kooperativem Lernen (Hattie d ≈ 0,40-0,55), *Create* mit projektbasiertem Lernen, *Donate* mit [[computational-action]]. Komplementär zur SDT zu verwenden, nicht als Konkurrenz.

### Donate als der oft fehlende Schritt

In der Schulpraxis ist *Donate* der am häufigsten unterschlagene Schritt. Lernende erstellen Plakate, Präsentationen, Code, Videos — und niemand außerhalb der Lehrkraft sieht sie je. Donate verändert die Aufgabenqualität fundamental: Wer weiß, dass ein echter Mensch das Ergebnis sehen wird, arbeitet anders als jemand, der "für die Schublade" produziert.

### Mit KI: Donate wird realistischer

KI-Werkzeuge polieren Ergebnisse so weit, dass sie tatsächlich präsentabel werden — Produkte mit lesbarer UI, sauberem Code, ordentlicher Dokumentation. Was früher den Schulrahmen sprengte, ist heute zugänglich. Donate-Phasen werden dadurch *praktisch realistisch*, nicht nur theoretisch erstrebenswert.

## Bezug zur IT-Ausbildung

Berufsschulprojekte sind bereits *strukturell* in die Nähe von Engagement Theory gebaut — Lernfelder LF10-12 fordern Projekte, also Create. Was oft fehlt: explizite Relate- und Donate-Komponenten. Engagement Theory hilft beim Gegen-Audit.

**Lackmustest für jede Lernsituation:**
1. **Relate-Check:** Arbeiten Lernende substanziell mit anderen zusammen, oder ist Gruppenarbeit nur ein Etikett auf parallel laufender Einzelarbeit?
2. **Create-Check:** Entsteht ein neues Artefakt, das vorher nicht existierte — oder reproduzieren sie etwas Bekanntes?
3. **Donate-Check:** *Wer* bekommt das Ergebnis tatsächlich zu sehen, außer der Lehrkraft?

**Donate-Optionen für Berufsschulprojekte:** Tool für Ausbildungsbetrieb, Open-Source-Beitrag, Tutorial für die Klasse 1 Jahr darunter, Tool für Vereins-/Schul-AG, Hackathon mit externem Publikum, Demo-Day vor Ausbilder:innen.

**Lernfeld-Beispiele:**
- **LF5:** Relate als Team an einer Mensa-Datenbank, Create eigener Schemas, Donate an die Cafeteria.
- **LF8:** Relate als Backend/Frontend-Pair, Create einer API + Client, Donate als interner Schul-Service.
- **LF10-12:** Hackathon mit externer Jury, Showcase für Eltern, Open-Source-Veröffentlichung.

## Praktische Anwendung

Ein Agent kann Engagement Theory als 30-Sekunden-Designcheckliste anwenden:

1. **Drei-Worte-Audit:** Jede Lernsituation gegen Relate / Create / Donate prüfen. Fehlt eine Komponente → ergänzen.
2. **Donate-Generator:** Bei Projekten aktiv Adressaten vorschlagen (Ausbildungsbetrieb, Open-Source, Klasse darunter). Niemals "für die Schublade".
3. **Relate-Format wählen:** Pair-Programming, Mob-Programming, Code-Review mit klaren Rollen. Vgl. [[pair-programming-unterricht]], [[code-review-unterricht]].
4. **Create-Qualitätsprüfung:** Ist das Artefakt *neu*? Echtes Create heißt: Etwas existiert, das vorher nicht da war.
5. **Showcase einplanen:** Mind. ein öffentlicher Demo-Termin pro Projekt. Vgl. [[gamification-it-unterricht]] (Hackathon).
6. **Iteration nach Donate:** Echte Nutzung produziert echtes Feedback. Vgl. [[computational-action]].
7. **Komplementär zur SDT:** SDT für *warum*, Engagement Theory für *was tun* — beide zusammen verwenden.
8. **Anti-Pattern:** "Schreibe ein Programm und reiche es ein." Kein Relate, kein Donate. Engagement Theory macht das sichtbar.

## Verwandte Konzepte

- [[community-of-practice]] — Donate verankert Lernen in einer echten Praxisgemeinschaft
- [[computational-action]] — Schwesterkonzept aus dem MIT-Umfeld, mit ähnlicher Stoßrichtung
- [[handlungsorientierter-unterricht]] — Vollständige Handlung enthält implizit alle drei Komponenten
- [[pair-programming-unterricht]] — Konkrete Methode für die Relate-Komponente
- [[code-review-unterricht]] — Konkrete Methode für Relate (Peer Review)
- [[lernsituationen-gestalten]] — Engagement-Audit als Designkriterium
- [[gamification-it-unterricht]] — Hackathons sind oft natürliche RCD-Container
- [[immersive-simulationen]] — CTFs als Donate-fähige Showcases
- [[self-determination-theory]] — Empirisch tiefere Schwesterntheorie, komplementär nutzen
- [[intrinsic-integration]] — Donate ist eine Form, externes Engagement intrinsisch zu integrieren
- [[anchored-instruction]] — Der Anker trägt das "Relate" über lange Zeiträume
- [[direct-manipulation-lernumgebungen]] — Direct Manipulation ist eine Form des "Create" — aktives Hervorbringen statt Auswählen

## Quellen

- Kearsley, G. & Shneiderman, B. (1998). Engagement Theory: A framework for technology-based teaching and learning. Educational Technology, 38(5), 20-23.
- Shneiderman, B. (1998). Relate-Create-Donate: a teaching/learning philosophy for the cyber-generation. Computers & Education, 31(1), 25-39.
