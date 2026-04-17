# skill-praesentation — Design-Spec

**Datum:** 2026-04-17
**Status:** Entwurf, wartet auf Review
**Autor:** Bernd Heidemann (mit Claude)

## 1. Zweck und Scope

Der Skill generiert didaktisch begründete HTML-Präsentationen für Lehrervortrag in der IT-Berufsschule (FIAE/FIDP). Er unterstützt zwei Purposes:

- **Consolidation** nach einer Lernsituation: Schüler haben eigene Lösungen produziert; die Präsentation ordnet ein, sichert, deckt Misconceptions auf, signalisiert Transfer.
- **Sicherung/Recap** zu Stundenbeginn: kurze Wiederholung der Vorstunde, evidenzbasiert (Retrieval vor Folie), mit Überleitung.

**Explizit nicht im Scope v1:** Advance Organizer für neue Einheiten, reine Prüfungsvorbereitung, Transfer-Präsentationen. Diese können v2 werden, wenn der MVP funktioniert.

**Didaktische Leitentscheidungen:**

- Lehrervortrag ist schwach bei reinem Recap, stark bei Consolidation nach Productive Failure (Kapur), Sicherung (Meyer), Misconception-Intervention und Expert Modeling. Der Skill bildet nur die starken Anlässe ab.
- Jede Präsentation startet mit **Schüler-Aktivität vor Folie** (Retrieval, Murmelphase, TPS). Folien sind Reaktion auf aktiven Abruf, nie Ersatz.
- Fehlerkultur ist didaktische Voraussetzung: ohne Psychological Safety funktioniert das Sichtbarmachen von Schüler-Ansätzen nicht. Der Skill warnt davor in der README.

**Evidenzbasis:** Rosenshine (2012) P1–P10, Mayer Multimedia-Prinzipien, Freeman et al. (2014) Active Learning Meta-Analyse, Ruhl et al. (1987) Pause Procedure, Hattie Teacher Clarity d ≈ 0,75 — dokumentiert in den Artikeln `direct-instruction-rosenshine`, `multimedia-gestaltungsprinzipien`, `aktivierung-lehrervortrag`, `unterrichtsphasen-artikulation` im didaktik-repo.

## 2. Architektur-Entscheidungen

### 2.1 Modus (Integration mit Lernsituation-Skill): Hybrid

- **Modus A (Standalone):** Input ist Thema + Purpose. Skill fragt Lernfeld, Lernziele, Misconceptions ab.
- **Modus B (Aufsatz):** Input ist Pfad zu einem mit `skill-lernsituation` gebauten Projekt. Skill liest `specs/kohaerenz.md`, Misconception-Mapping, Begriffs-Chronologie, Lernziele aus dem LS-Projekt.

Modus-Erkennung: Wenn erstes Argument ein existierendes Verzeichnis mit `src/` und `specs/kohaerenz.md` ist → Modus B. Sonst Modus A.

Haupt-Anwendungsfall ist Modus B (Consolidation nach Lernsituation). Modus A ist billig mitgenommen.

### 2.2 Stack: Reveal.js mit Tailwind-Design-Tokens

- **Reveal.js** als Präsentations-Engine: Keyboard-Nav, Presenter-View mit Speaker Notes, Fragments, PDF-Export (`?print-pdf`), Fullscreen, Remote-Control — alles native.
- **Tailwind CSS** mit den Design-Tokens aus `skill-lernsituation/template` (gleiche Farben, Typografie, Abstände → visuelle Konsistenz mit Lernsituationen, die daneben laufen).
- **Vanilla JavaScript** für interaktive Widgets (Timer, ConcepTest-Reveal). Keine React-Dependency — hält Output klein und DSGVO-tauglich (client-only, einzelne `index.html`).
- Optional: React-Islands via Vite-Build, falls komplexe Widgets später nötig. Für MVP nicht erforderlich.

### 2.3 Ort im Dateisystem: Modul im Lernsituation-Skill

Der Präsentations-Skill lebt als Unterordner im bestehenden `skill-lernsituation`-Repo:

```
skill-lernsituation/
├─ SKILL.md                          (LS-Trigger)
├─ prompts/                          (LS-spezifisch)
├─ references/                       (GEMEINSAM — didaktische-grundlagen, sprachsensibel, design-system)
├─ specs/                            (LS-spezifisch)
├─ template/                         (LS Vite+React-Projekt)
└─ presentation/                     (NEU)
   ├─ SKILL.md                       (Präsentations-Trigger, eigene Skill-Definition)
   ├─ prompts/
   │  ├─ subagent-slide-batch.md
   │  └─ kramer-mini-review.md
   ├─ specs/
   │  ├─ phasenmodell-consolidation.md
   │  ├─ phasenmodell-sicherung.md
   │  └─ integration-lernsituation.md
   ├─ references/
   │  ├─ slide-primitives.md         (HTML-Snippets für die 5 Typen)
   │  └─ speaker-notes-muster.md
   └─ template/
      ├─ index.html                  (reveal.js-Skelett)
      ├─ css/design-tokens.css       (aus ../../references/design-system.md)
      └─ js/primitives.js            (Timer, ConcepTest-Reveal, PresenterNotes-Enhancements)
```

Gemeinsame `references/` vermeiden Duplikation (`didaktische-grundlagen.md`, `sprachsensibel.md`, `design-system.md` werden von beiden genutzt). Die Trigger-Beschreibungen der beiden `SKILL.md` müssen so formuliert sein, dass "Lernsituation" klar zu LS und "Präsentation/Sicherung/Consolidation" klar zum Präsentations-Skill führt.

## 3. Phasenmodelle

### 3.1 Consolidation (15 min, Hauptfall)

| # | Phase                                  | Dauer    | Slide-Primitives                          | Didaktische Basis                                                    |
|---|----------------------------------------|----------|-------------------------------------------|----------------------------------------------------------------------|
| 1 | Retrieval + Schüler-Versuche sammeln   | 3 min    | ArbeitsauftragSlide (Timer)               | retrieval-practice, aktivierung-lehrervortrag, rosenshine P1         |
| 2 | Einordnung via Schüler-/Referenzlösung | 4–6 min  | ContentSlide mit Code/Worked Example + Subgoal-Labels | misconception-analyse (Erroneous Examples), worked-examples, subgoal-labeling, rosenshine P4 (reflexives Modeling) |
| 3 | Sicherung (Merksatz mit Sprachgerüst)  | 3–4 min  | MerksatzSlide (Drei-Spalten DE/EN/Alltag) | unterrichtsphasen-artikulation, sprachsensibler-it-unterricht        |
| 4 | Misconception-Check                    | 2 min    | ConcepTestSlide                           | peer-instruction, misconception-analyse, rosenshine P6               |
| 5 | Transfer-Signal                        | 1–2 min  | ContentSlide, optional Transfer-Arbeitsauftrag als Follow-up | unterrichtsphasen-artikulation, handlungsorientierter-unterricht (ehrlich als Signal markiert) |

**Ablauf-Invarianten:**
- Phase 1 startet _ohne Folieninhalt_ mit Arbeitsauftrag + Timer. Lehrer sammelt Antworten an Tafel/Flipchart. _Dann_ erst Phase 2.
- Phase 2 nutzt die Schüler-Versuche aus Phase 1 als Anker. Deshalb ist diese Phase vom Lehrer-Debrief abhängig (siehe Phase 0 unten).
- Phase 5 ist explizit nur ein Signal; echter Transfer wird als eigene Aufgabe für später markiert.

### 3.2 Sicherung/Recap zu Stundenbeginn (10 min)

| # | Phase                        | Dauer    | Slide-Primitives                          | Didaktische Basis                |
|---|------------------------------|----------|-------------------------------------------|-----------------------------------|
| 1 | Retrieval-Warmup             | 3 min    | ArbeitsauftragSlide (Timer), dann ConcepTestSlide | rosenshine P1, retrieval-practice |
| 2 | Kernmerksätze visuell        | 3–4 min  | MerksatzSlide ×2–3                        | unterrichtsphasen-artikulation (Sicherungsrückruf) |
| 3 | Misconception-Check          | 2 min    | ConcepTestSlide                           | rosenshine P6                    |
| 4 | Brücke zum heutigen Thema    | 1 min    | ContentSlide                              | Überleitung                      |

## 4. Slide-Primitives (MVP: 5)

1. **TitleSlide** — Thema, Lernfeld, Zweck, Klasse, Datum. Minimal, klar lesbar.
2. **ArbeitsauftragSlide** — Schüler-facing, großer Aufgabentext, **Timer-Overlay** (z.B. "02:00"). Optional Sozialform-Icon (Einzel/Partner/Gruppe).
3. **MerksatzSlide** — das digitale Tafelbild. Ein Kernsatz in Fachsprache, visuell stark abgesetzt (großer Text, farbiger Hintergrund). Festes Drei-Spalten-Layout für Sprachgerüst:
   ```
   | Fachbegriff (DE) | Code-Keyword (EN) | Erklärung (Alltag) |
   ```
   Optional pro Slide zeigbar über Fragments.
4. **ConcepTestSlide** — Frage + 4 Antwortoptionen als Buchstaben. Distraktoren _müssen_ benannte Misconceptions kodieren. Auflösung und Erklärung als Fragments.
5. **ContentSlide** — flexibler Generaltyp für Einordnung, Worked Example, Transfer, Section-Divider. Enthält optional Code-Block mit Subgoal-Labels als Kommentare.

Optional ab v2: ContrastingCasesSlide (symmetrischer Vergleich Fall A ↔ Fall B), FehlerkulturSlide (Würdigung produktiven Ringens).

**Jede Slide hat Speaker Notes** (reveal.js-native) mit zwei Teilen:
1. Moderationsansage ("Sag jetzt: …")
2. Didaktische Begründung in einem Satz ("Dies ist die Sicherungsphase nach Meyer; die Formulierung steht bewusst in Fachsprache, weil …")

## 5. Workflow

### Phase 0: Lehrer-Debrief (PFLICHT, auch in Modus B)

Drei Fragen vor jeder Generierung:

1. **Was ist in der Stunde gut gelaufen?** (Bewahrt vor idealisierter Präsentation)
2. **Wo hat die Klasse gehakt? Welche Fehler sind aufgetreten?** (Steuert Phase 2 und ConcepTest-Distraktoren)
3. **Welche Schülerergebnisse willst du aufgreifen?** (Speisen Phase 1/2 konkret)

Zusatzfrage in Modus A: Erfahrungsstand der Klasse (Novizen / Gemischt / Fortgeschritten) → steuert Subgoal-Dichte (Expertise Reversal, `cognitive-load-theory`).

Output dieser Phase: strukturiertes Dokument `debrief.md` im Arbeitsverzeichnis.

### Phase 1: Kontext verstehen

**Modus B:** Lese aus Lernsituations-Projekt:
- `specs/kohaerenz.md` → Begriffs-Chronologie, Misconception-Status, Lernziele
- `src/types.ts` → CHAPTER_META (Titel, Ziele)
- optional `src/exercises/*.tsx` → welche Aufgabentypen die Schüler durchlaufen haben

**Modus A:** Interaktiv abfragen: Thema, Lernfeld (KMK-Nummer), Klasse, Lernziele (2–4), typische Misconceptions (2–5).

### Phase 2: Slide-Outline

Main-Agent produziert Outline als Tabelle vor HTML-Generierung. Eine Zeile pro Slide:

```
| # | Phase | Primitive | Titel | Kernaussage (1 Satz) | Misconception (falls ConcepTest) |
```

**Lehrer-Gate:** Outline wird dem Lehrer vorgelegt. Er kann korrigieren ("Mehr ConcepTest hier", "Transfer anders formulieren", "Slide X streichen"). Billiger als nach HTML-Generierung fixen.

### Phase 3: HTML generieren

Bei ≤12 Slides: Main-Agent direkt. Bei >12 Slides: Subagent-Batches à 5–7 Slides mit der Outline als Shared Context für Kohärenz.

Je Slide wird aus Primitive-Template und Outline-Zeile + Speaker Notes + ggf. Code/Grafik die `<section>` generiert.

### Phase 4: QA

**4a — Automatischer Rubric-Check (Agent):**
- Hat jeder ConcepTest einen Distraktor pro genannter Misconception?
- Hat jede Slide Speaker Notes?
- Sind alle Merksätze in Fachsprache (Drei-Spalten-Layout sichtbar)?
- Maximal ein Key-Point pro Slide (Mayer Segmenting)?
- Keine Bullet-Liste > 5 Items?

Output: Liste von Violations oder `PASS`.

**4b — Mini-Kramer-Review (Agent, 200 Wörter):**
Kramer-Persona prüft anhand 4er-Checkliste:
1. Aktivierung _vor_ Folie eingehalten?
2. Merksatz in Fachsprache + Sprachgerüst?
3. ConcepTest-Distraktoren kodieren Misconceptions aus dem Debrief?
4. Transfer-Impuls inhaltlich sinnvoll, nicht generisch?

Bei `FREIGABE` → fertig. Bei Findings → kleine Fix-Runde (derselbe Agent).

**Keine volle Persona-Review-Pipeline** wie im Lernsituation-Skill. Präsentationen sind linear, Lehrer-gesteuert; der Overhead lohnt nicht.

## 6. Output und Deployment

Einzelner Ordner `praesentation-<thema>-<datum>/` mit:

- `index.html` (reveal.js, alle Slides inline)
- `css/` und `js/` (Tailwind compiled, Primitives-JS)
- `debrief.md` (Phase-0-Input, zur Nachvollziehbarkeit)
- `outline.md` (Phase-2-Output, zur Iteration)
- `README.md` mit Warnungen ("Fehlerkultur-Voraussetzung", "Persona-reviewed, kein Echttest mit Klasse").

Öffnen per Doppelklick. `?showNotes=true` für Presenter-View, `?print-pdf` für PDF-Handout.

## 7. Eingangs-Contract (Benutzer-Sicht)

Aufruf (in Claude Code / Copilot CLI):

```
/praesentation [lernsituations-pfad] --purpose=consolidation
/praesentation --purpose=sicherung --topic="SQL JOINs" --lernfeld="LF5"
```

Interaktiv: Skill führt durch Phase 0 → 1 → 2 → Gate → 3 → 4.

Abbruch jederzeit mit `/abort`. Re-entry: Skill nutzt vorhandene `debrief.md` und `outline.md`, regeneriert nur HTML.

## 8. Offene Punkte und Risiken

- **Laufzeit:** Realistisch 15–20 min pro Durchlauf, nicht 5–10.
- **Token-Budget:** Lernsituations-Kohärenzdokumente können 4–6k Zeilen haben. Phase 1 muss komprimieren — vermutlich durch denselben Extraktions-Schritt wie Lernsituation-Skill Phase 2.
- **Qualität der Misconception-Distraktoren:** Hängt stark am Debrief. Wenn Lehrer keine Fehler benennt, bleiben ConcepTest-Distraktoren generisch. Akzeptabel für MVP.
- **Fachliche Korrektheit von Worked Examples und Merksätzen:** Keine automatische Prüfung. Verantwortung beim Lehrer. Der Skill markiert beides in Speaker Notes zur Gegenprüfung.
- **Skill-Trigger-Konflikt** zwischen Lernsituations- und Präsentations-Skill: muss in beiden `SKILL.md` sauber abgegrenzt werden. Test-Fall: "mach was zu SQL" darf _nicht_ beide triggern.
- **Echtdaten-Test fehlt:** Vor Schülereinsatz mindestens einmal mit einer realen Klasse durchlaufen und post-hoc bewerten.

## 9. Was explizit weggelassen wurde

- **Keine Persona-Review-Pipeline (Kramer+Tim+Mia)**: Overhead für Lehrer-Präsentationen nicht gerechtfertigt. Nur Mini-Kramer-Check.
- **Keine Mitte-Gate/End-Validation-Mehrstufigkeit**: linearer Workflow reicht.
- **Keine Clicker/Voting-Integration für ConcepTests**: Lehrer liest Frage, Schüler heben Karten/Finger oder rufen. Technik-frei. Optional v2.
- **Keine KI-gestützten Live-Interaktionen** in der Präsentation selbst: Folien sind statisch (plus Fragments und Timer). Das ist die Präsentations-Eigenart.
- **Kein Advance-Organizer-Purpose in v1**: Kommt v2, wenn MVP für Consolidation und Sicherung funktioniert.

## 10. Abhängigkeiten

- Bestehender Skill `skill-lernsituation` (github.com/berndheidemann/skill-lernsituation, privat) — liefert Referenzen und Template-Design-Tokens.
- Didaktik-Repo (`berndheidemann/didaktik-repo`) — liefert über SSH (`ssh heide-dev cat ~/projects/didaktik-repo/wiki/…`) die Artikel, die in Phase 2 des Skills gelesen werden.
- Reveal.js (MIT-License, self-hosted).
- Tailwind CSS.
