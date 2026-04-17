# skill-praesentation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Baue ein Modul `presentation/` im privaten Repo `berndheidemann/skill-lernsituation`, das reveal.js-HTML-Präsentationen für Lehrervortrag generiert (Consolidation und Sicherung). Modus B (Aufsatz auf gebaute Lernsituation) ist Hauptfall, Modus A (standalone) fallback.

**Architecture:** Modul innerhalb des bestehenden skill-lernsituation-Repos mit eigener SKILL.md-Trigger-Definition. Gemeinsame `references/` (didaktische-grundlagen, sprachsensibel, design-system). Reveal.js + Tailwind + Vanilla-JS-Primitives. 4-Phasen-Workflow (0 Debrief, 1 Kontext, 2 Outline mit Lehrer-Gate, 3 HTML-Generierung, 4 QA mit Mini-Kramer-Check).

**Tech Stack:** Reveal.js 5.x (MIT, self-hosted in `template/vendor/`), Tailwind CSS CLI (standalone binary oder via CDN Play), Vanilla JavaScript ES6+. Kein Build-Step für v1. Outputs sind statisches HTML + CSS + JS zum Doppelklick-Öffnen.

**Spec:** `docs/superpowers/specs/2026-04-17-skill-praesentation-design.md` im didaktik-repo.

**Arbeitsverzeichnis:** Alle Pfade relativ zum Root des `skill-lernsituation`-Repos. Plan geht davon aus, dass der Ausführende das Repo lokal geklont und in einem Worktree arbeitet.

---

## Task 0: Setup und Arbeitsverzeichnis

**Files:**
- Create: `presentation/` (Verzeichnis)

- [ ] **Step 0.1: Repo klonen oder Worktree anlegen**

Falls skill-lernsituation nicht lokal vorliegt:
```bash
git clone git@github.com:berndheidemann/skill-lernsituation.git ~/projects/skill-lernsituation
cd ~/projects/skill-lernsituation
```

Falls bereits vorhanden, Worktree für dieses Feature:
```bash
cd ~/projects/skill-lernsituation
git worktree add ../skill-lernsituation-presentation feat/presentation
cd ../skill-lernsituation-presentation
```

- [ ] **Step 0.2: Modul-Verzeichnisstruktur anlegen**

```bash
mkdir -p presentation/{prompts,specs,references,template/{css,js,vendor}}
touch presentation/.gitkeep
```

Erwartet: Leeres `presentation/` mit Unterordnern `prompts/`, `specs/`, `references/`, `template/css/`, `template/js/`, `template/vendor/`.

- [ ] **Step 0.3: Reveal.js vendoren**

```bash
cd presentation/template/vendor
curl -L -o reveal.js.zip https://github.com/hakimel/reveal.js/archive/refs/tags/5.1.0.zip
unzip reveal.js.zip
mv reveal.js-5.1.0 reveal.js
rm reveal.js.zip
# nur die benötigten Dateien behalten:
cd reveal.js && ls
# keep: dist/ plugin/ LICENSE
rm -rf css/ js/ test/ examples/ gulpfile.js package.json .github/ demo.html README.md CONTRIBUTING.md index.html
cd ../../../..
```

Erwartet: `presentation/template/vendor/reveal.js/dist/` und `plugin/` vorhanden, plus `LICENSE`.

- [ ] **Step 0.4: Commit**

```bash
git add presentation/
git commit -m "feat(presentation): scaffold module structure + vendor reveal.js 5.1.0"
```

---

## Task 1: Template — Reveal.js-Skelett

**Files:**
- Create: `presentation/template/index.html`
- Create: `presentation/template/css/design-tokens.css`
- Create: `presentation/template/css/praesentation.css`

- [ ] **Step 1.1: `template/index.html` schreiben**

Komplette Datei:

```html
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{TITLE}}</title>
  <link rel="stylesheet" href="vendor/reveal.js/dist/reset.css">
  <link rel="stylesheet" href="vendor/reveal.js/dist/reveal.css">
  <link rel="stylesheet" href="vendor/reveal.js/dist/theme/white.css" id="theme">
  <link rel="stylesheet" href="css/design-tokens.css">
  <link rel="stylesheet" href="css/praesentation.css">
</head>
<body>
  <div class="reveal">
    <div class="slides">
      <!-- SLIDES HIER -->
    </div>
  </div>
  <script src="vendor/reveal.js/dist/reveal.js"></script>
  <script src="vendor/reveal.js/plugin/notes/notes.js"></script>
  <script src="js/primitives.js"></script>
  <script>
    Reveal.initialize({
      hash: true,
      slideNumber: 'c/t',
      transition: 'fade',
      controls: true,
      progress: true,
      plugins: [RevealNotes],
      width: 1280,
      height: 720,
      margin: 0.08,
    });
    Presentation.init();
  </script>
</body>
</html>
```

- [ ] **Step 1.2: `template/css/design-tokens.css` schreiben**

```css
/* Design-Tokens — angelehnt an skill-lernsituation/references/design-system.md */
:root {
  --color-bg: #ffffff;
  --color-text: #1a1a1a;
  --color-accent: #0056b3;
  --color-merksatz-bg: #fff8e1;
  --color-merksatz-border: #f59e0b;
  --color-arbeitsauftrag-bg: #e0f2fe;
  --color-misconception: #dc2626;
  --color-muted: #6b7280;
  --font-body: 'Inter', system-ui, sans-serif;
  --font-mono: 'JetBrains Mono', 'Courier New', monospace;
  --space-xs: 0.25rem;
  --space-sm: 0.5rem;
  --space-md: 1rem;
  --space-lg: 2rem;
  --space-xl: 3rem;
  --radius: 0.5rem;
}

.reveal {
  font-family: var(--font-body);
  color: var(--color-text);
}
```

- [ ] **Step 1.3: `template/css/praesentation.css` schreiben**

```css
/* Primitive-Styling */
.slide-title { text-align: center; }
.slide-title h1 { font-size: 2.5em; margin-bottom: var(--space-md); }
.slide-title .meta { color: var(--color-muted); font-size: 0.6em; }

.slide-arbeitsauftrag {
  background: var(--color-arbeitsauftrag-bg);
  padding: var(--space-xl);
  border-radius: var(--radius);
}
.slide-arbeitsauftrag h2 { color: var(--color-accent); }
.slide-arbeitsauftrag .aufgabe { font-size: 1.5em; font-weight: 500; }
.slide-arbeitsauftrag .timer {
  font-family: var(--font-mono);
  font-size: 4em;
  color: var(--color-accent);
  text-align: center;
  margin-top: var(--space-lg);
}

.slide-merksatz {
  background: var(--color-merksatz-bg);
  border-left: 8px solid var(--color-merksatz-border);
  padding: var(--space-xl);
  border-radius: var(--radius);
}
.slide-merksatz .satz {
  font-size: 1.8em;
  font-weight: 600;
  line-height: 1.4;
}
.slide-merksatz .wortspeicher {
  display: grid;
  grid-template-columns: 1fr 1fr 2fr;
  gap: var(--space-md);
  margin-top: var(--space-lg);
  font-size: 0.7em;
}
.slide-merksatz .wortspeicher th,
.slide-merksatz .wortspeicher td {
  padding: var(--space-sm);
  border: 1px solid var(--color-muted);
}

.slide-conceptest .options {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: var(--space-md);
  margin-top: var(--space-lg);
}
.slide-conceptest .option {
  padding: var(--space-md);
  border: 2px solid var(--color-muted);
  border-radius: var(--radius);
  font-size: 1.1em;
}
.slide-conceptest .option.correct { border-color: #16a34a; background: #dcfce7; }
.slide-conceptest .option.misconception { border-color: var(--color-misconception); }

.slide-content code { font-family: var(--font-mono); }
.slide-content .subgoal-label {
  color: var(--color-accent);
  font-weight: 600;
  display: block;
  margin-top: var(--space-sm);
}
```

- [ ] **Step 1.4: Smoke-Test — Template öffnet im Browser**

```bash
cd presentation/template
python3 -m http.server 8080 &
```

Öffne `http://localhost:8080/` im Browser. Erwartet: leere Reveal.js-Präsentation (ein leerer weißer Slide). Keine Console-Errors. `kill %1` zum Stoppen.

- [ ] **Step 1.5: Commit**

```bash
git add presentation/template/index.html presentation/template/css/
git commit -m "feat(presentation): add reveal.js template skeleton with design tokens"
```

---

## Task 2: Primitives-JavaScript

**Files:**
- Create: `presentation/template/js/primitives.js`

- [ ] **Step 2.1: `primitives.js` schreiben — Grundgerüst + Timer**

```javascript
/* eslint-env browser */
/* global Reveal */

const Presentation = {
  init() {
    this.initTimers();
    this.initConcepTests();
    this.initPresenterHelpers();
  },

  // --- Timer für Arbeitsauftrag-Slides ---
  initTimers() {
    Reveal.on('slidechanged', (event) => {
      const slide = event.currentSlide;
      const timerEl = slide.querySelector('.timer[data-duration]');
      if (!timerEl) return;

      const duration = parseInt(timerEl.dataset.duration, 10); // in Sekunden
      this.startTimer(timerEl, duration);
    });
  },

  startTimer(el, seconds) {
    const endTime = Date.now() + seconds * 1000;
    const tick = () => {
      const remaining = Math.max(0, Math.ceil((endTime - Date.now()) / 1000));
      const m = Math.floor(remaining / 60);
      const s = remaining % 60;
      el.textContent = `${m}:${s.toString().padStart(2, '0')}`;
      if (remaining > 0) {
        setTimeout(tick, 250);
      } else {
        el.classList.add('timer-done');
        el.textContent = '0:00';
      }
    };
    tick();
  },

  // --- ConcepTest — Auflösung als Fragment ---
  initConcepTests() {
    // reveal.js handhabt Fragments nativ — hier nur markieren
    // Wenn Lehrer 'Auflösung' drückt (Fragment-Reveal), zeige "correct"-Klasse
    // Das passiert via CSS auf .fragment.visible
  },

  // --- Presenter-Helfer ---
  initPresenterHelpers() {
    // Tastenkürzel 'T' für "Timer neu starten" auf aktueller Slide
    document.addEventListener('keydown', (e) => {
      if (e.key === 't' && !e.ctrlKey && !e.metaKey) {
        const slide = Reveal.getCurrentSlide();
        const timerEl = slide?.querySelector('.timer[data-duration]');
        if (timerEl) {
          const duration = parseInt(timerEl.dataset.duration, 10);
          this.startTimer(timerEl, duration);
        }
      }
    });
  },
};

window.Presentation = Presentation;
```

- [ ] **Step 2.2: Demo-Slide im Template einbauen für manuellen Test**

Füge in `template/index.html` zwischen `<!-- SLIDES HIER -->` temporär ein:

```html
<section class="slide-arbeitsauftrag">
  <h2>Testarbeitsauftrag</h2>
  <p class="aufgabe">Besprecht 30 Sekunden mit eurem Nachbarn: Was fällt euch zu SQL JOINs ein?</p>
  <div class="timer" data-duration="30">0:30</div>
</section>
```

- [ ] **Step 2.3: Smoke-Test — Timer läuft**

```bash
cd presentation/template
python3 -m http.server 8080 &
```

Im Browser öffnen, Slide anzeigen. Erwartet: Timer zählt von 0:30 auf 0:00 runter und bleibt dann auf 0:00. Taste "T" startet ihn neu.

`kill %1` zum Stoppen. Demo-Section aus `index.html` entfernen.

- [ ] **Step 2.4: Commit**

```bash
git add presentation/template/js/ presentation/template/index.html
git commit -m "feat(presentation): add timer + presenter-helper primitives JS"
```

---

## Task 3: Slide-Primitives-Dokumentation

**Files:**
- Create: `presentation/references/slide-primitives.md`

- [ ] **Step 3.1: `slide-primitives.md` anlegen mit Einleitung und TitleSlide**

```markdown
# Slide-Primitives

Fünf HTML-Muster für Reveal.js-`<section>`-Elemente. Jeder Primitive ist ein kopierfähiges Template mit Platzhaltern `{{NAME}}`.

## 1. TitleSlide

Kopf der Präsentation. Thema, Lernfeld, Zweck, Datum.

```html
<section class="slide-title">
  <h1>{{THEMA}}</h1>
  <p class="meta">{{LERNFELD}} · {{KLASSE}} · {{PURPOSE}} · {{DATUM}}</p>
  <aside class="notes">
    Moderation: "Willkommen. Heute ziehen wir die Fäden zusammen zum Thema {{THEMA}}."
    Didaktik: Ankerpunkt für die folgenden Phasen; orientiert die Klasse.
  </aside>
</section>
```
```

- [ ] **Step 3.2: Ergänze ArbeitsauftragSlide**

```markdown
## 2. ArbeitsauftragSlide

Schüler-facing, zwingt zu aktivem Tun. Immer mit Timer. Lehrer spricht den Auftrag, startet den Timer (passiert automatisch bei Slide-Anzeige).

```html
<section class="slide-arbeitsauftrag">
  <h2>{{AUFGABENTYP}}</h2>
  <p class="aufgabe">{{AUFGABE_TEXT}}</p>
  <div class="timer" data-duration="{{DURATION_SEC}}">0:00</div>
  <p class="sozialform">{{SOZIALFORM_ICON}} {{SOZIALFORM}}</p>
  <aside class="notes">
    Moderation: "{{MODERATION}}"
    Didaktik: Aktivierung vor Folien-Input (Rosenshine P1/P6, aktivierung-lehrervortrag).
    Sozialform: {{SOZIALFORM}} gewählt weil {{BEGRUENDUNG}}.
  </aside>
</section>
```

**Konventionen:**
- `DURATION_SEC` zwischen 30 (kurzer Abruf) und 300 (TPS mit Diskussion)
- `AUFGABENTYP`: "Murmelphase", "Think-Pair-Share", "Retrieval", "Schüler-Versuche sammeln"
- Timer startet automatisch beim Slide-Wechsel, via `js/primitives.js`
```

- [ ] **Step 3.3: Ergänze MerksatzSlide mit Sprachgerüst-Fragment**

```markdown
## 3. MerksatzSlide

Das digitale Tafelbild. Genau ein Kernsatz in Fachsprache. Drei-Spalten-Sprachgerüst optional als Fragment (nur bei Themen mit Code-Keyword sinnvoll).

```html
<section class="slide-merksatz">
  <h2>Merke</h2>
  <p class="satz">{{MERKSATZ_IN_FACHSPRACHE}}</p>
  <div class="wortspeicher fragment">
    <table>
      <thead>
        <tr><th>Fachbegriff (DE)</th><th>Code (EN)</th><th>Erklärung (Alltag)</th></tr>
      </thead>
      <tbody>
        <tr><td>{{BEGRIFF_DE}}</td><td><code>{{KEYWORD_EN}}</code></td><td>{{ERKLAERUNG}}</td></tr>
      </tbody>
    </table>
  </div>
  <aside class="notes">
    Moderation: "{{MODERATION_MERKSATZ}}"
    Didaktik: Sicherungsphase (Meyer 1987); Fachsprache + Sprachgerüst (sprachsensibler-it-unterricht).
  </aside>
</section>
```

**Sprachgerüst-Regeln:**
- Entfalle das `.wortspeicher`-div, wenn Thema keinen englischen Fachbegriff hat (z.B. "Vollständige Handlung")
- Bei Themen mit Code (SQL, Python): Sprachgerüst ist Pflicht
- Fragment-Reveal: Lehrer entscheidet, ob er das Gerüst zeigt (beim zweiten Drücken der Pfeiltaste)
```

- [ ] **Step 3.4: Ergänze ConcepTestSlide**

```markdown
## 4. ConcepTestSlide

Multiple-Choice-Frage mit 4 Optionen. Distraktoren _müssen_ die benannten Misconceptions aus Phase 0 Debrief oder aus dem LS-Misconception-Mapping kodieren. Auflösung via Fragments.

```html
<section class="slide-conceptest">
  <h2>ConcepTest</h2>
  <p class="frage">{{FRAGE}}</p>
  <div class="options">
    <div class="option" data-letter="A">A) {{OPTION_A}}</div>
    <div class="option fragment misconception" data-letter="B" data-misconception="{{MISCON_B_ID}}">B) {{OPTION_B}}</div>
    <div class="option fragment correct" data-letter="C">C) {{OPTION_C}}</div>
    <div class="option fragment misconception" data-letter="D" data-misconception="{{MISCON_D_ID}}">D) {{OPTION_D}}</div>
  </div>
  <aside class="notes">
    Moderation: "Entscheidet euch für A/B/C/D. Hebt die Hand."
    Richtige Antwort: {{RICHTIGE_LETTER}}
    Distraktoren: B = {{MISCON_B_TEXT}}, D = {{MISCON_D_TEXT}}
    Didaktik: rosenshine P6, peer-instruction, misconception-analyse.
  </aside>
</section>
```

**Regeln:**
- Genau 4 Optionen (1 richtig, 3 Distraktoren oder 2 Distraktoren + 1 richtig + 1 plausibel-falsch)
- Jeder Distraktor referenziert ein Misconception-Item (Mapping-ID aus Phase 1 Input)
- Auflösung als Fragment: Lehrer drückt Pfeil, die korrekten/falschen Klassen werden sichtbar
```

- [ ] **Step 3.5: Ergänze ContentSlide**

```markdown
## 5. ContentSlide

Flexibler Generaltyp: Einordnung, Worked Example, Transfer-Signal, SectionDivider. Mayer-konform: max. 1 Kernidee, keine Bullet-Liste > 5 Punkte.

```html
<section class="slide-content">
  <h2>{{UEBERSCHRIFT}}</h2>
  {{BODY_HTML}}
  <aside class="notes">
    Moderation: "{{MODERATION}}"
    Didaktik: {{DIDAKTIK_BEGRUENDUNG}}
  </aside>
</section>
```

**`BODY_HTML` darf enthalten:**
- `<p>`-Absätze (max. 2)
- Genau ein Bild oder SVG
- Bullet-Liste mit max. 5 Items
- Code-Block mit `<pre><code>`, inline Subgoal-Labels via `<span class="subgoal-label">// Teilziel: {{LABEL}}</span>`
- Contrasting Cases (Spaltenlayout `<div class="grid-2">`) — v2

**Nicht erlaubt:**
- Mehr als eine Kernaussage pro Slide
- Fließtext > 80 Wörter
- Bullet-Overload (> 5 Punkte)
- Reiner Screenshot ohne Erklärung
```

- [ ] **Step 3.6: Commit**

```bash
git add presentation/references/slide-primitives.md
git commit -m "docs(presentation): add slide-primitives reference"
```

---

## Task 4: Speaker-Notes-Muster

**Files:**
- Create: `presentation/references/speaker-notes-muster.md`

- [ ] **Step 4.1: Datei schreiben**

```markdown
# Speaker-Notes-Muster

Jeder Slide hat `<aside class="notes">` mit genau zwei Teilen:

## Teil 1 — Moderationsansage

Was der Lehrer _sagt_, in Anführungszeichen, direkte Rede. Startet meistens mit Signalwort:

- "Sag jetzt: …"
- "Frage an die Klasse: …"
- "Leite über: …"
- "Fasse zusammen: …"

**Länge:** 1–3 Sätze. Kein Didaktik-Fachjargon (Schüler hören das nicht, aber kurz halten für Presenter-View-Lesbarkeit).

**Beispiele:**

- ArbeitsauftragSlide: "Sag: 'Denkt 30 Sekunden für euch. Dann 1 Minute zu zweit. Los.' — Timer läuft automatisch."
- MerksatzSlide: "Lies den Satz vor. Frage: 'Wer kann das mit eigenen Worten nochmal sagen?' — Warte 5 Sekunden."
- ConcepTestSlide: "Sag: 'Handzeichen: Wer wählt A?' — Nicht selbst auflösen, bevor alle abgestimmt haben."

## Teil 2 — Didaktische Begründung

Ein Satz, warum diese Slide an dieser Stelle ist. Bezugsquelle aus Didaktik-Repo nennbar (als Wikilink-Style):

**Beispiele:**

- "Aktivierung vor Input ([aktivierung-lehrervortrag]); Timer erzwingt Commitment auf Antwort."
- "Sicherungsphase ([unterrichtsphasen-artikulation]); Fachsprache explizit, Sprachgerüst optional."
- "Check for Understanding ([direct-instruction-rosenshine] P6); Distraktoren kodieren Misconceptions aus Debrief."

## Gesamtformat

```
<aside class="notes">
  Moderation: "{{WORTLAUT}}"
  Didaktik: {{EIN_SATZ_BEGRUENDUNG}}
</aside>
```

**Nicht erlaubt:**
- Ausführliche Theorie-Erklärungen (das kann Lehrer nachlesen)
- Vage Empfehlungen ("Geh auf die Schüler ein" — zu unspezifisch)
- Mehr als 5 Zeilen pro Slide
```

- [ ] **Step 4.2: Commit**

```bash
git add presentation/references/speaker-notes-muster.md
git commit -m "docs(presentation): add speaker-notes pattern reference"
```

---

## Task 5: Phasenmodell-Specs

**Files:**
- Create: `presentation/specs/phasenmodell-consolidation.md`
- Create: `presentation/specs/phasenmodell-sicherung.md`
- Create: `presentation/specs/integration-lernsituation.md`

- [ ] **Step 5.1: `phasenmodell-consolidation.md` schreiben**

```markdown
# Phasenmodell: Consolidation nach Lernsituation

**Gesamtdauer:** 15 Minuten (±3).
**Voraussetzung:** Schüler haben in der vorhergehenden Lernsituation eigene Lösungen produziert. Phase 0 Debrief liefert konkrete Schüler-Beobachtungen.

## Phase 1 — Retrieval + Schüler-Versuche sammeln (3 min)

**Slide-Plan:**
- 1× ArbeitsauftragSlide, Timer 120–180 Sek.
- Aufgabe: "Schreibt 2 Min auf: Was habt ihr gestern zum Thema {{X}} gemacht? Was war die Lösung?"
- Sozialform: Einzelarbeit → dann Plenumsammlung (Lehrer moderiert an Tafel/Flipchart)

**Moderationsansage:** "Vor der Einordnung will ich wissen: Was habt ihr gefunden? — Schreibt 2 Minuten. Dann sammeln wir."

**Didaktische Basis:** retrieval-practice, aktivierung-lehrervortrag, rosenshine P1.

## Phase 2 — Einordnung via Schüler-/Referenzlösung (4–6 min)

**Slide-Plan:**
- 1–3× ContentSlide mit reflexivem Modeling
- Erste Slide: "Was ich heute gesammelt habe" — zeigt 2–3 typische Schüler-Ansätze (anonymisiert, aus Phase 0 Debrief)
- Zweite Slide: kanonische Referenzlösung mit Worked Example + Subgoal-Labels
- Optional dritte Slide: Gegenüberstellung — welcher Schüler-Ansatz ist eigentlich wie nah dran

**Moderationsansage:** "Ich habe bei euch gesehen: …. Jetzt zeige ich eine Variante, die ein erfahrener {{ROLLE}} wählen würde, und wir schauen, wo eure Ansätze davon abweichen — und wo sie genauso gut sind."

**Didaktische Basis:** worked-examples, subgoal-labeling, misconception-analyse (Erroneous Examples), rosenshine P4 reflexiv.

**Boundary Condition:** Nur wenn Schüler-Lösungen in Phase 1 tatsächlich eingesammelt werden konnten. Wenn nicht (kleine Klasse, kurzfristiger Umplanung) → fallback auf klassisches Worked Example ohne Schüler-Referenz.

## Phase 3 — Sicherung (Merksatz mit Sprachgerüst) (3–4 min)

**Slide-Plan:**
- 1–2× MerksatzSlide, je ein Kernsatz in Fachsprache
- Sprachgerüst-Fragment zeigen, wenn Code/englische Keywords beteiligt

**Moderationsansage:** "Das hier hängenbleiben. — Lies den Satz vor. Wer kann das mit eigenen Worten nochmal sagen?"

**Didaktische Basis:** unterrichtsphasen-artikulation (Meyers Sicherungsphase), sprachsensibler-it-unterricht.

## Phase 4 — Misconception-Check (ConcepTest) (2 min)

**Slide-Plan:**
- 1× ConcepTestSlide, 4 Optionen, Distraktoren aus Debrief-Misconceptions

**Moderationsansage:** "Kurze Zwischenfrage, Handzeichen: Wer wählt A? B? C? D? — Jetzt Auflösung."

**Didaktische Basis:** peer-instruction, misconception-analyse, rosenshine P6.

## Phase 5 — Transfer-Signal (1–2 min)

**Slide-Plan:**
- 1× ContentSlide mit 2–3 Beispielen "Das gilt auch bei …"
- Optional: Arbeitsauftrag für echte Transfer-Vertiefung als Hausaufgabe oder Einstieg der Folgestunde

**Moderationsansage:** "Ihr werdet das wieder treffen: in {{BEISPIEL_1}}, {{BEISPIEL_2}}, {{BEISPIEL_3}}. Denkt dran."

**Didaktische Basis:** unterrichtsphasen-artikulation (Transfer als Phase), handlungsorientierter-unterricht. Explizit als _Signal_ markiert — echter Transfer braucht Übung in Folge-Lernsituationen.

## Slide-Gesamtzahl

Typisch: 5–8 Slides (1 Arbeitsauftrag + 1–3 Einordnung + 1–2 Merksatz + 1 ConcepTest + 1 Transfer).
```

- [ ] **Step 5.2: `phasenmodell-sicherung.md` schreiben**

```markdown
# Phasenmodell: Sicherung / Recap zu Stundenbeginn

**Gesamtdauer:** 10 Minuten (±2).
**Voraussetzung:** Vorherige Stunde ist Referenzpunkt. Phase 0 Debrief listet Kernmerksätze, die gesichert werden sollen.

## Phase 1 — Retrieval-Warmup (3 min)

**Slide-Plan:**
- 1× ArbeitsauftragSlide, Timer 120 Sek., Aufgabe: "Was wisst ihr noch von letzter Stunde? — Ohne Hilfsmittel aufschreiben."
- Dann 1× ConcepTestSlide mit einer Kernfrage aus der Vorstunde

**Moderationsansage:** "Bevor ich neue Folien zeige: Was wisst ihr noch? 2 Minuten schreiben, dann ConcepTest."

**Didaktische Basis:** rosenshine P1 (Daily Review) + P10 (Weekly Review), retrieval-practice.

## Phase 2 — Kernmerksätze visuell (3–4 min)

**Slide-Plan:**
- 2–3× MerksatzSlide mit den wichtigsten Sicherungen aus der Vorstunde

**Moderationsansage:** "Das hier war zentral. — Lies, kommentiere kurz."

**Didaktische Basis:** unterrichtsphasen-artikulation (Sicherungsrückruf).

## Phase 3 — Misconception-Check (2 min)

**Slide-Plan:**
- 1× ConcepTestSlide mit typischem Fehler aus Debrief

**Didaktische Basis:** rosenshine P6.

## Phase 4 — Brücke zum heutigen Thema (1 min)

**Slide-Plan:**
- 1× ContentSlide: "Heute: {{NEUES_THEMA}}. Das baut auf {{VERKNUEPFUNG}}."

**Didaktische Basis:** Advance Organizer (Kurzform), handlungsorientierter-unterricht (Lernfortschritt sichtbar).

## Slide-Gesamtzahl

Typisch: 4–7 Slides (1 Arbeitsauftrag + 1 ConcepTest + 2–3 Merksatz + 1 ConcepTest + 1 Content).
```

- [ ] **Step 5.3: `integration-lernsituation.md` schreiben**

```markdown
# Integration mit Lernsituation-Projekten (Modus B)

## Modus-Erkennung

Wenn erstes Argument beim Skill-Aufruf ein existierendes Verzeichnis ist mit:
- `src/types.ts` (enthält `CHAPTER_META`)
- `specs/kohaerenz.md`

→ Modus B. Skill liest die folgenden Dateien, _bevor_ er Phase 0 Debrief startet.

## Zu lesende Dateien

### 1. `specs/kohaerenz.md` — Kohärenzdokument

Enthält:
- **Begriffs-Chronologie:** Welche Fachbegriffe wurden in welchem Kapitel eingeführt?
- **Misconception-Status:** Tabelle mit {ID, Misconception-Text, Status (nicht adressiert / konfrontiert / gefestigt), Evidenz}
- **Lernziele pro Kapitel**

**Extraktion:**
- Misconception-Items mit Status "konfrontiert" oder "gefestigt" → Kandidaten für ConcepTest-Distraktoren in der Präsentation
- Begriffe des Fokus-Kapitels → Wortspeicher-Kandidaten für Merksatz-Slides
- Lernziele → Kern-Konsolidierungs-Inhalte

### 2. `src/types.ts` — Kapitel-Metadaten

Enthält `CHAPTER_META`-Konstante:
```typescript
export const CHAPTER_META = {
  kap1: { title: '…', lernziele: [...], bloom: '…' },
  ...
};
```

**Extraktion:** Titel und Lernziele des Fokus-Kapitels → TitleSlide-Meta und Consolidation-Inhalt.

### 3. Optional: `src/exercises/*.tsx`

Bei Bedarf Dateinamen scannen, um zu verstehen, welche Aufgabentypen die Schüler durchlaufen haben (Parsons, MC, Drag-Drop, Code-Editor). Nicht den vollen Code lesen — Token-Budget.

## Rückfragen an den Lehrer (Phase 0 Debrief) in Modus B

Auch wenn Kohärenzdokument vorhanden ist, sind diese drei Fragen Pflicht:

1. Was ist in der Stunde _tatsächlich_ gut gelaufen (gegenüber dem Plan)?
2. Wo hat die Klasse _tatsächlich_ gehakt? Welche Fehler sind aufgetreten, die nicht im Misconception-Mapping stehen?
3. Welche Schülerergebnisse willst du aufgreifen? (Optional: Links zu Artefakten)

Diese Fragen ergänzen die Projektdaten um die Realität der Stunde.

## Ausgabe

Phase 1 (Kontext verstehen) produziert eine kompakte `context.md` im Arbeitsverzeichnis der Präsentation mit:
- Thema + Lernfeld (aus types.ts)
- Lernziele des Fokus-Kapitels (aus types.ts)
- 3–5 Kern-Misconceptions (aus kohaerenz.md, durch Debrief erweitert/priorisiert)
- Kern-Begriffe für Wortspeicher (aus kohaerenz.md Begriffs-Chronologie)
- Debrief-Antworten

Diese `context.md` ist Input für Phase 2 Outline.
```

- [ ] **Step 5.4: Commit**

```bash
git add presentation/specs/
git commit -m "docs(presentation): add phasenmodell + integration specs"
```

---

## Task 6: Phase-Prompts

**Files:**
- Create: `presentation/prompts/phase-0-debrief.md`
- Create: `presentation/prompts/phase-1-context.md`
- Create: `presentation/prompts/phase-2-outline.md`
- Create: `presentation/prompts/phase-3-slides.md`
- Create: `presentation/prompts/phase-4-qa.md`
- Create: `presentation/prompts/kramer-mini-review.md`

- [ ] **Step 6.1: `phase-0-debrief.md`**

```markdown
# Phase 0: Lehrer-Debrief

**Zweck:** Vor jeder Generierung holt der Skill drei Informationen vom Lehrer ein. Dies ist nicht optional, auch in Modus B nicht.

## Interaktion

Frage den Nutzer nacheinander (je eine Frage pro Turn):

1. **"Was ist in der Stunde gut gelaufen?"**
   Erwarte 1–3 Sätze. Wenn der Nutzer sagt "nichts Besonderes" oder ausweicht: frage eine Minimal-Folge: "Hat jemand besonders gut eine Aufgabe gelöst? Hat etwas überrascht?"

2. **"Wo hat die Klasse gehakt? Welche Fehler sind häufig aufgetreten?"**
   Erwarte Liste von 1–5 konkreten Fehlern/Misconceptions. Wenn vage: nachfragen mit "Was genau hat nicht funktioniert?"

3. **"Welche Schülerergebnisse willst du in der Consolidation aufgreifen?"**
   Nur in Purpose=Consolidation. Erwarte 1–3 Beispiele (Formulierungen, Ansätze, typische Lösungen). Bei Sicherung/Recap entfällt diese Frage.

In Modus A (standalone) zusätzlich:
4. **"Erfahrungsstand der Klasse: Novizen, Gemischt oder Fortgeschritten?"** → steuert Subgoal-Dichte.

## Ausgabe

Schreibe `debrief.md` im Arbeitsverzeichnis der Präsentation:

```markdown
# Debrief — {{DATUM}}

## Gut gelaufen
{{ANTWORT_1}}

## Gehakt / Misconceptions
{{ANTWORT_2 als Liste}}

## Aufzugreifende Schülerergebnisse
{{ANTWORT_3 als Liste}}

## Klassen-Niveau (nur Modus A)
{{ANTWORT_4}}
```

## Zeitbudget

2–3 Minuten reale Interaktion. Nicht länger — Lehrer haben wenig Zeit.
```

- [ ] **Step 6.2: `phase-1-context.md`**

```markdown
# Phase 1: Kontext verstehen

**Zweck:** Je nach Modus (A oder B) den notwendigen Kontext für die Slide-Outline zusammenziehen.

## Modus B — Aufsatz auf Lernsituation

Lies aus dem übergebenen LS-Projekt (in dieser Reihenfolge):

1. `specs/kohaerenz.md` — Begriffs-Chronologie, Misconception-Status, Lernziele
2. `src/types.ts` — `CHAPTER_META` (Titel, Lernziele, Bloom-Einordnung pro Kapitel)
3. Falls mehrere Kapitel: frage Lehrer, welches Fokus-Kapitel die Consolidation adressiert

Extrahiere:
- **Thema und Lernfeld** (Titel + LF-Nummer aus Kohärenzdokument oder Nachfrage)
- **Lernziele des Fokus-Kapitels** (2–4 Kernziele)
- **3–5 Kern-Misconceptions** — priorisiert aus Kohärenzdokument + Debrief-Ergänzungen
- **Kern-Begriffe** — für Merksatz-Wortspeicher aus Begriffs-Chronologie

## Modus A — Standalone

Frage interaktiv ab:
- Thema (kurz, z.B. "SQL JOINs")
- Lernfeld (KMK-Nummer, z.B. "LF5")
- Klasse (z.B. "FIAE 12a")
- Lernziele (2–4, stichpunktartig)
- Typische Misconceptions (2–5) — wenn Lehrer unsicher, optional: "Soll ich 3 typische vorschlagen?" und aus `misconception-analyse`-Artikel via SSH ableiten

## Ausgabe

Schreibe `context.md` mit folgender Struktur:

```markdown
# Kontext — {{THEMA}}

## Meta
- Lernfeld: {{LF}}
- Klasse: {{KLASSE}}
- Purpose: {{CONSOLIDATION|SICHERUNG}}
- Geplante Dauer: {{MIN}}

## Lernziele
{{LISTE}}

## Misconceptions
| ID | Beschreibung | Quelle |
|----|---|---|
| M1 | … | Debrief |
| M2 | … | Kohärenzdokument |

## Kern-Begriffe (für Merksatz)
{{LISTE mit DE / EN / Alltagserklärung sofern vorhanden}}

## Aufzugreifende Schülerergebnisse
{{LISTE, aus Debrief}}

## Klassen-Niveau
{{NOVIZEN|GEMISCHT|FORTGESCHRITTEN}}
```
```

- [ ] **Step 6.3: `phase-2-outline.md`**

```markdown
# Phase 2: Slide-Outline

**Zweck:** Vor der HTML-Generierung wird der Slide-Plan als Markdown-Tabelle erzeugt und vom Lehrer freigegeben.

## Input

- `context.md` aus Phase 1
- `debrief.md` aus Phase 0
- Passendes Phasenmodell: `specs/phasenmodell-consolidation.md` oder `specs/phasenmodell-sicherung.md`

## Algorithmus

Für jede Phase des Phasenmodells:
1. Wähle passende Primitive (aus `references/slide-primitives.md`)
2. Fülle Kerninhalt: Titel, Kernaussage (1 Satz), bei ConcepTest die Misconception-IDs
3. Schreibe Moderationsansage (1 Satz, direkte Rede)
4. Notiere Zeitbudget

## Ausgabe-Format

Schreibe `outline.md`:

```markdown
# Slide-Outline — {{THEMA}}

| # | Phase | Primitive | Titel | Kernaussage | Zeit | Misconception-Ref |
|---|-------|-----------|-------|------------|------|-------------------|
| 1 | Title | TitleSlide | {{THEMA}} | — | 0:30 | — |
| 2 | 1 | ArbeitsauftragSlide | Was wisst ihr noch? | Retrieval-Aufgabe, 2 Min Einzel | 2:00 | — |
| 3 | 2 | ContentSlide | Eure Ansätze | Zeigt 3 typische Schüler-Lösungen anonymisiert | 2:00 | — |
| 4 | 2 | ContentSlide | Kanonische Lösung | Worked Example mit Subgoal-Labels | 3:00 | — |
| 5 | 3 | MerksatzSlide | Merke | {{MERKSATZ_TEXT}} | 2:00 | — |
| 6 | 4 | ConcepTestSlide | Check | Frage zu typischem Fehler | 2:00 | M2, M3 |
| 7 | 5 | ContentSlide | Das gilt auch bei… | 3 Transfer-Beispiele | 1:30 | — |

## Summen
Slides: {{N}}, Gesamtzeit: {{MIN}}
```

## Lehrer-Gate

Lege Outline vor und frage: **"Passt das so, oder willst du Änderungen?"**

Typische Korrekturen:
- "Slide 4 zu lang, nur eine ContentSlide für die Lösung"
- "Merksatz anders formulieren: '…' statt '…'"
- "ConcepTest streichen, wir hatten schon einen in der LS"
- "Transfer-Slide raus, machen wir als Hausaufgabe"

Iteriere, bis Lehrer "passt" sagt. **Ohne diese Freigabe nicht zu Phase 3.**
```

- [ ] **Step 6.4: `phase-3-slides.md`**

```markdown
# Phase 3: HTML-Generierung

**Zweck:** Aus der freigegebenen `outline.md` und den Slide-Primitives die fertige Präsentation erzeugen.

## Input

- `outline.md` (freigegeben)
- `context.md`
- `references/slide-primitives.md`
- `references/speaker-notes-muster.md`
- `template/index.html`

## Algorithmus

1. Kopiere `template/` in Arbeitsverzeichnis als Basis (wenn nicht schon dort).
2. Setze `{{TITLE}}` in `index.html` (Thema).
3. Für jede Zeile der Outline:
   - Wähle Primitive-Template aus `slide-primitives.md`
   - Fülle Platzhalter aus Outline + context.md (Misconception-Text aus context.md bei ConcepTest-Distraktoren)
   - Schreibe Speaker Notes nach `speaker-notes-muster.md` (Moderationsansage + Didaktik-Satz)
   - Hänge `<section>` zwischen `<!-- SLIDES HIER -->` Kommentar ein
4. Entferne den Kommentar

## Bei > 12 Slides

Wenn Outline > 12 Slides: Delegiere Slide-Generierung an Subagent (siehe `prompts/subagent-slide-batch.md`). Pro Batch 5–7 Slides. Outline + context.md + slide-primitives.md werden an jeden Batch übergeben.

## Fachliche Integrität

Bei Worked-Example-Slides und Merksatz-Slides:
- Code muss syntaktisch und semantisch korrekt sein (Lehrer prüft nach, aber LLM sollte nicht offensichtlich halluzinieren)
- Merksatz muss in Fachsprache stehen, nicht als Lehrbuch-Zitat
- Bei Unsicherheit: Fragezeichen in Speaker Notes setzen "Didaktik: Bitte fachliche Korrektheit prüfen — {{GRUND}}"

## Ausgabe

`praesentation-{{thema-slug}}-{{datum}}/index.html` mit allen Slides eingebettet.
```

- [ ] **Step 6.5: `phase-4-qa.md`**

```markdown
# Phase 4: QA

**Zweck:** Automatischer Rubric-Check + Mini-Kramer-Review.

## 4a — Rubric-Check (vollautomatisch)

Prüfe generierte `index.html`:

1. **Speaker Notes vorhanden:** Zähle `<aside class="notes">`-Blöcke. Erwartet: = Anzahl `<section>`-Blöcke.
2. **Jeder ConcepTest hat Distraktor-Referenzen:** Zähle `data-misconception`-Attribute. Erwartet: ≥ 2 pro `slide-conceptest`.
3. **Merksätze haben Fachsprache (Heuristik):** Kein `<p class="satz">` kürzer als 5 Wörter. Keine Formulierung "ist wenn…".
4. **Mayer-Segmenting:** Keine `<ul>` mit > 5 `<li>` pro Slide.
5. **Timer-Attribute gültig:** Jeder `.timer` hat `data-duration` zwischen 30 und 600.

Output: `qa-rubric.md` mit `PASS` oder Liste von Violations.

Bei Violations: Automatische Fix-Runde (derselbe Agent, Rubric als Input + aktuelle `index.html`).

## 4b — Mini-Kramer-Review

Dispatche Kramer-Agenten mit `kramer-mini-review.md`. 200-Wörter-Output.

Bei Findings: kleine Fix-Runde. Bei FREIGABE: fertig.

## 4c — Browser-Smoke-Test

Öffne `index.html` lokal:
```bash
cd praesentation-{{thema-slug}}-{{datum}}
python3 -m http.server 8080 &
```
Manuell öffnen, durch alle Slides klicken (Pfeil rechts). Erwartet:
- Keine Console-Errors
- Timer läuft auf ArbeitsauftragSlide
- ConcepTest-Fragments enthüllen korrekt
- Presenter-View via `s`-Taste öffnet

Kill Server.

## Ausgabe

Fertige Präsentation im Arbeitsverzeichnis. `README.md` mit Bedienhinweisen (siehe Task 8).
```

- [ ] **Step 6.6: `kramer-mini-review.md`**

```markdown
# Prompt: Prof. Dr. Kramer — Mini-Review

Du bist Prof. Dr. Kramer, Didaktikerin an einer Pädagogischen Hochschule, Schwerpunkt IT-Berufsbildung. Du hast einen kritischen Blick und wenig Zeit.

## Input

Du bekommst:
- Pfad zur generierten Präsentation (HTML-Datei)
- `context.md` (Lernziele, Misconceptions, Kern-Begriffe)
- `debrief.md` (Lehrer-Rückmeldung zur Stunde)

## Aufgabe

Prüfe in ≤ 10 Minuten gegen diese 4-er-Checkliste:

1. **Aktivierung vor Folie eingehalten?** Jede Präsentations-Phase startet mit ArbeitsauftragSlide oder Retrieval-Slide, nicht mit Content.
2. **Merksätze in Fachsprache?** Kein "ist wenn…"-Stil, kein Alltagsjargon. Drei-Spalten-Sprachgerüst bei Code-Themen sichtbar.
3. **ConcepTest-Distraktoren kodieren Misconceptions aus Debrief?** Nicht random, sondern mindestens 2 der Distraktoren verweisen auf `debrief.md`-Fehlerlist.
4. **Transfer-Impuls inhaltlich sinnvoll, nicht generisch?** Keine Plattitüden ("das gilt überall"), sondern 2–3 konkrete Anwendungsfelder.

## Ausgabe

Maximal 200 Wörter. Format:

```markdown
# Kramer-Review — {{DATUM}}

## Urteil
FREIGABE / FINDINGS

## Punkt 1 — Aktivierung vor Folie
[OK / Problem: …]

## Punkt 2 — Merksätze in Fachsprache
[OK / Problem: …]

## Punkt 3 — ConcepTest-Distraktoren
[OK / Problem: …]

## Punkt 4 — Transfer-Impuls
[OK / Problem: …]

## Gesamteinschätzung
{{1 Satz, ehrlich.}}
```

Wenn FINDINGS: der Main-Agent macht eine Fix-Runde, dann kein weiterer Kramer-Review (Self-Preference-Bias-Schutz).
```

- [ ] **Step 6.7: `subagent-slide-batch.md` (für > 12 Slides)**

```markdown
# Subagent: Slide-Batch

Du generierst einen Batch von 5–7 Slides als HTML-Sections.

## Input

Du bekommst:
- `outline.md` — die komplette Outline (als Kohärenz-Anker)
- `context.md` — Kontextinfos
- Deine Batch-Reichweite: "Generiere Slides {{VON}} bis {{BIS}}"
- `slide-primitives.md` — als Leseauftrag

## Regeln

- Nutze genau die Primitives aus `slide-primitives.md`, kein freies HTML.
- Jede `<section>` hat `<aside class="notes">` nach `speaker-notes-muster.md`.
- Bei ConcepTest: Distraktoren referenzieren konkrete Misconception-IDs aus `context.md`.
- Keine Platzhalter `{{…}}` in deinem Output — ersetze sie alle.
- Deutsch, Umlaute direkt (keine Escapes).

## Ausgabe

Schreibe `slides-batch-{{VON}}-{{BIS}}.html` — nur die `<section>`-Blöcke, keine umgebende HTML-Struktur. Der Main-Agent fügt sie zusammen.
```

- [ ] **Step 6.8: Commit**

```bash
git add presentation/prompts/
git commit -m "docs(presentation): add phase prompts + subagent + kramer review"
```

---

## Task 7: SKILL.md — Orchestrator

**Files:**
- Create: `presentation/SKILL.md`

- [ ] **Step 7.1: `SKILL.md` schreiben**

```markdown
---
name: praesentation
description: Erstelle HTML-Präsentationen für Lehrervortrag in der IT-Berufsschule — primär für Consolidation nach Lernsituation und Sicherung/Recap zu Stundenbeginn. Verwende diesen Skill, wenn der Nutzer nach einer Präsentation, Folien, einer Sicherung, einem Recap, einer Consolidation oder einem Lehrervortrag fragt. Auch bei "mach mir Folien zum Thema X", "Sicherung zu LF5", "Recap für morgen", "Lehrervortrag zu SQL JOINs". NICHT triggern bei "Lernsituation", "Lernmodul", "Übungen für Schüler" — dafür ist der lernsituation-Skill zuständig.
---

# Präsentation erstellen

Du erstellst didaktisch fundierte HTML-Präsentationen (Reveal.js) für Lehrervortrag in der IT-Berufsschule. Evidenzbasis: Rosenshine (2012) Principles of Instruction, Mayer Multimedia-Prinzipien, Freeman et al. (2014) Active Learning. Die Präsentation ist NIE ein Monolog-Vortrag — sie enthält immer Schüler-Aktivierungen vor jeder Folie.

**Architektur:**
```
Phase 0:  Lehrer-Debrief (3 Fragen, PFLICHT)
Phase 1:  Kontext verstehen (Modus A/B)
Phase 2:  Slide-Outline (mit Lehrer-Gate)
Phase 3:  HTML-Generierung
Phase 4:  QA (Rubric + Mini-Kramer + Browser-Smoke)
```

Details pro Phase in den `prompts/`-Dateien.

---

## PHASE 0: LEHRER-DEBRIEF

**Lies:** `prompts/phase-0-debrief.md`

Stelle die drei Pflichtfragen. Ergebnis: `debrief.md` im Arbeitsverzeichnis.

---

## PHASE 1: KONTEXT VERSTEHEN

**Modus-Erkennung:**

```bash
# Ist das erste Argument ein LS-Projekt?
if [ -f "$1/src/types.ts" ] && [ -f "$1/specs/kohaerenz.md" ]; then
  MODUS=B
else
  MODUS=A
fi
```

**Lies:** `prompts/phase-1-context.md` und `specs/integration-lernsituation.md` (nur Modus B).

Ergebnis: `context.md` im Arbeitsverzeichnis.

---

## PHASE 2: SLIDE-OUTLINE

**Lies:** `prompts/phase-2-outline.md` und das passende Phasenmodell:
- Purpose=Consolidation → `specs/phasenmodell-consolidation.md`
- Purpose=Sicherung → `specs/phasenmodell-sicherung.md`

Erzeuge Outline als Markdown-Tabelle. **Zeige dem Lehrer und warte auf Freigabe.**

**Kein Weitergehen ohne explizite Freigabe** ("passt", "ok", "weiter").

Iteriere bei Korrekturwünschen.

Ergebnis: `outline.md` (freigegeben).

---

## PHASE 3: HTML-GENERIERUNG

**Lies:** `prompts/phase-3-slides.md`, `references/slide-primitives.md`, `references/speaker-notes-muster.md`.

Kopiere `template/` in Arbeitsverzeichnis (Zielname: `praesentation-{{slug}}-{{datum}}/`).

**Bei ≤ 12 Slides:** Main-Agent generiert direkt.
**Bei > 12 Slides:** Subagent-Batches à 5–7 Slides. Lies `prompts/subagent-slide-batch.md` für Dispatch-Instruktion.

Jede `<section>` bekommt Speaker Notes (direkte Rede + didaktische Begründung in 1 Satz).

---

## PHASE 4: QA

**Lies:** `prompts/phase-4-qa.md`.

### 4a: Rubric-Check (automatisch)
Prüfe: Speaker Notes auf allen Slides, ConcepTest-Distraktoren mit Misconception-Referenz, keine Bullet-Listen > 5, Timer-Durations 30–600.

Bei Violations: Fix-Runde.

### 4b: Mini-Kramer-Review
Dispatche Agent mit `prompts/kramer-mini-review.md`. 200 Wörter Output.

Bei FINDINGS: eine Fix-Runde. Bei FREIGABE: fertig.

### 4c: Browser-Smoke-Test
Starte lokalen Server, klick manuell durch die Slides. Confirm: keine Console-Errors, Timer läuft, Fragments enthüllen.

---

## AUSGABE-STRUKTUR

```
praesentation-{{slug}}-{{datum}}/
├─ index.html
├─ css/                    (aus template/)
├─ js/                     (aus template/)
├─ vendor/reveal.js/       (aus template/)
├─ debrief.md
├─ context.md
├─ outline.md
├─ qa-rubric.md
├─ kramer-review.md
└─ README.md               (Bedienhinweise)
```

Öffnen: Doppelklick auf `index.html` oder `python3 -m http.server 8080`.
Presenter-View: Taste `s` in der offenen Präsentation.
PDF-Export: URL mit `?print-pdf`, dann drucken als PDF.

---

## KERNPRINZIPIEN-INDEX

1. **Schüler-Aktivität vor Folie** — Jede Phase startet mit ArbeitsauftragSlide/Retrieval.
2. **Fehlerkultur ist Voraussetzung** — Warnung in README.md ausgeben: "Diese Präsentation macht Schüler-Fehler sichtbar. Nur einsetzen, wenn Psychological Safety besteht (siehe Didaktik-Repo `fehlerkultur-im-unterricht`)."
3. **Mayer ist Gesetz** — max. 1 Kernaussage pro Slide, keine Bullet-Overload, Segmenting.
4. **Rosenshine als Sequenzierung** — kleine Schritte, Modeling, Checks for Understanding, 80% Erfolgsquote.
5. **ConcepTest-Distraktoren sind keine Zufallsbirnen** — sie kodieren benannte Misconceptions.
6. **Merksatz in Fachsprache + Sprachgerüst** — nicht Alltagsjargon.
7. **Transfer-Impuls ist Signal, kein Transfer** — echter Transfer in Folgestunde/Hausaufgabe.
8. **Kein Persona-Overhead** — nur Kramer-Mini-Review, keine 3-Personas.
9. **Didaktik-Repo-Zugriff via SSH** — `ssh heide-dev cat ~/projects/didaktik-repo/wiki/[artikel].md` für vertiefende Lektüre (selten nötig, Extraktionen in `references/` reichen meist).
10. **Ehrlich bei Limits** — README.md disclaimt: "Kein Schülertest; vor echter Klasse einmal durchlaufen und post-hoc bewerten."
```

- [ ] **Step 7.2: Commit**

```bash
git add presentation/SKILL.md
git commit -m "feat(presentation): add SKILL.md orchestration"
```

---

## Task 8: README + Disclaimer

**Files:**
- Create: `presentation/template/README.md`
- Create: `presentation/README.md`

- [ ] **Step 8.1: `template/README.md` (Bedienhinweise für die generierte Präsentation)**

```markdown
# {{THEMA}} — Präsentation

Öffnen: Doppelklick auf `index.html` oder lokaler Server:
```bash
python3 -m http.server 8080
# im Browser: http://localhost:8080
```

## Tastaturkürzel

- **Pfeil rechts / Space:** nächster Slide/nächstes Fragment
- **Pfeil links:** zurück
- **s:** Presenter-View (eigener Monitor für Speaker Notes)
- **f:** Fullscreen
- **t:** Timer auf aktueller Slide neu starten
- **?:** alle Reveal.js-Shortcuts

## PDF-Export

URL mit `?print-pdf` aufrufen (`http://localhost:8080/?print-pdf`), dann Browser-Druck → Speichern als PDF.

## WICHTIGER HINWEIS zur didaktischen Einbettung

Diese Präsentation macht Schüler-Ansätze und Fehler sichtbar. Sie funktioniert nur in Klassen mit hoher **Psychological Safety / Fehlerkultur**. Wenn Lernende fürchten, bloßgestellt zu werden, wird die Consolidation kontraproduktiv.

Vorbereitung:
1. Phase 1 (Schüler-Versuche sammeln) nur durchführen, wenn Klasse das gewöhnt ist.
2. Ansätze anonymisieren, nicht Namen nennen.
3. Fehler als Lerngelegenheit framen, nicht als Versagen.

Mehr dazu: Didaktik-Repo `fehlerkultur-im-unterricht.md`.

## Disclaimer

Persona-reviewed (Mini-Kramer), kein Echttest mit Klasse. Vor Schüler-Einsatz mindestens einmal mit einer realen Klasse durchlaufen und post-hoc bewerten.
```

- [ ] **Step 8.2: `presentation/README.md` (für Skill-Entwickler)**

```markdown
# skill-praesentation (Modul)

HTML-Präsentationen für Lehrervortrag in der IT-Berufsschule — Modul im `skill-lernsituation`-Repo.

**Purpose v1:** Consolidation nach Lernsituation, Sicherung/Recap zu Stundenbeginn.

**Spec:** `docs/superpowers/specs/2026-04-17-skill-praesentation-design.md` (im didaktik-repo).

## Struktur

- `SKILL.md` — Trigger + 4-Phasen-Orchestrierung
- `prompts/` — pro Phase eine Prompt-Datei; Kramer-Mini-Review; Slide-Batch-Subagent
- `specs/` — Phasenmodelle (Consolidation, Sicherung), Integration mit Lernsituation-Projekten
- `references/` — Slide-Primitives, Speaker-Notes-Muster
- `template/` — Reveal.js-Skelett, Design-Tokens, Primitives-JS

## Testen

Manuelle Dry-Runs:
- Modus A: "Baue mir eine Präsentation zu SQL JOINs, Purpose=Sicherung, 10 Minuten"
- Modus B: Pfad zu einer existierenden Lernsituation + "Purpose=Consolidation"

## Known limits (v1)

- Keine Clicker-Integration
- Keine KI-gestützten Live-Interaktionen in der Präsentation selbst
- Keine Advance-Organizer-Purpose (v2)
- Laufzeit realistisch 15–20 Minuten pro Generierung
```

- [ ] **Step 8.3: Commit**

```bash
git add presentation/README.md presentation/template/README.md
git commit -m "docs(presentation): add user + developer READMEs"
```

---

## Task 9: End-to-End-Dry-Run

**Files:** keine neuen; Verifizierung der Kette.

- [ ] **Step 9.1: Modus-A-Dry-Run**

Test-Case: "Baue Präsentation, Modus A"
- Thema: "SQL JOINs"
- Lernfeld: LF5
- Purpose: Sicherung
- Klasse: FIAE 11a
- Misconceptions: "INNER JOIN entfernt Duplikate automatisch", "LEFT JOIN füllt fehlende Werte mit 0"

**Erwartung:**
- Phase 0 Debrief fragt 3+1 Fragen
- Phase 1 schreibt `context.md` mit Lernzielen, Misconceptions
- Phase 2 schreibt `outline.md` mit 5–6 Slides, pausiert für Freigabe
- Nach "passt" → Phase 3 generiert `index.html`
- Phase 4a+4b laufen
- Phase 4c: manuell Browser öffnen, Timer läuft, ConcepTest-Fragments funktionieren

Behebe alle gefundenen Probleme. Dokumentiere in `presentation/TESTING.md`.

- [ ] **Step 9.2: Modus-B-Dry-Run (falls Lernsituation vorhanden)**

Zielprojekt: Wenn `berndheidemann/numpy-lernsituation` lokal geklont, darauf ausführen. Sonst überspringen.

**Erwartung:**
- Kohärenzdokument wird gelesen, Misconceptions + Lernziele automatisch in context.md
- Phase 0 Debrief ergänzt nur Lehrer-Realität
- Rest wie Modus A

Behebe Probleme.

- [ ] **Step 9.3: Commit (Test-Fixes)**

```bash
git add presentation/
git commit -m "fix(presentation): end-to-end dry run fixes"
```

---

## Task 10: PR und Merge

- [ ] **Step 10.1: PR erstellen**

```bash
git push -u origin feat/presentation
gh pr create --title "feat: skill-praesentation module (v1)" --body "$(cat <<'EOF'
## Summary
- Neues Modul `presentation/` im skill-lernsituation-Repo
- Generiert Reveal.js-HTML-Präsentationen für Lehrervortrag
- Zwei Purposes: Consolidation nach Lernsituation (Hauptfall), Sicherung/Recap
- Hybrid-Modus: standalone oder aufgesetzt auf existierendes LS-Projekt

## Architektur
4-Phasen-Workflow mit Lehrer-Debrief (Phase 0), Modus-A/B-Kontext (Phase 1),
Outline mit Lehrer-Gate (Phase 2), HTML-Generierung (Phase 3), QA mit
Mini-Kramer-Review (Phase 4).

5 Slide-Primitives (Title, Arbeitsauftrag mit Timer, Merksatz mit Sprachgerüst,
ConcepTest mit Misconception-Distraktoren, Content).

## Test plan
- [x] Manueller Modus-A-Dry-Run (SQL JOINs, LF5)
- [ ] Manueller Modus-B-Dry-Run (numpy-lernsituation)
- [ ] Kramer-Mini-Review besteht auf generierter Präsentation
- [ ] Browser-Smoke-Test (Timer, Fragments, Presenter-View)

## Spec
docs/superpowers/specs/2026-04-17-skill-praesentation-design.md (im didaktik-repo)

🤖 Generated with [Claude Code](https://claude.com/claude-code)
EOF
)"
```

- [ ] **Step 10.2: Nach Review und Merge: Worktree aufräumen**

```bash
cd ~/projects/skill-lernsituation
git worktree remove ../skill-lernsituation-presentation
git branch -d feat/presentation
```

---

## Self-Review (durchgeführt)

**Spec-Abdeckung:**
- [x] Scope (Consolidation + Sicherung) — Tasks 5.1/5.2
- [x] Stack (Reveal.js + Tailwind + Vanilla JS) — Tasks 0.3, 1.x
- [x] Modul-Platzierung in skill-lernsituation — Tasks 0.1/0.2
- [x] 5 Slide-Primitives (Title, Arbeitsauftrag, Merksatz, ConcepTest, Content) — Task 3
- [x] Phase 0–4-Workflow — Tasks 6.x + 7
- [x] Hybrid-Modus A/B — Tasks 6.2, 7.1
- [x] Lehrer-Debrief (Phase 0) Pflicht — Task 6.1
- [x] Outline mit Lehrer-Gate (Phase 2.5) — Task 6.3
- [x] Mini-Kramer (Phase 4b) — Task 6.6
- [x] Fehlerkultur-Warnung in README — Task 8.1
- [x] Kein volles Persona-Review — kodifiziert in SKILL.md Prinzip 8
- [x] PDF-Export-Fähigkeit — Reveal.js nativ, dokumentiert in README

**Offene Lücken:**
- Das Design-Tokens-CSS ist initial vereinfacht (nicht 1:1 aus skill-lernsituation/references/design-system.md kopiert). Nach Task 1.2: Tokens ggf. erweitern, sobald `../references/design-system.md` im Ziel-Repo gelesen werden kann. Nicht blockierend für v1.
- Fachliche Korrektheits-Prüfung von Worked-Examples/Merksätzen: im Skill nur als Warnung in Speaker Notes, keine automatische Prüfung. Akzeptiert in Spec §8.

**Typen-Konsistenz:** Primitive-Klassennamen (`slide-title`, `slide-arbeitsauftrag`, `slide-merksatz`, `slide-conceptest`, `slide-content`) werden in CSS (Task 1.3), JS-Selektoren (Task 2.1) und Primitive-Templates (Task 3) einheitlich verwendet. Timer-Attribute `data-duration` konsistent.

Plan ist bereit zur Ausführung.
