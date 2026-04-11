---
title: Kooperatives Lernen — Methoden-Katalog
type: methode
tags: [kooperatives-lernen, gruppenarbeit, peer-learning, methoden-katalog, jigsaw, think-pair-share, kagan, katalog]
related:
  - "[[pair-programming-unterricht]]"
  - "[[peer-instruction]]"
  - "[[code-review-unterricht]]"
  - "[[community-of-practice]]"
  - "[[self-determination-theory]]"
  - "[[effektstaerken-unterricht]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[scaffolding]]"
  - "[[formatives-assessment]]"
  - "[[engagement-theory]]"
  - "[[affektive-dimensionen]]"
  - "[[constructive-alignment]]"
  - "[[fehlerkultur-im-unterricht]]"
  - "[[misconception-analyse]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[retrieval-practice]]"
  - "[[generative-learning-aktivitaeten]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, analysieren, bewerten]
sozialform: [partner, gruppe, plenum]
created: 2026-04-08
updated: 2026-04-09
summary: >
  Methoden-Katalog zu kooperativen Lernformen jenseits der Programmierung —
  Johnson & Johnsons fünf Grundpfeiler plus konkrete Methoden (Jigsaw,
  Think-Pair-Share, Reziprokes Lehren, Gallery Walk, Strukturierte Kontroverse,
  Kagan-Strukturen). Fokus auf LF1-4 und theoretische Inhalte im IT-Unterricht.
---

# Kooperatives Lernen — Methoden-Katalog

## Kernidee

Kooperatives Lernen ist **strukturierte Zusammenarbeit mit positiver Interdependenz und individueller Verantwortlichkeit** — nicht einfach "Gruppenarbeit". Johnson & Johnson (2009, Meta-Analyse über fünf Jahrzehnte) berichten durchschnittliche Effektstärken von d ≈ 0,50–0,65 gegenüber individualistischem Lernen, vorausgesetzt die fünf Grundpfeiler sind implementiert. Für den IT-Unterricht jenseits der Programmierung (LF1-4, Datenschutz, Netzwerktheorie, Projektmanagement, IT-Sicherheit) liefert es einen methodischen Werkzeugkasten, der Inhalte aktiv durchdringen lässt, statt sie zu referieren.

Dieser Artikel ist ein Dach-Artikel zu den programmier-spezifischen Methoden [[pair-programming-unterricht]], [[peer-instruction]] und [[code-review-unterricht]].

## Beschreibung

### Die fünf Grundpfeiler (Johnson & Johnson)

1. **Positive Interdependenz** — "Ich kann nur gewinnen, wenn mein Team gewinnt." Strukturell erzwungen durch geteilte Ressourcen, komplementäre Rollen, gemeinsames Produkt. Ohne diesen Pfeiler kippt es in Parallelarbeit.
2. **Individuelle Verantwortlichkeit** — Jede:r muss am Ende nachweisbar etwas können. Realisiert durch Einzeltests, zufälliges Abfragen ("Numbered Heads"), individuelle Teilprodukte. Verhindert Trittbrettfahren.
3. **Direkte, unterstützende Interaktion** — Lernende erklären sich gegenseitig, geben Feedback, stellen Fragen. Physische Nähe und Sichtkontakt sind kein Luxus.
4. **Soziale Kompetenzen** — Zuhören, Konflikt aushalten, Feedback geben müssen explizit gelehrt werden. Nicht vorausgesetzt, sondern Lernziel.
5. **Gruppenreflexion** — Am Ende explizit: Was lief gut? Was ändern wir nächstes Mal? 5 Minuten erhöhen den Transfer messbar.

**Merksatz:** Fehlt auch nur einer der fünf, ist es Gruppenarbeit — nicht kooperatives Lernen.

### Methoden-Katalog

| Methode | Prinzip | Passt wann | IT-Beispiel (non-programming) |
|---|---|---|---|
| **Think-Pair-Share** (Lyman) | Denken → Paar → Plenum | Einstieg, Aktivierung, kurze Klärungen | "Unterschied Hub vs. Switch?" (LF3) |
| **Jigsaw / Gruppenpuzzle** (Aronson) | Expert:innen- → Stammgruppen | Stoff in 3-5 Teile zerlegbar | DSGVO-Rechte Art. 15-22 (LF4) |
| **Reziprokes Lehren** (Palincsar & Brown) | Vorhersagen, Fragen, Klären, Zusammenfassen | Dichte Fachtexte | ITIL-Prozessbeschreibung, Gesetzestext |
| **STAD** (Slavin) | Gruppen lernen → Einzeltest → Gruppenschnitt | Faktenwissen festigen, heterogene Klassen | Subnetting-Drill |
| **Strukturierte Kontroverse** (Johnson) | Pro/Contra + Perspektivwechsel + Konsens | Bewertungsfragen, Dilemmata | "Cloud vs. On-Premise im KMU" |
| **Gallery Walk** | Produkte zeigen, rotieren, reviewen | Sichtbare Zwischenprodukte, Feedback | Netzplan-Skizzen, DSFA-Entwürfe |
| **Group Investigation** (Sharan) | Selbstgewählte Teilthemen → Präsentation | Offene Projektphasen | IT-Sicherheitsvorfälle recherchieren |
| **Numbered Heads Together** (Kagan) | Gruppe klärt, zufällige Nummer antwortet | Prüfungsvorbereitung, Wissenscheck | IHK-Fragen LF1-4 |
| **Placemat** | Einzel am Rand → Konsens in der Mitte | Meinungsbildung, Definitionsarbeit | "Was ist Agile?" aus 4 Perspektiven |
| **Round Robin** (Kagan) | Reihum je ein Beitrag | Brainstorming ohne Dominanz | OWASP Top 10 sammeln |
| **Fishbowl** | Innenkreis diskutiert, Außenkreis beobachtet | Modell-Diskussion, Metakommunikation | Scrum-Kick-off simulieren |

### Fünf Methoden im Detail

**Jigsaw (Aronson 1978):** Klasse in Stammgruppen zu z.B. 4 Personen. Der Stoff wird in 4 Teilthemen zerlegt. *Phase 1 — Expertengruppen:* alle mit Teilthema A treffen sich, arbeiten den Stoff gemeinsam auf, werden zu Expert:innen. *Phase 2 — Stammgruppen zurück:* jede:r Expert:in lehrt die eigenen drei Stammgruppen-Peers. Die einzige Möglichkeit, das Gesamtbild zu bekommen, ist zuzuhören — das erzeugt Interdependenz strukturell. **IT-Anwendung:** DSGVO-Betroffenenrechte (Auskunft, Löschung, Widerspruch, Datenübertragbarkeit) — 4 Expertengruppen, danach Stammgruppen beraten einen Fake-Kundenfall.

**Think-Pair-Share (Lyman 1981):** Die einfachste Kooperativ-Methode, passt in jede 10-Minuten-Lücke. *Think* (1 Min einzeln, stumm) — zwingt zur Eigenaktivierung, verhindert dass nur die Schnellen reden. *Pair* (2-3 Min) — Paar vergleicht und einigt sich. *Share* (Plenum) — ausgewählte Paare präsentieren. Wichtiger Trick: **Zufallsauswahl** im Share-Teil (nicht Meldungen), sonst entfällt individuelle Verantwortlichkeit.

**Reziprokes Lehren (Palincsar & Brown 1984):** Zu Textarbeit. Vier Rollen rotieren: *Vorhersager* (was kommt als nächstes?), *Fragensteller* (was ist wichtig?), *Klärer* (was verstehe ich nicht?), *Zusammenfasser* (in 2 Sätzen). Ursprünglich für Leseförderung, sehr wirksam für IT-Fachtexte (RFC, Gesetzestext, technische Dokumentation). Effektstärke d ≈ 0,88 für Leseverständnis in Rosenshine & Meister (1994, Review über 16 Studien, nur experimenter-developed tests; bei standardisierten Tests sinkt auf d ≈ 0,32) — eine der höchsten der Unterrichtsforschung, aber stark vom Testtyp abhängig.

**Gallery Walk:** Gruppen erstellen ein sichtbares Produkt (Plakat, Whiteboard, Miro-Board) und hängen es auf. Alle Gruppen rotieren in 3-5-Minuten-Takten durch die Galerie und hinterlassen strukturiertes Feedback (2 Sterne + 1 Frage pro Station). Zurück am eigenen Produkt: Feedback sichten und überarbeiten. **Non-Programming-Beispiele:** Netzplanskizzen, ER-Diagramme, DSFA-Entwürfe, Schutzbedarfsanalysen nach BSI-Grundschutz.

**Strukturierte Kontroverse (Johnson & Johnson 1979):** Vierergruppe, zwei Paare. Paar A argumentiert Pro, Paar B Contra — mit Material, das beide Seiten absichtlich gut vertritt. Nach 10 Minuten **Perspektivwechsel**: A wird Contra, B wird Pro. Anschließend gemeinsam ein differenziertes Urteil formulieren (nicht Sieger-Voting!). Trainiert genau das, was Bloom-Stufe "bewerten" verlangt. **IT-Themen:** Open-Source vs. proprietär, BYOD ja/nein, biometrische Authentifizierung im Betrieb.

### Randnotiz: Social Annotation als asynchrone Variante

Für asynchrone Textarbeit (Flipped Classroom Prep, Reading Assignments) existiert seit einigen Jahren **Social Annotation** als methodisches Format: Lernende kommentieren Textstellen direkt im Dokument, andere sehen die Kommentare und antworten darauf. Plattformen wie **Hypothesis** (Open Source, LTI) und **Perusall** (gratis für Lehrkräfte, KI-gestütztes Comment-Grading) bieten diese Funktion für Texte, Artikel, RFCs und PDFs. Empirie ist moderat positiv (systematic reviews zeigen Effekte auf Leseverstehen und Metakognition), aber **schwächer als Retrieval Practice oder Peer Instruction**. Beide Hauptplattformen sind US-gehostet, was für deutsche Schulen ein DSGVO-Blocker ist — ohne Schul-DSB-Freigabe und Schrems-II-Prüfung nicht einsetzbar. DE-Alternative: **edubreak CAMPUS** (kommerziell, eher Video-fokussiert).

**Für FIAE/FIDP**: Die Code-Variante von Social Annotation ist der **Pull-Request-Review** in GitHub/GitLab — siehe [[code-review-unterricht]]. Für reine Text-Annotation lohnt sich der DSGVO-Aufwand nur, wenn Textverständnis (LF4 DSGVO-Dokumente, LF3/LF8 RFCs, AGB/Verträge) im Mittelpunkt einer längeren Phase steht. Für die meisten Fälle reicht ein gemeinsames Etherpad oder ein geteiltes Dokument mit Kommentarfunktion.

## Durchführung

1. **Methode zum Lernziel passen** — Faktenwissen: STAD oder Numbered Heads. Verstehen: Jigsaw oder Reziprokes Lehren. Bewerten: Strukturierte Kontroverse. Erschaffen: Group Investigation.
2. **Positive Interdependenz explizit einbauen** — "Wer das Ergebnis allein lösen kann, braucht keine Kooperation."
3. **Rollen definieren** — Bei >3 Personen helfen Rollenkarten (Moderator, Zeitwächter, Dokumentator, Spokesperson).
4. **Individuelle Verantwortlichkeit sichern** — Einzelnachweis am Ende (Test, Reflexionsnotiz, Zufallsabfrage).
5. **Reflexionsphase einplanen** — 5 Minuten am Ende, strukturiert: "Was lief? Was ändern?"

## Voraussetzungen

- Soziale Grundkompetenzen (ggf. explizit in den ersten Wochen trainieren)
- Raum für physische Nähe und Bewegung
- Bereitschaft, Unterricht-Steuerung abzugeben
- Stoff, der *verhandelbar* ist — reine Faktenwiederholung eignet sich nicht

## Varianten

- **Kurze Aktivierung (5-15 Min):** Think-Pair-Share, Numbered Heads Together, Placemat
- **Mittlere Einheit (45-90 Min):** Jigsaw, Reziprokes Lehren, Gallery Walk, Strukturierte Kontroverse
- **Projektformat (mehrere Stunden/Wochen):** Group Investigation, STAD über Einheit hinweg
- **Prüfungsvorbereitung:** Numbered Heads mit alten IHK-Fragen (vgl. [[pruefungsvorbereitung-lernstrategie]])

## Zeitbedarf

Vorbereitung: 15-60 Min je nach Methode (Rollenkarten, Materialschnitt). Durchführung: 10-90 Min. Reflexion: 5 Min fix. Beim ersten Einsatz einer neuen Methode: doppelte Zeit einplanen, weil Lernende das Format erst kennenlernen müssen.

## Bezug zur IT-Ausbildung

Der Artikel zielt auf die **Nicht-Programmier-Inhalte** der Ausbildung:

- **LF1 (Das Unternehmen):** Group Investigation über Unternehmensformen; Placemat zur Rolle FIAE/FIDP im Betrieb.
- **LF2 (Arbeitsplätze einrichten):** Jigsaw Ergonomie/Hardware/Software/Peripherie; Gallery Walk mit Arbeitsplatzskizzen.
- **LF3 (Netzwerke):** STAD für Subnetting-Drill; Strukturierte Kontroverse "statisch vs. DHCP im KMU".
- **LF4 (Schutzbedürftige Daten):** Jigsaw zu DSGVO-Prinzipien; Reziprokes Lehren auf Art. 5/6/32 DSGVO; Strukturierte Kontroverse zu biometrischen Verfahren.
- **Projektmanagement:** Fishbowl zur Scrum-Meeting-Simulation; Gallery Walk für Netzpläne.
- **IT-Sicherheit / BSI-Grundschutz:** Numbered Heads für Schutzbedarfsklassen; Group Investigation zu realen Vorfällen (Log4Shell, Ransomware).
- **Prüfungsvorbereitung:** Think-Pair-Share mit alten IHK-Fragen; STAD über eine ganze Reihe.

Geeignet als [[constructive-alignment]]-konformer TLA für Bloom-Stufen "verstehen", "anwenden", "analysieren", "bewerten" — nicht für reines "erinnern" (da ist [[retrieval-practice]] effizienter).

## Praktische Anwendung

1. **Methode aus der Tabelle wählen** passend zum Lernziel.
2. **Fünf Grundpfeiler prüfen** — insbesondere: Ist positive Interdependenz strukturell erzwungen?
3. **Heterogene Gruppen** (Leistung, Geschlecht, Vorerfahrung) — keine homogenen Hochleister-Gruppen.
4. **Rollenkarten** bei erstem Einsatz zur Entlastung.
5. **Mischformel für Bewertung**: Gruppenprodukt + Einzeltest (niemals nur Gruppennote).
6. **Reflexionsphase nicht kürzen** — auch wenn die Zeit knapp wird.

## Häufige Fehler

- **"Macht das in Gruppen"** ohne Rollen, ohne gemeinsames Produkt → Parallelarbeit mit Trittbrettfahrern.
- **Nur eine Gruppennote** → zerstört individuelle Verantwortlichkeit.
- **Homogene Hochleister-Gruppen** → verstärken Ungleichheit.
- **Keine Reflexionsphase** → kein Transfer der sozialen Kompetenzen.
- **Kooperative Methode für ungeeigneten Inhalt** → Faktenwissen ohne Verhandlungsraum ist mit Retrieval Practice schneller.
- **Soziale Kompetenzen vorausgesetzt** — gerade in heterogenen BS-Klassen explizit trainieren.
- **Zu lange Sessions** — nach 20-25 Min intensive Kooperation sinkt die Qualität.
- **Keine strukturelle Interdependenz** — das Produkt muss nur *gemeinsam* erstellbar sein.

## Verwandte Konzepte

- [[pair-programming-unterricht]] — programmier-spezifische Kooperativ-Methode
- [[peer-instruction]] — ConcepTest-basiert, enthält Think-Pair-Share
- [[code-review-unterricht]] — asynchrone Peer-Kooperation zu Code
- [[community-of-practice]] — theoretisches Dach: das *Warum* kooperativen Lernens
- [[self-determination-theory]] — Verbundenheit als Motivationsanker
- [[effektstaerken-unterricht]] — Hattie-Zahlen zu kooperativem Lernen (d ≈ 0,54-0,59)
- [[handlungsorientierter-unterricht]] — Lernsituationen sind häufig kooperativ strukturiert
- [[scaffolding]] — Rollen/Rubrics als soziales Scaffold
- [[formatives-assessment]] — Wiliam-Strategie 4 (Peers als Lernressourcen)
- [[engagement-theory]] — Relate-Create-Donate passt strukturell
- [[affektive-dimensionen]] — Zugehörigkeit, Angst-Abbau

## Quellen

- Aronson, E., Blaney, N., Stephan, C., Sikes, J., & Snapp, M. (1978). *The Jigsaw Classroom*. Sage.
- Hattie, J. (2023). *Visible Learning: The Sequel*. Routledge.
- Johnson, D. W., & Johnson, R. T. (2009). An educational psychology success story: Social interdependence theory and cooperative learning. *Educational Researcher*, 38(5), 365-379.
- Johnson, D. W., Johnson, R. T., & Smith, K. A. (2014). Cooperative learning: Improving university instruction by basing practice on validated theory. *Journal on Excellence in College Teaching*, 25(3-4), 85-118.
- Kagan, S., & Kagan, M. (2009). *Kagan Cooperative Learning*. Kagan Publishing.
- Kyndt, E., Raes, E., Lismont, B., Timmers, F., Cascallar, E., & Dochy, F. (2013). A meta-analysis of the effects of face-to-face cooperative learning. *Educational Research Review*, 10, 133-149.
- Palincsar, A. S., & Brown, A. L. (1984). Reciprocal teaching of comprehension-fostering and comprehension-monitoring activities. *Cognition and Instruction*, 1(2), 117-175.
- Slavin, R. E. (2014). Making cooperative learning powerful. *Educational Leadership*, 72(2), 22-26.
