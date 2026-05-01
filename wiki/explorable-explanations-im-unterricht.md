---
title: "Explorable Explanations im Unterricht"
type: praxis
tags: [explorable-explanations, interaktive-medien, kuratierung, visualisierung, scrollytelling, referenz]
related:
  - "[[interaktive-lernumgebungen]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[immersive-simulationen]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[cognitive-load-theory]]"
  - "[[productive-failure]]"
  - "[[anchored-instruction]]"
  - "[[flipped-classroom]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, analysieren]
sozialform: [einzelarbeit, partner]
created: 2026-04-09
updated: 2026-05-01
summary: >
  Explorable Explanations (Bret Victor 2011) als kuratierbares Format für
  IT-Didaktik. Engagement-Vorteil belegt, Lerntransfer nicht sauber nachgewiesen.
  Kuratierter Katalog IT-relevanter Explorables für FIAE/FIDP plus didaktische
  Einbettung — Eigenproduktion ist unrealistisch, Kuratierung der Hebel.
---

# Explorable Explanations im Unterricht

## Kernidee

**Explorable Explanations** sind interaktive Artikel, in denen Leser:innen Parameter, Annahmen oder Variablen unmittelbar verändern und die Konsequenzen live sehen — statt nur über sie zu lesen. Bret Victor prägte den Begriff 2011 mit seinem Manifest zu "active reading": Ein Dokument sollte kein toter Text sein, sondern ein Spielplatz für Ideen. Für den IT-Unterricht sind Explorables ein **kuratierbares Format**: Der didaktische Wert entsteht nicht dadurch, dass die Lehrkraft selbst eines baut (das ist technisch aufwändig und unrealistisch für die meisten Kolleg:innen), sondern dadurch, dass vorhandene, hochwertige Explorables gezielt in Lernsituationen eingebettet werden.

Dieser Artikel liefert einen kuratierten Katalog für FIAE/FIDP und eine ehrliche Einschätzung der Evidenzlage: Engagement-Vorteile sind belegt, aber Lerntransfer ist nicht sauber nachgewiesen. Das hat Konsequenzen für den didaktischen Einsatz.

## Kontext

### Was ein Explorable ist (und was nicht)

Ein Explorable ist **narrativ geführt plus manipulierbar**. Es unterscheidet sich von:

- **Reinem Video** durch Interaktivität
- **Reiner Simulation** (vgl. [[immersive-simulationen]]) durch die lineare Narration
- **Direct-Manipulation-Widgets** (vgl. [[direct-manipulation-lernumgebungen]]) durch die Einbettung in eine Geschichte, die Lerner:innen durch das Konzept führt
- **Klassischen Scrollytelling-Artikeln** (Journalismus) durch den didaktischen Fokus auf Begreifen statt Bericht

Die einzigartige Kombination ist **geführter Lernpfad + Mikro-Interaktionen**. Die Leser:in liest, stößt auf eine Stelle, wo sie einen Parameter verschieben darf, sieht die Konsequenz, liest weiter. Vygotskys Zone der nächsten Entwicklung wird in der Narration getaktet, nicht dem Nutzer überlassen.

### Die Bewegung und ihr Stand 2026

Die Bewegung ist klein und nicht skaliert. Der zentrale Hub explorabl.es sammelt ~170 Stücke, die aktiven Kern-Autor:innen sind überschaubar (Nicky Case, Bartosz Ciechanowski, Chris Olah, Amit Patel/Red Blob Games, Victor Powell, Vi Hart). **Distill.pub** — das 2017 gestartete Flaggschiff-Journal für interaktive ML-Artikel — hat 2021 den "Hiatus" verkündet wegen Volunteer-Burnout. **Idyll** — das wichtigste Open-Source-Tool zum Erstellen von Explorables — ist seit 2021 praktisch stehengeblieben. Aktiv bleibt die Szene vor allem bei Einzel-Autor:innen und in Ad-hoc-Initiativen ("Explorables Jam"). Das bedeutet zwei Dinge: (1) Es gibt einen wertvollen Bestand kuratierbarer Artefakte, aber (2) der Trend zur Eigenproduktion hat sich nicht durchgesetzt — auch außerhalb der Berufsschule nicht.

### Evidenzstand — ehrlich eingeordnet

Die Evidenzlage ist **schwächer, als das Format optisch verspricht**:

- **Engagement-Vorteil belegt.** ECCE 2023 "Impact of Scrollytelling on Reading Experience": signifikant höhere Werte für "entertaining", "stimulating", "engaging" gegenüber statischem Text. Das ist reproduzierbar.
- **Lern-Outcome unklar.** Eine Studie zu Scrollytelling-basierten Datenschutzerklärungen (Méndez & Such, CHI 2026) fand bessere UX und niedrigere cognitive load — aber **identische Comprehension-Accuracy** gegenüber klassischer Textform. Das ist der nüchterne Befund.
- **Keine sauberen RCTs** auf Wissenstransfer, die Explorables direkt gegen statischen Text oder Video vergleichen. Meta-Analysen zu "experiential learning" (Burch 2019, +0,5 SD) sind zu weit weg vom spezifischen Format, um belastbar übertragen zu werden.

**Was das heißt:** Explorables wirken motivational und reduzieren die Eintrittshürde zu komplexen Themen — aber sie sind **kein nachgewiesener Ersatz für Üben und Retrieval Practice**. Sie gehören in die Eröffnungsphase einer Lernsituation, nicht in die Vertiefungsphase. Das ist eine wichtige Einordnung für ein evidenzbasiertes Repo — das Format zu überverkaufen, wäre unseriös.

## Durchführung

### Der kuratierte Katalog — IT-relevante Explorables

Die folgenden Artefakte sind produktionsreif, frei zugänglich und für FIAE/FIDP-Lernfelder einsetzbar:

| Thema | Explorable | Autor | Lernfeld-Mapping |
|---|---|---|---|
| **Netzwerke / Internet** | [Internet from First Principles](https://ciechanow.ski/internet/) | Ciechanowski | LF3 (Clients in Netze), LF8 (APIs) |
| **TLS / HTTPS** | [How HTTPS Works](https://howhttps.works/) | DNSimple | LF4 (Schutzbedarf), LF3 |
| **Sortieralgorithmen** | [Visualgo](https://visualgo.net/) | NUS (Halim) | LF10a (Datenstrukturen) |
| **Graph-Algorithmen / A\*** | [Red Blob Games — A\*](https://www.redblobgames.com/pathfinding/a-star/introduction.html) | Amit Patel | LF10a, Projektarbeit KI/Spiele |
| **Hex-Grids / Koordinaten** | [Red Blob Games — Hex Grids](https://www.redblobgames.com/grids/hexagons/) | Amit Patel | Spiele-/Visualisierungs-Projekte |
| **Neural Networks (Basics)** | [Tensorflow Playground](https://playground.tensorflow.org/) | Google Brain | LF10c (nur FR Daten) |
| **NN-Internals** | [Chris Olah's Distill-Artikel](https://distill.pub/) | Olah et al. | LF10c, Projekt KI |
| **Regex** | [Regexper](https://regexper.com/) + [Regex101](https://regex101.com/) | mehrere | LF5 (Datenverarbeitung), LF8 |
| **Datenbank-Joins** | [Join The Dots](https://sql-joins.leopard.in.ua/) | mehrere | LF5 |
| **Kryptografie** | [The Evolution of Trust](https://ncase.me/trust/) | Nicky Case | LF4, Soft Skills |
| **Verteilte Systeme (CRDTs)** | [Jake Lazaroff's Explorables](https://jakelazaroff.com/) | Lazaroff | LF10b/12 (Systemintegration) |
| **Datenschutz-Dokumente** | [Nothing to Hide (Exploragram)](https://explorabl.es/) | verschiedene | LF4 DSGVO |
| **Spieltheorie / Kommunikation** | [To Build a Better Ballot](https://ncase.me/ballot/) | Nicky Case | Projekt/Ethik-Kontexte |

**Auswahlkriterien** (als Check für weitere Kuratierung):

1. **Narration klar getaktet** — der Text führt durch das Konzept, die Interaktionen sind gebunden, nicht offen.
2. **Eine Hauptaussage pro Abschnitt** — kein "Spielplatz ohne Ziel".
3. **Technisch robust** — läuft auch nach Jahren ohne Broken Links, auf Standardbrowsern, ohne Plugins.
4. **Englisch ist akzeptabel**, wenn Sprache kein Hindernis — für DaZ-Klassen nach deutschen Alternativen suchen oder vorab Begriffe klären (vgl. [[sprachsensibler-it-unterricht]]).
5. **Didaktisch sauber** — keine reinen Tech-Demos, sondern explizite Lern-Intention der Autor:in.

### Einbettung in Lernsituationen

Der stärkste Einsatz ist als **Anker** für eine Lernsituation (vgl. [[anchored-instruction]]), nicht als alleiniges Lehrmaterial. Der Ablauf sieht typisch so aus:

1. **Advance Organizer** (5 Min) — Leitfrage oder Hypothese voranstellen. "Wie meinst du, verändert sich die Trefferquote von A\* mit dem Heuristik-Faktor?" Leitfragen vor der Exploration erhöhen den Lerntransfer.
2. **Exploration** (10-20 Min) — Einzel oder in Paaren. Lernende haben klare Aufgabe: "Probiere 3 Parameter-Kombinationen und notiere jeweils Beobachtung + Erklärung."
3. **Gemeinsame Reflexion** (10 Min) — Plenum oder Think-Pair-Share. Was war überraschend? Wo funktionierte die Intuition? Wo hat sie getrogen?
4. **Transfer-Aufgabe** (variabel) — Eigener Code / eigene Analyse / Diskussion mit Bezug auf das Explorable.

**Wichtig**: Ohne Schritt 1 und 3 wird aus Exploration Konsum. Das ist der häufigste Fehler beim Einsatz von Explorables — sie werden als "schönes Video mit Knöpfen" wahrgenommen und beendet, ohne dass ein Lerntransfer stattfindet. Die Leitfrage vorher und die strukturierte Reflexion nachher sind das Didaktik-Gerüst.

## Ergebnisse

Praxisberichte (aus eigener Erprobung und anekdotisch aus der CS-Education-Community):

- **Hohe Eintritts-Motivation.** Lernende, die den statischen Text zu TCP-Handshake überfliegen, bleiben bei Ciechanowskis Internet-Artikel mehrere Minuten an einem einzelnen Diagramm.
- **Nachfragen werden konkreter.** Weil die Lernenden am Artefakt gestoßen sind ("hier hat sich der Graph komisch verändert"), werden die Rückfragen spezifischer als nach einem Frontalvortrag.
- **Transfer ist nicht automatisch.** Die Motivation und das Verständnis im Moment der Exploration übersetzen sich nicht in bessere Prüfungsleistungen, wenn die Folge-Übung fehlt. Retrieval Practice oder Parsons Problems danach sind Pflicht, nicht Kür.
- **Heterogene Klassen profitieren unterschiedlich.** Starke Lernende bauen mentale Modelle schnell auf; schwächere Lernende brauchen stärkere Anleitung durch die Exploration (z.B. Checkpoints mit Pflichtbeobachtungen), sonst verlieren sie die Orientierung.

## Lessons Learned

- **Eigenproduktion ist unrealistisch.** Nicky Case beschreibt selbst, dass "The Evolution of Trust" mehrere Wochen Entwicklung gekostet hat. Für eine Lehrkraft ohne starke JS/D3-Kenntnisse ist das selbst bei einfachen Stücken nicht in Wochen zu leisten. Kuratieren ist der realistische Pfad.
- **Der Kuratier-Check muss regelmäßig stattfinden.** Explorables sind häufig auf persönlichen Websites gehostet — Broken Links sind ein reales Risiko. Der obige Katalog sollte einmal pro Semester geprüft werden.
- **Englisch-Barriere ernst nehmen.** Für viele der besten Stücke ist Englisch das Interface. Das ist für LF/Klassen mit hohem DaZ-Anteil ein Hindernis. Begriffs-Vorentlastung oder Alternativen prüfen.
- **Nicht als "KI-Alternative" verkaufen.** Explorables sind **kein** Ersatz für adaptive KI-Lernumgebungen. Sie sind statisch — die Adaption kommt durch die Lehrkraft, die den richtigen Moment im Unterricht kennt. Das ist ein Feature, nicht ein Bug.
- **KI-gestützte Generierung ist eine offene Frage.** Mit LLMs und Code-Sandboxes wäre theoretisch eine schnellere Eigenproduktion denkbar. Noch keine produktionsreifen Workflows — aber ein spannender Entwicklungsraum für KI-native Lernumgebungen (vgl. [[ki-native-lernumgebungen]]).

## Bezug zur IT-Ausbildung

Explorables passen besonders gut in **Einstiegsphasen neuer Konzepte** — die Phase, in der Lernende noch kein mentales Modell haben und Textbeschreibungen zu abstrakt sind:

- **LF3 Netzwerke:** Ciechanowskis Internet-Explorable ersetzt nicht den Lehrbuchtext, aber es macht die Abstraktion "Packet" konkret, bevor Subnetting-Drills beginnen.
- **LF4 Schutzbedarf / DSGVO:** "How HTTPS Works" und Case's Trust-Spiel eröffnen die Einheit; die DSGVO-Paragraphen kommen danach.
- **LF5 Datenbanken:** Interaktive JOIN-Visualisierungen reduzieren die Eintrittshürde für abstrakte Mengenlehre.
- **LF10a Programmieren (Datenstrukturen):** Visualgo vor Parsons Problems — zuerst Intuition, dann gezielte Übung.
- **LF10c ML (nur FR Daten):** Tensorflow Playground als Erst-Kontakt mit neuronalen Netzen, dann Python-Code in scikit-learn.

Die Daumenregel: **Explorable vorne, Retrieval Practice hinten.** Das ist das didaktische Sandwich, in dem das Format seine Stärken ausspielt, ohne dass die Schwäche (fehlender Transfer-Nachweis) durchschlägt.

## Praktische Anwendung

Für einen Agent oder eine Lehrkraft, die Explorables konkret einsetzen will:

1. **Themenspezifische Suche im Katalog oben** — oder auf explorabl.es, ciechanow.ski, distill.pub, redblobgames.com, ncase.me.
2. **Leitfrage und Beobachtungsauftrag formulieren**, bevor Lernende das Explorable öffnen. Ohne Auftrag wird es zur Unterhaltung.
3. **10-20 Minuten reichen.** Länger erschöpft die Konzentration und liefert diminishing returns.
4. **Reflexion im Plenum erzwingen** — Think-Pair-Share oder direkte Frage "Was war überraschend?". Nicht überspringen, auch wenn die Zeit knapp ist.
5. **Retrieval-Phase danach** (Parsons Problems, Quiz, kurze Code-Aufgabe) — damit das Momentum in Wissen umgewandelt wird, das in der nächsten Woche noch da ist.
6. **Link-Check einmal pro Semester** — Explorables sind fragil, Broken Links verwässern den Einsatz.
7. **Für DaZ-Klassen**: Vorab deutsche Begriffs-Karte erstellen und/oder eine gemeinsame Live-Exploration mit Lehrer-Narration ersetzt die Selbst-Exploration.

### Abgrenzung zu verwandten Formaten

- **Immersive Simulationen** (vgl. [[immersive-simulationen]]) wie CTFs sind offen und länger — Explorables sind geführt und kurz.
- **Direct-Manipulation-Widgets** (vgl. [[direct-manipulation-lernumgebungen]]) sind isolierte Komponenten in einer eigenen Lernumgebung — Explorables sind stand-alone Artefakte mit eigener Narration.
- **Scrollytelling-Artikel** im journalistischen Sinn sind verwandt, aber didaktisch häufig nicht optimiert — die Abgrenzung ist "zielt es auf Lernen oder auf Konsum?".

Wer ein eigenes Explorable-Format in eine selbst gebaute Lernumgebung integrieren möchte: Die Bausteine sind Scrollama.js für die Scroll-Trigger, D3 oder Svelte für die Visualisierung, Observable-Notebooks zum Prototypen. Das ist aber ein Projekt-Vorhaben, kein Unterrichts-Nebenprodukt.

## Verwandte Konzepte

- [[interaktive-lernumgebungen]] — Oberbegriff, in den Explorables als eine Unterform fallen
- [[direct-manipulation-lernumgebungen]] — Das Interaktionsprinzip, das Explorables erfüllen; Abgrenzung: Narration vs. freie Exploration
- [[immersive-simulationen]] — Verwandtes Format, aber länger und offener
- [[aufgabentypen-interaktive-lernumgebungen]] — Katalog-Artikel, in dem Explorables als Lehr-Artefakt (nicht als Aufgabe) einzuordnen sind
- [[multimedia-gestaltungsprinzipien]] — Mayers Prinzipien gelten auch für Explorables (Coherence, Signaling, Modality)
- [[cognitive-load-theory]] — Explorables reduzieren extrinsische Last durch Visualisierung, müssen aber intrinsische Last sauber takten
- [[productive-failure]] — Exploration ist eine milde Form des "erst scheitern, dann instruieren"
- [[anchored-instruction]] — Explorable als Anker für eine längere Lernsituation
- [[flipped-classroom]] — Explorable als Pre-Class-Material

## Quellen

- Victor, B. (2011). *Explorable Explanations*. http://worrydream.com/ExplorableExplanations/
- Case, N. (2017). *How I Make an Explorable Explanation*. Blog post. https://blog.ncase.me/how-i-make-an-explorable-explanation/
- Distill (2021). *Distill Hiatus Statement*. https://distill.pub/2021/distill-hiatus/
- Conlen, M., Conlen, J., & Heer, J. (2018). Idyll: A Markup Language for Authoring and Publishing Interactive Articles on the Web. *UIST 2018*.
- Ciechanowski, B. Blog mit umfangreichen interaktiven Artikeln. https://ciechanow.ski/
- Patel, A. *Red Blob Games*. Interaktive Algorithmus-Erklärungen. https://www.redblobgames.com/
- Zhang, Y. et al. (2023). Impact of Scrollytelling on Reading Experience and User Engagement. *Proceedings of ECCE 2023*.
- Méndez, G. G., & Such, J. (2026). Scrollytelling as an Alternative Format for Privacy Policies. *CHI 2026*. arXiv:2603.04367.
