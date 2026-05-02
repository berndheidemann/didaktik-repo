---
title: Flipped Classroom
type: methode
tags: [unterrichtsformat, video, aktivierung, selbstlernen, blended-learning]
related:
  - "[[blooms-taxonomie]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[formatives-assessment]]"
  - "[[pair-programming-unterricht]]"
  - "[[meta-analysen-cs-education]]"
  - "[[peer-instruction]]"
  - "[[effektstaerken-unterricht]]"
  - "[[expertise-entwicklung]]"
  - "[[explorable-explanations-im-unterricht]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, erschaffen]
sozialform: [einzelarbeit, partner, gruppe]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Wissensvermittlung wird vor den Unterricht verlagert (Video, Lektüre),
  die Präsenzzeit für aktives Lernen genutzt (Bergmann & Sams, 2012) —
  mit konsistenten kleinen bis mittleren Effekten (d ≈ 0,24-0,35).
---

# Flipped Classroom

## Kernidee

Der Flipped Classroom kehrt die traditionelle Unterrichtsstruktur um: Theorie und Konzepte werden vor dem Unterricht selbstständig erarbeitet (Video, Lektüre), die wertvolle Präsenzzeit wird für Anwendung, Übung und Vertiefung genutzt. Nach [[blooms-taxonomie]] werden niedrige Stufen (Erinnern, Verstehen) ausgelagert, höhere Stufen (Anwenden bis Erschaffen) in den Unterricht geholt.

## Beschreibung

Jonathan Bergmann und Aaron Sams (2012) prägten das Modell als Chemielehrer. Es gibt "no single way to flip your classroom" — es ist ein Mindset, kein starres Rezept.

**Traditionell:** Vortrag im Unterricht → Übung zu Hause
**Flipped:** Vorbereitung zu Hause → aktives Lernen im Unterricht

## Durchführung

### Vor dem Unterricht (Individual Space)
- Lernvideos (optimal: max. 6 Min., konversationeller Ton)
- Lektüre, interaktive Tutorials, Podcasts
- Vorbereitungsquiz zur Selbstüberprüfung (erhöht nachweislich den Effekt)
- Zeitaufwand für Lernende: max. 20 Minuten

### Im Unterricht (Group Space)
- Problemlösen, Programmieraufgaben, Projektarbeit
- [[pair-programming-unterricht]], Code-Reviews
- Peer Instruction, Gruppendiskussionen
- Individuelle Begleitung durch die Lehrkraft ("Guide on the Side")

Wichtig: Kein "Double Lecturing" — das Pre-Class-Material im Unterricht nicht nochmal vortragen.

## Voraussetzungen

- Technische Infrastruktur für Videoproduktion und -distribution (LMS, YouTube)
- Lernende brauchen Internetzugang (Alternative: In-Class Flip, s. Varianten)
- Accountability-Maßnahmen (Quizzes), damit Vorbereitung tatsächlich stattfindet
- Schrittweiser Einstieg empfohlen: 2-3 Themen pro Schuljahr beginnen

## Varianten

- **In-Class Flip:** Gesamte Flipped-Struktur innerhalb des Unterrichts als Stationenarbeit. Löst das Problem fehlender häuslicher Vorbereitung — besonders relevant für Berufsschulen.
- **Peer Instruction (Mazur):** Pre-Class-Material + ConcepTests im Unterricht + Diskussion in Paaren + erneute Abstimmung. Besonders wirksam für konzeptuelles Verständnis (Rekursion, Polymorphismus).
- **Flipped Mastery:** Kombination mit Mastery Learning — Lernende arbeiten im eigenen Tempo und weisen Kompetenzniveau nach, bevor sie zur nächsten Einheit übergehen.

## Zeitbedarf

- **Vorbereitung Lehrkraft:** Initial hoch (Videoproduktion), sinkt über die Jahre
- **Vorbereitung Lernende:** Max. 20 Min. pro Einheit
- **Präsenzzeit:** Bleibt gleich, wird aber produktiver genutzt

## Bezug zur IT-Ausbildung

Flipped Classroom ist für IT besonders geeignet, weil Programmieren eine Hands-on-Fertigkeit ist, die von Lehrerbegleitung profitiert — während Syntax und Konzepte gut selbstständig erarbeitet werden können.

| Phase | Lernfeld-Beispiel |
|-------|-------------------|
| **Pre-Class (LF5)** | Video zu SQL-JOIN-Syntax + Quiz |
| **In-Class (LF5)** | Komplexe Datenbankabfragen entwickeln mit Feedback |
| **Pre-Class (LF8)** | Tutorial zu REST-Grundlagen und HTTP-Methoden |
| **In-Class (LF8)** | API-Entwicklung im Pair Programming |
| **Pre-Class (LF3)** | Video zu Netzwerkprotokollen |
| **In-Class (LF3)** | Netzwerk konfigurieren und Troubleshooting |

Evidenz für CS-Kontext: Ruiz de Miras (2022) zeigte signifikant bessere Bestehens- und Abbruchquoten bei Einführungskursen in Programmierung mit Flipped + Peer Instruction.

## Praktische Anwendung

Ein Agent kann Flipped Classroom unterstützen:

1. **Pre-Class-Material erstellen:** Konzise Erklärungen zu Konzepten generieren, die Lernende vor dem Unterricht bearbeiten. Komplexität an [[blooms-taxonomie]]-Stufen 1-2 orientieren.
2. **Readiness Checks:** Quiz-Fragen generieren, die prüfen, ob Lernende vorbereitet sind. Ergebnisse für [[formatives-assessment]] nutzen.
3. **In-Class-Aufgaben generieren:** Aufgaben auf Stufen 3-6 (Anwenden bis Erschaffen), die auf dem Pre-Class-Material aufbauen. Vgl. [[handlungsorientierter-unterricht]] für authentische Szenarien.
4. **Adaptive Differenzierung:** Lernende, die den Readiness Check nicht bestehen, erhalten zusätzliches Pre-Class-Material. Gut vorbereitete Lernende starten direkt mit anspruchsvollen Aufgaben.

## Verwandte Konzepte

- [[blooms-taxonomie]] — Begründung für die Umkehrung: niedrige Stufen auslagern, hohe in den Unterricht
- [[selbstgesteuertes-lernen]] — Pre-Class-Phase erfordert und fördert Selbstregulation
- [[handlungsorientierter-unterricht]] — Präsenzphase für handlungsorientierte Lernsituationen nutzen
- [[formatives-assessment]] — Readiness Checks und In-Class-Feedback als formatives Assessment
- [[pair-programming-unterricht]] — Ideale In-Class-Aktivität bei Programmier-Themen

## Quellen

- Bergmann, J. & Sams, A. (2012). *Flip Your Classroom: Reach Every Student in Every Class Every Day*. International Society for Technology in Education (ISTE) gemeinsam mit ASCD.
- Hew, K. F. & Lo, C. K. (2018). Flipped Classroom Improves Student Learning in Health Professions Education: A Meta-Analysis. BMC Medical Education, 18(1), Article 38.
- Låg, T. & Sæle, R. G. (2019). Does the Flipped Classroom Improve Student Learning and Satisfaction? A Systematic Review and Meta-Analysis. AERA Open, 5(3), 1-17.
- Van Alten, D. C. D. et al. (2019). Effects of Flipping the Classroom on Learning Outcomes and Satisfaction: A Meta-Analysis. Educational Research Review, 28, Article 100281.
- Ruiz de Miras, J., Balsas-Almagro, J. R. & García-Fernández, Á. L. (2022). Using flipped classroom and peer instruction methodologies to improve introductory computer programming courses. *Computer Applications in Engineering Education*, 30(1), 133-145. https://doi.org/10.1002/cae.22447
