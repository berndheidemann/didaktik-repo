---
title: "Live Coding als Lehrmethode"
type: methode
tags: [live-coding, modeling, think-aloud, deliberate-mistakes, debugging, cognitive-load, programmierung, ki-tools]
related:
  - "[[cognitive-apprenticeship]]"
  - "[[cognitive-load-theory]]"
  - "[[worked-examples]]"
  - "[[scaffolding]]"
  - "[[fehlerkultur-im-unterricht]]"
  - "[[metakognition]]"
  - "[[debugging-als-kompetenz]]"
  - "[[primm-methode]]"
  - "[[expertise-entwicklung]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[neurodidaktik-programmieren]]"
  - "[[pair-programming-unterricht]]"
  - "[[code-review-unterricht]]"
  - "[[icap-framework]]"
  - "[[fachgespraech-didaktik]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, analysieren]
sozialform: [plenum, einzelarbeit]
created: 2026-04-10
updated: 2026-04-10
summary: >
  Live Coding macht den Denkprozess beim Programmieren sichtbar: Die Lehrkraft
  schreibt Code in Echtzeit, verbalisiert Entscheidungen (Think-Aloud),
  baut bewusst Fehler ein (Deliberate Mistakes) und steuert die kognitive
  Belastung durch schrittweisen Aufbau. Evidenzbasierte Gestaltungsprinzipien
  nach Rubin (2013), Raj et al. (2018) und Nederbragt et al. (2020).
---

# Live Coding als Lehrmethode

## Kernidee

Die Lehrkraft entwickelt Code in Echtzeit vor der Klasse und verbalisiert dabei Denkprozesse, Entscheidungen und Problemlösungsstrategien. Der Kern ist der sichtbar gemachte Prozess, nicht das fertige Produkt -- eine direkte Umsetzung des Modeling-Schritts aus dem [[cognitive-apprenticeship]]-Framework (Collins et al., 1989). Rubin (2013) definiert Live Coding als "the process of designing and implementing a [coding] project in front of class during lecture period".

## Beschreibung

Im Gegensatz zu statischen Code-Beispielen auf Folien zeigt Live Coding den vollständigen Entwicklungsprozess: Planung, Implementierung, Fehlersuche und Refactoring. Rubins Studie (2013, SIGCSE) verglich Live Coding mit statischen Beispielen in vier Sektionen eines C++-Einführungskurses: Lernende in der Live-Coding-Gruppe schnitten signifikant besser in Abschlussprojekten ab.

Raj et al. (2018) identifizierten drei zentrale Lerneffekte: (1) der Programmierprozess wird für Novizen verständlich, (2) Lernende beobachten authentische Debugging-Strategien, (3) gute Programmierpraktiken werden modelliert. Lernende bevorzugen dabei aktives Mitprogrammieren -- partizipatives Live Coding.

Die schrittweise Entwicklung reduziert die extrinsische kognitive Belastung (vgl. [[cognitive-load-theory]]), weil Lernende genau wissen, welche Zeile im Fokus steht. Gleichzeitig ist die Belastung für die Lehrkraft erheblich: gleichzeitiges Programmieren, Erklären und Classroom-Management erfordern hohe kognitive Flexibilität (Su & Wang, 2025).

## Durchführung

### 1. Vorbereitung

- **Code-Skelett vorbereiten:** Für komplexe Themen fertigen Lösungsentwurf bereithalten; für einfache Themen reicht ein leeres Projekt.
- **Deliberate Mistakes planen:** 2-3 typische Fehler gezielt einbauen (Syntaxfehler, Off-by-One, falsche Datentypen), die häufige Misconceptions widerspiegeln.
- **Umgebung einrichten:** Grosse Schrift (min. 18pt), hoher Kontrast, Benachrichtigungen deaktivieren (Nederbragt et al., 2020).

### 2. Think-Aloud-Phase

Während des Programmierens auf drei Ebenen verbalisieren: Planung ("Ich brauche eine Schleife, weil ..."), Entscheidung ("for statt while, weil die Anzahl bekannt ist") und Überprüfung ("Teste ich jetzt -- stimmt die Ausgabe?"). Das macht [[metakognition|metakognitive]] Strategien sichtbar, die Experten automatisiert ausführen, für Novizen aber unsichtbar bleiben (vgl. [[expertise-entwicklung]]).

### 3. Deliberate Mistakes

Fehler eintippen, Code laufen lassen, Fehlermeldung gemeinsam lesen. Lernende vorher das Ergebnis vorhersagen lassen (Predict-Strategie, vgl. [[primm-methode]]). Reparaturstrategie verbalisieren: "Die Fehlermeldung sagt Zeile 12 -- ich schaue mir die Variable an."

Nederbragt et al. (2020) betonen, dass Fehler den Lernenden "permission to make their own" geben -- ein zentraler Aspekt der [[fehlerkultur-im-unterricht]]. Gezieltes Erzeugen und Korrigieren von Fehlern ist eine wirksame Lerntechnik (Metcalfe, 2017).

### 4. Partizipation einbinden

- **Code-Along:** Lernende programmieren auf ihren Rechnern mit. Raj et al. (2018) fanden, dass Lernende diese Variante deutlich bevorzugen.
- **Predict-Pause:** Vor jedem Ausführen fragen: "Was wird passiert?" (vgl. [[primm-methode|PRIMM]]).
- **Ampel-Feedback:** Farbige Karten oder digitale Tools für Echtzeit-Rückmeldung zum Tempo (Nederbragt et al., 2020).

### 5. Abschluss

Fertigen Code rekapitulieren, als kommentiertes [[worked-examples|Worked Example]] bereitstellen und mit einer Reflexionsfrage abschliessen: "Welche Strategie würdest du anders anwenden?"

## Voraussetzungen

- **Technisch:** Beamer/Bildschirm, IDE mit grosser Schrift (min. 18pt), stabile Entwicklungsumgebung.
- **Didaktisch:** Sicherheit in der Programmiersprache; Bereitschaft, Fehler öffentlich zu machen. Alle befragten Lehrenden empfanden Live Coding als kognitiv belastender als statische Präsentationen (Su & Wang, 2025).
- **Lernende:** IDE-Grundkenntnisse (bei Code-Along). Bei Anfängerstand zunächst Beobachtung, dann schrittweise partizipativ.

## Varianten

| Variante | Beschreibung | Einsatz |
|---|---|---|
| **Demonstratives Live Coding** | Lehrkraft programmiert, Lernende beobachten | Komplexe Konzepte einführen |
| **Partizipatives Live Coding** | Lernende programmieren auf eigenen Rechnern mit | Standard für Übungsphasen |
| **Fehlerdiagnose-Coding** | Lehrkraft schreibt bewusst fehlerhaften Code, Klasse debuggt gemeinsam | [[debugging-als-kompetenz]] trainieren |
| **KI-gestütztes Live Coding** | Lehrkraft nutzt KI-Codegenerierung (Copilot) und diskutiert kritisch | KI-Kompetenz aufbauen (s. u.) |
| **Inverses Live Coding** | Lernende diktieren, Lehrkraft tippt | Verständnis überprüfen, Fachsprache üben |

## Zeitbedarf

- **Vorbereitung:** 15-30 min (Code-Skelett, Fehler planen, Umgebung testen)
- **Durchführung:** 5-10 min pro Demonstration in Vorlesungen; 20-45 min in Übungssitzungen (Su & Wang, 2025). Faustregel: Live Coding benötigt ca. doppelt so viel Zeit wie die Präsentation statischen Codes.
- **Nachbereitung:** 10 min (kommentierten Code bereitstellen, Reflexion)

## Bezug zur IT-Ausbildung

Live Coding ist für die FIAE/FIDP-Ausbildung besonders wertvoll, weil der Rahmenlehrplan Handlungskompetenz fordert -- und Programmieren eine Handlung ist, die man am besten durch Beobachten und Nachmachen lernt.

- **LF 5 (Daten verwalten):** SQL-Queries live entwickeln -- SELECT, dann WHERE, dann JOIN. Deliberate Mistakes: falscher JOIN-Typ, fehlende GROUP BY.
- **LF 6 (Serviceanfragen):** Debugging live vorführen -- Fehlermeldung, Stacktrace, Fix. Modelliert Troubleshooting.
- **LF 8 (Daten bereitstellen):** REST-API-Endpoint live bauen -- Route, Controller, Postman-Test. Think-Aloud zu HTTP-Statuscodes.
- **LF 10-12 (Projekte):** Refactoring-Sessions -- von funktionierendem Code zu Clean Code.

### Live Coding mit KI-Tools

Lernende mit starken [[metakognition|metakognitiven]] Fähigkeiten profitieren von KI-Assistenten, während Lernende mit schwacher Selbstregulation negativ beeinflusst werden (vgl. [[deskilling-ki-codegenerierung]]). Empfohlene Strategie:

1. **KI-freie Grundlagenphase:** Zunächst ohne KI programmieren, damit Basiskompetenz entsteht.
2. **Kritisches KI-Live-Coding:** KI-Vorschlag generieren, dann gemeinsam analysieren: "Was ist richtig? Wo ist der Vorschlag problematisch?"
3. **Vergleich:** Gleiche Aufgabe manuell und mit KI lösen -- Unterschiede diskutieren.

## Praktische Anwendung

- **Replay-Funktion:** Live-Coding-Sessions aufzeichnen und als schrittweise abspielbare [[worked-examples]] bereitstellen. Die [[neurodidaktik-programmieren|neurodidaktische Forschung]] zeigt, dass Code-Lesen eigene neuronale Netzwerke beansprucht -- Wiederholung in eigenem Tempo ist wertvoll.
- **Predict-Widget:** Vor Code-Ausführen eine Vorhersage-Eingabe einblenden (vgl. [[primm-methode|PRIMM]]).
- **Fehler-Challenges:** Fehlerhaften Code präsentieren und Lernende den Fehler finden lassen (vgl. [[debugging-als-kompetenz]]).
- **Tempo-Steuerung:** [[scaffolding|Scaffolding]] durch variable Geschwindigkeit -- anfangs langsam, mit wachsender Kompetenz schneller.
- **Code-Diff-Ansicht:** Jeden Schritt als Diff darstellen, um inkrementellen Aufbau sichtbar zu machen.

## Verwandte Konzepte

- [[cognitive-apprenticeship]] -- Live Coding als Modeling-Phase
- [[cognitive-load-theory]] -- Schrittweiser Aufbau reduziert extrinsische Belastung
- [[worked-examples]] -- Fertiger Live-Coding-Code wird zum Lösungsbeispiel
- [[scaffolding]] -- Tempo und Komplexität als Scaffolding-Dimensionen
- [[fehlerkultur-im-unterricht]] -- Deliberate Mistakes modellieren Fehlerumgang
- [[metakognition]] -- Think-Aloud macht metakognitive Strategien explizit
- [[debugging-als-kompetenz]] -- Live-Debugging als integraler Bestandteil
- [[primm-methode]] -- Predict-Phase als Kombination
- [[expertise-entwicklung]] -- Experten-Novizen-Unterschiede sichtbar machen
- [[ki-gestuetztes-tutoring]] -- KI-Tools als Gegenstand kritischer Analyse
- [[deskilling-ki-codegenerierung]] -- KI-freie Phasen als Gegenstrategie
- [[neurodidaktik-programmieren]] -- fMRI-Befunde begründen schrittweises Vorgehen
- [[pair-programming-unterricht]] -- Partizipatives Live Coding als Vorstufe
- [[code-review-unterricht]] -- Live Refactoring als Brücke zu Code Review

## Quellen

- Collins, A., Brown, J. S. & Newman, S. E. (1989). Cognitive apprenticeship. In L. B. Resnick (Hrsg.), *Knowing, learning, and instruction* (S. 453-494). Erlbaum.
- Metcalfe, J. (2017). Learning from errors. *Annual Review of Psychology*, 68, 465-489.
- Nederbragt, A. et al. (2020). Ten quick tips for teaching with participatory live coding. *PLOS Computational Biology*, 16(9), e1008090.
- Raj, A. G. S. et al. (2018). Role of live-coding in learning introductory programming. *Koli Calling '18*. ACM.
- Rubin, M. J. (2013). The effectiveness of live-coding to teach introductory programming. *SIGCSE '13* (S. 651-656). ACM.
- Su, X. & Wang, A. Y. (2025). Live coding in programming classes: Instructors' perspectives. *arXiv*, 2506.03402.
