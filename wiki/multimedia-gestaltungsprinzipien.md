---
title: Multimedia-Gestaltungsprinzipien nach Mayer
type: theorie
tags: [multimedia-learning, instruktionsdesign, mayer, ctml, video-design, accessibility, referenz]
related:
  - "[[aktivierung-lehrervortrag]]"
  - "[[cognitive-load-theory]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[scaffolding]]"
  - "[[worked-examples]]"
  - "[[affektive-dimensionen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[datenschutz-lernumgebungen]]"
  - "[[differenzierung-inklusion]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[generative-learning-aktivitaeten]]"
  - "[[subgoal-labeling]]"
  - "[[explorable-explanations-im-unterricht]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, analysieren]
evidenzgrad: meta-analyse
created: 2026-04-08
updated: 2026-04-08
summary: >
  Mayer's Cognitive Theory of Multimedia Learning (CTML) übersetzt Cognitive
  Load Theory in 12 konkrete Design-Prinzipien für Multimedia-Lernmaterialien.
  Jedes Prinzip mit Evidenz, Faustregel und Umsetzungsbeispielen für
  Lernumgebungs-Entwickler.
---

# Multimedia-Gestaltungsprinzipien nach Mayer

## Kernidee

Richard Mayers **Cognitive Theory of Multimedia Learning (CTML)** übersetzt die Befunde der [[cognitive-load-theory]] in konkrete, empirisch geprüfte Design-Prinzipien für die Kombination von Wörtern und Bildern. Aus drei Grundannahmen (Dual Channel, Limited Capacity, Active Processing) leiten sich rund zwölf Prinzipien ab, die seit Mitte der 1990er in über 100 Experimenten repliziert wurden und mittlere bis große Effektstärken (d = 0,3–1,4) erreichen. Für Entwickler interaktiver Lernumgebungen sind sie der **Design-Prinzipien-Katalog** für Multimedia: Screencasts, Code-Animationen, erklärende Grafiken, Voice-Over, Tutorial-Videos und KI-Avatare.

## Beschreibung

### CTML-Grundannahmen

| Annahme | Kernaussage | Folge für Design |
|---|---|---|
| **Dual Channel** (Paivio, Baddeley) | Menschen verarbeiten visuell-bildliche und auditiv-verbale Informationen in **zwei getrennten Kanälen** | Last kann auf beide Kanäle verteilt werden; Bild + gesprochenes Wort entlastet stärker als Bild + geschriebener Text |
| **Limited Capacity** (Sweller, Cowan) | Jeder Kanal hat nur ~4 Chunks gleichzeitig im Arbeitsgedächtnis | Nur essenzielle Elemente, Segmentierung, Vorentlastung |
| **Active Processing** (Wittrock) | Lernen entsteht durch **Selecting, Organizing, Integrating** (SOI) — nicht durch passive Aufnahme | Lernumgebung muss Auswahl steuern, Struktur anbieten, Integration fördern |

Das **SOI-Modell** ist zentral: Lernende wählen relevante Wörter/Bilder aus dem Input, organisieren sie in einem verbalen und einem bildlichen Modell im Arbeitsgedächtnis und integrieren beide mit Vorwissen im Langzeitgedächtnis. Jedes Mayer-Prinzip adressiert genau eine dieser drei Phasen.

### Die 12 Mayer-Prinzipien

Gruppiert nach den drei Design-Zielen: **(A) Extraneous Processing reduzieren**, **(B) Essential Processing managen**, **(C) Generative Processing fördern**.

| # | Prinzip | Problem | Faustregel | Effekt (d) |
|---|---|---|---|---|
| **A — Extraneous reduzieren** |
| 1 | **Coherence** | Irrelevante Medien verbrauchen Kapazität | Jedes Bild/Wort/Sound weg, das nicht dem Lernziel dient | ~0,86 |
| 2 | **Signaling** | Lernende erkennen Kernideen nicht | Kernbegriffe fett, Pfeile, Farb-Highlights, Gliederungs-Hinweise | ~0,41 (24/28 Tests; Mayer & Fiorella 2014) |
| 3 | **Redundancy** | Text + identische Narration überlastet visuellen Kanal | Bei gesprochener Erklärung **keinen** wortgleichen Bildschirmtext | ~0,86 |
| 4 | **Spatial Contiguity** | Trennung von Text & Bild erzwingt visuelles Suchen | Label direkt am Bildelement, nicht in Legende unten | ~1,10 |
| 5 | **Temporal Contiguity** | Zeitversatz zwischen Animation & Erklärung verhindert Verknüpfung | Narration und Animation **synchron**, nicht nacheinander | ~1,22 |
| **B — Essential managen** |
| 6 | **Segmenting** | Komplexer Ablauf überfordert | Video in klickbare Abschnitte mit Lerner-gesteuertem "Weiter" | ~0,79 |
| 7 | **Pre-training** | Unbekannte Begriffe blockieren Verständnis der Dynamik | Begriffe vorher einzeln einführen | ~0,75 |
| 8 | **Modality** | Visueller Kanal doppelt belastet durch Bild + Text | Bei dynamischen Visuals **gesprochenen Text**, nicht Bildschirmtext | ~0,76 |
| **C — Generative fördern** |
| 9 | **Multimedia** | Nur-Text zwingt zu mentalem Bildaufbau | Wörter **und** Bilder > nur Wörter | ~1,39 |
| 10 | **Personalization** | Distanzierter Akademiker-Ton senkt Engagement | Konversationeller Stil ("du/wir" statt "der Nutzer") | ~0,79 |
| 11 | **Voice** | Synthetische/fremdakzentige Stimme senkt Akzeptanz | Natürliche menschliche Muttersprachler-Stimme | ~0,74 |
| 12 | **Image** | Sprecher-Avatar bindet Aufmerksamkeit ohne Nutzen | Sprechendes Gesicht **weglassen** (außer bei Embodiment-Gesten) | ~0,20 |

### Fünf Prinzipien im Detail

**Modality-Prinzip — der wichtigste Hebel für Code-Screencasts.** Bei einem SQL-JOIN-Screencast zeigt der Bildschirm die Query + Tabellenansicht. **Falsch:** zusätzlich ein Textkasten "Der JOIN verbindet Tabellen über …". **Richtig:** diese Erklärung als Voice-Over synchron zur Animation. Grund: Der visuelle Kanal ist schon durch Query + Tabellen belastet; Bildschirmtext würde denselben Kanal überlasten. Voice-Over nutzt den freien auditiven Kanal. **Boundary Condition:** Bei schwachem Sprachverständnis der L2 oder nicht-linearer Navigation kann Bildschirmtext überlegen sein — siehe Expertise Reversal in [[cognitive-load-theory]].

**Spatial Contiguity — für Code-Erklärungen entscheidend.** Ein annotiertes Code-Beispiel mit Nummern im Code (① ② ③) und einer Legende rechts daneben oder unten verletzt Spatial Contiguity. Die Augen müssen pendeln — Split-Attention entsteht. **Richtig:** Kommentare/Callouts direkt am betreffenden Code-Fragment einblenden (Tooltip, Inline-Annotation, Callout mit Pfeil). In React-Lernumgebungen: Bei Hover über eine Code-Zeile erscheint die Erklärung als Popover **am** Cursor, nicht in einer separaten Seitenleiste. Effektstärke 1,10 — einer der stärksten dokumentierten Effekte der CTML-Forschung.

**Segmenting + Pre-training für Tutorials.** Ein 20-minütiges Tutorial-Video zu "React-State mit useReducer" überfordert durch *Continuous Play*. **Segmenting:** Unterteilung in 8 Abschnitte à 1-3 Min mit "Weiter"-Button — Lernende steuern das Tempo, Pausen zur Integration sind möglich. **Pre-training:** Vor dem Video eine Mini-Seite mit den drei Kernbegriffen (state, action, reducer) in isolierter Form. Im Hauptvideo sind diese Begriffe dann keine kognitive Last mehr. Adressiert direkt die Elementinteraktivität aus CLT.

**Coherence — "weniger ist mehr".** Ein Screencast zu HTTP-Requests mit dekorativer Hintergrundmusik, animierten Übergängen, "fun facts" über die Geschichte des Internets und einem animierten Roboter-Maskottchen: **alles Verletzung von Coherence**. Experimente (Mayer & Jackson 2005, Rey 2012) zeigen: "seductive details" reduzieren Lernerfolg, obwohl Lernende sie subjektiv als motivierend empfinden. Für Lernumgebungs-Entwickler: **Feature-Purismus** — jedes animierte Element, jeder Sound, jede Illustration muss eine Lernfunktion haben, sonst raus.

**Personalization im KI-Tutor.** Ein KI-Tutor-Prompt "Der Nutzer soll die folgende Aufgabe bearbeiten …" erzeugt distanzierten Text. Personalization: "Lass uns gemeinsam schauen — kannst du mir zeigen, wie du …". Der konversationelle Stil aktiviert soziale Agency-Heuristiken, die tieferes Verarbeiten auslösen. Effektstärke 0,79, sehr kostengünstig umzusetzen — siehe [[prompt-engineering-didaktisch]].

### Emotional Design (Um, Plass et al. 2012)

Plass und Kollegen zeigten in einer zentralen Studie zu Immunologie-Animationen: Materialien mit **warmen Farben** (statt grau), **runden Figuren** und **anthropomorphen Elementen** (Gesichter an Zellen) erzeugten höhere positive Emotion und bessere Transfer-Leistung (d ≈ 0,60). Der Effekt läuft über emotionale Aktivierung, die generatives Verarbeiten erhöht.

**Grenze:** Emotional Design darf Coherence nicht verletzen — sympathische Figuren ja, ablenkende Gag-Animationen nein. Für KI-Tutoren: warmer Farbton im UI, freundliche Mikrokopie, ggf. dezentes Maskottchen sind legitim, aber nie das Zentrum der Aufmerksamkeit.

### Accessibility / WCAG-Bezug

Mayers Prinzipien konvergieren mit WCAG 2.2 an mehreren Stellen:
- **Captions** (WCAG 1.2.2) sind für Höreingeschränkte Pflicht und konkurrieren scheinbar mit Redundancy — Lösung: **optional schaltbar**, nicht Default.
- **Kontrast** (WCAG 1.4.3) unterstützt Signaling.
- **Alt-Texte** (WCAG 1.1.1) sind die Modality-Umsetzung für Screenreader.
- **Tastatur-Bedienbarkeit** (WCAG 2.1) erfüllt Segmenting.

Accessibility und Mayer sind **kein Trade-off** — beide zielen auf Reduktion von Verarbeitungsaufwand. Siehe [[differenzierung-inklusion]] für den umfassenden Kontext.

### Do's and Don'ts

**Do:**
- Gesprochene Erklärung + Animation synchron (Modality + Temporal)
- Code-Annotationen direkt am Code (Spatial Contiguity)
- Videos segmentieren mit Lerner-Kontrolle (Segmenting)
- Neue Begriffe vorab einzeln einführen (Pre-training)
- Konversationeller "Du"-Stil in UI und KI-Feedback (Personalization)
- Warme Farben, freundliche Typografie (Emotional Design, dezent)
- Captions als Option, hoher Kontrast, semantisches HTML (WCAG)

**Don't:**
- Bildschirmtext + wortgleiche Narration (Redundancy)
- Hintergrundmusik, "seductive details", dekorative Animationen (Coherence)
- Legenden unter/neben dem Bild (Spatial Contiguity)
- Ununterbrochene Tutorial-Videos > 6 Minuten (Segmenting)
- Sprecher-Avatare ohne Gesten-Funktion (Image)
- Synthetisch klingende TTS-Stimmen für Kern-Inhalte (Voice)
- Technischer Akademikerton im Feedback (Personalization)

## Bezug zur IT-Ausbildung

Mayers Prinzipien sind für FIAE/FIDP hoch relevant, weil Multimedia-Material den Kern moderner IT-Didaktik bildet: Tutorial-Videos, Screencasts, Code-Animationen, Architektur-Diagramme, Datenbankschema-Erklärungen, Netzwerk-Visualisierungen.

| Lernfeld | Format | Kritische Prinzipien |
|---|---|---|
| **LF5 (Daten verwalten)** | SQL-Query-Screencasts mit Tabellenansicht | Modality (Voice-Over statt Bildschirmtext), Signaling (SELECT-Klauseln farblich) |
| **LF6 (Service)** | Troubleshooting-Walkthroughs | Segmenting, Pre-training (Fachbegriffe vorab) |
| **LF8 (APIs)** | Request/Response-Animationen | Temporal Contiguity, Spatial Contiguity (JSON-Felder beschriftet) |
| **LF10 (Frontend)** | Component-Tree-Visualisierungen | Coherence, Multimedia |
| **LF11a (OOP)** | UML-Klassendiagramme mit Animation | Signaling (aktive Klasse hervorheben), Pre-training |
| **LF12 (Abschlussprojekt)** | Präsentationsfolien der Azubis | Azubis selbst sollen nach Mayer gestalten lernen — **Meta-Ebene** |

**Pattern für KI-gestützte Lernumgebungen:** Wenn der KI-Tutor eine Animation zu "Datenfluss bei einer Einwilligung" generiert, sollte Voice-Over-Script synchron zur Animation laufen (Temporal), Fachbegriffe wie "Einwilligung" zuerst in einem Mini-Glossar einführen (Pre-training), und die Erklärung als "Lass uns kurz sehen, wie deine Daten …" formulieren (Personalization). Direkt in Prompt-Templates für LLM-Generierung gießbar (vgl. [[llm-integrationsmuster-lernumgebungen]]).

**Azubi-Meta-Ebene:** FIAE-Azubis, die später selbst Tutorials oder Nutzerdokumentation erstellen, profitieren davon, Mayers Prinzipien als **professionelles Gestaltungsvokabular** zu beherrschen — es verbindet ihre UI/UX-Ausbildung mit empirischer Lernpsychologie.

## Praktische Anwendung

1. **Bei jeder Multimedia-Produktion** die Coherence-Frage stellen: Was kann weg, ohne dass das Lernziel leidet?
2. **Voice-Over immer synchron** zur Animation — nicht nacheinander.
3. **Code-Annotationen inline**, nicht in Legenden.
4. **Videos segmentieren** in 1-3-Minuten-Abschnitte mit Checkpoints.
5. **Pre-training als Pflicht-Schritt** vor komplexen Visualisierungen.
6. **Konversationeller "Du"-Stil** in UI-Texten und KI-Prompts.
7. **Captions als Option**, nicht Default.
8. **Prototyping-Check:** Einmal im Graustufen-Modus, einmal nur mit Tastatur, einmal mit Screenreader — deckt ~70% der Probleme ab.

## Varianten

Die 12 Prinzipien sind nicht alle gleich wichtig: **Modality, Spatial/Temporal Contiguity, Coherence, Segmenting, Pre-training** sind die hochwertigsten (Effektstärken > 0,7). **Image** (Sprecher-Avatar) hat den schwächsten Effekt — eher eine Warnung als ein starker Hebel.

## Zeitbedarf

Einarbeitungszeit in Mayers Prinzipien: 2-4 h (Kernkonzepte + Referenz durchgehen). Anwendung in eigenen Materialien: additiv ~10-20% Produktionszeit am Anfang, später quasi kostenlos — Prinzipien werden zur Gewohnheit.

## Verwandte Konzepte

- [[cognitive-load-theory]] — Mayer ist die **angewandte Seite von CLT**
- [[interaktive-lernumgebungen]] — Mayers Prinzipien sind der Multimedia-spezifische Unter-Katalog
- [[aufgabentypen-interaktive-lernumgebungen]] — Widget-Typen sollten Mayer-konform gestaltet sein
- [[llm-integrationsmuster-lernumgebungen]] — KI-generierte Erklärungen müssen Personalization, Voice, Coherence berücksichtigen
- [[scaffolding]] — Expertise Reversal als Boundary Condition für Mayer-Prinzipien
- [[worked-examples]] — folgen direkt Multimedia- und Spatial-Contiguity-Prinzipien
- [[affektive-dimensionen]] — Emotional Design verbindet Kognition und Affekt
- [[prompt-engineering-didaktisch]] — Personalization ist ein Prompt-Engineering-Pattern
- [[datenschutz-lernumgebungen]] — Accessibility-Rahmen rechtlich
- [[differenzierung-inklusion]] — WCAG und barrierefreies Multimedia
- [[direct-manipulation-lernumgebungen]] — Spatial Contiguity und räumliche Nähe von Eingabe und Wirkung als Grundlage direkter Manipulation

## Quellen

- Mayer, R. E. (2009). *Multimedia Learning* (2nd ed.). Cambridge University Press.
- Mayer, R. E., & Fiorella, L. (Eds.). (2021). *The Cambridge Handbook of Multimedia Learning* (3rd ed.). Cambridge University Press.
- Mayer, R. E., & Moreno, R. (2003). Nine ways to reduce cognitive load in multimedia learning. *Educational Psychologist*, 38(1), 43-52.
- Um, E. R., Plass, J. L., Hayward, E. O., & Homer, B. D. (2012). Emotional design in multimedia learning. *Journal of Educational Psychology*, 104(2), 485-498.
- Fiorella, L., & Mayer, R. E. (2015). *Learning as a Generative Activity: Eight Learning Strategies that Promote Understanding*. Cambridge University Press.
- Mayer, R. E., & DaPra, C. S. (2012). An embodiment effect in computer-based learning with animated pedagogical agents. *Journal of Experimental Psychology: Applied*, 18(3), 239-252.
- Ginns, P. (2006). Integrating information: A meta-analysis of the spatial contiguity and temporal contiguity effects. *Learning and Instruction*, 16(6), 511-525.
- Mayer, R. E., & Jackson, J. (2005). The case for coherence in scientific explanations: Quantitative details can hurt qualitative understanding. *Journal of Experimental Psychology: Applied*, 11(1), 13-18.
- Rey, G. D. (2012). A review and a meta-analysis of the seductive detail effect. *Educational Research Review*, 7(3), 216-237. https://doi.org/10.1016/j.edurev.2012.05.003
