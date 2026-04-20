---
title: "4C/ID-Modell (Vier-Komponenten-Instruktionsdesign)"
type: theorie
tags: [instruktionsdesign, whole-task, berufsbildung, curriculum, scaffolding, transfer]
related:
  - "[[cognitive-load-theory]]"
  - "[[scaffolding]]"
  - "[[worked-examples]]"
  - "[[cognitive-task-analysis]]"
  - "[[expertise-entwicklung]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[lernsituationen-gestalten]]"
  - "[[subgoal-labeling]]"
  - "[[direct-instruction-rosenshine]]"
  - "[[constructive-alignment]]"
  - "[[immersive-simulationen]]"
  - "[[effektstaerken-unterricht]]"
  - "[[primm-methode]]"
  - "[[use-modify-create]]"
  - "[[parsons-problems]]"
  - "[[kursarchitektur-lernumgebungen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, erschaffen]
created: 2026-04-20
updated: 2026-04-20
summary: >
  Van Merriënboers Blueprint-Modell für komplexe Lernprogramme (1997, 2018):
  Learning Tasks, Supportive Information, Just-in-Time-Information und
  Part-Task Practice als vier zusammenwirkende Komponenten mit Sawtooth-Fading
  über Task Classes. Meta-analytisch g ≈ 0,76 bei Berufs- und Hochschulbildung.
---

# 4C/ID-Modell (Vier-Komponenten-Instruktionsdesign)

## Kernidee

Das Four-Component Instructional Design Model (Van Merriënboer, 1997) gestaltet **ganze Curricula** für komplexe berufliche Kompetenzen statt einzelne Stunden. Sein Kernprinzip: **Whole-Task vor Part-Task** — Lernende bearbeiten von Beginn an vollständige, authentische Aufgaben in steigender Komplexität, unterstützt durch drei zusätzliche Informations- und Übungskomponenten. 4C/ID löst damit das "Transferparadox": aus isoliert geübten Teilskills entsteht kein integriertes Können.

## Beschreibung

### Die vier Komponenten

| Komponente | Funktion | Platzierung | IT-Beispiel |
|---|---|---|---|
| **Learning Tasks** | Rückgrat: authentische Whole-Task-Aufgaben, von einfach zu komplex | Zentrum des Curriculums | Eine komplette REST-API bauen, ein Ticket lösen, einen Netzwerkfehler diagnostizieren |
| **Supportive Information** (SI) | "The theory" — mentale Modelle, Heuristiken, Hintergrundwissen für **nicht-wiederkehrende** Problemlöse-Aspekte | **Vor** der Task Class, bleibt dauerhaft verfügbar | REST-Architekturprinzipien, HTTP-Semantik, Concurrency-Grundlagen |
| **Procedural / Just-in-Time Information** (JIT) | "The how-to" — Schritt-für-Schritt-Anleitung für **wiederkehrende** Routinen | **Exakt im Moment** der ersten Anwendung, verblasst danach | Snippet "Express-Router anlegen" als Tooltip beim ersten Routing-Schritt |
| **Part-Task Practice** (PTP) | Nur wenn Automatisierung kritisch ist, die Whole-Task allein nicht leistet | Optional, parallel zu Learning Tasks | Drill HTTP-Statuscodes, SQL-JOIN-Syntax, Regex-Muster |

Die drei zusätzlichen Komponenten sind **dienende** Strukturen — sie existieren nur, um Learning Tasks zu ermöglichen. Eine typische Fehldeutung im deutschen Sprachraum ist, Supportive Information als klassische "Theoriestunde" vor der Praxis zu lesen; tatsächlich bleibt SI während der gesamten Task Class verfügbar und wird aktiv zwischen Aufgaben konsultiert.

### Task Classes und Sawtooth-Fading

Learning Tasks werden in **Task Classes** gruppiert. Innerhalb einer Class bleibt das geforderte Kompetenzniveau gleich, nur der Support variiert:

```
Task Class 1           Task Class 2           Task Class 3
  [hoher Support]        [hoher Support]        [hoher Support]
     ↘                      ↘                      ↘
       ↘                      ↘                      ↘
         [kein Support]         [kein Support]         [kein Support]
```

Der "Sawtooth" (Sägezahn): Jede neue Task Class springt zurück auf hohen Support, obwohl die Komplexität gestiegen ist. Innerhalb einer Class fadet der Support von *Worked Example* über *Completion Problem* zu *Conventional Problem* (siehe [[worked-examples]], [[parsons-problems]]). Dieses Muster operationalisiert Vygotskys Zone of Proximal Development konkret: Intrinsic Load wird titriert, nicht dem Zufall überlassen.

### Zehn Design-Schritte

Van Merriënboer und Kirschner (2018) konkretisieren das Modell in zehn Schritten, die vier Komponenten × "design–sequence–develop" kombinieren. Kernidee: Beginne mit [[cognitive-task-analysis]] der Zielkompetenz, entwickle daraus Task Classes, dann Learning Tasks pro Class, parallel dazu SI/JIT/PTP. Die ersten vier Schritte (Tasks entwerfen, sequenzieren, Performance-Objectives, Assessment) liefern bereits ein funktionierendes Curriculum; Schritte 5–10 verfeinern Support.

### Abgrenzung zu anderen Modellen

- **ADDIE** ist ein *Prozessmodell* (Analysis–Design–Development–Implementation–Evaluation) und sagt nichts über die Lernarchitektur. 4C/ID ist ein *Blueprint-Modell* für die Lernarchitektur selbst — beide kompatibel.
- **Merrills First Principles** (problem-, activation-, demonstration-, application-, integration-centered) sind kompatibel, aber abstrakter; 4C/ID ist deren konkrete Umsetzung.
- **Klassische Part-Task-Curricula** fragmentieren Kompetenz in Teilskills mit der Hoffnung auf spätere Integration. 4C/ID lehnt das ab — Integration ist selbst ein Skill und muss von Beginn an geübt werden.

### Theoretisches Fundament: Cognitive Load Theory

4C/ID ist die **Zwillings-Theorie** von [[cognitive-load-theory]] auf Curriculum-Ebene (Van Merriënboer & Sweller, 2005). CLT fokussiert einzelne Materialien, 4C/ID ganze Programme. Das Load-Mapping:

- **Intrinsic Load** wird durch Task Classes gesteuert (einfache Class = reduzierte Elementinteraktivität)
- **Extraneous Load** wird durch JIT-Platzierung minimiert (Information erscheint dort, wo sie gebraucht wird — kein Split-Attention)
- **Schema-Aufbau** wird durch Variabilität über Learning Tasks gefördert

### Evidenzlage

- **Costa, Miranda & Melo (2022):** Meta-Analyse, Gesamteffekt **d = 0,79** auf Performance, robust über Fachgebiet und Outcome-Typ; stärker in Higher Education.
- **Neck et al. (2025):** Systematisches Review (55 Studien, 2004–2024) mit Multilevel-Meta-Analyse (12 Studien, 32 Effekte): Gesamt **g = 0,76** (p = 0,014). Studien mit expliziter Beschreibung aller vier Komponenten: **g = 1,33**, ohne: g = 0,39. Domäne Skilled Trades g ≈ 2,1, Education g ≈ 0,4, Medizin inkonsistent. Zentrale Kritik: nur 54 % der Publikationen beschreiben alle vier Komponenten vollständig — Replikationslücke.
- **Kosten**: 4C/ID verlangt hohen Designaufwand und Coaching-Zeit (Frerejean & Van Merriënboer, 2019). Keine "quick wins" — Curriculum-Umbau, nicht Einzelstunden-Intervention.

## Bezug zur IT-Ausbildung

Das deutsche **Lernfeldkonzept** (KMK) und 4C/ID teilen das Whole-Task-Prinzip, überlappen aber unterschiedlich:

| Ebene | Lernfeldkonzept | 4C/ID | Ergänzung |
|---|---|---|---|
| Curricular | Lernfeld → Lernsituation | Domain → Task Class → Learning Task | 4C/ID operationalisiert, **wie** man innerhalb einer Lernsituation staffelt |
| Didaktisches Prinzip | Vollständige Handlung | Whole-Task-Approach | deckungsgleich |
| Stärke | Anbindung an betriebliche Geschäftsprozesse | explizite Load-Steuerung, Sawtooth-Fading | Lernfeldkonzept fordert Whole-Task, ohne Cognitive Load systematisch zu behandeln |

Für FIAE/FIDP-Lehrkräfte liefert 4C/ID damit die **Feinmechanik** unter einer vorhandenen [[lernsituationen-gestalten|Lernsituation]]: Sprache und Werkzeug für Binnendifferenzierung, Aufgabenserie-Design und Support-Management innerhalb einer Lernsituation. Besonders wertvoll in heterogenen Klassen, in denen Hobbyprogrammierer und absolute Novizen gleichzeitig sitzen.

## Praktische Anwendung

Ein Agent oder eine Lehrkraft kann 4C/ID für eine Lernsituation "REST-API entwickeln" (LF8, FIAE) operationalisieren:

**Task Class 1 — einfache CRUD-API, Single-Resource, lokale SQLite:**

- *Learning Task 1 (Worked Example):* vollständig ausgearbeiteter Express.js-Code mit `GET /books`, `POST /books`. Aufgabe: Code lesen, mit [[subgoal-labeling|Subgoal Labels]] annotieren, Reflexionsfragen.
- *Learning Task 2 (Completion Problem):* Routen `GET /books/:id` und `DELETE /books/:id` sind leer, Rest vorhanden. Ergänzen.
- *Learning Task 3 (Conventional Problem):* Eigene Ressource `/todos` vollständig selbst aufbauen.

**Supportive Information** (vor Task Class, bleibt verfügbar):

- REST-Architekturprinzipien (Ressourcen, Statuscodes, Idempotenz)
- HTTP-Methoden-Semantik, Concurrency-Grundlagen
- Mentales Modell: Request → Router → Handler → DB → Response

**Procedural / JIT Information** (inline, im Moment der Anwendung):

- Snippet "Express-Router anlegen" — erscheint beim ersten Router-Schritt
- Tooltip "`JSON.parse` vs. `express.json()`-Middleware" — erscheint beim Body-Parsing
- Verblasst in späteren Tasks (Fading)

**Part-Task Practice** (parallel, nur wo Automatisierung nötig):

- HTTP-Statuscodes-Drill (200/201/204/400/404/409/422)
- SQL-JOIN-Syntax-Drill, falls DB-Zugriff routiniert erfolgen muss

**Task Class 2** fügt Ressourcen-Beziehungen und JWT-Authentication hinzu; **Task Class 3** Production-Aspekte (Rate Limiting, Error Handling, OpenAPI, Deployment). Bei jedem Class-Wechsel Sawtooth: erneut hoher Support auf höherem Komplexitätsniveau.

**Für interaktive Lernumgebungen** ist 4C/ID besonders tragfähig, weil JIT-Komponente und Sawtooth-Fading algorithmisch implementiert werden können: Tooltips erscheinen nur bei der ersten Routine-Anwendung pro Class, Support-Level wird per Task-Class-Position gesteuert.

## Verwandte Konzepte

- [[cognitive-load-theory]] — theoretische Basis; 4C/ID operationalisiert CLT auf Curriculum-Ebene
- [[scaffolding]] — Sawtooth-Fading ist systematisches Scaffolding innerhalb einer Task Class
- [[worked-examples]] — höchste Support-Stufe im Fading-Pfad
- [[cognitive-task-analysis]] — Grundlage von Design-Schritt 1 (Analyse der Zielkompetenz)
- [[expertise-entwicklung]] — 4C/ID beschreibt den Weg vom Novizen zum kompetenten Handelnden
- [[handlungsorientierter-unterricht]] — deutsche Entsprechung des Whole-Task-Prinzips
- [[lernsituationen-gestalten]] — 4C/ID liefert die Feinmechanik unterhalb einer Lernsituation
- [[parsons-problems]] — mittlere Support-Stufe (Completion Problem) im Fading-Pfad
- [[subgoal-labeling]] — Technik innerhalb von Supportive Information und Worked Examples
- [[direct-instruction-rosenshine]] — verwandter evidenzbasierter Rahmen mit eigener Fading-Logik
- [[primm-methode]] — PRIMM realisiert innerhalb einer einzelnen Aufgabe, was 4C/ID über Task Classes organisiert
- [[use-modify-create]] — komplementäre Progression innerhalb einer Task Class

## Quellen

- Van Merriënboer, J. J. G. (1997). *Training complex cognitive skills: A four-component instructional design model for technical training.* Educational Technology Publications.
- Van Merriënboer, J. J. G. & Kirschner, P. A. (2018). *Ten steps to complex learning: A systematic approach to four-component instructional design* (3rd ed.). Routledge.
- Van Merriënboer, J. J. G. & Sweller, J. (2005). Cognitive load theory and complex learning: Recent developments and future directions. *Educational Psychology Review, 17*(2), 147–177. https://doi.org/10.1007/s10648-005-3951-0
- Costa, J. M., Miranda, G. L. & Melo, M. (2022). Four-component instructional design (4C/ID) model: A meta-analysis on use and effect. *Learning Environments Research, 25*(2), 445–463. https://doi.org/10.1007/s10984-021-09373-y
- Neck, A. et al. (2025). Implementing the four-component instructional design model in professional development programs: A systematic review. *Frontiers in Education, 10*, 1631375. https://doi.org/10.3389/feduc.2025.1631375
- Frerejean, J., Van Merriënboer, J. J. G., Kirschner, P. A., Roex, A., Aertgeerts, B. & Marcellis, M. (2019). Designing instruction for complex learning: 4C/ID in higher education. *European Journal of Education, 54*(4), 513–524. https://doi.org/10.1111/ejed.12363
- Paas, F. & Van Merriënboer, J. J. G. (2020). Cognitive-load theory: Methods to manage working memory load in the learning of complex tasks. *Current Directions in Psychological Science, 29*(4), 394–398. https://doi.org/10.1177/0963721420922183
- Kremer, H.-H. & Sloane, P. F. E. (2001). Lernfelder implementieren. *bwp@ Berufs- und Wirtschaftspädagogik – online, 4*.
