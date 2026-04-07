---
title: Lernsituationen gestalten
type: methode
tags: [lernsituation, lernfeldkonzept, unterrichtsplanung, handlungsorientierung, rahmenlehrplan]
related:
  - "[[handlungsorientierter-unterricht]]"
  - "[[constructive-alignment]]"
  - "[[blooms-taxonomie]]"
  - "[[scaffolding]]"
  - "[[formatives-assessment]]"
  - "[[cognitive-apprenticeship]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten, erschaffen]
sozialform: [einzelarbeit, partner, gruppe]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Methodik zur Entwicklung von Lernsituationen aus Lernfeldern des Rahmenlehrplans,
  inklusive Materialquellen (ISB Bayern, BW, Sachsen) und dem sechsphasigen Modell
  der vollständigen Handlung als Strukturrahmen.
---

# Lernsituationen gestalten

## Kernidee

Lernsituationen sind die kleinste curriculare Einheit im Lernfeldkonzept — konkrete, praxisbasierte Lehr-/Lernarrangements, die Lernfeld-Ziele in unterrichtliche Handlung übersetzen. Sie werden nicht zentral vorgegeben, sondern von Bildungsgangkonferenzen an jeder Schule entwickelt, was Lehrkräften erhebliche didaktische Freiheit gibt.

## Beschreibung

Eine Lernsituation übersetzt die abstrakten Kompetenzformulierungen eines Lernfelds in eine authentische berufliche Handlungssituation. Sie folgt dem Modell der vollständigen Handlung (vgl. [[handlungsorientierter-unterricht]]) und verbindet Fach-, Selbst- und Sozialkompetenz.

### Aufbau einer Lernsituation

| Element | Beschreibung | Beispiel (LF5 FIAE) |
|---------|-------------|---------------------|
| **Handlungssituation** | Authentisches Szenario aus der Berufspraxis | "Die Firma TechStore braucht eine Datenbank für ihr Bestellsystem" |
| **Kompetenzformulierung** | Was können Lernende am Ende? (Bloom-Verben) | "SuS entwerfen ein normalisiertes ER-Modell und implementieren es in SQL" |
| **Arbeitsaufträge** | Konkrete Aufgaben in den sechs Phasen | Informieren: Anforderungen analysieren → Planen: ER-Modell skizzieren → ... |
| **Informationsmaterial** | Fachliche Grundlagen, Datenblätter | Kundenbriefing, Beispiel-Daten, SQL-Referenz |
| **Lehrerhinweise** | Didaktische Hinweise, Differenzierung | Hilfestellungen für schwächere SuS, Zusatzaufgaben für stärkere |

## Durchführung

1. **Lernfeld analysieren** — Kompetenzformulierung und Inhaltsangaben des Rahmenlehrplans lesen. Zentrale Verben identifizieren und mit [[blooms-taxonomie]] einstufen.
2. **Handlungssituation konstruieren** — Authentisches berufliches Szenario entwickeln. Idealerweise aus realen Betriebserfahrungen der Azubis abgeleitet.
3. **Arbeitsaufträge formulieren** — Entlang der sechs Phasen der vollständigen Handlung (informieren → planen → entscheiden → ausführen → kontrollieren → bewerten).
4. **Material bereitstellen** — Informationsblätter, Datenquellen, Werkzeuge. Gemäß [[scaffolding]] je nach Lernstand mehr oder weniger Hilfestellung.
5. **[[formatives-assessment]] einbauen** — Zwischenstände sichern, Reflexionsphasen planen. Gemäß [[constructive-alignment]] Prüfung auf gleicher Taxonomiestufe wie das Lernziel.
6. **Differenzierung planen** — Zusatzaufgaben, gestufte Hilfen, verschiedene Komplexitätsniveaus.

## Voraussetzungen

- Zugang zum Rahmenlehrplan und didaktischer Jahresplanung
- Kenntnis der betrieblichen Praxis (Lernortkooperation mit Ausbildungsbetrieben)
- Zeit für Bildungsgangkonferenz (Lernsituationen werden im Team entwickelt)
- Technische Infrastruktur passend zum Lernfeld (IDE, Datenbank, Netzwerk-Lab)

## Varianten

- **Kurze Lernsituation (4-8 Std.):** Eine Phase der vollständigen Handlung betont, z.B. reines Troubleshooting (LF6)
- **Umfassende Lernsituation (20-40 Std.):** Alle sechs Phasen, häufig projektartig (LF10-12)
- **Spiralcurriculare Verknüpfung:** Lernsituation aus LF5 (Datenbank) wird in LF8 (API) weitergeführt
- **Kooperative Lernsituation:** Teams arbeiten an verschiedenen Teilaspekten eines gemeinsamen Produkts

## Zeitbedarf

- **Entwicklung:** 4-8 Stunden pro Lernsituation (Bildungsgangkonferenz + Ausarbeitung)
- **Durchführung:** Je nach Umfang 4-40 Unterrichtsstunden
- **Evaluation/Anpassung:** 1-2 Stunden nach Durchführung

## Bezug zur IT-Ausbildung

### Materialquellen für fertige Lernsituationen

| Quelle | Abdeckung | Format |
|--------|-----------|--------|
| **ISB Bayern** | LF2-LF7, länderübergreifend | PDF pro Lernfeld, Schüler-/Lehrerversion |
| **Landesbildungsserver BW** | LF1, LF2, LF6, LF11a/b | DOCX unter CC BY-NC 4.0 |
| **Sachsen Materialdatenbank** | Alle 12 Lernfelder | Curriculare Analyse + Beispiel-LS |
| **Hessen Handreichung** | Gesamtüberblick + Beispiele | PDF-Handreichung |

Die Materiallage ist für LF1-6 gut, für LF7-12 (v.a. fachrichtungsspezifisch) deutlich dünner — hier ist eigene Entwicklung nötig.

## Praktische Anwendung

Ein Agent kann Lernsituationen generieren und bewerten:

1. **LS-Entwurf:** Ausgehend von Lernfeld-Nummer und Kompetenzformulierung eine authentische Handlungssituation generieren. [[blooms-taxonomie]] für Operatoren nutzen, [[constructive-alignment]] für Kohärenz prüfen.
2. **Arbeitsaufträge generieren** — pro Phase der vollständigen Handlung 1-2 konkrete Aufgaben formulieren, mit [[scaffolding]]-Stufen für Differenzierung.
3. **Material erstellen** — Informationsblätter, Kundenbriefings, Beispieldaten für die Handlungssituation bereitstellen.
4. **Qualität prüfen** — Ist die Handlungssituation authentisch? Deckt sie die Lernfeld-Kompetenzen ab? Ist das Assessment aligned?

## Verwandte Konzepte

- [[handlungsorientierter-unterricht]] — Lernsituationen setzen das Lernfeldkonzept und die vollständige Handlung um
- [[constructive-alignment]] — Lernziele, Aktivitäten und Prüfung müssen in der Lernsituation aligned sein
- [[blooms-taxonomie]] — Operatoren zur Formulierung von Kompetenzzielen in der Lernsituation
- [[scaffolding]] — Differenzierung innerhalb der Lernsituation durch gestufte Hilfen
- [[formatives-assessment]] — Zwischenstände sichern und Feedback in die Lernsituation integrieren

## Quellen

- Kultusministerkonferenz. (2021). Handreichung für die Erarbeitung von Rahmenlehrplänen der KMK.
- Kultusministerkonferenz. (2020). Rahmenlehrplan für die Ausbildungsberufe Fachinformatiker und Fachinformatikerin.
- ISB Bayern. (2020). Handreichung technische IT-Ausbildungsberufe — Umsetzungshilfe mit Lernsituationen.
- Tramm, T. & Krille, F. (2013). Planung des Lernfeldunterrichts. bwp@ Berufs- und Wirtschaftspädagogik — online, 24, 1-24.
