---
title: Use-Modify-Create Progression
type: methode
tags: [computational-thinking, progression, scaffolding, ki-integration, lee-2011]
related:
  - "[[worked-examples]]"
  - "[[scaffolding]]"
  - "[[expertise-entwicklung]]"
  - "[[primm-methode]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[debugging-als-kompetenz]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[threshold-concepts]]"
  - "[[low-floor-high-ceiling]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[computational-action]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, erschaffen]
sozialform: [einzelarbeit, partner, gruppe]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Lee et al. (2011) entwickelten die dreistufige Progression Use → Modify
  → Create für Computational-Thinking-Lerneinheiten. Differenzierung ist
  strukturell eingebaut und besonders relevant in einer KI-Welt: Use = LLM-
  Output verstehen, Modify = adaptieren, Create = eigene Lösung.
---

# Use-Modify-Create Progression

## Kernidee

Use-Modify-Create (UMC) ist eine dreistufige Progression: Lernende *nutzen* fertige Computing-Artefakte, *modifizieren* sie gezielt und *erschaffen* schließlich eigene. Lee et al. (2011) entwickelten das Modell für K-12. Differenzierung ist strukturell eingebaut — die Stufen sind ein natürlicher Lernpfad, kein Niveau-Etikett. UMC ist außerdem die natürliche Lernprogression in einer KI-Welt: LLM-Code lesen → Prompts adaptieren → eigene Architektur.

## Beschreibung

Lee et al. (2011) prägten UMC im Rahmen der NSF-ITEST-Initiative. Die Progression beruht auf der Beobachtung, dass viele Lernende direkt vom Konsumieren zum Erschaffen springen sollen — und scheitern, weil die mittlere Stufe (Modify) fehlt. UMC ist verwandt mit [[primm-methode]] (gleiche Idee, andere Granularität) und mit [[scaffolding]] (Fading durch Stufen).

Lytle et al. (2019) verglichen drei Lesson-Progressionen (UMC, Use→Create, direkte Create) und fanden: UMC führte zu signifikant höherem Verständnis und niedrigerer Frustration. Die mittlere Modify-Stufe ist der entscheidende Hebel.

## Durchführung

### Die drei Stufen

| Stufe | Tätigkeit | Lernzweck | Was der Agent generiert |
|------|-----------|-----------|--------------------------|
| **Use** | Fertigen Code/Modell/Skript ausführen, beobachten, dokumentieren | Mentales Modell aufbauen, sehen wie es sich verhält | Lauffähiges Beispiel + Beobachtungsfragen |
| **Modify** | Gezielt Parameter, Selektoren, Klassen, Logik anpassen | Verständnis durch Eingriff, kontrollierte Experimente | Liste konkreter Modify-Quests mit klarem Ziel |
| **Create** | Eigene Variante für anderes Problem von Grund auf bauen | Transfer auf neue Domäne, eigenständige Lösung | Offenes Briefing mit struktureller Analogie zum Beispiel |

### Beispiel: Web-Scraper (LF8)

- **Use:** Lauffähigen Python-Scraper für Wetterdaten ausführen. *Beobachtung:* Welche Daten? In welchem Format?
- **Modify:** Selectors für Luftdruck ergänzen, Output auf CSV umstellen, Wartezeit anpassen. *Quest:* "Erfasse zusätzlich die Windgeschwindigkeit."
- **Create:** Eigener Scraper für eine andere Seite (Newsticker, Sportergebnisse) — gleiche Architektur, neue Domäne.

### Die KI-Erweiterung

In einer Welt mit LLMs ist UMC die natürliche Lernprogression:

| UMC-Stufe | KI-Variante | Was Lernende üben |
|----------|-------------|-------------------|
| **Use** | Prompt absenden, KI-Output ausführen, prüfen ob es funktioniert | KI-Output *lesen* und *verstehen* |
| **Modify** | Prompt iterativ anpassen, KI-Output debuggen, kleine Eingriffe | Prompt-Engineering, kritische Bewertung |
| **Create** | Eigene Architektur, KI nur für Subkomponenten | Systemdesign, Komponentenkomposition |

Damit wird UMC zur Antwort auf die Frage "Wie unterrichte ich Programmieren in einer Copilot-Welt?". Vgl. [[ki-native-lernumgebungen]].

## Voraussetzungen

- Lauffähige Beispiele für Use (zentrale Vorbereitung)
- Schnelle Iterationsumgebung (REPL, Notebook, Sandbox)
- Klare Modify-Quests — vage Anweisungen scheitern
- Genug Zeit für Create (30-60 Min.+)

## Varianten

- **Pair-UMC:** Use gemeinsam, Modify wechselnd Driver/Navigator, Create individuell oder im Pair.
- **Differenziertes Eintauchen:** Schwächere bleiben länger in Use/Modify; Stärkere springen früh zu Create. Vgl. [[low-floor-high-ceiling]].
- **UMC mit KI-Tutor:** Use = KI-generierter Code, Modify mit KI-Hilfe + Begründungspflicht, Create mit KI nur für Subkomponenten.
- **UMC für Datenanalyse / ML:** Use eines Notebooks oder Modells → Modify Hyperparameter / Filter → Create eigene Auswertung oder Modell.

## Zeitbedarf

Eine vollständige UMC-Sequenz erstreckt sich oft über mehrere Stunden oder eine ganze Woche: Use 30-60 Min., Modify 60-120 Min., Create 90-180 Min. Bei kurzen Sequenzen kann Create in ein Hausprojekt wandern.

## Bezug zur IT-Ausbildung

UMC trifft die Berufsschulrealität exakt: Azubis arbeiten im Betrieb meist mit *bestehendem* Code (Wartung, Erweiterung). Greenfield ist die Ausnahme. UMC trainiert genau diesen Modus.

**Differenzierung:** Die Hobby-Programmiererin springt schnell zu Create, der Quereinsteiger verweilt länger in Use/Modify. Beide am gleichen Material — kein Stigma.

**Lernfeld-Anwendungen:**
- **LF3:** Use eines Konfig-Skripts → Modify VLANs → Create eigene Topologie.
- **LF5:** Use einer Beispiel-DB → Modify Queries → Create eigenes Schema.
- **LF8:** Use eines API-Wrappers → Modify Endpoints → Create eigene API.
- **LF10-12:** Use einer Open-Source-Library → Modify → Create eigenes Modul.

**KI-Bezug:** Die Frage "Sollen Azubis KI nutzen?" ist mit UMC produktiv lösbar — KI ja, aber gestuft: Use = verstehen, Modify = adaptieren, Create = eigenständig ohne KI-Krücke. Vgl. [[ki-gestuetztes-tutoring]].

## Praktische Anwendung

Ein Agent kann UMC als generische Aufgabenstruktur nutzen:

1. **UMC-Generator:** Aus Lernziel → lauffähiges Beispiel + 3-5 Modify-Quests + 1 Create-Briefing.
2. **Stufen-Tracking:** Bei Frustration → leichterer Quest; bei Schnellläufer:in → früher zu Create.
3. **Modify-Quests klar:** Konkretes, prüfbares Ziel — keine vagen Aufträge.
4. **Create-Übergang:** "Wende die gleiche Struktur auf dieses neue Problem an" — Strukturanalogie ist der Hebel.
5. **KI-Modus optional:** "Soll die KI dir den Code erklären?" bei Use, "deine Änderung begutachten?" bei Modify.
6. **Anti-Pattern:** Use ≠ Code ablesen, Modify ≠ austauschen, Create ≠ blanke Datei.
7. **Kombination mit [[primm-methode]]:** PRIMM auf Snippet-Ebene, UMC im Großen.
8. **Spaced UMC:** Create-Aufgaben später als Use-Beispiele wiederverwenden. Vgl. [[retrieval-practice]].

## Verwandte Konzepte

- [[worked-examples]] — Use-Stufe ist ein Worked Example mit aktiver Beobachtung
- [[scaffolding]] — UMC ist Scaffolding über Stufen mit eingebautem Fading
- [[expertise-entwicklung]] — Folgt der Subskill-Progression Tracing → Modifying → Writing
- [[primm-methode]] — Verwandte Methode auf Snippet-Granularität
- [[ki-gestuetztes-tutoring]] — Stufenmodell für KI-Einsatz passt zu UMC
- [[debugging-als-kompetenz]] — Modify-Phase trainiert Debugging
- [[low-floor-high-ceiling]] — UMC operationalisiert die niedrige Tür mit hoher Decke
- [[ki-native-lernumgebungen]] — UMC ist die natürliche KI-Lernprogression

## Quellen

- Lee, I., Martin, F., Denner, J., Coulter, B., Allan, W., Erickson, J., Malyn-Smith, J. & Werner, L. (2011). Computational thinking for youth in practice. ACM Inroads, 2(1), 32-37.
- Lytle, N., Cateté, V., Boulden, D., Dong, Y., Houchins, J., Milliken, A., Isvik, A., Bounajim, D., Wiebe, E. & Barnes, T. (2019). Use, Modify, Create: Comparing computational thinking lesson progressions for STEM classes. Proceedings of ITiCSE 2019, 395-401.
- Franklin, D., Skifstad, G., Rolock, R., Mehrotra, I., Ding, V., Hansen, A., Weintrop, D. & Harlow, D. (2020). Using Upper-Elementary Student Performance to Understand Conceptual Sequencing in a Blocks-based Curriculum. Proceedings of SIGCSE 2020.
