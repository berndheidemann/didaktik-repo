---
title: Generative Learning Activities (SOI-Framework & 8 Strategien)
type: theorie
tags: [generative-learning, soi-modell, fiorella, mayer, aufgabentypen, cognitive-theory, wittrock]
related:
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[cognitive-load-theory]]"
  - "[[worked-examples]]"
  - "[[retrieval-practice]]"
  - "[[metakognition]]"
  - "[[lerntagebuch]]"
  - "[[peer-instruction]]"
  - "[[kooperatives-lernen]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[scaffolding]]"
  - "[[formatives-assessment]]"
  - "[[misconception-analyse]]"
  - "[[primm-methode]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[self-explanation]]"
  - "[[icap-framework]]"
  - "[[desirable-difficulties]]"
audience: [FIAE, FIDP]
taxonomiestufe: verstehen
evidenzgrad: meta-analyse
created: 2026-04-11
updated: 2026-04-11
summary: Fiorella & Mayers SOI-Framework (Select-Organize-Integrate) mit den acht generativen Lernstrategien (Summarizing, Mapping, Drawing, Imagining, Self-Testing, Self-Explaining, Teaching, Enacting) als evidenzbasierter Aufgabengenerator für IT-Lernumgebungen jenseits von "Code schreiben".
---

## Kernidee

Lernen ist erst dann tief, wenn Lernende aktiv **Bedeutung erzeugen**. Fiorella und Mayer (2015) bündeln in *Learning as a Generative Activity* acht empirisch abgesicherte Strategien, die Lernende zwingen, Material **auszuwählen, zu organisieren und mit Vorwissen zu integrieren** (SOI-Modell). Jede Strategie ist ein Aufgabentyp, der in einer [[interaktive-lernumgebungen|interaktiven Lernumgebung]] als Modul operationalisiert werden kann. Für die IT-Ausbildung: Nicht nur "Code schreiben", sondern auch zeichnen, zusammenfassen, erklären, vorstellen, nachspielen, testen, mappen und lehren.

## Beschreibung

### Ursprung und SOI-Modell

Merlin C. Wittrock (1974) formulierte: Lernen ist eine Funktion der Assoziationen, die ein Lernender zwischen Vorwissen und neuen Stimuli **aktiv generiert**. Sein Modell nennt vier Prozesse (Aufmerksamkeit, Motivation, Vorwissen, Generierung) und gilt als Brücke zwischen Kognitivismus und Konstruktivismus (Mayer, 2010). Fiorella und Mayer verbinden diese Tradition mit der [[multimedia-gestaltungsprinzipien|Cognitive Theory of Multimedia Learning]].

Das **Select-Organize-Integrate-Modell** (Mayer, 2014; Fiorella & Mayer, 2015) beschreibt drei Prozesse: **Select** (relevante Information ins Arbeitsgedächtnis), **Organize** (zu kohärenter Struktur — Ursache-Wirkung, Hierarchie, Ablauf), **Integrate** (mit Vorwissen verknüpfen). Nur *Organize* und *Integrate* sind eigentlich **generativ**, weil dort neue Relationen konstruiert werden. Verbindung zur [[cognitive-load-theory|Cognitive Load Theory]]: *germane load* erhöhen, ohne *extraneous load* zu produzieren (Fiorella & Mayer, 2016).

### Die acht Strategien mit Evidenz

Fiorella und Mayer (2016) systematisieren im *Educational Psychology Review*:

| Strategie | Aktivität | Kernevidenz |
|---|---|---|
| **Summarizing** | Kernaussagen in eigenen Worten | Geringe Utility, nur mit Training wirksam (Dunlosky et al., 2013, LOW-utility-Klasse) |
| **Mapping** | Concept/Knowledge Maps bauen | Besonders bei Eigenkonstruktion (Nesbit & Adesope, 2006) |
| **Drawing** | Skizzen zu Text/Prozess | g = 0,69, 53 Studien, 8.111 Pers. (Fiorella & Zhang, 2018) |
| **Imagining** | Mentales Bild erzeugen | Transfer-/Retentionsgewinne, stärker in First-Person (Leopold & Mayer, 2015) |
| **Self-Testing** | Abrufen üben | Siehe [[retrieval-practice]] — top-wirksam |
| **Self-Explaining** | Warum-Fragen beantworten | g = 0,55, 64 Studien, 6.000 Pers. (Bisra et al., 2018) |
| **Teaching** | Anderen erklären | Tatsächliches Lehren > bloße Teaching-Expectancy für Retention; Expectancy verbessert nur Comprehension (Fiorella & Mayer, 2013) — *Protégé-Effekt* |
| **Enacting** | Inhalt gestisch/körperlich | Vergleichbar zu Beobachtung (Oppici et al., 2023), wirksam bei prozeduralen Inhalten |

Die Strategien sind nicht additiv — zu viele auf einmal überlasten. Sie sind **Werkzeuge zur Aktivierung spezifischer SOI-Prozesse**.

## Bezug zur IT-Ausbildung

Die Stärke des Frameworks: ein **Aufgabengenerator** jenseits der Default-Aufgabe "Schreib Code". Im IT-Unterricht sind fast alle Strategien unterrepräsentiert, obwohl sie gerade bei abstrakten [[notional-machines|Notional Machines]], Architekturen und Prozessen stark wirken.

| Lernfeld | Strategie | Aufgabenbeispiel |
|---|---|---|
| LF 5 SW-Entwicklung | Drawing | Sequenzdiagramm eines HTTP-Requests handskizzieren, bevor Code gezeigt wird |
| LF 5 SW-Entwicklung | Self-Explaining | Zeilenweise erklären, *warum* ein Rekursionsschritt auf den Call-Stack geht |
| LF 6 Anwendungsentwicklung | Mapping | Concept Map: Klasse, Objekt, Referenz, Heap, Stack — Verbindungen benennen |
| LF 7 Datenbanken | Imagining | "Stell dir den Query-Planner als Bibliothekar vor. Welchen Weg nimmt er für diesen JOIN?" |
| LF 7 Datenbanken | Drawing | ER-Diagramm aus Textaufgabe handzeichnen, bevor SQL geschrieben wird |
| LF 8 Netze & Dienste | Enacting | Rollenspiel TCP-3-Way-Handshake: drei Schüler spielen Client, Server, Paket |
| LF 9 IT-Sicherheit | Teaching | A erklärt B Symmetrische Kryptografie, B erklärt A Asymmetrische — Rollenwechsel und Korrektur |
| LF 10 Betriebliche IT | Summarizing | DSGVO-Art. 32 in 3 Sätzen zusammenfassen und auf eigenes Schulprojekt übertragen |
| LF 11a AE | Self-Testing | Nach einem Tutorial: 5 eigene Fragen formulieren und beantworten |
| LF 12 Kundenanwendungen | Imagining | "Du bist ein Byte auf dem Weg vom Browser zur Datenbank. Beschreibe deine Reise." |

Diese Aufgabentypen ergänzen [[primm-methode]] und [[worked-examples]] um Aktivitäten, die **Verstehen ohne Tastatur** adressieren — wichtig, seit Code-Produktion via LLM trivial geworden ist.

## Praktische Anwendung: Operationalisierung in Lernumgebungen

Für [[interaktive-lernumgebungen]] lassen sich die acht Strategien als **Widget-Typen** im Sinne von [[aufgabentypen-interaktive-lernumgebungen]] umsetzen. Jedes Widget bringt [[scaffolding]] und [[formatives-assessment]] eingebaut mit.

| Strategie | UI + Scaffolding + Feedback |
|---|---|
| Summarizing | Textfeld mit Zeichenlimit und Schlüsselwort-Chips; LLM-Rubric prüft Paraphrase und Vollständigkeit |
| Mapping | Drag-Drop-Node-Editor (React Flow) mit Fixed-Anchor-Nodes; Vergleich mit Referenzgraph |
| Drawing | Excalidraw-Canvas mit Shape-Template; Peer-Review + LLM-Vision auf Komponenten |
| Imagining | Audio/Text-Prompt, Free-Recall-Feld; gestufte Prompts (Akteure → Interaktion → Fehlerfälle) |
| Self-Testing | Flashcard/MC mit SM-2-Scheduler; Spaced Repetition + Confidence Calibration |
| Self-Explaining | Code-Viewer mit zeilenweisen "Warum?"-Feldern; LLM als Sokratischer Tutor |
| Teaching (Protégé) | Chat-Avatar "Paul" mit absichtlichen [[misconception-analyse|Misconceptions]]; Assessment = was Paul am Ende "gelernt" hat |
| Enacting | Drag-Drop-Simulation (TCP durch OSI) oder Rollenkarten; Reflexionsfrage zum mentalen Modell |

**Orchestrierung als SOI-Sequenz:** Select (Input + Summarizing) → Organize (Mapping oder Drawing) → Integrate (Self-Explaining oder Teaching, Abschluss Self-Testing). Metakognitive Schlussfrage im [[lerntagebuch]]: *"Welche Phase war am schwierigsten und warum?"* — Brücke zu [[selbstgesteuertes-lernen]].

**Grenzen:** GLA sind wirkungslos ohne Instructional Support (Modellierung, Prompts, Rubrics; Fiorella & Mayer, 2015). Bei Novizen kann zu frühes Generieren den [[worked-examples|Worked-Example-Effekt]] unterlaufen (Expertise-Reversal). Drawing eignet sich für räumlich-strukturelle, Teaching für konzeptuelle, Enacting für prozedurale Inhalte. Summarizing ist in Dunlosky et al. (2013) als LOW-utility-Technik klassifiziert und wirkt nur mit explizitem Training.

## Verwandte Konzepte

- [[multimedia-gestaltungsprinzipien]], [[cognitive-load-theory]] — CTML als theoretischer Unterbau; GLA zielen auf Germane Load
- [[worked-examples]] — komplementär: erst Beispiele, dann generative Aktivitäten (Expertise-Reversal)
- [[retrieval-practice]] — Self-Testing als eine der acht Strategien
- [[metakognition]], [[lerntagebuch]] — Reflexion nach generativen Aktivitäten
- [[peer-instruction]], [[kooperatives-lernen]] — Social-Scaffolding für Teaching und Self-Explaining
- [[aufgabentypen-interaktive-lernumgebungen]], [[interaktive-lernumgebungen]] — hier werden die Widgets konkret
- [[scaffolding]], [[formatives-assessment]] — notwendige Einbettung
- [[misconception-analyse]] — GLA machen Misconceptions sichtbar
- [[primm-methode]] — integriert implizit mehrere GLA (Predict = Imagining, Investigate = Self-Explaining)
- [[selbstgesteuertes-lernen]] — GLA als Werkzeuge für Zimmermans *performance phase*

## Quellen

- Bisra, K., Liu, Q., Nesbit, J. C., Salimi, F., & Winne, P. H. (2018). Inducing self-explanation: A meta-analysis. *Educational Psychology Review, 30*(3), 703–725.
- Dunlosky, J., Rawson, K. A., Marsh, E. J., Nathan, M. J., & Willingham, D. T. (2013). Improving students' learning with effective learning techniques. *Psychological Science in the Public Interest, 14*(1), 4–58.
- Fiorella, L., & Mayer, R. E. (2013). The relative benefits of learning by teaching and teaching expectancy. *Contemporary Educational Psychology, 38*(4), 281–288.
- Fiorella, L., & Mayer, R. E. (2015). *Learning as a generative activity: Eight learning strategies that promote understanding*. Cambridge University Press.
- Fiorella, L., & Mayer, R. E. (2016). Eight ways to promote generative learning. *Educational Psychology Review, 28*(4), 717–741.
- Fiorella, L., & Zhang, Q. (2018). Drawing boundary conditions for learning by drawing. *Educational Psychology Review, 30*(3), 1115–1137.
- Leopold, C., & Mayer, R. E. (2015). An imagination effect in learning from scientific text. *Journal of Educational Psychology, 107*(1), 47–63.
- Mayer, R. E. (2010). Merlin C. Wittrock's enduring contributions to the science of learning. *Educational Psychologist, 45*(1), 46–50.
- Mayer, R. E. (2014). Cognitive theory of multimedia learning. In R. E. Mayer (Ed.), *The Cambridge handbook of multimedia learning* (2nd ed.). Cambridge University Press.
- Nesbit, J. C., & Adesope, O. O. (2006). Learning with concept and knowledge maps: A meta-analysis. *Review of Educational Research, 76*(3), 413–448.
- Oppici, L., Mathias, B., Narciss, S., & Proske, A. (2023). Benefits of enacting and observing gestures on foreign language vocabulary learning: A meta-analysis. *Behavioral Sciences, 13*(11), 920.
- Van Meter, P., & Garner, J. (2005). The promise and practice of learner-generated drawing. *Educational Psychology Review, 17*(4), 285–325.
- Wittrock, M. C. (1974). Learning as a generative process. *Educational Psychologist, 11*(2), 87–95.
