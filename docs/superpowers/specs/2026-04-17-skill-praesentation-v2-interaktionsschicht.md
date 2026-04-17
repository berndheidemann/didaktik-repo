# skill-praesentation v2 — Interaktionsschicht & Themen-Generik

**Datum:** 2026-04-17
**Status:** Entwurf, wartet auf Review
**Autor:** Bernd Heidemann (mit Claude)
**Baut auf:** `2026-04-17-skill-praesentation-design.md` (v1-MVP)

## 1. Motivation

Der v1-Skill erzeugt evidenzbasierte Präsentationen, hat sich aber in der Praxis an zwei Stellen als zu schwach gezeigt:

1. **Einstieg zu passiv.** Phase 1 der Phasenmodelle (Sicherung und Consolidation) sieht aktuell nur eine Einstiegsvariante vor: "Was wisst ihr noch von letzter Stunde? — Aufschreiben." Das nutzt zwar den Testing Effect ([[retrieval-practice]]), bleibt aber reiner Freitext-Recall ohne Leitstruktur, kognitiven Konflikt oder Vergleich. Bei einer konkreten SQL-Präsentation (GROUP BY, HAVING, Subqueries) empfand der Lehrer den Einstieg als didaktisch schwach.

2. **Textwüste statt Visualisierung.** Die fünf Primitives (TitleSlide, ArbeitsauftragSlide, MerksatzSlide, ConcepTestSlide, ContentSlide) sind alle textzentriert. ContentSlide erlaubt genau ein statisches Bild/SVG, aber keine Interaktivität, keine animierten Zustandsübergänge, keine Diagramme. Das kollidiert mit Kernprinzipien aus [[multimedia-gestaltungsprinzipien]] (Spatial Contiguity, Modality), [[notional-machines]] (Externalisierung mentaler Modelle) und [[direct-manipulation-lernumgebungen]] (Continuous Representation).

Gleichzeitig soll der Skill **themen-generisch** bleiben: DSGVO, REST APIs, Spring Boot, React, Angular, Java Arrays, Python, UML, Testing, Sortier-Algorithmen — alle sollen gleich gut unterstützt werden. Ein SQL-spezifischer Ausbau (etwa `sql.js`) ist daher der falsche Abstraktionsgrad.

## 2. Zielbild

v2 fügt eine **Interaktionsschicht** hinzu, die vier kognitive Moves gleichwertig unterstützt:

- **(A) Manipulation** — Schüler verändert Parameter/Code, sieht Wirkung live (Direct Manipulation)
- **(B) Prediction** — Vorhersage vor Auflösung, deckt Misconceptions auf (POE/PRIMM)
- **(C) Trace / Sichtbarmachung** — abstrakte Zustandsübergänge werden visuell (Notional Machines)
- **(D) Contrast** — zwei Varianten nebeneinander, Schüler benennt Unterschied selbst (Contrasting Cases)

Die Schicht ist **fach-neutral** aufgebaut — sie organisiert sich nach kognitivem Move, nicht nach Fachgebiet. Ein Mapping-Cheat-Sheet hilft beim LLM-seitigen Zuordnen von Thema zu Move und Rendering-Technik.

**Explizit nicht im Scope v2:**
- Sandboxed Live-Execution (Pyodide, sql.js, skulpt) — bleibt v3, falls überhaupt nötig
- KI-gestützte Live-Interaktionen in der Präsentation
- Clicker-Integration / Live-Polling
- Advance Organizer als dritter Purpose (bleibt v2 des Haupt-Skills, separate Spec)

## 3. Architektur-Entscheidungen

### 3.1 Tech-Stack: Stufe 2 (Vanilla + Mermaid + CodeMirror)

Keine Sandbox-Execution. Zwei externe Libraries als lokal gebündelte Vendor-Assets:

- **Mermaid.js** — für alle Diagramme: UML (Klassen, Sequenz, State), Flowcharts (DSGVO-Entscheidungsbäume, Testing-Strategien), ER-Diagramme, Architektur-Diagramme (Spring Boot Layer, REST-Request-Flow), Gitgraph.
- **CodeMirror 6** — für alle Code-Darstellungen: Python, Java, JavaScript, SQL, YAML, HTTP, HTML/CSS. Read-only Highlighting Standard; editierbar als Opt-in pro Slide (für Manipulation-Primitive).

Beide Libraries sind offline-robust, liegen in `template/vendor/` analog zu Reveal.js. Keine Execution, nur Darstellung/Edit.

**Begründung:** Deckt ~80% der Themenfamilien ohne Execution-Komplexität. Für Spring Boot, REST, DSGVO etc. hilft Execution ohnehin nicht — dort zählt *Visualisierung* von Request/Response/Flow, nicht echte Ausführung.

### 3.2 Drei-Schicht-Architektur der Primitive-Bibliothek

Statt einer starren Liste von N Primitives (v1) organisiert sich v2 in drei klar abgegrenzten Schichten:

#### Schicht 1 — Verfassung (hart, fach-neutral, immer gültig)

Regeln, die **jede** Slide einhalten muss — unabhängig vom Inhalt. Diese Schicht ist **nicht verhandelbar** und wird in Phase 4 QA automatisch geprüft.

- **Mayer Coherence:** max. 1 Kernaussage pro Slide, keine Seductive Details (dekorative Animationen, Fun Facts ohne Lernfunktion)
- **Mayer Redundancy:** kein Bildschirmtext parallel zu Narration/Speaker-Notes — Narration *oder* Text, nicht beides
- **Mayer Spatial Contiguity:** Code und zugehörige Erklärung räumlich integriert (inline, Callouts, Pfeile) — nicht in getrennten Blöcken
- **Mayer Signaling:** Kernbegriffe hervorgehoben (Fettung, Farbe, Callout)
- **Speaker Notes Pflicht:** Jede `<section>` enthält `<aside class="notes">` mit Moderation (direkte Rede) + Didaktik-Begründung (1 Satz)
- **Design-Tokens:** Typografie, Farben, Abstände aus `template/css/design-tokens.css` — keine Inline-Styles
- **Accessibility:** Kontrast AA, Tastaturbedienbarkeit, Screenreader-taugliche Labels bei interaktiven Elementen
- **Fehlerkultur-Disclaimer** in generierter README (bereits v1)
- **Bullet-Limit:** keine Liste > 5 Items

Speicherort: `references/verfassung.md` — maschinenlesbare Rubric, die QA-Phase konsumiert.

#### Schicht 2 — Prototypen (weich, fach-neutral, dokumentiert)

Kuratierte HTML-Patterns für häufige kognitive Moves. Organisiert nach Move, nicht nach Fach. Jeder Prototyp hat:

- HTML-Template mit Platzhaltern `{{NAME}}`
- CSS-Klassen, die an `template/css/` gekoppelt sind
- Speaker-Notes-Muster
- Didaktik-Begründung + Evidenz-Anker (Wiki-Artikel im didaktik-repo)
- Boundary Conditions (wann *nicht* einsetzen)

Prototypen sind **erste Wahl** — Eigenentwurf erfordert explizite Begründung in Phase 2 (siehe 3.4).

**Prototypen-Katalog v2:**

| Move | Prototyp | Ersetzt/Erweitert v1 | Kern-Idee |
|---|---|---|---|
| Admin | `TitleSlide` | v1 unverändert | Kopf der Präsentation |
| Aktivierung | `ArbeitsauftragSlide` | v1 unverändert | Schüler-Aufgabe mit Timer |
| Sicherung | `MerksatzSlide` | v1 unverändert | Kernsatz in Fachsprache + Sprachgerüst |
| Classify | `ConcepTestSlide` | v1 unverändert | Multiple-Choice mit Misconception-Distraktoren |
| Generisch | `ContentSlide` | v1 unverändert | Fallback-Container |
| **Predict** | `PredictSlide` | **neu** | Stimulus → Prognose-Feld → Fragment-Auflösung |
| **Contrast** | `ContrastSlide` | **neu** | Zwei Varianten (Code/Diagramm/Fall) nebeneinander, Strukturdimension benannt |
| **Trace** | `TraceSlide` | **neu** | Schrittweise Enthüllung mit Subgoal-Labels, pro Schritt ein Zustands-Visual |
| **Reveal** | `NotionalMachineSlide` | **neu** | Oberfläche + versteckter Zustand, Zustand wird per Fragment sichtbar |
| **Manipulate** | `ProbeSlide` | **neu** | Editierbares Element (CodeMirror-Feld, Mermaid-Diagramm, Slider) + Wirkungs-Ansicht |

Speicherort: `references/prototypen.md` (Detail-Templates), zusätzlich `references/topic-primitive-map.md` (Cheat-Sheet Thema → Move → Rendering).

#### Schicht 3 — Rendering-Werkzeuge (flexibel einsetzbar, ohne Didaktik-Semantik)

**Technische Bausteine ohne didaktische Semantik.** In jedem Prototyp oder Eigenentwurf einsetzbar. Haben keine eigene Slide-Struktur, keine Speaker-Notes-Regeln — sie sind *wie* Buttons oder Eingabefelder.

- **Mermaid-Renderer** (`<div class="mermaid">…</div>`) — rendert Flowcharts, Sequenz-, Klassen-, State-, ER-Diagramme
- **CodeMirror-Wrapper** (`<div class="codeblock" data-lang="…" data-editable="…">…</div>`) — Syntax-Highlighting, optional editierbar
- **Step-Reveal-Utility** — kapselt Reveal-Fragments mit Highlight-Animationen
- **Grid/Callout/Highlight-CSS-Utilities** — Layout-Bausteine (`grid-2`, `callout`, `highlight-step`)

Speicherort: `template/vendor/` (JS-Bundles), `template/css/utilities.css`, `references/tools.md` (Dokumentation).

**Abgrenzung Prototypen ↔ Tools:** Wenn ein neues Element didaktische Semantik trägt (etwa "Quiz-Widget kennt das Peer-Instruction-Pattern"), wird es Prototyp. Wenn es ein neutraler technischer Baustein ist ("Diagramm-Renderer", "Code-Feld"), wird es Tool.

### 3.3 Einstiegs-Palette (Phasenmodell-Änderung)

Phase 1 in `specs/phasenmodell-sicherung.md` und `specs/phasenmodell-consolidation.md` wird von einer Einstiegsvariante auf **fünf gleichwertige Varianten mit Entscheidungshilfe** erweitert. Phase 0 Debrief bekommt eine neue Frage, die den passenden Einstiegstyp auswählt.

**Fünf Einstiegs-Varianten:**

| Variante | Primitive | Evidenz | Passt bei |
|---|---|---|---|
| **POE** (Predict-Observe-Explain) | `PredictSlide` | [[poe-methode]], [[misconception-analyse]] | Konzept mit überraschendem Verhalten |
| **PRIMM-Predict** | `PredictSlide` + `codeblock` | [[primm-methode]] | Alle Code-Themen |
| **ConcepTest direkt** | `ConcepTestSlide` | [[peer-instruction]] | Misconception-lastige Themen |
| **Contrasting Cases + TPS** | `ContrastSlide` + `ArbeitsauftragSlide` | [[contrasting-cases]], [[aktivierung-lehrervortrag]] | Schwellenkonzepte, zwei nahe Varianten |
| **Strukturiertes Retrieval** | `ArbeitsauftragSlide` mit Leitfrage | [[retrieval-practice]] | Fakten-/Regel-Sicherung |

Die bisherige Freitext-Recall-Variante bleibt unter "Strukturiertes Retrieval" erhalten — bekommt aber eine Leitfrage, damit sie nicht leer ins Blaue fragt.

**Phase-0-Debrief-Erweiterung:** Vierte Pflichtfrage "Welcher Einstiegstyp passt zum Inhalt?" mit den fünf Varianten als Auswahl. LLM schlägt Default vor (basierend auf Purpose + Topic), Lehrer kann überstimmen.

### 3.4 Begründungs-Pflicht für Eigenentwurf (Phase 2)

Der LLM darf in Phase 2 (Outline) von einem Prototyp abweichen und eine eigene Slide-Struktur entwerfen — **muss dabei aber explizit begründen**, welcher Prototyp warum nicht passt. Begründung wird in die Outline-Tabelle als eigene Spalte "Prototyp-Abweichung" geschrieben.

**Beispiel Outline-Zeile:**
```
| 4 | Consolidation Phase 2 | DSGVO-Rechtsgrundlagen-Mapping | Eigenentwurf: Drag-to-Category über Mermaid-Nodes. ClassifySlide+ConcepTestSlide decken die räumliche Zuordnungs-Struktur nicht ab. | … |
```

Ohne Begründung wird im Outline-Review (Lehrer-Gate) abgelehnt.

### 3.5 Innovationsgrad als Phase-0-Parameter

Phase 0 bekommt eine weitere Frage: **"Wie experimentell darf die Präsentation sein?"**

- **(a) Konservativ** — nur bewährte Prototypen, keine Eigenentwürfe. Vorhersagbar, schnell.
- **(b) Gemischt** — Prototypen dominieren, 1–2 Slides dürfen innovative Eigenentwürfe sein. **Default.**
- **(c) Experimentell** — maximale Freiheit pro Folie, LLM darf pro Slide entscheiden.

Der Wert landet in `debrief.md` und ist in Phase 2 Outline-Gate sichtbar. Bei (a) werden Eigenentwürfe komplett unterdrückt; bei (c) entfällt die Begründungs-Pflicht aus 3.4.

### 3.6 QA-Erweiterung (Phase 4)

`prompts/phase-4-qa.md` wird um Mayer-Checks erweitert. Die Rubric (Schicht 1) wird maschinell durchgeprüft:

- **Kein Redundancy:** Wenn `<section>` sichtbaren Fließtext *und* Speaker Notes mit direkter Rede enthält, die denselben Inhalt doppeln — Violation.
- **Kein Split-Attention:** Wenn ein `<pre><code>` ohne inline-Kommentar, Callout oder Pfeil auf separater Erklärung basiert — Violation.
- **Kein Seductive Detail:** Nicht automatisch prüfbar, in Kramer-Mini-Review als Fokus-Punkt verankert.
- **Visualisierungs-Pflicht:** Bei zustandsbehaftetem Inhalt (siehe Topic-Familien-Klassifikation in Phase 1, Abschnitt 3.8) mindestens ein `TraceSlide` / `NotionalMachineSlide` / `ContrastSlide` mit Mermaid oder CodeMirror. Reine Textwüste → Violation.
- **Bullet-Limit:** > 5 `<li>` in einer Liste → Violation.

Violations triggern eine Fix-Runde wie in v1. Neu: Mayer-Violations werden zusätzlich an Kramer-Review weitergereicht mit Hinweis "Mayer-Check failed: …".

### 3.8 Topic-Familien-Klassifikation in Phase 1

Phase 1 (Kontext verstehen) erhält einen neuen Schritt: den **Topic in eine von sechs Familien klassifizieren.** Die Klassifikation landet in `context.md` als Feld `topic_family` und wird von Phase 2 (Primitive-Auswahl) und Phase 4 (Visualisierungs-Pflicht) gelesen.

| Familie | Beispiele | Default-Rendering |
|---|---|---|
| **code** | Python, Java, SQL, JavaScript, HTML/CSS | CodeMirror (read-only oder edit) |
| **diagramm** | UML (Klassen/Sequenz/State), ER | Mermaid |
| **flow** | REST Request/Response, Spring Boot Layer, CI/CD-Pipeline, DSGVO-Datenfluss | Mermaid (flowchart / sequenceDiagram) |
| **policy** | DSGVO-Rechtsgrundlagen, Testing-Strategie, Architektur-Entscheidungen | ConcepTestSlide + ContrastSlide, optional Mermaid Decision-Tree |
| **algorithmus** | Sortier, Array-Operationen, Rekursion | TraceSlide mit CodeMirror + zusätzliches Zustands-Visual |
| **konzept** | Abstrakte Begriffe ohne zustandsbehaftete Repräsentation (Ethik, Soft-Skills-Modelle) | ContentSlide, ConcepTestSlide — Visualisierungs-Pflicht entfällt |

Die Klassifikation ist nicht exklusiv — ein Thema kann mehreren Familien angehören (z.B. SQL ist *code* + *flow* bei Joins). Dann zählt die primäre Familie für die Pflicht-Regel; sekundäre Familien werden als Decision-Hints für Phase 2 genutzt.

Die Klassifikation ist **LLM-Aufgabe in Phase 1**, mit Lehrer-Bestätigung im Debrief-Gate. Dokumentiert in `references/topic-primitive-map.md`.

### 3.9 Test-Set für Regression

Neues Verzeichnis `tests/` im Skill-Repo mit 8 Beispiel-Topics — je zwei pro Topic-Familie:

| Familie | Topic | Erwarteter Primitive-Mix |
|---|---|---|
| Code | Python List Comprehensions | PredictSlide, TraceSlide, MerksatzSlide |
| Code | React useState Hook | NotionalMachineSlide, PredictSlide |
| Diagramm | UML Klassenbeziehungen (Assoziation/Aggregation/Komposition) | ContrastSlide, ConcepTestSlide |
| Diagramm | REST Request-Response-Flow | TraceSlide (Mermaid Sequenz), NotionalMachineSlide |
| Policy | DSGVO Rechtsgrundlagen Art. 6 Abs. 1 | ConcepTestSlide, ContrastSlide |
| Policy | Testing-Strategie-Pyramide | ContrastSlide, TraceSlide |
| Algorithmus | Bubble Sort Schritte | TraceSlide (CodeMirror + SVG-Bars), PredictSlide |
| Algorithmus | Java Array Zweizeiger-Verfahren | TraceSlide, ProbeSlide |

Für jedes Topic liegt eine "goldene" Outline (manuell kuratiert) als Referenz vor. Bei Skill-Änderungen läuft der Skill über alle 8 Topics, der Diff gegen die goldenen Outlines wird geprüft. Kein Unit-Test-Framework — Review-Artefakt.

Speicherort: `tests/fixtures/{topic-slug}/expected-outline.md` + `tests/README.md`.

## 4. Änderungen an bestehenden Dateien

| Datei | Änderung |
|---|---|
| `SKILL.md` | Phasen-Orchestrierung unverändert; Erwähnung der drei Schichten + Verweis auf neue Referenz-Dateien. Kernprinzipien-Index um Punkt "Schicht-1-Verfassung ist nicht verhandelbar" ergänzt. |
| `prompts/phase-0-debrief.md` | Zwei neue Pflichtfragen: Einstiegstyp, Innovationsgrad. |
| `prompts/phase-1-context.md` | Topic-Familien-Klassifikation als neuer Schritt (siehe 3.8); Feld `topic_family` in `context.md`-Schema. |
| `prompts/phase-2-outline.md` | Outline-Tabelle erhält Spalte "Prototyp-Abweichung (Begründung)"; Entscheidungshilfe "Welcher Move passt?" ergänzt. |
| `prompts/phase-3-slides.md` | Verweis auf neue Prototypen-Referenz + Tools-Referenz. Hinweis: Eigenentwurf nur bei Outline-Begründung. |
| `prompts/phase-4-qa.md` | Rubric-Check um Mayer-Regeln erweitert (siehe 3.6). |
| `prompts/kramer-mini-review.md` | Fokus "Seductive Detail?" ergänzt. |
| `specs/phasenmodell-sicherung.md` | Phase 1 auf Fünf-Varianten-Palette umgestellt. |
| `specs/phasenmodell-consolidation.md` | Phase 1 auf Fünf-Varianten-Palette umgestellt. |
| `references/slide-primitives.md` | Ersetzt durch `references/verfassung.md` + `references/prototypen.md` + `references/tools.md` + `references/topic-primitive-map.md`. Alte Datei bleibt als Stub mit Weiterleitung. |
| `template/index.html` | Mermaid + CodeMirror Vendor-Assets eingebunden. |
| `template/vendor/mermaid/` | **neu** |
| `template/vendor/codemirror/` | **neu** |
| `template/css/tokens.css` | Design-Tokens konsolidiert (Typo, Farben, Abstände). Falls nicht bereits vorhanden. |
| `template/css/utilities.css` | **neu** — Grid, Callout, Highlight-Step |
| `template/js/primitives.js` | Erweitert um Mermaid-Init, CodeMirror-Init, Step-Reveal-Handler. |
| `tests/` | **neu** — 8 Fixture-Topics mit goldenen Outlines. |

## 5. Offene Fragen / Risiken

- **Vendor-Bundle-Größe:** Mermaid (~800 KB min) + CodeMirror 6 (~200 KB min) erhöhen die Asset-Größe gegenüber v1 deutlich. Für Offline-Nutzung akzeptabel, für versendete Präsentationen prüfen. Optional: `template/vendor/README.md` erklärt Asset-Größen.
- **Lernkurve LLM:** Drei Schichten + Begründungs-Pflicht + Innovationsgrad + Test-Set sind viel. Risiko: LLM optimiert oberflächlich gegen die Rubric statt gegen den didaktischen Kern. Mitigation: Prototypen-Beispiele müssen "fühlbar gut" sein, nicht nur formal korrekt.
- **Eigenentwurf-Drift:** Auch mit Begründungs-Pflicht kann freie Komposition schlechte HTML-Qualität erzeugen. Mitigation: QA-Rubric ist die Firewall; bei Verletzung Fix-Runde + Kramer-Review.
- **Test-Set-Wartung:** 8 goldene Outlines veralten, wenn Prototypen wachsen. Mitigation: bei neuem Prototyp ein neues Topic-Fixture hinzufügen, altes updaten.
- **Modus-B-Kopplung:** Modus B (Aufsatz auf Lernsituation-Projekt) liest Misconceptions aus LS-Kohärenz-Spec. v2 ändert das nicht, aber neue Primitives (Predict, Contrast) könnten reichhaltigere LS-Daten brauchen. Prüfen, ob `specs/integration-lernsituation.md` erweitert werden muss.

## 6. Evidenz-Anker im didaktik-repo

Die Architektur-Entscheidungen stützen sich auf folgende Artikel:

- [[multimedia-gestaltungsprinzipien]] — Mayer's Prinzipien (Verfassung Schicht 1)
- [[cognitive-load-theory]] — Element-Interaktivität, Isolated Elements
- [[retrieval-practice]] — Testing Effect (Einstiegsvariante 5)
- [[poe-methode]] — Predict-Observe-Explain (Einstiegsvariante 1 + PredictSlide)
- [[primm-methode]] — PRIMM-Predict (Einstiegsvariante 2)
- [[peer-instruction]] — ConcepTest (Einstiegsvariante 3)
- [[contrasting-cases]] — Contrast-Move (ContrastSlide + Einstiegsvariante 4)
- [[notional-machines]] — Externalisierung mentaler Modelle (NotionalMachineSlide)
- [[direct-manipulation-lernumgebungen]] — Continuous Representation (ProbeSlide)
- [[explorable-explanations-im-unterricht]] — Grenzen und Chancen (ProbeSlide)
- [[worked-examples]] + [[subgoal-labeling]] — TraceSlide mit Subgoal-Labels
- [[misconception-analyse]] — Distraktoren-Begründung
- [[aktivierung-lehrervortrag]] — Pause Procedure, TPS
- [[direct-instruction-rosenshine]] — Rosenshine P1/P6/P10 (Einstieg, CFU, Review)
- [[unterrichtsphasen-artikulation]] — Sicherungsphase, Meyer
- [[sprachsensibler-it-unterricht]] — Sprachgerüst (MerksatzSlide unverändert)

## 7. Erfolgs-Kriterien

v2 ist erfolgreich, wenn:

1. Eine Präsentation zu einem Code-Thema (Python, Java, SQL) enthält mindestens einen editierbaren oder step-visualisierten Code-Block (CodeMirror + Trace).
2. Eine Präsentation zu einem Architektur-/Policy-Thema (REST, DSGVO, UML) enthält mindestens ein Mermaid-Diagramm statt Bullet-Listen.
3. Jede Präsentation hat einen Einstieg, der über Freitext-Recall hinausgeht (POE, PRIMM-Predict, ConcepTest, Contrasting Cases *oder* strukturiertes Retrieval mit Leitfrage).
4. QA-Phase meldet keine Mayer-Violations (Redundancy, Split-Attention) in der Endversion.
5. Test-Set mit 8 Topics produziert Outlines, die beim manuellen Vergleich gegen goldene Referenzen als "didaktisch gleichwertig oder besser" bewertet werden.
6. Lehrer (Bernd) kann eine Präsentation in ≤25 Min Ende-zu-Ende generieren — also maximal 5 Min mehr als v1.

## 8. Nicht-Ziele

- v2 baut **keine** generische Explorable-Explanation-Engine (explorable-explanations-im-unterricht als Inspiration, nicht als Ziel).
- v2 ersetzt **nicht** den Lernsituation-Skill und duplicated auch nichts daraus.
- v2 macht die Präsentation **nicht** zum vollständigen Lernmedium — sie bleibt Lehrervortrag-Unterstützung. Echte Übung/Exploration findet außerhalb statt.
- v2 optimiert **nicht** die Asset-Größe für Mobile — Desktop-Beamer-Kontext ist primär.
