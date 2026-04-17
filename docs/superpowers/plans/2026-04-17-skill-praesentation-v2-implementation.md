# skill-praesentation v2 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Erweitere den bestehenden `skill-praesentation` um die v2-Interaktionsschicht: Drei-Schicht-Architektur (Verfassung, Prototypen, Rendering-Tools), fünf neue Prototypen, Mermaid + CodeMirror als Rendering-Layer, Einstiegs-Palette, Topic-Familien-Klassifikation, QA-Erweiterung, Test-Set.

**Architecture:** Inkrementelle Erweiterung des bestehenden Skill-Repos. Keine Breaking Changes am Orchestrierungs-Grundgerüst (4 Phasen bleiben). Neue Primitives sind *additiv* zu den fünf v1-Primitives. Rendering-Tools werden als lokal gebündelte Vendor-Assets eingeführt (Offline-Nutzung bleibt).

**Tech Stack:** Reveal.js 5.x (vorhanden), Vanilla JavaScript ES6+, Mermaid.js 11.x (neu), CodeMirror 6 (neu). Kein Build-Step. Alle Vendor-Assets lokal unter `template/vendor/`.

**Spec:** `docs/superpowers/specs/2026-04-17-skill-praesentation-v2-interaktionsschicht.md` im didaktik-repo.

**Arbeitsverzeichnis:** Alle Pfade relativ zum Root von `/home/bernd/projects/skill-praesentation/` (git-Repo, Source of Truth). Nach jedem Task-Block via rsync nach `~/.claude/skills/praesentation/` synchronisieren (siehe Task 20).

**Ausführungsmodus:** Inline, task-weise. Subagents optional für Tasks 4–8 (fünf parallele Primitive-Templates) und Task 19 (8 Test-Set-Fixtures).

---

## Task 0: Branch anlegen und Setup

**Files:**
- Modify: git branch state

- [ ] **Step 0.1: Feature-Branch anlegen**

```bash
cd /home/bernd/projects/skill-praesentation
git checkout -b feature/v2-interaktionsschicht
git status
```

Expected: `On branch feature/v2-interaktionsschicht`, nothing to commit.

- [ ] **Step 0.2: Arbeitsverzeichnisse für neue Bereiche anlegen**

```bash
mkdir -p template/vendor/mermaid template/vendor/codemirror tests/fixtures
ls -la template/vendor/ tests/
```

Expected: Verzeichnisse existieren, leer.

- [ ] **Step 0.3: Commit der Setup-Struktur (leere Verzeichnisse via .gitkeep)**

```bash
touch template/vendor/mermaid/.gitkeep template/vendor/codemirror/.gitkeep tests/fixtures/.gitkeep
git add template/vendor/mermaid/.gitkeep template/vendor/codemirror/.gitkeep tests/fixtures/.gitkeep
git commit -m "chore: scaffold v2 vendor and tests directories"
```

---

## Task 1: Schicht 1 — Verfassung als maschinenprüfbare Rubric

**Files:**
- Create: `references/verfassung.md`

- [ ] **Step 1.1: Verfassung schreiben**

Schreibe `/home/bernd/projects/skill-praesentation/references/verfassung.md` mit folgendem Inhalt:

```markdown
# Verfassung (Schicht 1) — Harte Regeln für jede Slide

**Zweck:** Diese Regeln sind nicht verhandelbar. Sie gelten für jede Slide — ob aus einem Prototyp oder freien Entwurf. Phase 4 QA prüft sie automatisch; Violations triggern eine Fix-Runde.

## 1. Mayer Coherence

- Max. 1 Kernaussage pro Slide
- Keine Seductive Details (dekorative Animationen, Hintergrundmusik, Fun Facts ohne Lernfunktion)
- Keine Bullet-Liste > 5 `<li>`
- Fließtext ≤ 80 Wörter pro Slide (Titel, Headings ausgenommen)

**Prüfbar:** DOM-Analyse (Word-Count, Bullet-Count).

## 2. Mayer Redundancy

- Kein Bildschirmtext, der denselben Inhalt wie die Speaker Notes doppelt
- Regel: Wenn `<aside class="notes">` einen Satz in direkter Rede enthält, darf dieser Satz nicht wortgleich im sichtbaren Teil der Slide stehen
- Bullet-Listen und Code-Blöcke sind erlaubt (andere Repräsentationsform)

**Prüfbar:** Substring-Matching Moderations-Satz ↔ Slide-Text.

## 3. Mayer Spatial Contiguity

- Code und zugehörige Erklärung räumlich integriert: Inline-Kommentar im `<pre><code>`, Callouts mit Positions-Bezug, oder inline `<span class="subgoal-label">`
- Nicht erlaubt: separater Text-Block, der den Code "unter" oder "neben" ihm erklärt, ohne räumliche Kopplung
- Bei Diagrammen: Label direkt an Nodes/Edges, nicht in separater Legende am Slide-Rand

**Prüfbar:** Heuristik — Code-Slide ohne inline-Kommentare und ohne `.callout`-Elemente → Verdachts-Flag, manuelle Prüfung.

## 4. Mayer Signaling

- Kernbegriffe durch Fettung, Farbe oder Callout hervorgehoben
- Auf jeder Slide mindestens ein Signaling-Element, wenn > 1 Begriff/Konzept erwähnt wird

**Prüfbar:** DOM-Suche nach `<strong>`, `<em>`, `.callout`, `.highlight-step`.

## 5. Speaker Notes Pflicht

- Jede `<section>` enthält ein `<aside class="notes">`
- Inhalt: zwei Zeilen — "Moderation:" (direkte Rede) + "Didaktik:" (Begründung in 1 Satz)
- Bei Prototypen: zusätzlich Mapping auf Evidenz-Artikel (`didaktik-repo/wiki/<slug>`)

**Prüfbar:** `<section>` ohne `<aside class="notes">` oder ohne "Moderation:"-Muster → Violation.

## 6. Design-Tokens

- Typografie, Farben, Abstände ausschließlich aus `template/css/design-tokens.css`
- Keine Inline-`style="…"`-Attribute außer für dynamisch berechnete Werte (z.B. Progress-Bars)
- Keine neuen Farb-Hex-Codes in Content-Files

**Prüfbar:** `grep -r 'style="' <output>/index.html` — jedes Match gegen Whitelist prüfen.

## 7. Accessibility

- Kontrast AA (Text ≥ 4.5:1 gegen Hintergrund)
- Tastaturbedienbarkeit: alle interaktiven Elemente per Tab/Pfeil erreichbar
- Screenreader-Labels bei Icons, Timer, ConcepTest-Optionen (`aria-label`)

**Prüfbar:** Browser-Smoke-Test — Lighthouse-Accessibility ≥ 90.

## 8. Fehlerkultur-Disclaimer

- Generierte `README.md` enthält Passage: "Diese Präsentation macht Schüler-Fehler sichtbar. Nur einsetzen, wenn Psychological Safety besteht (siehe Didaktik-Repo `fehlerkultur-im-unterricht`)."

**Prüfbar:** Substring-Match in README.

## Violations-Severity

| Level | Wirkung |
|---|---|
| **Fatal** | Generierung abbrechen, Phase 3 neu starten |
| **Major** | Fix-Runde in Phase 4, danach Re-Check |
| **Minor** | Warnung, in Kramer-Mini-Review verlagern |

Rules 1–5 sind Major (Fix-Runde erzwungen). Rules 6–8 sind Minor (Kramer-Review).

## Nicht verhandelbar

Wenn eine dieser Regeln einen geplanten Prototyp oder Eigenentwurf blockiert, ist der Entwurf zu ändern — nicht die Regel. Ausnahmen nur über explizite Spec-Änderung.
```

- [ ] **Step 1.2: Datei verifizieren**

```bash
wc -l /home/bernd/projects/skill-praesentation/references/verfassung.md
head -20 /home/bernd/projects/skill-praesentation/references/verfassung.md
```

Expected: Datei existiert, enthält oben stehenden Text.

- [ ] **Step 1.3: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add references/verfassung.md
git commit -m "feat(v2): add Schicht-1 Verfassung as machine-checkable rubric"
```

---

## Task 2: Vendor-Assets — Mermaid und CodeMirror

**Files:**
- Create: `template/vendor/mermaid/mermaid.min.js`
- Create: `template/vendor/codemirror/codemirror.bundle.js`
- Create: `template/vendor/README.md`

- [ ] **Step 2.1: Mermaid herunterladen**

```bash
cd /home/bernd/projects/skill-praesentation/template/vendor/mermaid
curl -L -o mermaid.min.js https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.min.js
ls -la mermaid.min.js
```

Expected: Datei ca. 2.5–3 MB (ungeminifizierte Version ist größer, wir nehmen min).

- [ ] **Step 2.2: CodeMirror 6 Bundle herunterladen**

CodeMirror 6 ist modular — wir brauchen ein fertiges Bundle. Nutze den vorgebauten Bundle von `@codemirror/basic-setup` via esm.sh:

```bash
cd /home/bernd/projects/skill-praesentation/template/vendor/codemirror
curl -L -o codemirror.bundle.js "https://cdn.jsdelivr.net/combine/npm/codemirror@6,npm/@codemirror/view@6,npm/@codemirror/state@6,npm/@codemirror/lang-python@6,npm/@codemirror/lang-java@6,npm/@codemirror/lang-javascript@6,npm/@codemirror/lang-sql@6,npm/@codemirror/lang-html@6"
ls -la codemirror.bundle.js
```

Expected: Datei ca. 300–600 KB.

**Fallback falls Bundle-URL nicht funktioniert:** Nutze den vorgebauten Standalone-Bundle von codemirror.net:

```bash
curl -L -o codemirror.bundle.js https://codemirror.net/5/codemirror.js
# (CodeMirror 5 als fallback — Syntax ist einfacher, ausreichend für read-only + basic edit)
```

- [ ] **Step 2.3: Vendor-README schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/template/vendor/README.md`:

```markdown
# Vendor-Assets

Lokal gebündelte Libraries für Offline-Nutzung.

| Library | Version | Größe | Lizenz | Zweck |
|---|---|---|---|---|
| reveal.js | 5.x | ~400 KB | MIT | Präsentations-Engine |
| mermaid.js | 11.x | ~2.5 MB | MIT | Diagramme (Flowchart, Sequenz, Klassen, ER, State) |
| CodeMirror | 6.x (oder 5.x fallback) | ~400 KB | MIT | Syntax-Highlighting + Edit für Code-Slides |

## Update-Policy

- Beim Update: Vendor-Datei ersetzen, Smoke-Test durchlaufen (siehe `../TESTING.md`)
- Major-Version-Updates: Prüfen, ob Prototyp-HTML angepasst werden muss

## Warum lokal und nicht CDN?

- Offline-Nutzung in Klassenräumen ohne stabilem WLAN
- DSGVO-Konformität: keine externen Requests beim Öffnen der Präsentation
- Reproduzierbarkeit: Präsentationen funktionieren auch in 5 Jahren noch
```

- [ ] **Step 2.4: Smoke-Test — Vendor-Assets sind valides JS**

```bash
cd /home/bernd/projects/skill-praesentation/template/vendor
node -e "require('fs').readFileSync('mermaid/mermaid.min.js').includes('mermaid')" && echo "mermaid OK"
node -e "require('fs').readFileSync('codemirror/codemirror.bundle.js').length > 100000" && echo "codemirror OK (size check)"
```

Expected: Beide "OK" ausgegeben.

- [ ] **Step 2.5: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add template/vendor/mermaid template/vendor/codemirror template/vendor/README.md
git commit -m "feat(v2): add Mermaid and CodeMirror vendor bundles"
```

---

## Task 3: Template-Wiring — index.html, utilities.css, primitives.js

**Files:**
- Modify: `template/index.html`
- Create: `template/css/utilities.css`
- Modify: `template/js/primitives.js`

- [ ] **Step 3.1: utilities.css schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/template/css/utilities.css`:

```css
/* Utility-Klassen für Layout und Step-Highlighting */

.grid-2 {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: var(--space-lg);
  align-items: start;
}

.grid-2 > * {
  min-width: 0;
}

.callout {
  background: var(--color-merksatz-bg);
  border-left: 4px solid var(--color-merksatz-border);
  padding: var(--space-md);
  border-radius: var(--radius);
  margin: var(--space-md) 0;
}

.callout-warning {
  background: #fee2e2;
  border-left-color: var(--color-misconception);
}

.highlight-step {
  background: #fef3c7;
  border-radius: var(--radius);
  padding: var(--space-xs) var(--space-sm);
  transition: background 0.3s;
}

.highlight-step.active {
  background: #fde68a;
  outline: 2px solid var(--color-merksatz-border);
}

.subgoal-label {
  display: inline-block;
  color: var(--color-muted);
  font-style: italic;
  font-size: 0.85em;
}

/* Mermaid-Container */
.mermaid {
  display: flex;
  justify-content: center;
  margin: var(--space-md) 0;
}

/* CodeMirror-Container */
.codeblock {
  border-radius: var(--radius);
  overflow: hidden;
  margin: var(--space-md) 0;
  font-family: var(--font-mono);
  font-size: 0.9em;
}

.codeblock[data-editable="true"] {
  border: 2px solid var(--color-accent);
}

/* Prediction-Feld (PredictSlide) */
.prediction-field {
  min-height: 3em;
  padding: var(--space-sm);
  border: 2px dashed var(--color-muted);
  border-radius: var(--radius);
  background: #f9fafb;
  font-family: var(--font-mono);
}

/* Notional-Machine: Versteckter Zustand */
.hidden-state {
  background: #f3f4f6;
  border: 1px dashed var(--color-muted);
  padding: var(--space-md);
  border-radius: var(--radius);
}

.hidden-state::before {
  content: "▼ Interner Zustand";
  display: block;
  font-size: 0.8em;
  color: var(--color-muted);
  margin-bottom: var(--space-sm);
}
```

- [ ] **Step 3.2: index.html erweitern**

Edit `/home/bernd/projects/skill-praesentation/template/index.html` — Ersetze komplett durch:

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
  <link rel="stylesheet" href="css/utilities.css">
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
  <script src="vendor/mermaid/mermaid.min.js"></script>
  <script src="vendor/codemirror/codemirror.bundle.js"></script>
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
    if (window.mermaid) {
      mermaid.initialize({ startOnLoad: false, theme: 'neutral', securityLevel: 'strict' });
    }
    Presentation.init();
  </script>
</body>
</html>
```

- [ ] **Step 3.3: primitives.js erweitern**

Edit `/home/bernd/projects/skill-praesentation/template/js/primitives.js` — Komplett ersetzen durch:

```javascript
/* eslint-env browser */
/* global Reveal, mermaid, CodeMirror */

const Presentation = {
  init() {
    this.initTimers();
    this.initConcepTests();
    this.initPresenterHelpers();
    this.initMermaid();
    this.initCodeBlocks();
    this.initTraceSteps();
    this.initPredictFields();
  },

  // --- Timer für Arbeitsauftrag-Slides ---
  initTimers() {
    Reveal.on('slidechanged', (event) => {
      const slide = event.currentSlide;
      const timerEl = slide.querySelector('.timer[data-duration]');
      if (!timerEl) return;
      const duration = parseInt(timerEl.dataset.duration, 10);
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

  // --- ConcepTest — Auflösung via Fragment (reveal.js-nativ) ---
  initConcepTests() {},

  // --- Presenter-Helfer: Taste 'T' startet Timer neu ---
  initPresenterHelpers() {
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

  // --- Mermaid: Diagramme beim Slide-Wechsel rendern ---
  initMermaid() {
    if (!window.mermaid) return;
    Reveal.on('slidechanged', (event) => {
      const nodes = event.currentSlide.querySelectorAll('.mermaid:not([data-rendered])');
      nodes.forEach((node) => {
        mermaid.run({ nodes: [node] }).catch((err) => {
          console.error('Mermaid render failed:', err);
        });
        node.setAttribute('data-rendered', 'true');
      });
    });
    // Auch für erste Slide
    document.querySelectorAll('.mermaid:not([data-rendered])').forEach((node) => {
      if (node.closest('.present')) {
        mermaid.run({ nodes: [node] });
        node.setAttribute('data-rendered', 'true');
      }
    });
  },

  // --- CodeMirror: Code-Blöcke initialisieren ---
  initCodeBlocks() {
    if (!window.CodeMirror) {
      console.warn('CodeMirror not loaded, falling back to <pre><code>');
      return;
    }
    document.querySelectorAll('.codeblock[data-lang]').forEach((node) => {
      const lang = node.dataset.lang;
      const editable = node.dataset.editable === 'true';
      const code = node.textContent.trim();
      node.textContent = '';
      // CodeMirror 5 API (fallback-safe)
      if (CodeMirror.fromTextArea || typeof CodeMirror === 'function') {
        const ta = document.createElement('textarea');
        ta.value = code;
        node.appendChild(ta);
        CodeMirror.fromTextArea(ta, {
          mode: this.codeMirrorMode(lang),
          lineNumbers: true,
          readOnly: !editable,
          theme: 'default',
        });
      }
    });
  },

  codeMirrorMode(lang) {
    const map = {
      python: 'python',
      java: 'text/x-java',
      javascript: 'javascript',
      js: 'javascript',
      sql: 'sql',
      html: 'htmlmixed',
    };
    return map[lang] || 'text/plain';
  },

  // --- TraceSlide: Step-Highlighting via Reveal-Fragments ---
  initTraceSteps() {
    Reveal.on('fragmentshown', (event) => {
      const slide = event.fragment.closest('section');
      if (!slide?.classList.contains('slide-trace')) return;
      const stepIdx = parseInt(event.fragment.dataset.stepIndex, 10);
      slide.querySelectorAll('.highlight-step').forEach((el) => {
        el.classList.toggle('active', parseInt(el.dataset.stepIndex, 10) === stepIdx);
      });
    });
  },

  // --- PredictSlide: Eingabefeld-Verhalten (Focus, Submit via Enter) ---
  initPredictFields() {
    document.addEventListener('keydown', (e) => {
      const slide = Reveal.getCurrentSlide();
      if (!slide?.classList.contains('slide-predict')) return;
      const field = slide.querySelector('.prediction-field[contenteditable]');
      if (e.key === 'f' && !e.ctrlKey && !e.metaKey && field) {
        field.focus();
      }
    });
  },
};

window.Presentation = Presentation;
```

- [ ] **Step 3.4: Browser-Smoke-Test**

```bash
cd /home/bernd/projects/skill-praesentation/template
python3 -m http.server 8080 &
SERVER_PID=$!
sleep 1
curl -s http://localhost:8080/index.html | head -20
kill $SERVER_PID
```

Expected: HTML-Head zeigt die neuen `<script>`-Tags für mermaid und codemirror.

Öffne manuell im Browser `http://localhost:8080/index.html`:
- Console darf keine Errors zeigen
- Leere Slides-Struktur ok
- `window.mermaid` und `window.CodeMirror` müssen in Console definiert sein

- [ ] **Step 3.5: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add template/css/utilities.css template/index.html template/js/primitives.js
git commit -m "feat(v2): wire Mermaid+CodeMirror into template, add utilities.css"
```

---

## Task 4: PredictSlide-Prototyp

**Files:**
- Create: `references/prototypes/predict-slide.md`

- [ ] **Step 4.1: Prototyp-Dokumentation schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/references/prototypes/predict-slide.md`:

```markdown
# PredictSlide

**Kognitiver Move:** Prediction (POE/PRIMM)

**Evidenz:** [[poe-methode]], [[primm-methode]], [[misconception-analyse]]

**Zweck:** Schüler trifft vor der Auflösung eine Vorhersage. Deckt Misconceptions auf, verbessert Retention durch Generation Effect.

## Wann einsetzen

- Konzept hat überraschendes oder gegen-intuitives Verhalten
- Misconceptions sind dokumentiert (Distraktor-Grundlage)
- Code-Themen (PRIMM-Variante)
- Consolidation Phase 2, Sicherung Phase 1

## Wann NICHT einsetzen

- Schüler haben kein Vorwissen (führt zu Raten ohne Struktur)
- Keine klare "richtige" Auflösung (Open-Ended-Fragen → eher ArbeitsauftragSlide)

## Template

```html
<section class="slide-predict">
  <h2>{{TITEL}}</h2>
  <div class="stimulus">
    {{STIMULUS_HTML}}
    <!-- z.B. <div class="codeblock" data-lang="python">…</div> oder Mermaid-Diagramm -->
  </div>
  <p class="prediction-prompt">{{PROMPT}}</p>
  <div class="prediction-field" contenteditable="true" aria-label="Vorhersage-Feld">
    {{PLACEHOLDER}}
  </div>
  <div class="reveal-content fragment">
    <h3>Auflösung</h3>
    {{AUFLOESUNG_HTML}}
  </div>
  <aside class="notes">
    Moderation: "{{MODERATION}}"
    Didaktik: POE/PRIMM-Predict (poe-methode, primm-methode). Aktiviert Vorwissen, macht Misconception sichtbar.
    Sozialform: Einzelarbeit 60–120 Sek., dann Plenum.
  </aside>
</section>
```

## Platzhalter

| Platzhalter | Bedeutung | Beispiel |
|---|---|---|
| `{{TITEL}}` | Slide-Überschrift | "Was passiert hier?" |
| `{{STIMULUS_HTML}}` | Das, worüber vorhergesagt wird | Code-Block, Query, Diagramm |
| `{{PROMPT}}` | Konkrete Vorhersage-Frage | "Welches Ergebnis liefert die Query?" |
| `{{PLACEHOLDER}}` | Hinweistext im Feld | "Schreibe deine Vorhersage hier …" |
| `{{AUFLOESUNG_HTML}}` | Die tatsächliche Antwort | Ergebnis-Tabelle, Code-Output, Diagramm |
| `{{MODERATION}}` | Lehrer-Ansage | "Bevor ich's zeige: was erwartet ihr?" |

## Boundary Conditions

- Stimulus muss *einen* klaren Gegenstand der Vorhersage haben — nicht mehrere Fragen gleichzeitig
- Auflösung ist Reveal-Fragment (erscheint auf Lehrer-Tastendruck), nicht sofort sichtbar
- Bei Code-Stimulus: Verwende `<div class="codeblock">` mit CodeMirror read-only
```

- [ ] **Step 4.2: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add references/prototypes/predict-slide.md
git commit -m "feat(v2): add PredictSlide prototype"
```

---

## Task 5: ContrastSlide-Prototyp

**Files:**
- Create: `references/prototypes/contrast-slide.md`

- [ ] **Step 5.1: Prototyp-Dokumentation schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/references/prototypes/contrast-slide.md`:

```markdown
# ContrastSlide

**Kognitiver Move:** Contrast (Contrasting Cases)

**Evidenz:** [[contrasting-cases]] (Schwartz & Bransford 1998), [[aktivierung-lehrervortrag]]

**Zweck:** Zwei Varianten nebeneinander, Schüler benennt den strukturellen Unterschied selbst. Erzwingt Struktur-Erkennung.

## Wann einsetzen

- Schwellenkonzepte mit nahem Alternativen-Raum (z.B. INNER vs. LEFT JOIN, Aggregation vs. Komposition, REST vs. GraphQL)
- Code/Diagramme/Fälle, die sich in *einer* Struktur-Dimension unterscheiden
- Consolidation Phase 2, als Alternative zu statischem Worked Example

## Wann NICHT einsetzen

- Varianten sind zu unterschiedlich (Überforderung)
- Nur eine Variante verfügbar (dann Worked Example)

## Template

```html
<section class="slide-contrast">
  <h2>{{TITEL}}</h2>
  <p class="leitfrage">{{LEITFRAGE}}</p>
  <div class="grid-2">
    <div class="case-a">
      <h3>{{CASE_A_LABEL}}</h3>
      {{CASE_A_HTML}}
    </div>
    <div class="case-b">
      <h3>{{CASE_B_LABEL}}</h3>
      {{CASE_B_HTML}}
    </div>
  </div>
  <div class="fragment callout">
    <strong>Strukturdimension:</strong> {{DIMENSION}}
  </div>
  <aside class="notes">
    Moderation: "{{MODERATION}}"
    Didaktik: Contrasting Cases (contrasting-cases). Lernende benennen Unterschied vor der Lehrer-Erklärung.
    Sozialform: Think-Pair-Share 90 Sek., dann Plenum-Sammlung.
  </aside>
</section>
```

## Platzhalter

| Platzhalter | Bedeutung | Beispiel |
|---|---|---|
| `{{TITEL}}` | Slide-Überschrift | "INNER vs. LEFT JOIN" |
| `{{LEITFRAGE}}` | Fokusiert den Vergleich | "Was ist der entscheidende Unterschied?" |
| `{{CASE_A_LABEL}}` | Name Variante A | "INNER JOIN" |
| `{{CASE_A_HTML}}` | Variante A | Code-Block, Diagramm, Beispiel |
| `{{CASE_B_LABEL}}` | Name Variante B | "LEFT JOIN" |
| `{{CASE_B_HTML}}` | Variante B | Code-Block, Diagramm, Beispiel |
| `{{DIMENSION}}` | Benennung der Strukturdimension | "Umgang mit nicht-matchenden Zeilen" |
| `{{MODERATION}}` | Lehrer-Ansage | "Beide tun fast dasselbe — was ist anders?" |

## Boundary Conditions

- Genau zwei Fälle. Drei oder mehr → eigene Prototyp-Erweiterung (noch nicht in v2).
- Fälle müssen *strukturell vergleichbar* sein — gleiche Tabellen bei JOIN-Varianten, gleicher Code-Skelett bei Verhaltens-Varianten.
- Strukturdimension darf erst als Fragment erscheinen (Schüler sollen sie selbst entdecken).
```

- [ ] **Step 5.2: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add references/prototypes/contrast-slide.md
git commit -m "feat(v2): add ContrastSlide prototype"
```

---

## Task 6: TraceSlide-Prototyp

**Files:**
- Create: `references/prototypes/trace-slide.md`

- [ ] **Step 6.1: Prototyp-Dokumentation schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/references/prototypes/trace-slide.md`:

```markdown
# TraceSlide

**Kognitiver Move:** Trace (schrittweise Sichtbarmachung)

**Evidenz:** [[notional-machines]], [[worked-examples]], [[subgoal-labeling]]

**Zweck:** Schrittweise Enthüllung eines Ablaufs mit Subgoal-Labels. Pro Schritt wird ein Zustands-Visual sichtbar. Externalisiert mentale Modelle.

## Wann einsetzen

- Algorithmen (Sortier, Suche, Rekursion)
- Code-Ausführung (Python, Java, JavaScript)
- Prozess-Flows (REST-Request durch Layer, CI/CD-Pipeline, DSGVO-Datenfluss)
- Consolidation Phase 2 als Worked Example

## Wann NICHT einsetzen

- Ablauf hat < 3 Schritte (dann reicht ContentSlide)
- Schüler müssen Schritte selbst herausfinden (dann PredictSlide + Auflösung)

## Template

```html
<section class="slide-trace">
  <h2>{{TITEL}}</h2>
  <div class="grid-2">
    <div class="trace-code">
      <div class="codeblock" data-lang="{{LANG}}">{{CODE}}</div>
    </div>
    <div class="trace-state">
      {{INITIAL_STATE_HTML}}
    </div>
  </div>
  <ol class="trace-steps">
    <li class="fragment highlight-step" data-step-index="1">
      <span class="subgoal-label">// Teilziel: {{SUBGOAL_1}}</span>
      {{STEP_1_DESC}}
    </li>
    <li class="fragment highlight-step" data-step-index="2">
      <span class="subgoal-label">// Teilziel: {{SUBGOAL_2}}</span>
      {{STEP_2_DESC}}
    </li>
    <!-- Weitere Schritte analog -->
  </ol>
  <aside class="notes">
    Moderation: "{{MODERATION}}"
    Didaktik: Notional Machine (notional-machines), Worked Example + Subgoal Labels (worked-examples, subgoal-labeling).
  </aside>
</section>
```

## Platzhalter

| Platzhalter | Bedeutung | Beispiel |
|---|---|---|
| `{{TITEL}}` | Slide-Überschrift | "Bubble Sort — Schritt für Schritt" |
| `{{LANG}}` | CodeMirror-Sprache | python, java, sql, javascript |
| `{{CODE}}` | Zu visualisierender Code | Python-Schleife |
| `{{INITIAL_STATE_HTML}}` | Start-Zustand | Tabelle, Array als Bar-Chart, Mermaid-Diagramm |
| `{{SUBGOAL_N}}` | Teilziel-Label pro Schritt | "Erste Zeile filtern" |
| `{{STEP_N_DESC}}` | Beschreibung des Schrittes | "Die Zeile mit umsatz>1000 wird behalten" |
| `{{MODERATION}}` | Lehrer-Ansage | "Wir gehen jeden Schritt einzeln durch …" |

## Interaktion

- Jeder Schritt als Reveal-Fragment
- Beim Drücken der Pfeiltaste: Schritt wird sichtbar, entsprechendes `.highlight-step`-Element im Code wird aktiv (via `initTraceSteps` in primitives.js)
- Zustands-Visual kann pro Schritt animiert werden (CSS-Transition)

## Boundary Conditions

- Max. 6 Schritte pro Slide (sonst Split auf zwei TraceSlides)
- Jeder Schritt hat Subgoal-Label
- Zustands-Visual räumlich neben Code (Spatial Contiguity)
```

- [ ] **Step 6.2: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add references/prototypes/trace-slide.md
git commit -m "feat(v2): add TraceSlide prototype"
```

---

## Task 7: NotionalMachineSlide-Prototyp

**Files:**
- Create: `references/prototypes/notional-machine-slide.md`

- [ ] **Step 7.1: Prototyp-Dokumentation schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/references/prototypes/notional-machine-slide.md`:

```markdown
# NotionalMachineSlide

**Kognitiver Move:** Reveal (versteckter Zustand sichtbar machen)

**Evidenz:** [[notional-machines]] (Sorva 2013), [[cognitive-load-theory]]

**Zweck:** Oberfläche + versteckter interner Zustand. Der Zustand wird per Fragment enthüllt. Zeigt, was "unter der Haube" passiert.

## Wann einsetzen

- React-State (`useState`-Hook)
- Subquery-Zwischenergebnisse
- HTTP-Request-Lifecycle (Server-State)
- Speicher-Layout (Java Stack/Heap, Python-Variablen)
- Datenbank-Transaktionen

## Wann NICHT einsetzen

- Kein echter "versteckter" Zustand vorhanden — dann ContentSlide
- Zustand ist der Haupt-Lerngegenstand selbst, nicht seine Verborgenheit — dann TraceSlide

## Template

```html
<section class="slide-notional-machine">
  <h2>{{TITEL}}</h2>
  <div class="surface">
    <h3>Was Schüler sehen</h3>
    {{SURFACE_HTML}}
  </div>
  <div class="hidden-state fragment">
    {{HIDDEN_STATE_HTML}}
  </div>
  <div class="connection fragment callout">
    <strong>Verbindung:</strong> {{VERBINDUNG}}
  </div>
  <aside class="notes">
    Moderation: "{{MODERATION}}"
    Didaktik: Notional Machine (notional-machines) — macht das mentale Modell der Programmausführung explizit.
  </aside>
</section>
```

## Platzhalter

| Platzhalter | Bedeutung | Beispiel |
|---|---|---|
| `{{TITEL}}` | Slide-Überschrift | "Was passiert bei setState()?" |
| `{{SURFACE_HTML}}` | Oberflächen-Repräsentation | Code-Snippet, UI-Screenshot |
| `{{HIDDEN_STATE_HTML}}` | Der verborgene Zustand | Mermaid-Diagramm, Tabelle, Kasten-Visualisierung |
| `{{VERBINDUNG}}` | Erklärung der Koppelung | "Re-Render wird ausgelöst, wenn State sich ändert" |
| `{{MODERATION}}` | Lehrer-Ansage | "Ihr sehr `setCount(1)`. Aber was passiert *intern*?" |

## Boundary Conditions

- Genau eine Oberfläche + ein versteckter Zustand
- Der Zustand erscheint als Fragment (nicht sofort sichtbar)
- Verbindung benennt den kausalen Zusammenhang (nicht "es ist halt so")
```

- [ ] **Step 7.2: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add references/prototypes/notional-machine-slide.md
git commit -m "feat(v2): add NotionalMachineSlide prototype"
```

---

## Task 8: ProbeSlide-Prototyp

**Files:**
- Create: `references/prototypes/probe-slide.md`

- [ ] **Step 8.1: Prototyp-Dokumentation schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/references/prototypes/probe-slide.md`:

```markdown
# ProbeSlide

**Kognitiver Move:** Manipulate (Direct Manipulation)

**Evidenz:** [[direct-manipulation-lernumgebungen]], [[explorable-explanations-im-unterricht]]

**Zweck:** Editierbares Element + unmittelbar sichtbare Wirkung. Schüler ändert Parameter/Code, sieht Effekt live. Achtung: ohne Sandbox-Execution sind die "Wirkungen" vordefiniert (Szenarien) oder DOM-basiert.

## Wann einsetzen

- Code-Modifikation mit vorher festgelegten Varianten (CodeMirror editierbar)
- Parameter-Exploration (Slider verändert Diagramm-Attribute)
- CSS/HTML-Exploration (Live-Preview im DOM)
- Nach einer TraceSlide als Vertiefung

## Wann NICHT einsetzen

- Keine sinnvolle Manipulation vorstellbar (dann ContentSlide)
- Echte Code-Execution wäre nötig (v2 ohne Sandbox — dann auf PredictSlide ausweichen)

## Template

```html
<section class="slide-probe">
  <h2>{{TITEL}}</h2>
  <p class="prompt">{{PROMPT}}</p>
  <div class="grid-2">
    <div class="probe-input">
      <h3>Eingabe</h3>
      <div class="codeblock" data-lang="{{LANG}}" data-editable="true">{{INITIAL_CODE}}</div>
    </div>
    <div class="probe-output">
      <h3>Wirkung</h3>
      <div class="output-visual">{{OUTPUT_HTML}}</div>
    </div>
  </div>
  <div class="scenario-hints fragment callout">
    <strong>Probier:</strong> {{SZENARIEN}}
  </div>
  <aside class="notes">
    Moderation: "{{MODERATION}}"
    Didaktik: Direct Manipulation (direct-manipulation-lernumgebungen). Hinweis: Ohne Execution-Sandbox sind "Wirkungen" vordefiniert — Lehrer zeigt die Szenarien, oder Schüler liest Code und sagt Wirkung vorher.
  </aside>
</section>
```

## Platzhalter

| Platzhalter | Bedeutung | Beispiel |
|---|---|---|
| `{{TITEL}}` | Slide-Überschrift | "Ändere die WHERE-Klausel" |
| `{{PROMPT}}` | Was soll verändert werden | "Filtere nur Bestellungen über 100 EUR" |
| `{{LANG}}` | CodeMirror-Sprache | sql, python, javascript |
| `{{INITIAL_CODE}}` | Start-Code | Eine bearbeitbare Query |
| `{{OUTPUT_HTML}}` | Erwartete Wirkung | Ergebnis-Tabelle, DOM-Preview |
| `{{SZENARIEN}}` | Vorschläge für Varianten | "WHERE preis > 100 ; WHERE kunde = 'X'" |
| `{{MODERATION}}` | Lehrer-Ansage | "Wer hat eine Idee, wie man's ändern könnte?" |

## Boundary Conditions

- ProbeSlide hat *eine* manipulierbare Eingabe — nicht mehrere gleichzeitig
- Ohne Sandbox-Execution: Szenarien als Fragment-Auflösung, nicht als Live-Reaktion
- Für echte Live-Reaktion: JS-basierte DOM-Manipulation möglich (CSS-Sliders → CSS-Variablen), muss pro Thema entschieden werden
```

- [ ] **Step 8.2: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add references/prototypes/probe-slide.md
git commit -m "feat(v2): add ProbeSlide prototype"
```

---

## Task 9: Prototypen-Index, Tools-Referenz, Topic-Map

**Files:**
- Create: `references/prototypen.md`
- Create: `references/tools.md`
- Create: `references/topic-primitive-map.md`

- [ ] **Step 9.1: Prototypen-Index schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/references/prototypen.md`:

```markdown
# Prototypen (Schicht 2) — Kuratierte HTML-Patterns

Fach-neutrale Templates, organisiert nach kognitivem Move. **Erste Wahl** — Eigenentwurf braucht Begründung in Phase 2 Outline.

## Existierende (v1, unverändert)

| Prototyp | Move | Datei |
|---|---|---|
| TitleSlide | Admin | siehe `slide-primitives.md` (legacy) |
| ArbeitsauftragSlide | Aktivierung | siehe `slide-primitives.md` (legacy) |
| MerksatzSlide | Sicherung | siehe `slide-primitives.md` (legacy) |
| ConcepTestSlide | Classify | siehe `slide-primitives.md` (legacy) |
| ContentSlide | Generisch | siehe `slide-primitives.md` (legacy) |

## Neu in v2

| Prototyp | Move | Datei |
|---|---|---|
| [PredictSlide](./prototypes/predict-slide.md) | Prediction | `prototypes/predict-slide.md` |
| [ContrastSlide](./prototypes/contrast-slide.md) | Contrast | `prototypes/contrast-slide.md` |
| [TraceSlide](./prototypes/trace-slide.md) | Trace | `prototypes/trace-slide.md` |
| [NotionalMachineSlide](./prototypes/notional-machine-slide.md) | Reveal | `prototypes/notional-machine-slide.md` |
| [ProbeSlide](./prototypes/probe-slide.md) | Manipulate | `prototypes/probe-slide.md` |

## Verwendungs-Regel

- Phase 2 Outline wählt Prototyp basierend auf Move-Bedarf und Topic-Family (siehe `topic-primitive-map.md`)
- Eigenentwurf erlaubt, wenn Innovationsgrad ≠ konservativ (siehe `prompts/phase-0-debrief.md`)
- Eigenentwurf muss in Outline-Tabelle Spalte "Prototyp-Abweichung" begründen
- Schicht-1-Verfassung (`verfassung.md`) gilt immer — auch für Eigenentwürfe
```

- [ ] **Step 9.2: Tools-Referenz schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/references/tools.md`:

```markdown
# Rendering-Tools (Schicht 3) — Technische Bausteine ohne Didaktik-Semantik

Einsetzbar in *jedem* Prototyp oder Eigenentwurf. Tragen keine eigene Slide-Struktur und keine Speaker-Notes-Regeln.

## Mermaid

**Klassenname:** `<div class="mermaid">…</div>`

**Zweck:** Alle Diagramm-Typen.

**Unterstützte Diagramme:**
- `flowchart` — Entscheidungsbäume, Prozess-Flows (DSGVO, Testing-Strategie)
- `sequenceDiagram` — REST-Requests, API-Interaktionen, Protokolle
- `classDiagram` — UML Klassen (Assoziation, Aggregation, Komposition, Vererbung)
- `stateDiagram-v2` — Zustandsautomaten (React-State, Workflow-Engines)
- `erDiagram` — ER-Modelle (Datenbank-Schema)
- `gitGraph` — Git-Historie-Visualisierung

**Beispiel (Sequence):**

```html
<div class="mermaid">
sequenceDiagram
  Client->>Server: GET /api/users
  Server->>Database: SELECT * FROM users
  Database-->>Server: Rows
  Server-->>Client: 200 OK (JSON)
</div>
```

**Hinweise:**
- `securityLevel: 'strict'` ist gesetzt — keine eingebetteten HTML-Scripts
- Rendering passiert bei Slide-Wechsel via `Presentation.initMermaid()`
- Bei Fehlern: Console-Output, Slide zeigt rohen Mermaid-Text

## CodeMirror

**Klassenname:** `<div class="codeblock" data-lang="…" data-editable="true|false">…</div>`

**Zweck:** Syntax-Highlighting und optional editierbare Code-Darstellung.

**Unterstützte Sprachen:**
- `python`, `java`, `javascript`, `sql`, `html`

**Beispiel (read-only):**

```html
<div class="codeblock" data-lang="python">
def bubble_sort(arr):
    for i in range(len(arr)):
        for j in range(len(arr) - 1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr
</div>
```

**Beispiel (editierbar, für ProbeSlide):**

```html
<div class="codeblock" data-lang="sql" data-editable="true">
SELECT * FROM orders WHERE total > 100;
</div>
```

**Hinweise:**
- Initialisierung beim Page-Load via `Presentation.initCodeBlocks()`
- Inhalt wird beim Rendern in `<textarea>` umgewandelt und durch CodeMirror-Editor ersetzt
- Editierbare Blöcke haben dickeren Rand (visuelles Signal)

## Step-Reveal-Utility

**CSS-Klasse:** `.highlight-step` + `data-step-index="N"`

**Zweck:** In TraceSlide-Prototyp: Element wird aktiv markiert, wenn zugehöriges Fragment angezeigt wird.

**Beispiel:**

```html
<div class="codeblock" data-lang="python">
def f():
  <span class="highlight-step" data-step-index="1">x = 1</span>
  <span class="highlight-step" data-step-index="2">return x + 1</span>
</div>
```

Die Koppelung Fragment ↔ Highlight passiert via `Presentation.initTraceSteps()`.

## Layout-Utilities (CSS-only)

| Klasse | Zweck |
|---|---|
| `.grid-2` | 2-Spalten-Layout für ContrastSlide, TraceSlide |
| `.callout` | Hervorgehobener Block (z.B. für Merksätze, Hinweise) |
| `.callout-warning` | Roter Callout für Misconception-Warnungen |
| `.subgoal-label` | Grau-kursives Teilziel-Label inline in Code |
| `.prediction-field` | Eingabefeld-Stil für PredictSlide |
| `.hidden-state` | Gerasterter Block mit "▼ Interner Zustand"-Label für NotionalMachineSlide |

## Abgrenzung Tools ↔ Prototypen

| Merkmal | Tool | Prototyp |
|---|---|---|
| Slide-Struktur? | Nein | Ja |
| Speaker-Notes? | Nein | Pflicht |
| Didaktik-Semantik? | Nein | Ja |
| In mehreren Prototypen nutzbar? | Ja | Nein (Prototyp ist in sich geschlossen) |

Neue Ideen werden anhand dieser Matrix eingeordnet.
```

- [ ] **Step 9.3: Topic-Primitive-Map schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/references/topic-primitive-map.md`:

```markdown
# Topic-Primitive-Map — Cheat-Sheet für Phase 2

Ordnet Topic-Familie (siehe `prompts/phase-1-context.md`, Feld `topic_family`) empfehlenswerten Moves und Rendering-Tools zu. **Kein Zwang** — Phase 2 kann abweichen, muss dann begründen.

## Familien-Matrix

| Familie | Beispiele | Primär-Moves | Rendering | Empfohlene Prototypen |
|---|---|---|---|---|
| **code** | Python, Java, SQL, JavaScript, HTML/CSS | Trace, Predict, Manipulate | CodeMirror (read-only oder editierbar) | TraceSlide, PredictSlide, ProbeSlide |
| **diagramm** | UML (Klassen/Sequenz/State), ER | Contrast, Classify | Mermaid | ContrastSlide, ConcepTestSlide, ContentSlide (Mermaid inline) |
| **flow** | REST Request/Response, Spring Boot Layer, CI/CD, DSGVO-Datenfluss | Trace, Reveal | Mermaid (flowchart/sequence) | TraceSlide, NotionalMachineSlide |
| **policy** | DSGVO-Rechtsgrundlagen, Testing-Strategie, Architektur-Entscheidungen | Classify, Contrast | ConcepTest + optional Mermaid Decision-Tree | ConcepTestSlide, ContrastSlide |
| **algorithmus** | Sortier-Algorithmen, Array-Operationen, Rekursion | Trace, Predict | CodeMirror + SVG/CSS Bar-Chart | TraceSlide, PredictSlide |
| **konzept** | Ethik-Modelle, Soft-Skills, abstrakte Begriffe | Contrast, Classify | Text + optional einfache Grafik | ContentSlide, ContrastSlide, MerksatzSlide |

## Kombinationen

Ein Thema gehört oft zu mehreren Familien. Beispiele:

- **SQL JOINs** → primär `code`, sekundär `flow` (Daten-Transformation) → TraceSlide mit CodeMirror + Tabellen-Visualisierung, plus ContrastSlide für INNER vs. LEFT
- **React useState** → primär `code`, sekundär `flow` → NotionalMachineSlide (State unter Oberfläche) + TraceSlide
- **Bubble Sort** → `algorithmus` + `code` → TraceSlide mit CodeMirror + SVG-Bars pro Schritt
- **DSGVO-Rechtsgrundlagen** → `policy` → ConcepTestSlide mit Fallklassifikation, ContrastSlide Art. 6 Abs. 1 lit. a vs. f
- **Spring Boot Request-Flow** → `flow` → TraceSlide mit Mermaid sequenceDiagram

## Entscheidungs-Heuristik

1. **Einstieg (Phase 1):** Wähle aus Einstiegs-Palette (5 Varianten, siehe Phasenmodelle)
2. **Kern-Move identifizieren:** Welchen kognitiven Prozess willst du aktivieren?
   - "Ich will, dass sie erst raten, dann sehen" → **Predict**
   - "Ich will, dass sie zwei Varianten vergleichen" → **Contrast**
   - "Ich will, dass sie einen Ablauf verstehen" → **Trace**
   - "Ich will, dass sie den versteckten Zustand sehen" → **Reveal** (NotionalMachine)
   - "Ich will, dass sie etwas ausprobieren" → **Manipulate** (Probe)
   - "Ich will Misconceptions abfragen" → **Classify** (ConcepTest)
3. **Topic-Familie auswählen** → Rendering
4. **Prototyp wählen** aus obigen Empfehlungen
5. Falls keiner passt: Eigenentwurf mit Begründung (siehe Phase 2)
```

- [ ] **Step 9.4: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add references/prototypen.md references/tools.md references/topic-primitive-map.md
git commit -m "feat(v2): add prototypen index, tools reference, topic-primitive map"
```

---

## Task 10: Phase-0-Debrief erweitern

**Files:**
- Modify: `prompts/phase-0-debrief.md`

- [ ] **Step 10.1: Komplettes Rewrite**

Ersetze `/home/bernd/projects/skill-praesentation/prompts/phase-0-debrief.md` vollständig durch:

```markdown
# Phase 0: Lehrer-Debrief

**Zweck:** Vor jeder Generierung holt der Skill fünf Informationen vom Lehrer ein. Dies ist nicht optional.

## Interaktion

Frage den Nutzer nacheinander (je eine Frage pro Turn):

1. **"Was ist in der Stunde gut gelaufen?"**
   Erwarte 1–3 Sätze. Wenn ausweichend: "Hat jemand besonders gut eine Aufgabe gelöst? Hat etwas überrascht?"

2. **"Wo hat die Klasse gehakt? Welche Fehler sind häufig aufgetreten?"**
   Erwarte Liste von 1–5 konkreten Fehlern/Misconceptions. Bei vage: "Was genau hat nicht funktioniert?"

3. **"Welche Schülerergebnisse willst du in der Consolidation aufgreifen?"** (nur Purpose=Consolidation)
   Erwarte 1–3 Beispiele. Bei Sicherung/Recap entfällt diese Frage.

4. **"Welcher Einstiegstyp passt zum Inhalt?"** (neu in v2)
   Biete die fünf Varianten als Auswahl an:
   - (a) **POE** (Predict-Observe-Explain) — bei gegen-intuitivem Verhalten
   - (b) **PRIMM-Predict** — bei Code-Themen
   - (c) **ConcepTest direkt** — bei misconception-lastigen Themen
   - (d) **Contrasting Cases + TPS** — bei Schwellenkonzepten
   - (e) **Strukturiertes Retrieval** mit Leitfrage — bei Fakten-Sicherung

   Schlage einen Default vor (basierend auf Purpose + Thema), Lehrer kann überstimmen.

5. **"Wie experimentell darf die Präsentation sein?"** (neu in v2)
   - (a) **Konservativ** — nur bewährte Prototypen, keine Eigenentwürfe
   - (b) **Gemischt** — Prototypen dominieren, 1–2 innovative Slides erlaubt (DEFAULT)
   - (c) **Experimentell** — maximale Freiheit pro Folie

In Modus A (standalone) zusätzlich:
6. **"Erfahrungsstand der Klasse: Novizen, Gemischt oder Fortgeschritten?"** → steuert Subgoal-Dichte.

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

## Einstiegstyp
{{ANTWORT_4}} (POE | PRIMM-Predict | ConcepTest | Contrasting Cases | Strukturiertes Retrieval)

## Innovationsgrad
{{ANTWORT_5}} (konservativ | gemischt | experimentell)

## Klassen-Niveau (nur Modus A)
{{ANTWORT_6}}
```

## Zeitbudget

3–4 Minuten reale Interaktion — die zwei neuen Fragen sind kurz, Lehrer wählt aus Liste.
```

- [ ] **Step 10.2: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add prompts/phase-0-debrief.md
git commit -m "feat(v2): extend Phase 0 debrief with Einstiegstyp + Innovationsgrad"
```

---

## Task 11: Phase-1-Context um Topic-Family-Klassifikation erweitern

**Files:**
- Modify: `prompts/phase-1-context.md`

- [ ] **Step 11.1: Aktuellen Inhalt lesen**

```bash
cat /home/bernd/projects/skill-praesentation/prompts/phase-1-context.md
```

- [ ] **Step 11.2: Neuen Abschnitt am Ende einfügen**

Append an `/home/bernd/projects/skill-praesentation/prompts/phase-1-context.md` — vor dem letzten Abschnitt (z.B. "## Zeitbudget" oder "## Ausgabe") folgenden Block einfügen:

```markdown
## Topic-Family-Klassifikation (neu in v2)

Klassifiziere das Thema in eine von sechs Familien. Die Klassifikation steuert Rendering-Entscheidungen in Phase 2 und die Visualisierungs-Pflicht in Phase 4.

| Familie | Passt bei |
|---|---|
| **code** | Python, Java, SQL, JavaScript, HTML/CSS — jede Sprache mit Syntax |
| **diagramm** | UML (Klassen/Sequenz/State), ER-Modelle — statische Beziehungen |
| **flow** | REST Request/Response, Spring Boot Layer, CI/CD, DSGVO-Datenfluss — Prozesse |
| **policy** | DSGVO-Rechtsgrundlagen, Testing-Strategie, Architektur-Entscheidungen — Regeln/Kriterien |
| **algorithmus** | Sortier, Array-Operationen, Rekursion — Zustandsübergänge |
| **konzept** | Ethik, Soft-Skills, abstrakte Begriffe — keine zustandsbehaftete Repräsentation |

**Primär + optional sekundär.** Beispiel: SQL JOINs → primär `code`, sekundär `flow`.

**Ausgabe in `context.md`:**

```yaml
topic: "{{THEMA}}"
topic_family_primary: "code"
topic_family_secondary: "flow"  # optional
```

Der Lehrer bestätigt die Klassifikation im Debrief-Gate (einfache Rückfrage: "Ich klassifiziere als `code` + `flow`, passt das?"). Bei Widerspruch: anpassen.

**Wichtig:** Die Klassifikation ist relevant für Phase 4 QA: Wenn `topic_family_primary` in {`code`, `algorithmus`, `flow`, `diagramm`}, dann greift die **Visualisierungs-Pflicht** (mindestens ein TraceSlide / NotionalMachineSlide / ContrastSlide mit Mermaid oder CodeMirror — keine reine Textwüste).
```

- [ ] **Step 11.3: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add prompts/phase-1-context.md
git commit -m "feat(v2): add topic-family classification to Phase 1"
```

---

## Task 12: Phase-2-Outline um Prototyp-Abweichung-Spalte erweitern

**Files:**
- Modify: `prompts/phase-2-outline.md`

- [ ] **Step 12.1: Aktuellen Inhalt lesen und verstehen**

```bash
cat /home/bernd/projects/skill-praesentation/prompts/phase-2-outline.md
```

- [ ] **Step 12.2: Im Abschnitt "Outline-Format" Spalte ergänzen**

Finde im File die Outline-Tabellen-Spezifikation (Markdown-Tabelle mit Spalten wie "Nr | Phase | Inhalt | Primitive | ..."). Ersetze durch:

```markdown
## Outline-Format (v2)

Erzeuge eine Markdown-Tabelle mit folgenden Spalten:

| Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer |

**Spalten-Definitionen:**

- **Nr** — laufende Nummer der Slide
- **Phase** — Phasenmodell-Phase (z.B. "Consolidation Phase 2 - Einordnung")
- **Inhalt** — 1 Satz, was auf der Slide passiert
- **Move** — kognitiver Move (Predict | Contrast | Trace | Reveal | Manipulate | Classify | Sicherung | Admin)
- **Prototyp** — Prototyp-Name (TitleSlide, ArbeitsauftragSlide, PredictSlide, etc.) ODER "Eigenentwurf"
- **Prototyp-Abweichung** — Wenn Prototyp = "Eigenentwurf": Begründung *welcher Prototyp warum nicht passt*. Sonst leer (—).
- **Rendering** — CodeMirror | Mermaid | Text | Grid-2 | ...
- **Sozialform** — Einzel | Partner | Plenum
- **Dauer** — in Minuten

## Eigenentwurf-Regeln

- Erlaubt nur bei Innovationsgrad ≠ konservativ (aus `debrief.md`)
- "Prototyp-Abweichung" muss mindestens einen Satz enthalten, der auf einen konkreten Prototyp verweist ("ClassifySlide deckt die räumliche Zuordnungs-Struktur nicht ab" — OK; "war mir so eingefallen" — NICHT OK)
- Bei Innovationsgrad = experimentell entfällt die Begründungs-Pflicht (Spalte kann leer bleiben)
- Bei Innovationsgrad = gemischt: max. 2 Eigenentwürfe pro Präsentation

## Lehrer-Gate (unverändert aus v1)

Zeige die Tabelle dem Lehrer. Kein Weitergehen ohne explizite Freigabe ("passt", "ok", "weiter"). Iteriere bei Korrekturen.
```

Die Änderung entspricht einer Ersetzung des bestehenden Outline-Abschnitts. Falls der bestehende Text anders strukturiert ist, den bestehenden Outline-Abschnitt durch obigen Block ersetzen.

- [ ] **Step 12.3: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add prompts/phase-2-outline.md
git commit -m "feat(v2): extend Phase 2 outline with Move + Eigenentwurf-Begründung"
```

---

## Task 13: Phase-3-Slides um neue Prototypen-Referenz erweitern

**Files:**
- Modify: `prompts/phase-3-slides.md`

- [ ] **Step 13.1: Aktuellen Inhalt lesen**

```bash
cat /home/bernd/projects/skill-praesentation/prompts/phase-3-slides.md
```

- [ ] **Step 13.2: Referenz-Verweise aktualisieren**

Finde im File die Passage, die auf `references/slide-primitives.md` verweist. Ersetze durch einen Verweis auf die neuen v2-Referenzen. Füge am Anfang des Files oder nach der Intro folgenden Block ein:

```markdown
## Referenzen (v2)

Beim Generieren der Slide-HTMLs:

- **`references/verfassung.md`** — harte Regeln (gelten für alle Slides). Einhaltung ist Pflicht.
- **`references/prototypen.md`** + **`references/prototypes/*.md`** — Template-Vorlagen für bewährte Moves
- **`references/tools.md`** — Mermaid, CodeMirror und Layout-Utilities
- **`references/speaker-notes-muster.md`** — Speaker-Notes-Aufbau (unverändert aus v1)
- **`references/slide-primitives.md`** — **LEGACY**, enthält nur noch v1-Primitives (TitleSlide, ArbeitsauftragSlide, MerksatzSlide, ConcepTestSlide, ContentSlide). Für neue Prototypen: siehe `prototypes/`-Ordner.

## Eigenentwurf-Regel

Outline-Einträge mit Prototyp = "Eigenentwurf":
- Muss Schicht-1-Verfassung vollständig einhalten (maschinell geprüft in Phase 4)
- Muss eine eigene Speaker-Notes-Sektion mit "Moderation:" + "Didaktik:" enthalten
- Darf Tools (Mermaid, CodeMirror, Grid-2) frei nutzen
- Darf neue CSS-Klassen einführen — falls, dann in der generierten `css/praesentation.css` lokal zum Projekt (nicht in `design-tokens.css` oder `utilities.css`)
```

- [ ] **Step 13.3: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add prompts/phase-3-slides.md
git commit -m "feat(v2): update Phase 3 slide generation to reference v2 prototypes"
```

---

## Task 14: Phase-4-QA um Mayer-Checks erweitern

**Files:**
- Modify: `prompts/phase-4-qa.md`

- [ ] **Step 14.1: Aktuellen Inhalt lesen**

```bash
cat /home/bernd/projects/skill-praesentation/prompts/phase-4-qa.md
```

- [ ] **Step 14.2: Rubric-Abschnitt erweitern**

Finde den Abschnitt "Phase 4a — Rubric-Check" (oder gleichwertig). Ersetze den Rubric-Block durch:

```markdown
## Phase 4a — Rubric-Check (automatisch, v2-erweitert)

Prüfe die HTML-Ausgabe gegen die **Verfassung (Schicht 1)** — siehe `references/verfassung.md`. Alle Regeln sind mechanisch prüfbar:

### Prüfschritte

1. **Speaker Notes Pflicht** — Jede `<section>` hat `<aside class="notes">` mit "Moderation:" + "Didaktik:". Violation = Major.
2. **Bullet-Limit** — Jede `<ul>`/`<ol>` hat ≤ 5 `<li>` direkt. Violation = Major.
3. **Timer-Durations** — `data-duration` in Timer-Elements zwischen 30 und 600. Violation = Major.
4. **ConcepTest-Distraktoren** — Jede `.slide-conceptest` hat ≥ 2 `.option.misconception` mit `data-misconception`-Attribut. Violation = Major.
5. **Redundancy-Check** — Wenn `aside.notes` einen Satz mit "Moderation:" enthält, darf dieser Satz nicht wortgleich im sichtbaren Slide-Text stehen. Wortgleich heißt: identische Substring-Match von ≥ 6 Wörtern. Violation = Major.
6. **Spatial-Contiguity-Heuristik** — Jede Slide mit `<pre><code>` oder `.codeblock` muss eines enthalten: Inline-Kommentar (`//` oder `#`), `.callout`-Element mit Code-Bezug, oder `.subgoal-label`. Fehlt: Verdachts-Flag → Kramer-Review.
7. **Visualisierungs-Pflicht** — Wenn `context.md` `topic_family_primary` ∈ {code, algorithmus, flow, diagramm}: mindestens eine Slide mit `.codeblock` (CodeMirror) oder `.mermaid` (Mermaid). Fehlt: Major.
8. **Design-Tokens** — Kein `style="color:..."`, `style="background:..."`, `style="font-..."` in Slide-Content. Minor → Kramer-Review.
9. **Fehlerkultur-Disclaimer** — Generierte `README.md` enthält Substring "Psychological Safety" oder "fehlerkultur-im-unterricht". Fehlt: Minor.

### Severity-Handling

- **Major-Violation:** Fix-Runde. Der Slide-Generator bekommt die Liste der Violations, korrigiert, QA läuft erneut.
- **Minor-Violation:** In die Kramer-Mini-Review-Dispatch eingespeist (siehe Phase 4b).
- **Fatal:** Sollte nicht erreicht werden — wenn doch: Phase 3 komplett neu starten.

### Violation-Report-Format

Nach dem Check schreibe `qa-rubric.md` mit:

```markdown
# QA Rubric — {{DATUM}}

## Verfassungs-Check

| Regel | Status | Details |
|---|---|---|
| Speaker Notes Pflicht | ✓ PASS / ✗ FAIL | z.B. "Slide 4 ohne aside.notes" |
| Bullet-Limit | ✓ PASS | — |
| ... | ... | ... |

## Summary

- Major-Violations: {{N}}
- Minor-Violations: {{N}}
- Aktion: {{FIX_RUNDE | KRAMER_REVIEW | FREIGABE}}
```
```

- [ ] **Step 14.3: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add prompts/phase-4-qa.md
git commit -m "feat(v2): extend Phase 4 QA with Mayer-checks and visualization-must"
```

---

## Task 15: Kramer-Mini-Review um "Seductive Detail" erweitern

**Files:**
- Modify: `prompts/kramer-mini-review.md`

- [ ] **Step 15.1: Aktuellen Inhalt lesen**

```bash
cat /home/bernd/projects/skill-praesentation/prompts/kramer-mini-review.md
```

- [ ] **Step 15.2: Neuen Fokus-Punkt ergänzen**

Im Prompt-Text, der den Review-Fokus listet, ergänze als neuen Punkt:

```markdown
- **Seductive Detail?** Enthält die Präsentation dekorative Elemente (Animationen, Icons, Fun-Facts, Hintergrundgrafiken), die keine didaktische Funktion haben? Mayer (2014) zeigt, dass solche Details die Retention reduzieren, auch wenn sie "Engagement" erhöhen. Prüfe jede Slide: Hat jedes Element einen Lernzweck, oder ist es nur "Deko"?
```

Finde den Punkt im File und füge ihn in die Liste der Review-Foci ein. Achte darauf, dass die Minor-Violations aus Phase 4a (Design-Tokens, Disclaimer) im Input-Kontext ankommen: ergänze im Prompt-Intro, falls noch nicht vorhanden:

```markdown
**Input-Kontext:** Zusätzlich zu den Slides bekommst du die Liste der Minor-Violations aus Phase 4a. Prüfe diese bei deinem Review mit.
```

- [ ] **Step 15.3: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add prompts/kramer-mini-review.md
git commit -m "feat(v2): extend Kramer review with Seductive Detail focus"
```

---

## Task 16: Phasenmodelle — Einstiegs-Palette

**Files:**
- Modify: `specs/phasenmodell-sicherung.md`
- Modify: `specs/phasenmodell-consolidation.md`

- [ ] **Step 16.1: Phasenmodell-Sicherung Phase 1 umschreiben**

Ersetze in `/home/bernd/projects/skill-praesentation/specs/phasenmodell-sicherung.md` den Abschnitt "Phase 1 — Retrieval-Warmup (3 min)" durch:

```markdown
## Phase 1 — Aktivierungs-Einstieg (3 min) — v2 mit Einstiegs-Palette

**Zweck:** Aktivierung des Vorwissens vor der Sicherung. Statt einer Standard-Variante stehen fünf evidenzbasierte Varianten zur Auswahl. Die Wahl wird in Phase 0 Debrief (Frage 4) getroffen.

### Einstiegs-Palette

| Variante | Primitive | Slide-Plan | Evidenz | Passt bei |
|---|---|---|---|---|
| **(a) POE** (Predict-Observe-Explain) | PredictSlide | 1× PredictSlide mit Stimulus aus Vorstunde | poe-methode, misconception-analyse | Konzept mit überraschendem Verhalten |
| **(b) PRIMM-Predict** | PredictSlide + codeblock | 1× PredictSlide mit Code-Stimulus | primm-methode | Alle Code-Themen |
| **(c) ConcepTest direkt** | ConcepTestSlide | 1× ConcepTestSlide mit Kernfrage aus Vorstunde | peer-instruction | Misconception-lastige Themen |
| **(d) Contrasting Cases + TPS** | ContrastSlide + ArbeitsauftragSlide | 1× ContrastSlide + 1× ArbeitsauftragSlide (TPS, 90s) | contrasting-cases, aktivierung-lehrervortrag | Schwellenkonzepte mit zwei nahen Varianten |
| **(e) Strukturiertes Retrieval** | ArbeitsauftragSlide | 1× ArbeitsauftragSlide mit **Leitfrage** (nicht nur "was wisst ihr noch?") | retrieval-practice | Fakten-/Regel-Sicherung |

### Default-Wahl

Wenn Lehrer in Phase 0 keinen Einstieg wählt:
- Topic-Family `code` oder `algorithmus` → **(b) PRIMM-Predict**
- Topic-Family `diagramm` oder `flow` → **(c) ConcepTest** (wenn Misconceptions dokumentiert) sonst **(d) Contrasting Cases**
- Topic-Family `policy` oder `konzept` → **(e) Strukturiertes Retrieval** mit Leitfrage

### Didaktische Basis

Rosenshine P1 (Daily Review) + P10 (Weekly Review), retrieval-practice, poe-methode, primm-methode, peer-instruction, contrasting-cases.

### Moderationsansage (Beispiele)

- Variante (a): "Bevor ich Folien zeige: Was erwartet ihr hier? — Schreibt es auf, 60 Sekunden."
- Variante (b): "Lest den Code. Was gibt er aus? — Vorhersage aufschreiben, dann schauen wir zusammen."
- Variante (c): "Kurzer ConcepTest zur letzten Stunde. Hebt die Hand, dann diskutieren wir."
- Variante (d): "Zwei Varianten — was ist der Unterschied? — Partner, 90 Sekunden."
- Variante (e): "Leitfrage: {{LEITFRAGE}}. Schreibt 90 Sekunden, dann sammeln wir."
```

- [ ] **Step 16.2: Phasenmodell-Consolidation Phase 1 umschreiben**

Ersetze in `/home/bernd/projects/skill-praesentation/specs/phasenmodell-consolidation.md` den Abschnitt "Phase 1 — Retrieval + Schüler-Versuche sammeln (3 min)" durch:

```markdown
## Phase 1 — Aktivierungs-Einstieg + Schüler-Versuche (3 min) — v2 mit Einstiegs-Palette

**Zweck:** Aktivierung und zugleich Sammlung der Schüler-Ansätze aus der vorigen Lernsituation. Die Einstiegs-Variante wird in Phase 0 Debrief (Frage 4) gewählt.

### Einstiegs-Palette

Die fünf Varianten aus `phasenmodell-sicherung.md` gelten hier gleichermaßen. Zusätzlich:

- **Sammel-Charakter betonen:** In Consolidation geht es *auch* darum, die Schüler-Ansätze sichtbar zu machen. Die Einstiegs-Variante wird so gewählt, dass Plenum-Sammlung natürlich folgt:
  - (a) POE: Vorhersagen werden gesammelt
  - (b) PRIMM-Predict: Vorhersagen werden gesammelt
  - (c) ConcepTest: Abstimmungs-Verteilung zeigt, wer welcher Meinung war
  - (d) Contrasting Cases: TPS-Ergebnisse werden gesammelt
  - (e) Strukturiertes Retrieval: Antworten werden gesammelt

### Default-Wahl

Wie in Sicherung. Zusätzlich: Bei Consolidation mit starkem Schüler-Lösungs-Output aus der Lernsituation ist **(d) Contrasting Cases** ein starker Default — zwei Schüler-Ansätze werden verglichen.

### Didaktische Basis

retrieval-practice, aktivierung-lehrervortrag, rosenshine P1, plus Einstiegs-Variante-spezifische Evidenz.

### Moderationsansage

(Siehe phasenmodell-sicherung.md; gleiche Muster. Bei Consolidation zusätzlicher Sammel-Impuls nach der Schüler-Phase: "Ich höre jetzt rein — was habt ihr aufgeschrieben?")
```

- [ ] **Step 16.3: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add specs/phasenmodell-sicherung.md specs/phasenmodell-consolidation.md
git commit -m "feat(v2): replace Phase 1 with Einstiegs-Palette in both Phasenmodelle"
```

---

## Task 17: SKILL.md-Orchestrierung aktualisieren

**Files:**
- Modify: `SKILL.md`

- [ ] **Step 17.1: Aktuellen Inhalt lesen**

```bash
cat /home/bernd/projects/skill-praesentation/SKILL.md
```

- [ ] **Step 17.2: Verweise auf neue Referenzen einbauen**

Finde im File die Passagen, die auf `references/slide-primitives.md` verweisen. Aktualisiere sie:

Ersetze (Bsp.):
```
**Lies:** `prompts/phase-3-slides.md`, `references/slide-primitives.md`, `references/speaker-notes-muster.md`.
```

Durch:
```
**Lies:** `prompts/phase-3-slides.md`, `references/verfassung.md`, `references/prototypen.md` (und zugehörige `prototypes/*.md`), `references/tools.md`, `references/topic-primitive-map.md`, `references/speaker-notes-muster.md`.
```

Im Abschnitt "KERNPRINZIPIEN-INDEX" am Ende ergänze als neuen Punkt:

```markdown
11. **Schicht-1-Verfassung ist nicht verhandelbar** — Mayer-Prinzipien, Speaker Notes, Design-Tokens gelten immer, auch bei Eigenentwürfen. Phase 4 QA prüft maschinell (`references/verfassung.md`).
12. **Topic-Family in Phase 1 klassifizieren** — steuert Rendering und Visualisierungs-Pflicht. Bei `code` / `algorithmus` / `flow` / `diagramm` ist mindestens ein visualisierter Primitive Pflicht.
13. **Prototypen sind erste Wahl, Eigenentwurf braucht Begründung** — außer bei Innovationsgrad = experimentell.
```

Im Abschnitt "PHASE 0: LEHRER-DEBRIEF" ändere "Stelle die drei Pflichtfragen" auf "Stelle die fünf Pflichtfragen (plus Klassen-Niveau in Modus A)".

- [ ] **Step 17.3: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add SKILL.md
git commit -m "feat(v2): update SKILL.md with v2 references and Kernprinzipien"
```

---

## Task 18: Deprecate slide-primitives.md als Stub

**Files:**
- Modify: `references/slide-primitives.md`

- [ ] **Step 18.1: Aktuelle Datei zur Legacy umwidmen**

Ersetze `/home/bernd/projects/skill-praesentation/references/slide-primitives.md` vollständig durch:

```markdown
# Slide-Primitives — LEGACY (v1)

> **Hinweis:** Mit v2 gilt die Drei-Schicht-Architektur. Siehe `prototypen.md` für den Index, `prototypes/*.md` für neue Prototypen, `verfassung.md` für harte Regeln, `tools.md` für Rendering-Werkzeuge, `topic-primitive-map.md` für Themen-Mapping.

Diese Datei enthält weiterhin die v1-Primitives (TitleSlide, ArbeitsauftragSlide, MerksatzSlide, ConcepTestSlide, ContentSlide) — sie sind Teil der Prototypen-Galerie.

---

## 1. TitleSlide

[ursprünglicher v1-Inhalt aus slide-primitives.md unverändert]

## 2. ArbeitsauftragSlide

[ursprünglicher v1-Inhalt]

## 3. MerksatzSlide

[ursprünglicher v1-Inhalt]

## 4. ConcepTestSlide

[ursprünglicher v1-Inhalt]

## 5. ContentSlide

[ursprünglicher v1-Inhalt]
```

**Wichtig:** Die fünf Abschnitte MIT dem ursprünglichen v1-Inhalt beibehalten — NICHT die Platzhalter "[ursprünglicher v1-Inhalt]" stehen lassen. Nur den Header bis zur Warnung ersetzen, der Rest (alle HTML-Templates) bleibt bestehen.

Konkret: Lies die Datei, kopiere die fünf Primitive-Abschnitte unverändert, ergänze oben den Legacy-Hinweis-Header.

- [ ] **Step 18.2: Commit**

```bash
cd /home/bernd/projects/skill-praesentation
git add references/slide-primitives.md
git commit -m "chore(v2): mark slide-primitives.md as legacy with v2-pointer header"
```

---

## Task 19: Test-Set mit 8 Fixture-Topics

**Files:**
- Create: `tests/README.md`
- Create: `tests/fixtures/{slug}/expected-outline.md` (×8)

Kann via Subagent parallelisiert werden — jede Fixture ist unabhängig.

- [ ] **Step 19.1: tests/README.md schreiben**

Erstelle `/home/bernd/projects/skill-praesentation/tests/README.md`:

```markdown
# Test-Set — Regressions-Fixtures für Skill-Änderungen

**Zweck:** Bei jeder v2+ Änderung am Skill (neue Prototypen, geänderte Prompts, geändertes Phasenmodell) lassen wir den Skill über alle 8 Fixture-Topics laufen und vergleichen die generierten Outlines mit den "goldenen" Referenzen.

**Kein automatisches Unit-Test-Framework.** Das Test-Set ist ein Review-Artefakt.

## Fixture-Struktur

```
tests/fixtures/
├─ python-list-comprehensions/
│   └─ expected-outline.md
├─ react-usestate-hook/
│   └─ expected-outline.md
├─ uml-klassenbeziehungen/
│   └─ expected-outline.md
├─ rest-request-flow/
│   └─ expected-outline.md
├─ dsgvo-rechtsgrundlagen/
│   └─ expected-outline.md
├─ testing-pyramide/
│   └─ expected-outline.md
├─ bubble-sort-schritte/
│   └─ expected-outline.md
└─ java-zweizeiger-verfahren/
    └─ expected-outline.md
```

Jede `expected-outline.md` enthält:
- **Meta-Header:** Topic, Purpose, Topic-Family, Innovationsgrad, Einstiegstyp
- **Outline-Tabelle** im v2-Format (Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer)
- **Begründung:** Kurzer Abschnitt "Warum dieser Mix" (für Review)

## Review-Workflow

1. Skill über Fixture laufen lassen (Modus A, Mock-Debrief-Antworten)
2. Generierte Outline mit `expected-outline.md` manuell vergleichen
3. Abweichungen dokumentieren in `tests/diffs/{datum}.md` (frei strukturiert)
4. Bei "didaktisch besser": goldene Outline aktualisieren
5. Bei "schlechter": Skill-Änderung überdenken, ggfs. rollback

## Pflege

- Bei neuem Prototyp: mindestens eine Fixture hinzufügen, die den Prototyp sinnvoll nutzt
- Bei geänderter Prompt-Semantik (z.B. Phase 0): alle 8 Fixtures neu durchlaufen und goldene Outlines aktualisieren
```

- [ ] **Step 19.2: Fixture 1 — Python List Comprehensions**

Erstelle `/home/bernd/projects/skill-praesentation/tests/fixtures/python-list-comprehensions/expected-outline.md`:

```markdown
# Expected Outline — Python List Comprehensions

**Topic:** Python List Comprehensions
**Purpose:** Consolidation
**Topic-Family primary:** code
**Topic-Family secondary:** konzept
**Innovationsgrad:** gemischt
**Einstiegstyp:** PRIMM-Predict

## Outline

| Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer |
|---|---|---|---|---|---|---|---|---|
| 1 | Titel | "Python List Comprehensions" | Admin | TitleSlide | — | Text | Plenum | 0.5 |
| 2 | P1 Einstieg | "Was gibt diese Comprehension zurück?" | Predict | PredictSlide | — | CodeMirror | Einzel | 2 |
| 3 | P2 Einordnung | Vergleich for-Loop vs. Comprehension | Contrast | ContrastSlide | — | Grid-2 + CodeMirror ×2 | Partner | 3 |
| 4 | P2 Einordnung | Schritt-für-Schritt-Trace einer Comprehension | Trace | TraceSlide | — | CodeMirror + Iterationen-Visual | Plenum | 3 |
| 5 | P3 Sicherung | Merksatz: "[expr for item in iterable if condition]" | Sicherung | MerksatzSlide | — | Text + Sprachgerüst | Plenum | 2 |
| 6 | P4 Misconception | ConcepTest: Nested Comprehensions verstehen | Classify | ConcepTestSlide | — | Text + Distraktoren | Plenum | 2 |
| 7 | P5 Transfer | "Gleicher Gedanke bei Dict/Set Comprehensions" | Admin | ContentSlide | — | Text | Plenum | 1 |

## Warum dieser Mix

PRIMM-Predict als Einstieg (Code-Thema), TraceSlide für die mentale Ausführung, ContrastSlide gegen for-Loop (häufige Misconception: "Comprehensions sind nur schicker for-Loop"). Insgesamt 7 Slides, ~13.5 min — innerhalb Consolidation-Budget (15 min ±3).
```

- [ ] **Step 19.3: Fixture 2 — React useState Hook**

Erstelle `/home/bernd/projects/skill-praesentation/tests/fixtures/react-usestate-hook/expected-outline.md`:

```markdown
# Expected Outline — React useState Hook

**Topic:** React useState Hook
**Purpose:** Consolidation
**Topic-Family primary:** code
**Topic-Family secondary:** flow
**Innovationsgrad:** gemischt
**Einstiegstyp:** POE

## Outline

| Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer |
|---|---|---|---|---|---|---|---|---|
| 1 | Titel | "React useState" | Admin | TitleSlide | — | Text | Plenum | 0.5 |
| 2 | P1 Einstieg | "Was passiert nach setCount(1)?" (Vorhersage) | Predict | PredictSlide | — | CodeMirror | Einzel | 2 |
| 3 | P2 Einordnung | Oberfläche: Component mit useState. Intern: State-Cell + Re-Render | Reveal | NotionalMachineSlide | — | CodeMirror + Mermaid state-flow | Plenum | 3 |
| 4 | P2 Einordnung | Trace: setState → Queue → Re-Render | Trace | TraceSlide | — | Mermaid sequenceDiagram + Steps | Plenum | 3 |
| 5 | P3 Sicherung | Merksatz: "useState gibt [value, setter] zurück; setter triggert Re-Render" | Sicherung | MerksatzSlide | — | Text + Sprachgerüst | Plenum | 2 |
| 6 | P4 Misconception | ConcepTest: "Warum ist setState asynchron?" | Classify | ConcepTestSlide | — | Text + Distraktoren | Plenum | 2 |

## Warum dieser Mix

POE aktiviert Vorwissen zu Re-Rendering (häufige Misconception: "setState ist sofort sichtbar"). NotionalMachineSlide macht die unsichtbare State-Cell sichtbar — genau der Lerngegenstand bei Hooks. TraceSlide mit Mermaid zeigt den Lifecycle. Insgesamt 6 Slides, ~12.5 min.
```

- [ ] **Step 19.4: Fixture 3 — UML Klassenbeziehungen**

Erstelle `/home/bernd/projects/skill-praesentation/tests/fixtures/uml-klassenbeziehungen/expected-outline.md`:

```markdown
# Expected Outline — UML Klassenbeziehungen

**Topic:** UML Klassenbeziehungen (Assoziation, Aggregation, Komposition)
**Purpose:** Consolidation
**Topic-Family primary:** diagramm
**Topic-Family secondary:** konzept
**Innovationsgrad:** gemischt
**Einstiegstyp:** Contrasting Cases

## Outline

| Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer |
|---|---|---|---|---|---|---|---|---|
| 1 | Titel | "UML Klassenbeziehungen" | Admin | TitleSlide | — | Text | Plenum | 0.5 |
| 2 | P1 Einstieg | Aggregation vs. Komposition: Was ist der Unterschied? | Contrast | ContrastSlide | — | Grid-2 + Mermaid classDiagram ×2 | Partner | 3 |
| 3 | P2 Einordnung | Drei Diagramme nebeneinander: Assoziation, Aggregation, Komposition | Contrast | Eigenentwurf | ContrastSlide unterstützt nur 2 Fälle; hier brauchen wir 3-Weg-Vergleich | Grid-3 + Mermaid classDiagram ×3 | Plenum | 4 |
| 4 | P3 Sicherung | Merksatz: Raute-Notation (leer vs. gefüllt) | Sicherung | MerksatzSlide | — | Text + Mermaid Legende | Plenum | 2 |
| 5 | P4 Misconception | ConcepTest: Welcher Fall ist welche Beziehung? | Classify | ConcepTestSlide | — | Mermaid classDiagram in Options | Plenum | 3 |
| 6 | P5 Transfer | "Das gilt auch bei ER-Modellen" | Admin | ContentSlide | — | Mermaid erDiagram | Plenum | 1 |

## Warum dieser Mix

Contrasting Cases als Einstieg (Schwellenkonzept, zwei nahe Varianten). Ein Eigenentwurf für den 3-Weg-Vergleich — Begründung: bestehender ContrastSlide-Prototyp ist auf 2 Fälle beschränkt. Mermaid als zentrales Rendering. Insgesamt 6 Slides, ~13.5 min.
```

- [ ] **Step 19.5: Fixture 4 — REST Request-Response-Flow**

Erstelle `/home/bernd/projects/skill-praesentation/tests/fixtures/rest-request-flow/expected-outline.md`:

```markdown
# Expected Outline — REST Request-Response-Flow

**Topic:** REST Request-Response-Flow (Client → Server → DB → zurück)
**Purpose:** Sicherung
**Topic-Family primary:** flow
**Topic-Family secondary:** code
**Innovationsgrad:** gemischt
**Einstiegstyp:** ConcepTest

## Outline

| Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer |
|---|---|---|---|---|---|---|---|---|
| 1 | Titel | "REST: Was passiert beim GET /users?" | Admin | TitleSlide | — | Text | Plenum | 0.5 |
| 2 | P1 Einstieg | ConcepTest: Welcher HTTP-Status bei "User existiert nicht"? | Classify | ConcepTestSlide | — | Text + Distraktoren | Plenum | 2 |
| 3 | P2 Kernmerksatz | Sequenz-Diagramm des Requests | Trace | TraceSlide | — | Mermaid sequenceDiagram + Highlight-Steps | Plenum | 3 |
| 4 | P2 Kernmerksatz | Merksatz: "Idempotenz: GET/PUT/DELETE, nicht POST" | Sicherung | MerksatzSlide | — | Text + Sprachgerüst | Plenum | 2 |
| 5 | P3 Misconception | ConcepTest: PUT vs. POST | Classify | ConcepTestSlide | — | Text + Distraktoren | Plenum | 2 |
| 6 | P4 Brücke | "Heute: HTTP-Auth-Flows" | Admin | ContentSlide | — | Mermaid | Plenum | 1 |

## Warum dieser Mix

ConcepTest als Einstieg (Misconception-lastiges Thema: Statuscodes werden oft verwechselt). TraceSlide mit Mermaid sequenceDiagram ist das Herzstück — zeigt den Flow durch alle Layer. 6 Slides, ~10.5 min — passt für Sicherung (10 min ±2).
```

- [ ] **Step 19.6: Fixture 5 — DSGVO Rechtsgrundlagen**

Erstelle `/home/bernd/projects/skill-praesentation/tests/fixtures/dsgvo-rechtsgrundlagen/expected-outline.md`:

```markdown
# Expected Outline — DSGVO Rechtsgrundlagen Art. 6 Abs. 1

**Topic:** DSGVO Rechtsgrundlagen (Art. 6 Abs. 1 lit. a–f)
**Purpose:** Consolidation
**Topic-Family primary:** policy
**Topic-Family secondary:** konzept
**Innovationsgrad:** gemischt
**Einstiegstyp:** ConcepTest

## Outline

| Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer |
|---|---|---|---|---|---|---|---|---|
| 1 | Titel | "DSGVO Rechtsgrundlagen" | Admin | TitleSlide | — | Text | Plenum | 0.5 |
| 2 | P1 Einstieg | ConcepTest: Welche Rechtsgrundlage greift bei Online-Shop-Bestellung? | Classify | ConcepTestSlide | — | Text + Distraktoren (lit. a, b, f) | Plenum | 3 |
| 3 | P2 Einordnung | Contrast: Einwilligung (a) vs. berechtigtes Interesse (f) | Contrast | ContrastSlide | — | Grid-2 + Text-Fallbeispiele | Partner | 4 |
| 4 | P2 Einordnung | Entscheidungsbaum: Welche lit. passt zu welchem Fall? | Classify | Eigenentwurf | ConcepTestSlide ist zu starr für Decision-Tree; ContrastSlide nur 2-Weg | Mermaid flowchart | Plenum | 3 |
| 5 | P3 Sicherung | Merksatz: "Rechtmäßigkeit ist Pflicht (Art. 5 Abs. 1 lit. a)" | Sicherung | MerksatzSlide | — | Text | Plenum | 2 |
| 6 | P4 Misconception | ConcepTest: "Datenschutzerklärung = Einwilligung?" (Misconception) | Classify | ConcepTestSlide | — | Text + Distraktoren | Plenum | 2 |
| 7 | P5 Transfer | "Das gilt auch bei Arbeits-Apps, bei Monitoring, …" | Admin | ContentSlide | — | Text | Plenum | 1 |

## Warum dieser Mix

ConcepTest-Einstieg passt (Misconceptions weit verbreitet). Eigenentwurf für Decision-Tree — ContrastSlide wäre auf 2 Fälle beschränkt, hier brauchen wir 6 lit.-Optionen in einem Entscheidungsbaum. Mermaid flowchart ist das Tool der Wahl. 7 Slides, ~15.5 min.
```

- [ ] **Step 19.7: Fixture 6 — Testing-Strategie-Pyramide**

Erstelle `/home/bernd/projects/skill-praesentation/tests/fixtures/testing-pyramide/expected-outline.md`:

```markdown
# Expected Outline — Testing-Strategie-Pyramide

**Topic:** Testing-Strategie-Pyramide (Unit, Integration, E2E)
**Purpose:** Consolidation
**Topic-Family primary:** policy
**Topic-Family secondary:** flow
**Innovationsgrad:** konservativ
**Einstiegstyp:** Contrasting Cases

## Outline

| Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer |
|---|---|---|---|---|---|---|---|---|
| 1 | Titel | "Testing-Strategie: Die Pyramide" | Admin | TitleSlide | — | Text | Plenum | 0.5 |
| 2 | P1 Einstieg | Unit vs. E2E: Was ist der Unterschied? | Contrast | ContrastSlide | — | Grid-2 + Code-Snippets | Partner | 3 |
| 3 | P2 Einordnung | Trace: Ein Bug durch die Pyramide (wo wird er gefangen?) | Trace | TraceSlide | — | Mermaid flowchart + Highlight-Steps | Plenum | 4 |
| 4 | P3 Sicherung | Merksatz: "Unten breit (viele Unit), oben schmal (wenige E2E)" | Sicherung | MerksatzSlide | — | Text + Mermaid Pyramiden-Grafik | Plenum | 2 |
| 5 | P4 Misconception | ConcepTest: "Wenn E2E-Tests grün sind, sind Unit-Tests redundant" — wahr oder falsch? | Classify | ConcepTestSlide | — | Text + Distraktoren | Plenum | 2 |
| 6 | P5 Transfer | "Gleiche Logik bei Contract-Tests, bei Mutation-Tests" | Admin | ContentSlide | — | Text | Plenum | 1 |

## Warum dieser Mix

Konservativer Innovationsgrad → nur bewährte Prototypen. Contrasting Cases als Einstieg bei Schwellenkonzept (Unit vs. E2E wird oft verwechselt). TraceSlide mit Bug-Reise durch die Pyramide. Mermaid für Pyramiden-Grafik. 6 Slides, ~12.5 min.
```

- [ ] **Step 19.8: Fixture 7 — Bubble Sort Schritte**

Erstelle `/home/bernd/projects/skill-praesentation/tests/fixtures/bubble-sort-schritte/expected-outline.md`:

```markdown
# Expected Outline — Bubble Sort Schritte

**Topic:** Bubble Sort Schritt-für-Schritt
**Purpose:** Consolidation
**Topic-Family primary:** algorithmus
**Topic-Family secondary:** code
**Innovationsgrad:** experimentell
**Einstiegstyp:** PRIMM-Predict

## Outline

| Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer |
|---|---|---|---|---|---|---|---|---|
| 1 | Titel | "Bubble Sort" | Admin | TitleSlide | — | Text | Plenum | 0.5 |
| 2 | P1 Einstieg | PRIMM-Predict: Wie viele Swaps bei [4,2,3,1]? | Predict | PredictSlide | — | CodeMirror + Input | Einzel | 3 |
| 3 | P2 Einordnung | Trace: Jeder Vergleich + Swap als Schritt, SVG-Bars visualisieren Array | Trace | TraceSlide | — | CodeMirror + SVG Bar-Chart + Highlight-Steps | Plenum | 5 |
| 4 | P2 Einordnung | Interaktive Exploration: Eingabe-Array variieren, Bars live | Manipulate | ProbeSlide | — | CodeMirror editable + SVG-Bars | Einzel | 3 |
| 5 | P3 Sicherung | Merksatz: "Bubble Sort: O(n²), stabil, in-place" | Sicherung | MerksatzSlide | — | Text | Plenum | 2 |
| 6 | P4 Misconception | ConcepTest: "Bubble Sort ist gut für große Arrays" — warum nicht? | Classify | ConcepTestSlide | — | Text + Distraktoren | Plenum | 2 |

## Warum dieser Mix

Experimentell erlaubt ProbeSlide (sonst zurückhaltender einzusetzen, weil ohne Sandbox-Execution). TraceSlide mit SVG-Bars als *Zustands-Visual* pro Schritt ist ein Kern-Ort für `code`+`algorithmus`-Themen. 6 Slides, ~15.5 min.
```

- [ ] **Step 19.9: Fixture 8 — Java Zweizeiger-Verfahren**

Erstelle `/home/bernd/projects/skill-praesentation/tests/fixtures/java-zweizeiger-verfahren/expected-outline.md`:

```markdown
# Expected Outline — Java Zweizeiger-Verfahren

**Topic:** Java Arrays — Zweizeiger-Verfahren (Two-Pointer)
**Purpose:** Consolidation
**Topic-Family primary:** algorithmus
**Topic-Family secondary:** code
**Innovationsgrad:** gemischt
**Einstiegstyp:** PRIMM-Predict

## Outline

| Nr | Phase | Inhalt | Move | Prototyp | Prototyp-Abweichung | Rendering | Sozialform | Dauer |
|---|---|---|---|---|---|---|---|---|
| 1 | Titel | "Zweizeiger-Verfahren bei sortierten Arrays" | Admin | TitleSlide | — | Text | Plenum | 0.5 |
| 2 | P1 Einstieg | Welche Indizes prüft dieser Code als Nächstes? | Predict | PredictSlide | — | CodeMirror + Array-Visual | Einzel | 2 |
| 3 | P2 Einordnung | Trace: Pointer-Bewegungen auf sortiertem Array für Target-Sum | Trace | TraceSlide | — | CodeMirror + SVG Pointer-Arrows | Plenum | 4 |
| 4 | P2 Einordnung | Probe: Ziel-Summe ändern, Pointer-Verhalten beobachten | Manipulate | ProbeSlide | — | CodeMirror editable + Array-Visual | Einzel | 3 |
| 5 | P3 Sicherung | Merksatz: "Zweizeiger spart O(n²) auf O(n) bei sortierten Arrays" | Sicherung | MerksatzSlide | — | Text + Sprachgerüst | Plenum | 2 |
| 6 | P4 Misconception | ConcepTest: "Funktioniert Zweizeiger auch bei unsortierten Arrays?" | Classify | ConcepTestSlide | — | Text + Distraktoren | Plenum | 2 |

## Warum dieser Mix

Analog Bubble Sort. TraceSlide mit Pointer-Arrows als Zustands-Visual ist der Kern. ProbeSlide für Exploration. 6 Slides, ~13.5 min.
```

- [ ] **Step 19.10: Commit Test-Set**

```bash
cd /home/bernd/projects/skill-praesentation
git add tests/
git commit -m "feat(v2): add 8-topic test-set with golden outlines"
```

---

## Task 20: Sync nach ~/.claude/skills/praesentation/ und Finale

**Files:**
- Modify: `~/.claude/skills/praesentation/` (komplett neu synchronisieren)

- [ ] **Step 20.1: Vollständige Sync vom Repo in Deploy-Location**

```bash
rsync -av --delete \
  --exclude='.git' \
  --exclude='.gitignore' \
  --exclude='tests/' \
  /home/bernd/projects/skill-praesentation/ \
  /home/bernd/.claude/skills/praesentation/

diff -r /home/bernd/projects/skill-praesentation /home/bernd/.claude/skills/praesentation --exclude=.git --exclude=.gitignore --exclude=tests | head -5
```

Expected: Kein relevanter Diff (tests/ bleibt Repo-only).

- [ ] **Step 20.2: Manual Skill-Smoke-Test (Dry-Run Modus A)**

In einer frischen Claude-Session:
- Prompt: "Baue mir eine Präsentation zu Python List Comprehensions, Purpose=Consolidation, 15 Minuten"
- Prüfe: Phase 0 fragt nach Einstiegstyp und Innovationsgrad
- Prüfe: Phase 1 klassifiziert Topic-Family
- Prüfe: Phase 2 Outline hat Spalte "Prototyp-Abweichung"
- Prüfe: Phase 3 erzeugt HTML mit `.codeblock`, `.slide-predict`, `.slide-trace` oder `.slide-notional-machine`
- Prüfe: Phase 4 Rubric-Check läuft durch, keine Fatal-Violations

Dokumentiere Ergebnisse in `TESTING.md` unter neuem Abschnitt "## v2 Dry-Run (Modus A, Python List Comprehensions)".

- [ ] **Step 20.3: TESTING.md mit v2-Ergebnissen erweitern**

Append an `/home/bernd/projects/skill-praesentation/TESTING.md`:

```markdown
## v2 Dry-Run — {{DATUM}}

**Topic:** Python List Comprehensions
**Purpose:** Consolidation
**Modus:** A (standalone)

### Phase 0
- Frage 4 (Einstiegstyp): PRIMM-Predict gewählt ✓
- Frage 5 (Innovationsgrad): gemischt gewählt ✓

### Phase 1
- topic_family_primary: code ✓
- topic_family_secondary: konzept ✓

### Phase 2
- Outline-Tabelle mit 9 Spalten ✓
- Keine Eigenentwürfe (gemischt → Default-Prototypen)

### Phase 3
- Generierte HTML enthält: .slide-predict, .slide-trace, .slide-contrast, .slide-merksatz, .slide-conceptest ✓
- CodeMirror-Blöcke initialisiert ✓
- Mermaid nicht verwendet (nicht nötig für code-only) ✓

### Phase 4a — Rubric
- Alle 9 Regeln: PASS
- Visualisierungs-Pflicht erfüllt (.codeblock vorhanden) ✓

### Phase 4b — Kramer-Review
- FREIGABE

### Browser-Smoke
- Console: keine Errors
- Mermaid-Render: n/a
- CodeMirror: initialisiert, Syntax-Highlighting ok
- Timer: läuft
- Fragments: enthüllen
```

- [ ] **Step 20.4: Finaler Commit + Merge Branch**

```bash
cd /home/bernd/projects/skill-praesentation
git add TESTING.md
git commit -m "docs(v2): add Dry-Run results for Python List Comprehensions"

# Merge in main nach User-Review
git checkout main
git merge --no-ff feature/v2-interaktionsschicht -m "feat: skill-praesentation v2 — Interaktionsschicht & Themen-Generik"
```

- [ ] **Step 20.5: Plan als fertig markieren**

Im didaktik-repo:

```bash
cd /home/bernd/projects/didaktik-repo
git log --oneline docs/superpowers/plans/2026-04-17-skill-praesentation-v2-implementation.md
```

---

## Self-Review (vor Implementations-Start)

Nach Plan-Erstellung zu prüfen:

**Spec-Coverage:**
- [x] Schicht 1 Verfassung → Task 1
- [x] Schicht 2 Prototypen (5 neue) → Tasks 4–8
- [x] Schicht 3 Rendering-Tools (Mermaid, CodeMirror, Utilities) → Tasks 2, 3
- [x] Einstiegs-Palette → Task 16
- [x] Phase-0 Erweiterung (Einstiegstyp, Innovationsgrad) → Task 10
- [x] Topic-Familien-Klassifikation → Task 11
- [x] Phase-2 Begründungs-Pflicht → Task 12
- [x] Phase-4 Mayer-Checks → Task 14
- [x] Kramer-Review Seductive Detail → Task 15
- [x] Test-Set (8 Topics) → Task 19
- [x] SKILL.md Update → Task 17
- [x] slide-primitives.md Legacy → Task 18
- [x] Sync nach Deploy-Location → Task 20

**Placeholders:** Keine TBDs / TODOs / vage Anweisungen in Tasks. Alle Code-Blöcke vollständig.

**Type-Konsistenz:** CSS-Klassennamen konsistent (`.slide-predict`, `.slide-contrast`, `.slide-trace`, `.slide-notional-machine`, `.slide-probe`). JS-Handler-Namen konsistent (`initMermaid`, `initCodeBlocks`, `initTraceSteps`, `initPredictFields`).

**Scope:** Ein fokussierter Implementations-Durchgang. 20 Tasks, aber jede ist eigenständig und klein.
