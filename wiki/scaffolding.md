---
title: Scaffolding und Zone der nächsten Entwicklung
type: theorie
tags: [lernunterstuetzung, zpd, fading, differenzierung, vygotsky, parsons-problems, challenge-point, concreteness-fading]
related:
  - "[[cognitive-load-theory]]"
  - "[[worked-examples]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[blooms-taxonomie]]"
  - "[[pair-programming-unterricht]]"
  - "[[formatives-assessment]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[lerntagebuch]]"
  - "[[effektstaerken-unterricht]]"
  - "[[cognitive-apprenticeship]]"
  - "[[affektive-dimensionen]]"
  - "[[code-review-unterricht]]"
  - "[[debugging-als-kompetenz]]"
  - "[[expertise-entwicklung]]"
  - "[[immersive-simulationen]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[learning-engineering]]"
  - "[[lernsituationen-gestalten]]"
  - "[[productive-failure]]"
  - "[[threshold-concepts]]"
  - "[[low-floor-high-ceiling]]"
  - "[[flow-theorie]]"
  - "[[primm-methode]]"
  - "[[use-modify-create]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[kursarchitektur-lernumgebungen]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[kooperatives-lernen]]"
  - "[[metakognition]]"
  - "[[misconception-analyse]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[differenzierung-inklusion]]"
  - "[[contrasting-cases]]"
  - "[[parsons-problems]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren]
created: 2026-04-07
updated: 2026-04-09
summary: >
  Temporäre Lernunterstützung in der Zone der nächsten Entwicklung (Vygotsky, 1978),
  die schrittweise abgebaut wird (Fading), sobald Lernende eigenständig
  handeln können (Wood, Bruner & Ross, 1976). Ergänzt um Concreteness Fading
  (Goldstone/Fyfe) als zweite, orthogonale Fading-Achse auf der Repräsentations-Ebene.
---

# Scaffolding und Zone der nächsten Entwicklung

## Kernidee

Die Zone der nächsten Entwicklung (ZPD) nach Vygotsky beschreibt den Bereich zwischen dem, was Lernende allein können, und dem, was sie mit Hilfe erreichen. Scaffolding ist die temporäre Unterstützung in dieser Zone — wie ein Baugerüst wird sie entfernt, sobald die Kompetenz selbst trägt.

## Beschreibung

### Vygotskys Zone der nächsten Entwicklung

Vygotsky (1978) unterschied drei Zonen: (1) **aktuelle Entwicklung** — was Lernende allein beherrschen; (2) **Zone der nächsten Entwicklung (ZPD)** — was mit Unterstützung erreichbar ist (hier findet optimales Lernen statt); (3) **unerreichbare Zone** — auch mit Hilfe nicht möglich. Zentrale Einsicht: Lernen ist ein sozialer Prozess; Instruktion sollte der Entwicklung vorausgehen.

### Wood, Bruner & Ross (1976) — sechs Scaffolding-Funktionen

| Funktion | IT-Beispiel |
|----------|-------------|
| **Aufmerksamkeit wecken** | "Schau dir an, was diese API kann — teste sie im Browser" |
| **Komplexität reduzieren** | Nur die WHERE-Klausel ergänzen, Rest ist vorgegeben |
| **Richtung halten** | Meilensteine in Projektaufgaben setzen |
| **Kritische Merkmale hervorheben** | "Achte auf die Rückgabetypen — da liegt oft der Bug" |
| **Frustration kontrollieren** | Teilerfolge sichtbar machen, Hinweise statt Lösungen |
| **Modellieren** | Live-Coding einer vergleichbaren Aufgabe |

### Vier Scaffolding-Typen

| Typ | Beispiel |
|-----|---------|
| **Konzeptuell** | Concept Map zu OOP-Prinzipien |
| **Prozedural** | IDE-Kurzanleitung, Git-Workflow-Checkliste |
| **Strategisch** | Debugging-Heuristiken, Entscheidungsbäume |
| **Metakognitiv** | Reflexionsfragen: "Was weißt du bereits?" |

### Fading — Gradual Release of Responsibility

| Phase | Lehrkraft | Lernende |
|-------|----------------|----------------|
| **I do** | Demonstriert | Beobachten |
| **We do** | Begleitet, Feedback | Mit Unterstützung |
| **You do together** | Greift bei Bedarf ein | Mit Peers |
| **You do alone** | Ressource | Selbstständig |

Signale für Fading-Bereitschaft: konsistent korrekte Ergebnisse, selbstständiger Strategieeinsatz, Fähigkeit das Vorgehen zu erklären.

### Challenge Point Framework

Guadagnoli & Lee (2004) führten **funktionale Schwierigkeit** ein: Die Lernwirksamkeit einer Aufgabe ergibt sich aus der nominalen Schwierigkeit *im Verhältnis zum* individuellen Skill-Stand. Eine objektiv mittelschwere Aufgabe ist für Novizen überfordernd, für Experten unterfordernd — nur die *relative* Schwierigkeit zählt. Ursprünglich aus der Motorik-Lernforschung, breit auf kognitive Domänen übertragen. Verwandt zu [[flow-theorie]] (Challenge-Skill-Balance).

**Für den Agent:** KI berechnet den Challenge Point aus Performance (Lösungsraten, Zeit, Fehlertypen) und Aufgabenattributen und kalibriert Aufgaben individuell statt klassenweit.

### Parsons Problems als Scaffold

Parsons Problems sind eine spezifische Scaffolding-Form zwischen [[worked-examples]] und freiem Schreiben: Lernende sortieren vorgegebene Code-Snippets statt zu tippen. Eigener Methoden-Artikel mit Distraktor-Varianten und Evidenz: [[parsons-problems]].

### Concreteness Fading — Scaffolding auf der Repräsentations-Ebene

Klassisches Fading baut *Hilfe* schrittweise ab. **Concreteness Fading** (Goldstone & Son 2005; Fyfe et al. 2014) verschiebt eine orthogonale Dimension: die **Abstraktheit der Repräsentation selbst**. Die klassische Sequenz ist dreistufig — **konkret-verkörpert → ikonisch-visuell → abstrakt-symbolisch** — mit Effektstärken d ≈ 0,4–0,7 auf Transfer in Mathematik und MINT.

**Kern:** Konkrete Repräsentationen senken die Einstiegshürde, abstrakte erhöhen Transferfähigkeit. Wer nur konkret bleibt, lernt oberflächengebunden; wer direkt abstrakt startet, scheitert am Verstehen. Der Wirkstoff ist die *Sequenz*, nicht eine Einzelstufe. Worked-Example-Fading reduziert Unterstützungsmenge, Concreteness Fading reduziert Darstellungs-Nähe zum Anschaulichen — beide Achsen sind kombinierbar.

**IT-spezifische Sequenzen:**

| Konzept | Konkret | Ikonisch | Symbolisch |
|---|---|---|---|
| **Pandas-DataFrame** | Farbige Karteikarten mit Spalten-/Zeilenetiketten | Tabellen-Rendering mit gehighlighteter Selektion | `df.loc[df.a > 5, ['b','c']]` |
| **NumPy-Tensor** | Physische Schachtel-Metapher (1D=Stab, 2D=Blatt, 3D=Stapel) | Achsen-Diagramm mit nummerierten Dimensionen | `shape=(32,64,3)` |
| **SQL-Join** | Venn-Diagramm mit physischen Mengenstücken | Tabellen-Paare mit Verbindungslinien zwischen Schlüsseln | `LEFT JOIN ... ON a.id = b.fk` |
| **Rekursion** | Gestapelte Sticky-Notes als Stack Frames | Python Tutor Step-Through | Funktionsdefinition + Aufrufbaum |
| **Block-basierte Programmierung** | Puzzle-Stücke ohne Syntaxfehler | visueller Blockeditor | Textsprache (Python, JS) |

Der letzte Eintrag zeigt: Concreteness Fading ist kein neues Konzept für CS-Didaktik — Block-zu-Text-Übergänge *sind* Concreteness Fading. Neu ist nur der Fachbegriff, der das Muster über Einzelanwendungen hinaus hebt.

**Boundary Condition (Fyfe et al. 2014):** Die Zwischenstufen müssen *explizit verknüpft* werden. Sprung ohne Brückenerklärung liefert keinen Vorteil gegenüber direktem abstraktem Unterricht — der Fading-Prozess selbst ist der Wirkstoff. Die Schwelle zwischen den Stufen an Lerner-Performance koppeln, nicht an Zeit.

## Bezug zur IT-Ausbildung

Scaffolding ist besonders relevant für Programmierunterricht, weil Anfänger:innen gleichzeitig Syntax, Semantik, Problemlösung und Werkzeugbedienung bewältigen müssen (vgl. [[cognitive-load-theory]]).

| Stufe | LF5 (SQL) | LF8 (APIs) |
|-------|-----------|------------|
| **Maximal** | Kommentiertes SQL-Beispiel | API-Calls mit Annotationen |
| **Hoch** | Lücken-Query: JOIN ergänzen | Routing vorgegeben, Handler bauen |
| **Mittel** | Query mit Peers entwickeln | API-Sandbox mit Tests |
| **Minimal** | "Offene Bestellungen mit Kundennamen" | Eigene API nach Anforderung |

## Praktische Anwendung

Ein Agent kann Scaffolding dynamisch anpassen:

1. **ZPD einschätzen** — durch diagnostische Fragen und Analyse bisheriger Lösungen feststellen, wo die ZPD liegt.
2. **Abgestuftes Feedback** — erst Fehlertyp, dann Stelle, dann konkrete Hilfe (vgl. [[formatives-assessment]]).
3. **Adaptive Aufgaben** — bei Schwierigkeiten Lückencode, bei Erfolg offenere Aufgaben (vgl. [[worked-examples]]).
4. **Metakognitives Scaffolding** — Reflexionsfragen für [[selbstgesteuertes-lernen]]: "Was hast du versucht?", "Welche Strategie als nächstes?"
5. **Expertise Reversal vermeiden** — Hilfe reduzieren, sobald nicht mehr nötig (vgl. [[cognitive-load-theory]]).

## Verwandte Konzepte

- [[cognitive-load-theory]] — Scaffolding reduziert extrinsische Last bei Novizen
- [[worked-examples]] — Fading als Scaffolding-Strategie
- [[selbstgesteuertes-lernen]] — Metakognitives Scaffolding fördert Selbstregulation
- [[pair-programming-unterricht]] — Navigator als soziales Scaffold
- [[flow-theorie]] — Challenge-Skill-Balance verwandt zum Challenge Point Framework
- [[parsons-problems]] — Eigener Methoden-Artikel mit Distraktor-Varianten und Evidenz
- [[contrasting-cases]] — Vergleichsmatrix als Scaffolding für den Abstraktionsprozess

## Quellen

- Vygotsky, L. S. (1978). Mind in Society: The Development of Higher Psychological Processes. Harvard University Press.
- Wood, D., Bruner, J. S. & Ross, G. (1976). The Role of Tutoring in Problem Solving. J. Child Psychology Psychiatry, 17(2), 89-100.
- Puntambekar, S. & Hubscher, R. (2005). Tools for Scaffolding Students in a Complex Learning Environment. Educational Psychologist, 40(1), 1-12.
- Belland, B. R. (2014). Scaffolding: Definition, Current Debates, and Future Directions. In J. M. Spector et al. (Hrsg.), Handbook of Research on Educational Communications and Technology (S. 505-518). Springer.
- Guadagnoli, M. A. & Lee, T. D. (2004). Challenge point: A framework for conceptualizing the effects of various practice conditions in motor learning. Journal of Motor Behavior, 36(2), 212-224.
- Denny, P., Luxton-Reilly, A. & Simon, B. (2008). Evaluating a new exam question: Parsons problems. ICER 2008.
- Ericson, B. J., Denny, P., Prather, J., Duran, R., Hellas, A., Leinonen, J., Miller, C. S., Morrison, B. B., Pearce, J. L. & Rodger, S. H. (2022). Parsons Problems and Beyond: Systematic Literature Review. ITiCSE-WGR 2022.
- Goldstone, R. L. & Son, J. Y. (2005). The Transfer of Scientific Principles Using Concrete and Idealized Simulations. *Journal of the Learning Sciences*, 14(1), 69-110.
- Fyfe, E. R., McNeil, N. M., Son, J. Y. & Goldstone, R. L. (2014). Concreteness Fading in Mathematics and Science Instruction: A Systematic Review. *Educational Psychology Review*, 26(1), 9-25.
