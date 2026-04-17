---
title: Handlungsorientierter Unterricht
type: theorie
tags: [handlungsorientierung, lernfeldkonzept, kompetenzorientierung, vollstaendige-handlung, rahmenlehrplan]
related:
  - "[[unterrichtsphasen-artikulation]]"
  - "[[constructive-alignment]]"
  - "[[blooms-taxonomie]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[pair-programming-unterricht]]"
  - "[[lernsituationen-gestalten]]"
  - "[[gamification-it-unterricht]]"
  - "[[community-of-practice]]"
  - "[[flipped-classroom]]"
  - "[[immersive-simulationen]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[computational-action]]"
  - "[[engagement-theory]]"
  - "[[retrieval-practice]]"
  - "[[kooperatives-lernen]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[anchored-instruction]]"
  - "[[ki-kompetenzrahmen-schule]]"
  - "[[ki-erfahrungsberichte-berufliche-bildung]]"
  - "[[lernortkooperation-transfer]]"
  - "[[interactive-fiction-twine]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten, erschaffen]
created: 2026-04-07
updated: 2026-04-09
summary: >
  Zentrales didaktisches Prinzip der deutschen Berufsbildung. Lernende
  durchlaufen die vollständige Handlung (informieren, planen, entscheiden,
  ausführen, kontrollieren, bewerten) und entwickeln Handlungskompetenz.
---

# Handlungsorientierter Unterricht

## Kernidee

Handlungsorientierter Unterricht stellt die eigenständige Handlung der Lernenden in den Mittelpunkt. Statt abstraktes Wissen zu vermitteln, durchlaufen Lernende authentische berufliche Handlungen und entwickeln dabei Fach-, Selbst- und Sozialkompetenz. Es ist das didaktische Leitprinzip des deutschen Berufsschulunterrichts.

## Beschreibung

### Theoretische Wurzeln

- **Aebli (1980/81):** "Denken ist verinnerlichtes Handeln" — Wissen entsteht durch Tun, nicht durch passives Aufnehmen.
- **Dewey:** "Learning by Doing" — pragmatisch-experimentelles Lernen durch Erfahrung.
- **Gudjons (2014):** Systematisierung der Merkmale — Ganzheitlichkeit, Schüleraktivität, Produktorientierung, Subjektorientierung, Offenheit.

### Die vollständige Handlung

Das Modell stammt aus der Handlungsregulationstheorie (Hacker, Volpert) und ist im AEVO-Rahmen verbindlich:

| Phase | Beschreibung | IT-Beispiel (LF11a: Funktionalität realisieren) |
|-------|-------------|--------------------------------------------------|
| **Informieren** | Aufgabe verstehen, Informationen beschaffen | Anforderungsdokument lesen, API-Doku recherchieren |
| **Planen** | Arbeitsplan entwickeln | Architektur skizzieren, Tasks in Kanban-Board anlegen |
| **Entscheiden** | Vorgehen abstimmen und festlegen | Fachgespräch: Framework-Wahl begründen |
| **Ausführen** | Plan umsetzen | Code schreiben, Tests implementieren |
| **Kontrollieren** | Soll-Ist-Vergleich | Tests ausführen, Code-Review durchführen |
| **Bewerten** | Reflexion, Lessons Learned | Retrospektive: Was lief gut? Was verbessern? |

### Das Lernfeldkonzept (KMK)

Seit 1996 strukturiert die KMK Rahmenlehrpläne nach Lernfeldern statt Fächern:

1. **Berufliche Handlungsfelder** werden identifiziert (z.B. "Software entwickeln")
2. **Lernfelder** transformieren diese didaktisch (z.B. LF11a: "Funktionalität in Anwendungen realisieren")
3. **Lernsituationen** konkretisieren Lernfelder als unterrichtliche Einheiten — entwickelt von der Bildungsgangkonferenz jeder Schule

Lernsituationen sind praxisbasierte Lehr-/Lernarrangements, die die vollständige Handlung umsetzen und Handlungskompetenz entwickeln.

### Kompetenzmodell der KMK

**Handlungskompetenz** entfaltet sich in drei Dimensionen:

| Dimension | Definition | IT-Beispiel |
|-----------|-----------|-------------|
| **Fachkompetenz** | Fachliches Wissen und Können zielorientiert einsetzen | Normalisierte Datenbank entwerfen und implementieren |
| **Selbstkompetenz** | Eigene Entwicklung steuern, Verantwortung übernehmen | Wissenslücken erkennen und selbstständig schließen (→ [[selbstgesteuertes-lernen]]) |
| **Sozialkompetenz** | Beziehungen gestalten, kooperieren, kommunizieren | Code-Reviews konstruktiv geben, im Scrum-Team arbeiten |

Querschnittskompetenzen (Methoden-, Kommunikations-, Lernkompetenz) sind in alle drei Dimensionen integriert.

## Bezug zur IT-Ausbildung

Der Rahmenlehrplan Fachinformatiker (KMK, 2020) ist vollständig handlungsorientiert aufgebaut. Die Lernfelder bauen spiralcurricular auf:

- **LF1-4 (Grundlagen):** Häufig auf [[blooms-taxonomie]]-Stufen 1-3 (erinnern, verstehen, anwenden)
- **LF5-9 (gemeinsam):** Zunehmend Stufen 3-5 (anwenden, analysieren, bewerten)
- **LF10-12 (fachrichtungsspezifisch):** Stufen 4-6, kulminierend in LF12a/c (120h Projekt = vollständige Handlung im Großen)

Besonders handlungsorientierte Lernfelder:

- **LF5:** Datenbankprojekt von Anforderung bis Test
- **LF6:** Authentische Serviceanfragen mit Kundenkommunikation
- **LF10a-12a (FIAE):** Gesamter Software-Lifecycle — UI-Design, Implementierung, Kundenabnahme
- **LF10c-12c (FIDP):** Datenanalyseprojekte von Problemdefinition bis Stakeholder-Präsentation

## Praktische Anwendung

Ein Agent kann Handlungsorientierung unterstützen, indem er Lernsituationen nach dem Modell der vollständigen Handlung strukturiert:

1. **Lernsituation generieren:** Ausgehend von einem Lernfeld eine authentische berufliche Situation mit allen sechs Phasen entwerfen. Gemäß [[constructive-alignment]] Lernziele, Aktivitäten und Prüfung aufeinander abstimmen.
2. **Phase erkennen:** Feststellen, in welcher Phase sich Lernende befinden, und passende Unterstützung geben — in der Informationsphase andere Hilfe als in der Ausführungsphase.
3. **Kompetenzbalance prüfen:** Sicherstellen, dass nicht nur Fachkompetenz, sondern auch Selbst- und Sozialkompetenz adressiert werden (z.B. durch [[pair-programming-unterricht]] für Sozialkompetenz).
4. **Reflexion anleiten:** In der Bewertungsphase strukturierte Reflexion ermöglichen — Lessons Learned, die in die nächste Lernsituation einfließen.

## Verwandte Konzepte

- [[constructive-alignment]] — Lernziele, Aktivitäten und Prüfung müssen in Lernsituationen aligned sein
- [[blooms-taxonomie]] — Taxonomiestufen korrelieren mit Lernfeld-Progression im Spiralcurriculum
- [[selbstgesteuertes-lernen]] — Selbstkompetenz als Teil der Handlungskompetenz
- [[pair-programming-unterricht]] — Methode für handlungsorientierte Programmier-Lernsituationen
- [[anchored-instruction]] — Gemeinsamer narrativer Kontext, in dem die Handlungen stattfinden

## Quellen

- Gudjons, H. (2014). Handlungsorientiert lehren und lernen: Schüleraktivierung — Selbsttätigkeit — Projektarbeit (8. Aufl.). Klinkhardt.
- Kultusministerkonferenz. (2021). Handreichung für die Erarbeitung von Rahmenlehrplänen der KMK für den berufsbezogenen Unterricht in der Berufsschule.
- Kultusministerkonferenz. (2020). Rahmenlehrplan für die Ausbildungsberufe Fachinformatiker und Fachinformatikerin.
- Aebli, H. (1980/1981). Denken: das Ordnen des Tuns. Band 1 & 2. Klett-Cotta.
- Tramm, T. & Krille, F. (2013). Planung des Lernfeldunterrichts im Spannungsfeld von Geschäftsprozessorientierung und lernerseitiger Kompetenzentwicklung. bwp@ Berufs- und Wirtschaftspädagogik — online, 24, 1-24.
