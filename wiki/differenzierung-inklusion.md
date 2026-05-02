---
title: Differenzierung und Inklusion im IT-Unterricht
type: theorie
tags: [inklusion, differenzierung, heterogenitaet, udl, neurodiversitaet, nachteilsausgleich, barrierefreiheit, wcag, referenz]
related:
  - "[[low-floor-high-ceiling]]"
  - "[[scaffolding]]"
  - "[[worked-examples]]"
  - "[[affektive-dimensionen]]"
  - "[[self-determination-theory]]"
  - "[[lernsituationen-gestalten]]"
  - "[[kursarchitektur-lernumgebungen]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[formatives-assessment]]"
  - "[[pair-programming-unterricht]]"
  - "[[computational-action]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[parsons-problems]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[subgoal-labeling]]"
  - "[[mastery-learning]]"
  - "[[imposter-phaenomen-it-azubis]]"
  - "[[belonging-interventionen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten, erschaffen]
created: 2026-04-08
updated: 2026-04-08
summary: >
  Klammer-Artikel zu Differenzierung und Inklusion: UDL (CAST), Tomlinsons
  vier Dimensionen, Neurodiversität (ADHS, Autismus, Dyslexie) in IT-Klassen,
  Nachteilsausgleich nach SGB IX, Hochbegabten-Förderung, WCAG-Essentials
  für Lernumgebungs-Entwickler.
---

# Differenzierung und Inklusion im IT-Unterricht

## Kernidee

Inklusive Didaktik im IT-Unterricht ist kein Zusatz für "Problemfälle", sondern die grundlegende Annahme, dass **Heterogenität der Normalfall ist** und das Unterrichtsdesign von Anfang an so geplant wird, dass möglichst viele Lernende ohne nachträgliche Sonderwege teilhaben können. Universal Design for Learning (CAST), Tomlinsons Differentiated Instruction, Nachteilsausgleich nach SGB IX und WCAG-konforme Barrierefreiheit bilden zusammen einen Rahmen, der über punktuelle Strategien ([[low-floor-high-ceiling]], [[scaffolding]], [[worked-examples]]) hinausgeht und sie systematisch einordnet. Gerade in Fachinformatiker-Klassen mit ihrer extremen Bandbreite an Vorerfahrung, Sprachkompetenz, Alter und neurokognitiven Profilen ist die inklusive Perspektive keine Ethik-Pflicht, sondern ein pragmatisches Qualitätskriterium — Neurodivergente sind in IT-Berufen signifikant überrepräsentiert und oft die leistungsstärksten Azubis, wenn man sie lässt.

## Beschreibung

### Universal Design for Learning (CAST)

CAST-Framework (Meyer, Rose & Gordon 2014). Grundidee: Statt nachträglich zu differenzieren, werden Barrieren *proaktiv* im Curriculum designt weg — analog zu Rampen, die allen nützen.

| Prinzip | Fokus | IT-konkret |
|---|---|---|
| **Engagement** ("Warum") | Interesse, Persistenz, Selbstregulation | Freie Projektthemen (Wide Walls), Checkpoints als Mastery Experiences, Erweiterungspfade statt Niveaustufen |
| **Representation** ("Was") | Wahrnehmung, Sprache, Verstehen | Erklär-Video + Code + Diagramm zum selben Konzept; bilinguales Glossar; Python Tutor; ARIA-Labels |
| **Action & Expression** ("Wie") | Handlung, Ausdruck, Exekutive Funktionen | Kompetenznachweis frei wählbar (App, Demo, Doku); Tastatur-Shortcuts; Pseudocode-Templates; flexible Zeit |

**Anti-Pattern:** UDL wird oft als "mehr Materialien" missverstanden — der Kern ist **gleichwertige alternative Pfade zum selben Lernziel**, nicht mehr Kanäle für denselben Weg.

### Tomlinsons vier Differenzierungsdimensionen

Carol Ann Tomlinson (2017) hat das am breitesten rezipierte Modell der Binnendifferenzierung entwickelt. Vier Dimensionen, drei Schüler-Charakteristika (Readiness = Lernstand, Interest, Learning Profile).

| Dimension | Was variiert? | IT-Beispiel |
|---|---|---|
| **Content** | Was gelernt wird / worüber | Alle lernen SQL-JOINs, aber über eine Bibliotheks-DB vs. Gaming-Statistik-DB. Hobby-Coder: Window Functions; Einsteiger: INNER vs. LEFT JOIN — aber am selben Datensatz. |
| **Process** | Wie gelernt wird — Methoden, Sozialform, Zeit | Worked Example → Parsons Problem → freies Schreiben als Wahl-Einstiegspunkt; Einzelarbeit / Pair / Gruppe nach Bedarf |
| **Product** | Wie Kompetenz gezeigt wird | Lauffähige App, technische Doku, Code-Review-Bericht, Live-Präsentation, Unit-Tests als Artefakt |
| **Learning Environment** | Physischer/sozialer/digitaler Raum | Ruhiger Fokus-Bereich vs. Team-Tisch; Kopfhörer erlaubt; digitaler Kanal für introvertierte Azubis |

**Didaktische Haltung:** "Teaching up" — man plant für die stärkste vorstellbare Lerngruppe und scaffoldet nach unten, statt auf die schwächste zu zielen und die starken zu langweilen. Verbindet sich mit [[low-floor-high-ceiling]].

### Neurodiversität in IT-Klassen

Baron-Cohen et al. (2001) zeigen mit dem Autism-Spectrum-Quotient erhöhte AQ-Werte bei Mathematik-/Naturwissenschafts-Studierenden gegenüber Geisteswissenschaftlern; die Empathizing-Systemizing-Hypothese (Baron-Cohen, 2009) liefert dafür den Erklärungsrahmen. Daraus wird in der Praxisliteratur eine erhöhte Präsenz Neurodivergenter in IT-Berufen plausibilisiert. Verbreitete Branchen-Schätzungen liegen bei 3-6 % Autismus-Spektrum (vs. ~1 % Allgemeinbevölkerung) und 8-12 % ADHS in Tech (vs. ~5 %); diese Zahlen sind nicht direkt aus Baron-Cohen 2001 abgeleitet, sondern aus Branchen-Surveys. In einer FIAE-Klasse von 24 sitzen statistisch fast sicher mindestens ein:e Azubi auf dem Spektrum und 2-3 mit ADHS — meist undiagnostiziert.

| Profil | Typisches Problem | Konkrete Hilfen | Stärke nutzen |
|---|---|---|---|
| **ADHS** | Exekutive Funktionen, Arbeitsgedächtnis, Motivations-Regulation | 15-25-Min-Blöcke mit Checkpoints, Pomodoro, Kanban, unmittelbares Feedback, Bewegungs-Freiheit, interesse-basierte Projektwahl | Hyperfocus bei intrinsisch interessanten Projekten |
| **Autismus-Spektrum** | Unvorhergesehene Änderungen, soziale Erwartungen, sensorische Reize, Metaphern | Schriftliche Stunden-Agenda, präzise/wörtliche Aufgaben, reduzierter Gruppenzwang, ruhiger Arbeitsplatz, Bewertungs-Checklisten | Tiefes Spezialinteresse (Security, Compiler, Crypto) — Expertenrolle |
| **Dyslexie** | Lesen/Schreiben verlangsamt, Textverarbeitung | OpenDyslexic/Atkinson Hyperlegible, Text-to-Speech, Zeit-Plus, Rechtschreibtoleranz bei Variablennamen | Räumlich-visuelles Denken — Architektur, UX, Systemdesign |
| **Dyskalkulie** | Zahlen, mentale Arithmetik | Taschenrechner/REPL, visuelle Diagramme für Arrays/Indizes, konkrete Beispielwerte | Logik-Strukturen ≠ Arithmetik |

**Wichtig:** Keine Anpassung darf von einer Diagnose abhängen. Als **universelle Optionen** angeboten, nutzen sie der ganzen Klasse — das ist UDL.

### Nachteilsausgleich rechtlich und praktisch

**Rechtsgrundlagen:** Art. 3 Abs. 3 GG (Benachteiligungsverbot), UN-Behindertenrechtskonvention (in DE seit 26.03.2009 in Kraft, "angemessene Vorkehrungen"), SGB IX §§ 1, 2, 164, BBiG § 65 (IHK berücksichtigt "besondere Verhältnisse"), Schulgesetze der Länder, KMK-Empfehlung 2011.

**Wichtige Unterscheidung:** NTA ist *kein* Abweichen vom Leistungsniveau — die zu erreichenden Kompetenzen bleiben identisch, nur Rahmenbedingungen werden angepasst. Abgegrenzt vom "Notenschutz".

**Typische Maßnahmen:** Zeitverlängerung (+25% oder +50%), Pausen-Regelungen, technische Hilfsmittel (Laptop, Screenreader, OpenDyslexic, Rechtschreibprüfung), Raumwechsel, alternative Prüfungsformate, vereinfachte Aufgabentexte, größere Schrift. **IHK-Abschlussprüfung:** NTA muss rechtzeitig beantragt werden — **Berufsschule hat Beratungspflicht**.

**Pflicht der Lehrkraft:** NTA-Bescheide kennen, datenschutzkonform dokumentieren, Ausbildungsbetrieb nur mit Einwilligung einbeziehen. NTA ist Anspruch, nicht Gnade.

### Hochbegabte fördern

**Enrichment** (Vertiefung auf gleicher Stufe) vs. **Acceleration** (Überspringen, Verkürzung § 8 BBiG). Meta-Evidenz Steenbergen-Hu, Makel & Olszewski-Kubilius (2016, 100 Jahre Forschung): Acceleration hat robust positive Effekte (g ≈ 0,70 Akzelerierte vs. gleichaltrige Nicht-Akzelerierte, g ≈ 0,42 aggregiert über spezifische Akzelerationsformen) und *keine* signifikanten negativen sozio-emotionalen Folgen (entgegen dem Mythos).

**IT-konkret:** Vertikales Enrichment (Performance-Analyse, Security-Audit der eigenen Lösung), horizontales Enrichment (PostgreSQL-Features, GraphQL statt nur REST), Peer-Expertenrolle (Tutorial geben, Code-Review leiten — freiwillig!), Open-Source-Beiträge als echte Projekte, Acceleration nach § 8 BBiG (Verkürzung auf 2-2,5 Jahre). **Anti-Pattern:** "Du bist fertig, hilf dem Nachbarn" als *Strafe* — tötet Motivation.

### Digitale Barrierefreiheit (kurz)

Rechtsrahmen: EU Accessibility Act (ab 28.06.2025 bindend), BFSG, BITV 2.0. Für eigene Lernumgebungen ist WCAG 2.1 AA der De-facto-Standard. Die vier POUR-Prinzipien (Perceivable, Operable, Understandable, Robust) und typische Barrieren in Lernumgebungs-Code (Maus-pflichtige Editoren, Alt-texte, Tastatur-Navigation, Farbsehschwäche) sind in [[multimedia-gestaltungsprinzipien]] ausführlich behandelt — inklusive Quick-Audit-Checkliste (Tab-Navigation, axe DevTools, Graustufen, Zoom 200%). Kernaussage für Differenzierung: Barrierefreiheit im Neubau ist quasi kostenlos, in bestehenden Systemen exponentiell teurer.

### Praktische Differenzierungs-Strategien (ohne drei Niveaustufen)

**Wide Walls statt Niveaustufen.** Eine Aufgabe, viele Produktformen, viele Interessendomänen (vgl. [[low-floor-high-ceiling]]). Psychosozial überlegen, weil keine sichtbare Hierarchie.

**Peer-Tutoring mit Rotation.** Topping (2005): Peer-Tutoring wirkt für Tutor:innen *und* Tutees — wenn die Rollen rotieren und nicht dieselben immer die "Schwachen" oder "Starken" sind.

**Offene Aufgaben mit Pflichtkern + Optional.** Statt "1-5 für alle, 6-8 für Schnelle": "MVP = A. Wenn Zeit: B, C oder D frei wählbar."

**Gestufte Hilfen als ausklappbare Hints.** Wer sie braucht, holt sie; wer nicht, sieht sie nicht. Kein Stigma (vgl. [[scaffolding]]).

**Sprachsensibel unterrichten (für DaZ).** Siehe [[sprachsensibler-it-unterricht]]: Fachwörter explizit einführen, Redemittel bereitstellen.

**RTI / Mehrstufenmodell.** Dreistufig:
- *Tier 1 (~80%):* Hochwertiger universeller Unterricht, UDL-basiert
- *Tier 2 (~15%):* Zusätzliche Kleingruppen-Förderung 2-3x/Woche
- *Tier 3 (~5%):* Intensive 1:1-Förderung

Datenbasiert — formative Diagnose entscheidet ([[formatives-assessment]]).

**KI-gestützte Differenzierung.** Das Challenge-Point-Framework aus [[scaffolding]] lässt sich automatisieren: KI trackt Lösungsraten, Zeiten, Fehlertypen und justiert pro Lerner:in den Schwierigkeitsgrad (vgl. [[lerner-modell-mastery-tracking]], [[ki-gestuetztes-tutoring]]).

### Inklusion vs. Integration

| | Integration | Inklusion |
|---|---|---|
| *Frage* | Wie passt sich der/die Lernende an das System an? | Wie passt sich das System an die Lernenden an? |
| *Norm* | Normalfall bleibt — Abweichung wird zugelassen | Vielfalt *ist* der Normalfall |
| *Konsequenz* | Einzelfallregelungen, NTA als Ausnahme | Universal Design, Zugänglichkeit als Standard |
| *Leitfrage* | "Was brauchst du extra?" | "Wie muss ich von vornherein planen?" |

In der deutschen Schulrealität ist "Inklusion" oft faktisch Integration. UDL und Tomlinson ziehen die Konsequenz aus dem *inklusiven* Ansatz: Integration belässt die Verantwortung bei den Lernenden ("beantrag halt NTA"), Inklusion verschiebt sie in die Unterrichtsplanung.

## Bezug zur IT-Ausbildung

**Heterogenitäts-Dimensionen in FIAE/FIDP-Klassen:** Vorerfahrung (Minecraft-Mods-Hobbyist vs. Schleifen-Anfänger), Alter (16-40+), Sprache (DaZ 20-40%), Neurodivergenz (statistisch überrepräsentiert), Motivation (Pflichtgefühl bis Leidenschaft).

- **LF4 (Datenbank):** Wide-Walls-Aufgabe, Interessensdomänen. DaZ: SQL-Keywords bilingual. Hobby-DBAs: PostgreSQL-Features als Enrichment. ADHS: Teilaufgaben einzeln abhakbar. Autistisch: eindeutige Ergebnis-Kriterien statt "elegante Lösung".
- **LF5 (Softwareprojekte):** Tomlinson-Product-Dimension — Produkt wahlweise CLI, Web-App, Desktop-GUI oder API. Alle üben dasselbe Konzept ohne Stack-Zwang.
- **LF8 (Benutzerschnittstellen):** WCAG als Lerninhalt — Azubis bauen zugängliche Interfaces und lernen Barrierefreiheit als Kompetenz. Freiwillige Betroffenen-Expertise.
- **LF10-12 (Projekte):** Rollen nach Stärken (Architekt:in, Tester:in, Doku, DevOps) statt Zufallsgruppen — Tomlinsons Learning-Profile-Dimension.
- **Abschlussprüfung:** IHK-NTA rechtzeitig beantragen — Berufsschule hat Beratungspflicht.

## Praktische Anwendung

1. **Proaktiv inklusiv planen**, nicht nachträglich reaktiv.
2. **UDL-Checkliste** pro Lernsituation: Engagement × Representation × Action-Optionen.
3. **NTA-Beratung proaktiv** — nicht warten, bis Azubis selbst fragen.
4. **Statistisch denken:** In jeder Klasse sind neurodivergente Azubis — plane dafür als Normalfall.
5. **KI-gestützte adaptive Systeme** einsetzen, um 1:n-Differenzierung zu skalieren (vgl. [[lerner-modell-mastery-tracking]]).

## Anti-Patterns

- **"Drei Niveaustufen" sichtbar auf Arbeitsblättern** — Hierarchie-Stigma
- **"Die Schnellen helfen den Langsamen"** als Dauer-Standard — unbezahlte Tutoring-Arbeit, Strafe für Kompetenz
- **Overaccommodation** — alles individualisieren, bis die Aufgabe leer ist
- **"Wir machen das ganz normal, wer nicht mitkommt ist selber schuld"** — unter UN-BRK unhaltbar
- **NTA nur auf Antrag** — warten bis Azubis selbst fragen = Diskriminierung durch Unterlassung
- **Hochbegabte = "die brauchen nichts"** — Fehlforschung; Acceleration zeigt robuste positive Effekte

## Verwandte Konzepte

- [[low-floor-high-ceiling]] — konkretes Aufgabendesign-Prinzip als Kern-Strategie
- [[scaffolding]] — gestufte Unterstützung; Challenge Point Framework
- [[worked-examples]] — Instruktionsmethode für Novizen; Parsons als Fading-Schritt
- [[affektive-dimensionen]] — Belonging/Selbstwirksamkeit als affektives Fundament
- [[self-determination-theory]] — Autonomie-Pfeiler begründet Wahlmöglichkeiten; psychologische Basis für UDL
- [[lernsituationen-gestalten]] — enthält UDL-Sub-Sektion, verweist auf diesen Klammer-Artikel
- [[kursarchitektur-lernumgebungen]] — Hub-and-Spoke und Knowledge-Graph als inklusionsfreundliche Architekturen
- [[sprachsensibler-it-unterricht]] — DaZ-Dimension ausgelagert
- [[lerner-modell-mastery-tracking]] — KI-basierte individuelle Challenge-Point-Kalibrierung
- [[formatives-assessment]] — RTI-Mehrstufenmodell baut auf formativer Diagnostik auf
- [[pair-programming-unterricht]] — Peer-Tutoring mit Rollenrotation
- [[computational-action]] — Barrierefreiheits-Audits als authentische Aufgaben
- [[multimedia-gestaltungsprinzipien]] — WCAG-Konvergenz mit Mayers Prinzipien
- [[parsons-problems]] — Strukturelle Differenzierung ohne sichtbare Niveau-Etiketten

## Quellen

- CAST (2018). *Universal Design for Learning Guidelines version 2.2*. http://udlguidelines.cast.org
- Meyer, A., Rose, D. H., & Gordon, D. (2014). *Universal Design for Learning: Theory and Practice*. CAST Professional Publishing.
- Tomlinson, C. A. (2017). *How to Differentiate Instruction in Academically Diverse Classrooms* (3rd ed.). ASCD.
- Baron-Cohen, S., Wheelwright, S., Skinner, R., Martin, J., & Clubley, E. (2001). The Autism-Spectrum Quotient (AQ). *Journal of Autism and Developmental Disorders*, 31(1), 5-17.
- Baron-Cohen, S. (2009). Autism: The Empathizing-Systemizing (E-S) Theory. *Annals of the New York Academy of Sciences*, 1156, 68-80.
- Steenbergen-Hu, S., Makel, M. C., & Olszewski-Kubilius, P. (2016). What one hundred years of research says about the effects of ability grouping and acceleration. *Review of Educational Research*, 86(4), 849-899.
- Armstrong, T. (2010). *Neurodiversity: Discovering the Extraordinary Gifts of Autism, ADHD, Dyslexia, and Other Brain Differences*. Da Capo Lifelong Books.
- W3C (2018). *Web Content Accessibility Guidelines (WCAG) 2.1*. https://www.w3.org/TR/WCAG21/
- Topping, K. J. (2005). Trends in peer learning. *Educational Psychology*, 25(6), 631-645.
- KMK (2011). *Inklusive Bildung von Kindern und Jugendlichen mit Behinderungen in Schulen*. Empfehlung der Kultusministerkonferenz.
