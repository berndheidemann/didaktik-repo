---
title: Peer Instruction
type: methode
tags: [peer-learning, concepTests, aktivierung, abstimmung, diskussion]
related:
  - "[[aktivierung-lehrervortrag]]"
  - "[[direct-instruction-rosenshine]]"
  - "[[flipped-classroom]]"
  - "[[formatives-assessment]]"
  - "[[retrieval-practice]]"
  - "[[code-review-unterricht]]"
  - "[[cognitive-load-theory]]"
  - "[[threshold-concepts]]"
  - "[[meta-analysen-cs-education]]"
  - "[[community-of-practice]]"
  - "[[primm-methode]]"
  - "[[effektstaerken-unterricht]]"
  - "[[kooperatives-lernen]]"
  - "[[affektive-dimensionen]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[wissensretention-programmierung]]"
  - "[[generative-learning-aktivitaeten]]"
  - "[[testitem-konstruktion-digital]]"
  - "[[icap-framework]]"
  - "[[explain-in-plain-english]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, analysieren]
sozialform: [partner, plenum]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Mazurs ConcepTest-Zyklus (Frage → Einzelvote → Peer-Diskussion → Re-Vote)
  reduziert Durchfallquoten in CS-Kursen um bis zu 61% (Porter et al., 2013) und
  macht Misconceptions in Echtzeit sichtbar.
---

# Peer Instruction

## Kernidee

Peer Instruction (Mazur, 1997) ersetzt passives Zuhören durch strukturierte Peer-Diskussion über konzeptuelle Fragen (ConcepTests). Der Zyklus — individuelles Nachdenken, Abstimmen, Diskutieren, erneut Abstimmen — erzwingt aktive Auseinandersetzung mit Misconceptions (vgl. [[threshold-concepts]]) und ist gleichzeitig [[formatives-assessment]] in Echtzeit.

## Beschreibung

### Der ConcepTest-Zyklus

1. **ConcepTest anzeigen** — Konzeptuelle Multiple-Choice-Frage (nicht reine Wissenabfrage)
2. **Individuell nachdenken** (1-2 Min.) — Keine Diskussion, eigene Antwort bilden
3. **Erste Abstimmung** — Per Handzeichen, Karten oder digital (Mentimeter, Kahoot)
4. **Entscheidungsheuristik:**
   - <30% korrekt → Lehrkraft erklärt das Konzept nochmal
   - 30-70% korrekt → **Peer-Diskussion** (2-3 Min.) in Paaren
   - \>70% korrekt → Kurze Erklärung, weiter
5. **Re-Vote** — Erneute Abstimmung nach Diskussion
6. **Auflösung** — Lehrkraft erklärt die korrekte Antwort und adressiert häufige Fehler

### Was macht einen guten CS-ConcepTest aus?

- **Code-Tracing:** "Was gibt dieser Code aus?" (Schleife mit Off-by-one, Rekursion)
- **Output-Prediction:** "Gegebener Input X, was ist der Rückgabewert?"
- **Konzeptuelle Wahl:** "Welche Datenstruktur passt hier am besten und warum?"
- **Entscheidend:** Distraktoren müssen reale Misconceptions widerspiegeln (z.B. Verwechslung pass-by-reference vs. pass-by-value)
- Isomorphe Fragen (gleiches Konzept, andere Oberfläche) für Re-Vote nutzen

## Durchführung

1. **ConcepTests vorbereiten** — 2-3 pro 90-Minuten-Block. Eine Frage pro Konzept. Distraktoren aus bekannten Misconceptions ableiten.
2. **Kalibrierung** — In der ersten Session erklären, wie PI funktioniert und warum Diskussion wichtig ist.
3. **Zyklus durchführen** — Frage zeigen → Denken → Voten → Diskutieren → Re-Vote → Erklären. Strikt timen.
4. **Ergebnis nutzen** — Abstimmungsergebnis als [[formatives-assessment]]: Wo sitzen die Misconceptions?
5. **Fragendatenbank aufbauen** — ConcepTests nach Lernfeld organisieren und über Jahre wiederverwenden.

## Voraussetzungen

- Konzeptuelle Fragen mit guten Distraktoren (nicht triviale Wissensfragen)
- Abstimmungsmöglichkeit (Handzeichen, Karten, Digital-Tool)
- Lernende müssen verstehen, dass Diskussion der Kern ist (nicht nur "die richtige Antwort finden")
- Funktioniert ab 6 Personen, ideal ab 15

## Varianten

- **PeerWise** (Denny et al.): Lernende erstellen selbst ConcepTests für Peers. Das Fragen-Erstellen ist selbst eine starke Lernaktivität (Generation Effect, vgl. [[retrieval-practice]]).
- **Kombination mit Flipped Classroom:** Pre-Class-Video + Readiness Quiz + ConcepTest-Zyklen im Unterricht (vgl. [[flipped-classroom]]). Ruiz de Miras (2022) zeigt die stärksten Effekte bei dieser Kombination.
- **Think-Pair-Share:** Vereinfachte Variante ohne formale Abstimmung — Denken, Partnergespräch, Plenumsdiskussion.

## Zeitbedarf

- **Vorbereitung:** 15-30 Min. pro ConcepTest (einmalig, dann wiederverwendbar)
- **Durchführung:** 5-8 Min. pro ConcepTest-Zyklus
- **Pro Unterrichtsblock:** 2-3 Zyklen = 15-25 Min. aktive PI-Zeit

## Bezug zur IT-Ausbildung

Peer Instruction eignet sich besonders für [[threshold-concepts]] der Informatik — genau die Konzepte, bei denen Misconceptions verbreitet sind:

| Lernfeld | ConcepTest-Beispiel |
|----------|-------------------|
| **LF5 (SQL)** | "Was liefert dieser LEFT JOIN, wenn die rechte Tabelle keinen Match hat?" |
| **LF5 (Programmierung)** | "Was ist der Wert von x nach `x = [1,2,3]; y = x; y.append(4)`?" (Referenz!) |
| **LF8 (APIs)** | "Welcher HTTP-Statuscode für 'Ressource erstellt'? A) 200 B) 201 C) 204 D) 301" |
| **LF11a (OOP)** | "Was passiert, wenn Methode der Subklasse aufgerufen wird?" (Polymorphie) |

Porter et al. (2013) zeigen: **61% weniger Durchfaller** in CS-Kursen mit Peer Instruction gegenüber traditioneller Vorlesung. Zingaro & Porter (2014) fanden, dass PI bei anspruchsvolleren ConcepTests die größten Lerngewinne bringt — und dass Instruktor-Intervention nach der Peer-Diskussion (raw gain 22 % vs. 14 % ohne) eine zusätzliche Wirkung beisteuert.

## Praktische Anwendung

Ein Agent kann Peer Instruction unterstützen:

1. **ConcepTests generieren** — Zu einem Thema und Lernfeld konzeptuelle Fragen mit Distraktoren erstellen, die auf realen Misconceptions basieren (vgl. [[threshold-concepts]]).
2. **Diagnostik:** Aus dem Abstimmungsergebnis ableiten, welche Misconceptions vorliegen, und gezielte Erklärungen bereitstellen.
3. **Isomorphe Fragen:** Für den Re-Vote eine strukturgleiche Frage mit anderer Oberfläche generieren — testet echtes Verständnis statt Pattern-Matching.
4. **PeerWise-Aufgaben:** Lernende Fragen erstellen lassen und die Qualität bewerten — Generation + [[retrieval-practice]] + [[formatives-assessment]] in einem.

## Verwandte Konzepte

- [[flipped-classroom]] — Pre-Class-Phase + PI in der Präsenzphase ist die stärkste Kombination
- [[formatives-assessment]] — ConcepTest-Abstimmung ist Echtzeit-Diagnostik
- [[retrieval-practice]] — ConcepTests sind Retrieval Practice; PeerWise nutzt den Generation Effect
- [[code-review-unterricht]] — Beide nutzen Peer-Interaktion als Lernmechanismus
- [[cognitive-load-theory]] — ConcepTests isolieren einzelne Konzepte (niedrige Elementinteraktivität)
- [[threshold-concepts]] — ConcepTest-Distraktoren basieren auf bekannten Misconceptions

## Quellen

- Mazur, E. (1997). Peer Instruction: A User's Manual. Prentice Hall.
- Porter, L. et al. (2013). Halving Fail Rates Using Peer Instruction: A Study of Four Computer Science Courses. Proceedings of ACM SIGCSE 2013, 177-182.
- Zingaro, D. & Porter, L. (2014). Peer Instruction in Computing: The Value of Instructor Intervention. Computers & Education, 71, 87-96.
- Simon, B. et al. (2010). Experience Report: Peer Instruction in Introductory Computing. Proceedings of ACM SIGCSE 2010.
- Ruiz de Miras, J., Balsas-Almagro, J. R. & García-Fernández, Á. L. (2022). Using flipped classroom and peer instruction methodologies to improve introductory computer programming courses. *Computer Applications in Engineering Education*, 30(1), 133-145. https://doi.org/10.1002/cae.22447
