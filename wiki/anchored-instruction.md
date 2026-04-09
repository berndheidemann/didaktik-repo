---
title: Anchored Instruction
type: theorie
tags: [ctgv, bransford, jasper-woodbury, narrativer-anker, situiertes-lernen, fiktive-firma, lernszenario, makrokontext]
related:
  - "[[lernsituationen-gestalten]]"
  - "[[immersive-simulationen]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[computational-action]]"
  - "[[intrinsic-integration]]"
  - "[[engagement-theory]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[kursarchitektur-lernumgebungen]]"
  - "[[self-determination-theory]]"
  - "[[contrasting-cases]]"
  - "[[primm-methode]]"
  - "[[poe-methode]]"
evidenzgrad: quasi-experimentell
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
created: 2026-04-09
updated: 2026-04-09
summary: >
  Ein durchgängiges, komplexes Szenario ("Anker") rahmt das Lernen über Wochen
  oder Monate — Lernende kehren immer wieder zum selben narrativen Kontext
  zurück und entdecken neue Facetten. CTGV (Bransford et al., 1990) entwickelten
  das Prinzip an der Jasper-Woodbury-Serie; die durchgehende Fiktivfirma in
  IT-Lernumgebungen ist die heutige Entsprechung.
---

# Anchored Instruction

## Kernidee

Anchored Instruction ersetzt isolierte Beispiele durch **einen** reichen, narrativen Kontext, der über lange Zeiträume als Bezugsrahmen dient. Lernende begegnen immer wieder derselben Welt — denselben Figuren, derselben Systemlandschaft, derselben Geschichte — und entdecken in jeder neuen Einheit eine weitere Facette. Dadurch wird Wissen *im Kontext* konsolidiert, statt als Sammlung abstrakter Fakten zu verblassen. Das pädagogische Gegenteil sind Aufgaben, die jedes Mal in einer neuen, beliebigen Situation spielen.

## Beschreibung

### Ursprung: CTGV und die Jasper-Woodbury-Serie

Die Cognition and Technology Group at Vanderbilt (CTGV) entwickelte Anchored Instruction in den späten 1980er Jahren als Antwort auf das **"inert knowledge problem"** — den Befund, dass Schüler zwar Wissen reproduzieren, es aber in neuen Situationen nicht anwenden konnten. Die Gruppe baute die **Adventures of Jasper Woodbury** (1990er): eine Serie von Videofilmen, in denen ein Protagonist in realistische, komplexe Probleme gerät, die mit Mathematik, Naturwissenschaft und Planung zu lösen sind. Klassen bearbeiteten denselben Anker über Wochen. Wichtig: die Lösung war **nicht im Video** — alle nötigen Daten waren eingebettet, mussten aber von den Schülern erst identifiziert und extrahiert werden.

**Evidenzbefund:** CTGV (1992, 1993) berichten mehrfach replizierte Vorteile gegenüber klassischer Instruktion bei *Transfer* und *Problemlöseleistung*, besonders für schwächere Lernende. Effektstärken sind gemischt (d ≈ 0,3–0,5), die Evidenzbasis ist quasi-experimentell bis Fallstudie — konzeptuell stark, methodisch nicht auf RCT-Niveau.

### Fünf Designmerkmale eines tragfähigen Ankers

CTGV (1992) definieren den Anker nicht durch das Medium (Video in den 90ern), sondern durch fünf Eigenschaften, die genauso für eine fiktive Firma in einer Lernumgebung gelten: **(1) generativ** — erlaubt viele verschiedene Fragen; **(2) eingebettete Daten** — alle Informationen sind im Anker enthalten, aber nicht beschriftet, sondern müssen extrahiert werden; **(3) komplex und realistisch** — enthält echte Widersprüche und Abwägungen, keine Schulübung; **(4) kooperativ bearbeitbar** — verschiedene Lernende bearbeiten verschiedene Teilaspekte; **(5) curriculum-verbindend** — derselbe Anker trägt Inhalte aus mehreren Themenfeldern oder Lernfeldern.

### Abgrenzung zu verwandten Konzepten

| Konzept | Was macht es? | Verhältnis zu Anchored Instruction |
|---------|---------------|-----------------------------------|
| [[lernsituationen-gestalten]] | Didaktisch-methodisches Format aus dem Rahmenlehrplan, das Lernfelder in konkrete Situationen übersetzt | **Lernsituation ist der Rahmen, Anker ist die Substanz.** Ein Anker kann mehrere Lernsituationen tragen. |
| [[handlungsorientierter-unterricht]] | Übergeordnetes Prinzip: vollständige Handlung als Unterrichtsstruktur | Handlungsorientierung ist das *Wie*, Anchored Instruction das *Worin* — der gemeinsame Kontext, in dem die Handlungen stattfinden. |
| [[immersive-simulationen]] | Technische Sandboxen (CTFs, Netzwerk-Labs), die Ernstfall simulieren | Simulationen können Teil eines Ankers sein; der Anker liefert das "Warum simulieren wir gerade *dieses*?" |
| [[intrinsic-integration]] | Lerninhalt als Kernmechanik statt als Aufsatz | Komplementär: Anker liefert den Kontext, Intrinsic Integration stellt sicher, dass die Aufgaben im Anker tatsächlich das Lernziel berühren. |

**Kritischer Punkt:** Eine beliebige fiktive Firma macht noch keinen Anker. "TechFirma GmbH" als Beschriftung im Aufgabentext ist Kosmetik. Erst wenn die Firma eine *Systemlandschaft* hat, die in mehreren Aufgaben wiederkehrt, eigene Daten, eigene Personen mit Interessen, und wenn neue Aufgaben Aspekte der Firma *vertiefen* statt sie zu ersetzen, wird sie zum Anker.

## Bezug zur IT-Ausbildung

Die durchgehende **Fiktivfirma** in interaktiven Lernumgebungen ist die unmittelbare Entsprechung von Anchored Instruction in der IT-Berufsausbildung. Beispiele aus der Praxis:

- **TechNova GmbH** (Onlineshop-Szenario): Eine Lernumgebung zieht dieselbe Firma durch alle SQL-Kapitel. Die Tabellen (Kunden, Produkte, Bestellungen, Bewertungen) sind nicht abstrakte `t1 JOIN t2`-Beispiele, sondern konkrete Geschäftsfragen: "Welche Produkte wurden im letzten Quartal nicht bestellt?"
- **DataFlow GmbH** (Datendienstleister): Eine REST/NoSQL/Datenformate-Lernumgebung nutzt die gleiche Firma für JSON-Parsing, REST-Design, CRUD-Simulation, DSGVO-Fragen und Datenqualitäts-Dashboard. Lernende begegnen derselben Kundin "Anna Schmidt" in Kapitel 1 (JSON-Schema) und Kapitel 7 (Auskunftsrecht).

### Vorteile und Grenzen im Berufsschulkontext

**Vorteile:** Derselbe Anker verknüpft lernfeldübergreifend (LF5 SQL, LF8 REST, LF10 DSGVO, LF11 PM) — genau die curriculare Integration, die der Rahmenlehrplan will. Aufgaben werden zu **Tickets** ("Der Vertrieb braucht einen Report über offene Mahnungen"), was für Azubis authentisch ist und die Brücke zum Betrieb schlägt. Starke Azubis erweitern die Systemlandschaft, schwächere bearbeiten bestehende Tickets — gleicher Kontext, verschiedene Tiefen. Konzepte, die in Woche 3 eingeführt und in Woche 12 im gleichen Kontext wieder auftauchen, profitieren vom Spacing-Effekt ohne künstlich zu wirken.

**Grenzen:** Kontext-Overhead lohnt sich erst ab mehreren Stunden; narrative Ermüdung droht bei zu engem Anker; Transfer-Gefahr, wenn Lernende das Konzept nur im Firmenkontext kennen — Vergleiche zu anderen Kontexten ([[contrasting-cases]]) sind notwendig.

## Praktische Anwendung

Ein Agent, der eine Lernumgebung gestaltet, kann Anchored Instruction wie folgt operationalisieren:

1. **Anker-Bibel anlegen** — strukturiertes Dokument mit Firmenprofil, Systemlandschaft, 5–10 Personas, Kerndatenmodell, typischen Prozessen, aktuellen „Projekten". Referenz für alle Aufgaben-Generatoren.
2. **Aufgaben als Tickets formulieren** — statt „Schreiben Sie eine SELECT-Abfrage..." → „Ticket #2341: Der Vertrieb möchte wissen, welche Kunden im Q4 keine Bestellung hatten."
3. **Systemlandschaft persistent halten** — Schema, Beispieldaten, API-Dokumentation, Fallakten über Kapitel hinweg konsistent. Wiederkehrende Personen (Kund:innen, Kolleg:innen) erhöhen Identifikation.
4. **Mit [[lernsituationen-gestalten]] verbinden** — Lernsituation ist die didaktische Verpackung, Anker das tragende Weltgerüst. Eine Lernsituation ohne Anker ist episodisch, ein Anker ohne Lernsituation ist nur Setting.
5. **Anti-Pattern vermeiden** — „In der Firma XY soll..." als bloße Floskel vor einer generischen Aufgabe ist Kosmetik. Wenn die Firma sich beliebig austauschen ließe, ist sie kein Anker.
6. **Transfer sichern** — ergänzend zu Aufgaben *im* Anker gezielt [[contrasting-cases]] einsetzen, die außerhalb liegen, um Übergeneralisierung zu vermeiden.

## Verwandte Konzepte

- [[lernsituationen-gestalten]] — Lernsituation ist der didaktisch-methodische Rahmen; Anchored Instruction liefert das tragende Weltgerüst, das mehrere Lernsituationen verbinden kann
- [[handlungsorientierter-unterricht]] — Vollständige Handlung als Unterrichtsprinzip; Anker liefert den gemeinsamen Kontext, in dem Handlungen stattfinden
- [[immersive-simulationen]] — Simulationsumgebungen werden erst durch einen Anker didaktisch verbunden
- [[computational-action]] — Projekte mit echten Adressaten; der Anker kann als fiktiver Ersatz dienen, wenn echte Adressaten nicht verfügbar sind
- [[intrinsic-integration]] — Sichert, dass Aufgaben im Anker tatsächlich das Lernziel treffen, statt nur dekorativ zu sein
- [[engagement-theory]] — Relate-Create-Donate: der Anker trägt das "Relate"
- [[interaktive-lernumgebungen]] — Persistente Systemlandschaft und wiederkehrende Daten als Widget-Pattern
- [[kursarchitektur-lernumgebungen]] — Anker passt besonders zur Hub-and-Spoke- und Spiral-Architektur
- [[self-determination-theory]] — Kontextstabilität unterstützt Kompetenz- und Verbundenheits-Erleben

## Quellen

- Cognition and Technology Group at Vanderbilt (1990). Anchored Instruction and Its Relationship to Situated Cognition. *Educational Researcher*, 19(6), 2-10.
- Cognition and Technology Group at Vanderbilt (1992). The Jasper Series as an Example of Anchored Instruction: Theory, Program Description, and Assessment Data. *Educational Psychologist*, 27(3), 291-315.
- Cognition and Technology Group at Vanderbilt (1993). Anchored Instruction and Situated Cognition Revisited. *Educational Technology*, 33(3), 52-70.
- Bransford, J. D., Sherwood, R. D., Hasselbring, T. S., Kinzer, C. K. & Williams, S. M. (1990). Anchored Instruction: Why we need it and how technology can help. In D. Nix & R. Spiro (Eds.), *Cognition, Education, and Multimedia* (pp. 115-141). Erlbaum.
- Pellegrino, J. W. & Brophy, S. (2008). From Cognitive Theory to Instructional Practice: Technology and the Evolution of Anchored Instruction. In D. Ifenthaler et al. (Eds.), *Understanding Models for Learning and Instruction* (pp. 277-303). Springer.
