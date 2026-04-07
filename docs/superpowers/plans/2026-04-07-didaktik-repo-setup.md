# Didaktik-Repo Setup — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Set up the didaktik-repo as an agent-optimized knowledge base with Karpathy-Pattern + Zettelkasten structure, including templates, navigation, and two seed articles to validate the format.

**Architecture:** Two-layer Markdown repository (sources/ + wiki/) with YAML frontmatter, [[Wikilinks]], and a central INDEX.md as Map of Content. CLAUDE.md provides agent navigation instructions. Four templates enforce consistency per document type.

**Tech Stack:** Git, Markdown, YAML frontmatter, Wikilinks (Obsidian-compatible)

---

## File Structure

```
didaktik-repo/
├── CLAUDE.md                          # CREATE — Agent-Navigationsanweisungen
├── INDEX.md                           # CREATE — Map of Content
├── sources/
│   └── README.md                      # CREATE — Quellenablage-Konventionen
├── wiki/
│   ├── constructive-alignment.md      # CREATE — Seed-Artikel 1 (Theorie)
│   └── pair-programming-unterricht.md # CREATE — Seed-Artikel 2 (Methode)
└── templates/
    ├── theorie.md                     # CREATE — Template für Theorien
    ├── methode.md                     # CREATE — Template für Methoden
    ├── evidenz.md                     # CREATE — Template für Forschung
    └── praxis.md                      # CREATE — Template für Praxisberichte
```

---

### Task 1: Git-Repository initialisieren

**Files:**
- Create: `.gitignore`

- [ ] **Step 1: Git init**

```bash
cd /home/bernd/projects/didaktik-repo
git init
```

- [ ] **Step 2: .gitignore erstellen**

```
# OS
.DS_Store
Thumbs.db

# Editors
*.swp
*.swo
*~
.vscode/
.idea/

# Obsidian (optional genutzt, aber Config nicht tracken)
.obsidian/
```

- [ ] **Step 3: Verzeichnisstruktur anlegen**

```bash
mkdir -p sources wiki templates
```

- [ ] **Step 4: Initial commit**

```bash
git add .gitignore
git commit -m "chore: init didaktik-repo"
```

---

### Task 2: CLAUDE.md erstellen

**Files:**
- Create: `CLAUDE.md`

- [ ] **Step 1: CLAUDE.md schreiben**

```markdown
# Didaktik-Repo

Agent-optimierte Wissensbasis für didaktische Grundlagen.
Zielgruppe: Fachinformatiker (FIAE/FIDP) in der Berufsschule.

## Struktur

- `INDEX.md` — Einstiegspunkt, Map of Content mit drei Navigationspfaden
- `wiki/` — Wissensartikel (flach, nach Zettelkasten-Prinzip, YAML-Frontmatter)
- `sources/` — Rohmaterial (PDFs, Notizen — nicht direkt zur Wissensfindung nutzen)
- `templates/` — Vorlagen für neue Artikel (theorie, methode, evidenz, praxis)

## Navigation

1. Starte mit `INDEX.md` für einen Überblick
2. Nutze Grep auf `wiki/` um nach Tags, Typ oder Begriffen im Frontmatter zu suchen
3. Folge `[[Wikilinks]]` um verwandte Konzepte zu finden
4. Lies das `summary`-Feld im Frontmatter um Relevanz zu prüfen, bevor du den ganzen Artikel liest

## Neuen Artikel anlegen

1. Template aus `templates/` wählen (passend zum `type`: theorie, methode, evidenz, praxis)
2. Dateiname: `kebab-case.md` in `wiki/`
3. Alle Pflichtfelder im Frontmatter ausfüllen: `title`, `type`, `tags`, `created`, `updated`, `summary`
4. Empfohlene Felder setzen: `related` (Wikilinks zu verwandten Artikeln), `audience`, `taxonomiestufe`
5. Im Body Inline-Wikilinks `[[dateiname]]` setzen wo verwandte Konzepte erwähnt werden
6. `INDEX.md` aktualisieren — alle drei Navigationspfade prüfen (Typ, Lernfeld, Problem)
7. Bestehende Artikel prüfen: Sollten sie auf den neuen Artikel verweisen? Wenn ja, `related`-Feld und Body ergänzen

## Konventionen

- Artikel max. ~8.000 Zeichen — darüber in mehrere Artikel aufteilen
- Wikilinks ohne .md-Endung: `[[constructive-alignment]]` nicht `[[constructive-alignment.md]]`
- Jeder Abschnitt muss auch isoliert verständlich sein (Progressive Disclosure)
- "Bezug zur IT-Ausbildung" und "Praktische Anwendung" sind die wertvollsten Abschnitte — hier steckt der Mehrwert gegenüber generischem Didaktik-Wissen
- Quellenangaben im APA-Stil

## Frontmatter-Referenz

Pflichtfelder: `title`, `type`, `tags`, `created`, `updated`, `summary`
Empfohlen: `related`, `audience`, `taxonomiestufe`
Optional: `evidenzgrad`, `sozialform`, `source`

Erlaubte Werte:
- `type`: theorie | methode | evidenz | praxis
- `taxonomiestufe`: erinnern | verstehen | anwenden | analysieren | bewerten | erschaffen
- `evidenzgrad`: meta-analyse | rct | quasi-experimentell | praxisbericht
- `audience`: FIAE | FIDP
- `sozialform`: einzelarbeit | partner | gruppe | plenum
```

- [ ] **Step 2: Verify CLAUDE.md**

```bash
head -5 CLAUDE.md
```

Expected: Erste Zeilen des Dokuments sichtbar.

- [ ] **Step 3: Commit**

```bash
git add CLAUDE.md
git commit -m "docs: add CLAUDE.md with agent navigation instructions"
```

---

### Task 3: Templates erstellen

**Files:**
- Create: `templates/theorie.md`
- Create: `templates/methode.md`
- Create: `templates/evidenz.md`
- Create: `templates/praxis.md`

- [ ] **Step 1: Template theorie.md**

```markdown
---
title: "{Titel}"
type: theorie
tags: []
related: []
audience: [FIAE, FIDP]
taxonomiestufe: []
created: YYYY-MM-DD
updated: YYYY-MM-DD
summary: >
  {Ein bis zwei Sätze: Was ist das Kernkonzept und warum ist es relevant?}
---

# {Titel}

## Kernidee

{Prägnante Zusammenfassung in 2-3 Sätzen.}

## Beschreibung

{Ausführliche Erklärung der Theorie/des Modells. Wer hat es entwickelt? Was sind die zentralen Aussagen? Welche Grundannahmen liegen zugrunde?}

## Bezug zur IT-Ausbildung

{Konkrete Relevanz für FIAE/FIDP. In welchen Lernfeldern ist diese Theorie besonders relevant? Wie beeinflusst sie die Gestaltung von Lernsituationen in der IT-Ausbildung?}

## Praktische Anwendung

{Wie kann ein Agent dieses Wissen nutzen, um Lernsituationen zu gestalten? Konkrete Handlungsempfehlungen für die Umsetzung in interaktiven Lernumgebungen.}

## Verwandte Konzepte

- [[verwandtes-konzept]] — {Kurzbeschreibung der Beziehung}

## Quellen

- {Autor (Jahr). Titel. Verlag/Journal.}
```

- [ ] **Step 2: Template methode.md**

```markdown
---
title: "{Titel}"
type: methode
tags: []
related: []
audience: [FIAE, FIDP]
taxonomiestufe: []
sozialform: []
created: YYYY-MM-DD
updated: YYYY-MM-DD
summary: >
  {Ein bis zwei Sätze: Was ist die Methode und wofür eignet sie sich?}
---

# {Titel}

## Kernidee

{Prägnante Zusammenfassung in 2-3 Sätzen.}

## Beschreibung

{Was ist diese Methode? Woher stammt sie? Was sind die Grundprinzipien?}

## Durchführung

{Schritt-für-Schritt: Wie wird die Methode im Unterricht eingesetzt?}

## Voraussetzungen

{Was muss gegeben sein, damit die Methode funktioniert? Technische Ausstattung, Vorkenntnisse, Gruppengröße?}

## Varianten

{Welche Abwandlungen gibt es? Wie kann die Methode an verschiedene Kontexte angepasst werden?}

## Bezug zur IT-Ausbildung

{Konkrete Relevanz für FIAE/FIDP. In welchen Lernfeldern eignet sich diese Methode besonders? Beispielszenarien.}

## Praktische Anwendung

{Wie kann ein Agent dieses Wissen nutzen, um Lernsituationen zu gestalten? Konkrete Empfehlungen für interaktive Lernumgebungen.}

## Verwandte Konzepte

- [[verwandtes-konzept]] — {Kurzbeschreibung der Beziehung}

## Quellen

- {Autor (Jahr). Titel. Verlag/Journal.}
```

- [ ] **Step 3: Template evidenz.md**

```markdown
---
title: "{Titel}"
type: evidenz
tags: []
related: []
audience: [FIAE, FIDP]
taxonomiestufe: []
evidenzgrad: praxisbericht
created: YYYY-MM-DD
updated: YYYY-MM-DD
summary: >
  {Ein bis zwei Sätze: Was wurde untersucht und was ist das Kernergebnis?}
---

# {Titel}

## Kernidee

{Prägnante Zusammenfassung in 2-3 Sätzen.}

## Studiendesign

{Art der Studie (Meta-Analyse, RCT, quasi-experimentell, Praxisbericht). Methodik.}

## Stichprobe

{Wer wurde untersucht? Wie viele Teilnehmer? Welcher Kontext (Schule, Hochschule, Berufsbildung)?}

## Kernergebnisse

{Was sind die zentralen Ergebnisse? Effektstärken wenn vorhanden.}

## Effektstärke

{Cohens d oder andere Maße, falls verfügbar. Einordnung: klein (0.2), mittel (0.5), groß (0.8).}

## Limitationen

{Welche Einschränkungen hat die Studie? Wie übertragbar sind die Ergebnisse auf IT-Berufsausbildung?}

## Bezug zur IT-Ausbildung

{Was bedeuten diese Ergebnisse konkret für die IT-Ausbildung? Welche Schlussfolgerungen lassen sich für FIAE/FIDP ziehen?}

## Praktische Anwendung

{Wie kann ein Agent diese Evidenz nutzen, um evidenzbasierte Lernsituationen zu gestalten?}

## Verwandte Konzepte

- [[verwandtes-konzept]] — {Kurzbeschreibung der Beziehung}

## Quellen

- {Autor (Jahr). Titel. Journal, Volume(Issue), Seiten. DOI.}
```

- [ ] **Step 4: Template praxis.md**

```markdown
---
title: "{Titel}"
type: praxis
tags: []
related: []
audience: [FIAE, FIDP]
taxonomiestufe: []
sozialform: []
created: YYYY-MM-DD
updated: YYYY-MM-DD
summary: >
  {Ein bis zwei Sätze: Was wurde gemacht und was war das Ergebnis?}
---

# {Titel}

## Kernidee

{Prägnante Zusammenfassung in 2-3 Sätzen.}

## Kontext

{In welchem Rahmen fand die Praxiserfahrung statt? Lernfeld, Klassenstufe, Ausbildungsjahr, Gruppengröße.}

## Durchführung

{Was wurde konkret gemacht? Zeitlicher Ablauf, eingesetzte Materialien und Werkzeuge.}

## Ergebnisse

{Was kam dabei heraus? Wie haben die Lernenden reagiert? Was hat funktioniert, was nicht?}

## Lessons Learned

{Welche Erkenntnisse lassen sich für zukünftige Einsätze ableiten? Was würde man anders machen?}

## Bezug zur IT-Ausbildung

{Übertragbarkeit auf andere Lernfelder oder Ausbildungsberufe.}

## Praktische Anwendung

{Wie kann ein Agent diese Erfahrung nutzen, um ähnliche Lernsituationen zu gestalten?}

## Verwandte Konzepte

- [[verwandtes-konzept]] — {Kurzbeschreibung der Beziehung}

## Quellen

- {Autor (Jahr). Titel. Verlag/Journal.}
```

- [ ] **Step 5: Verify all templates exist**

```bash
ls templates/
```

Expected: `evidenz.md  methode.md  praxis.md  theorie.md`

- [ ] **Step 6: Commit**

```bash
git add templates/
git commit -m "docs: add wiki article templates (theorie, methode, evidenz, praxis)"
```

---

### Task 4: sources/README.md erstellen

**Files:**
- Create: `sources/README.md`

- [ ] **Step 1: README.md schreiben**

```markdown
# Sources — Rohmaterial

Hier werden Quellen abgelegt, die als Grundlage für Wiki-Artikel dienen.

## Konventionen

- Dateiname: `YYYY-MM-DD-kurztitel.{pdf,md,txt}`
- Für URLs: `.md`-Datei mit dem Link und ggf. Notizen
- Quellen werden nicht direkt von Agents zur Wissensfindung genutzt
- Aus jeder Quelle wird mindestens ein Artikel in `wiki/` kompiliert
- Der Wiki-Artikel verweist über das `source`-Feld im Frontmatter auf die Quelle

## Beispiel

```
2026-04-07-biggs-constructive-alignment.pdf
2026-04-08-hattie-visible-learning.md
```
```

- [ ] **Step 2: Commit**

```bash
git add sources/README.md
git commit -m "docs: add sources directory with README conventions"
```

---

### Task 5: Seed-Artikel 1 — Constructive Alignment (Theorie)

**Files:**
- Create: `wiki/constructive-alignment.md`

- [ ] **Step 1: Artikel schreiben**

```markdown
---
title: Constructive Alignment
type: theorie
tags: [lernziele, assessment, unterrichtsplanung, kompetenzorientierung]
related:
  - "[[blooms-taxonomie]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Didaktisches Prinzip nach Biggs (1996): Lernziele, Lehr-/Lernaktivitäten
  und Prüfungsformen müssen aufeinander abgestimmt sein. Zentral für
  kompetenzorientierte Unterrichtsplanung in der IT-Ausbildung.
---

# Constructive Alignment

## Kernidee

Constructive Alignment beschreibt die systematische Abstimmung von drei Elementen: Was sollen Lernende können (Lernziele), wie erreichen sie das (Lehr-/Lernaktivitäten) und wie wird es geprüft (Assessment). Wenn alle drei Elemente konsistent aufeinander ausgerichtet sind, steigt die Qualität des Lernens nachweislich.

## Beschreibung

John Biggs formulierte Constructive Alignment 1996 als Rahmenmodell für die Hochschullehre. Der "constructive" Teil bezieht sich auf den Konstruktivismus: Lernende konstruieren Bedeutung durch eigene Aktivität. Der "alignment" Teil fordert, dass Lehrende die Lernumgebung so gestalten, dass Aktivitäten und Prüfungen direkt auf die intendierten Lernergebnisse (Intended Learning Outcomes, ILOs) ausgerichtet sind.

Das Modell besteht aus drei Komponenten:

1. **Intended Learning Outcomes (ILOs):** Was sollen Lernende am Ende können? Formuliert mit aktiven Verben, idealerweise nach [[blooms-taxonomie]].
2. **Teaching and Learning Activities (TLAs):** Welche Aktivitäten führen dazu, dass Lernende die ILOs erreichen?
3. **Assessment Tasks (ATs):** Wie wird gemessen, ob die ILOs erreicht wurden?

Misalignment entsteht, wenn z.B. Lernziele auf "Analysieren" abzielen, aber die Prüfung nur "Erinnern" testet — oder wenn der Unterricht Frontalvortrag ist, das Lernziel aber "Anwenden" lautet.

## Bezug zur IT-Ausbildung

In der Fachinformatiker-Ausbildung ist Constructive Alignment besonders relevant, weil die Lernfelder des Rahmenlehrplans kompetenzorientiert formuliert sind. Ein konkretes Beispiel:

**Lernfeld 6 (FIAE) — Serviceanfragen bearbeiten:**
- **ILO:** Lernende können systematisch Fehler in IT-Systemen diagnostizieren und beheben.
- **TLA (aligned):** Lernende bearbeiten simulierte Trouble-Tickets in einer realitätsnahen Umgebung.
- **TLA (misaligned):** Lernende lesen ein Kapitel über Fehlerbehebung und machen Multiple-Choice-Test.
- **AT (aligned):** Lernende lösen ein unbekanntes Problem live und dokumentieren ihren Lösungsweg.

## Praktische Anwendung

Ein Agent kann Constructive Alignment nutzen, um Lernsituationen zu validieren und zu verbessern:

1. **Prüfung auf Alignment:** Gegeben ein Lernziel — passen die vorgeschlagenen Aktivitäten und Prüfungen dazu? Nutze [[blooms-taxonomie]] um die Kompetenzstufe abzugleichen.
2. **Aktivitäten-Design:** Wenn das Lernziel "Anwenden" ist, generiere Aktivitäten, bei denen Lernende tatsächlich etwas tun (Code schreiben, Systeme konfigurieren), nicht nur lesen oder zuschauen.
3. **Assessment-Design:** Prüfungsformen vorschlagen, die die gleiche Kompetenzstufe testen wie das Lernziel.

## Verwandte Konzepte

- [[blooms-taxonomie]] — liefert die Verben zur Formulierung von Lernzielen und ermöglicht den Abgleich der Kompetenzstufen

## Quellen

- Biggs, J. (1996). Enhancing Teaching Through Constructive Alignment. Higher Education, 32(3), 347-364.
- Biggs, J. & Tang, C. (2011). Teaching for Quality Learning at University (4th ed.). Open University Press.
```

- [ ] **Step 2: Verify Frontmatter**

```bash
head -15 wiki/constructive-alignment.md
```

Expected: YAML-Frontmatter mit allen Pflichtfeldern sichtbar.

- [ ] **Step 3: Commit**

```bash
git add wiki/constructive-alignment.md
git commit -m "docs: add seed article — Constructive Alignment (theorie)"
```

---

### Task 6: Seed-Artikel 2 — Pair Programming im Unterricht (Methode)

**Files:**
- Create: `wiki/pair-programming-unterricht.md`

- [ ] **Step 1: Artikel schreiben**

```markdown
---
title: Pair Programming im Unterricht
type: methode
tags: [kooperatives-lernen, programmierung, softwareentwicklung, peer-learning]
related:
  - "[[constructive-alignment]]"
audience: [FIAE]
taxonomiestufe: [anwenden, analysieren]
sozialform: [partner]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Pair Programming als Lernmethode: Zwei Lernende arbeiten an einem
  Rechner — einer programmiert (Driver), einer denkt mit (Navigator).
  Fördert Wissenstransfer, Code-Qualität und Problemlösekompetenz.
---

# Pair Programming im Unterricht

## Kernidee

Pair Programming überträgt eine bewährte Praxis der professionellen Softwareentwicklung (Extreme Programming) in den Unterricht. Zwei Lernende arbeiten synchron an einer Aufgabe: Der Driver schreibt Code, der Navigator überprüft, denkt voraus und stellt Fragen. Regelmäßiger Rollenwechsel ist essenziell.

## Beschreibung

Pair Programming stammt aus dem Extreme Programming (XP) nach Kent Beck (1999). In der professionellen Softwareentwicklung dient es der Qualitätssicherung und dem Wissenstransfer. Als Lernmethode hat es zusätzliche didaktische Vorteile: Lernende verbalisieren ihre Denkprozesse (Think Aloud), lernen voneinander und entwickeln kommunikative Kompetenzen.

Die zwei Rollen:
- **Driver:** Schreibt den Code, fokussiert auf die taktische Umsetzung.
- **Navigator:** Behält den Überblick, überprüft auf Fehler, denkt strategisch voraus.

## Durchführung

1. **Paare bilden:** Bewusst heterogen (unterschiedliches Leistungsniveau) oder homogen (ähnliches Niveau), je nach Ziel.
2. **Rollen erklären:** Driver/Navigator-Konzept vorstellen, Rollenwechsel-Intervall festlegen (z.B. alle 10-15 Minuten).
3. **Aufgabe stellen:** Aufgabe muss komplex genug sein, damit zwei Köpfe sinnvoll sind. Triviale Aufgaben frustrieren den Navigator.
4. **Begleiten:** Lehrkraft beobachtet, ob tatsächlich Austausch stattfindet. Häufiges Problem: Navigator wird passiv.
5. **Reflexion:** Am Ende reflektieren: Was hat die Zusammenarbeit gebracht? Was war schwierig?

## Voraussetzungen

- Jedes Paar braucht genau einen Rechner/Arbeitsplatz (nicht zwei!)
- Lernende müssen Grundlagen der Programmiersprache beherrschen
- Aufgaben müssen anspruchsvoll genug sein (nicht trivial lösbar)
- Timer für Rollenwechsel empfohlen

## Varianten

- **Ping-Pong Pairing:** Einer schreibt den Test, der andere die Implementierung. Fördert testgetriebene Entwicklung.
- **Strong-Style Pairing:** "Für eine Idee, die in den Code soll, muss sie durch die Hände einer anderen Person." Der Navigator diktiert, der Driver tippt.
- **Remote Pair Programming:** Über Screen-Sharing/VS Code Live Share. Relevant seit hybriden Unterrichtsformen.

## Bezug zur IT-Ausbildung

Pair Programming ist direkt berufsrelevant für FIAE — es wird in vielen Unternehmen praktiziert. Besonders geeignet für:
- **Lernfeld 5 (Software zur Verwaltung von Daten anpassen):** Gemeinsam Datenbankabfragen entwickeln.
- **Lernfeld 8 (Daten systemübergreifend bereitstellen):** API-Entwicklung im Pair.
- **Einführung neuer Technologien:** Erfahrenere:r + Neuling als Pair reduziert Einstiegshürden.

Gemäß [[constructive-alignment]]: Wenn das Lernziel "Anwenden" oder "Analysieren" ist, passt Pair Programming als TLA, weil Lernende aktiv Code schreiben und kritisch überprüfen.

## Praktische Anwendung

Ein Agent kann Pair Programming in Lernsituationen einbauen, wenn:
- Das Lernziel praktische Programmierkompetenz fordert (Taxonomiestufe: anwenden+)
- Heterogene Lerngruppen Wissenstransfer brauchen
- Code-Qualität ein explizites Lernziel ist

Konkret: Der Agent kann Pair-Programming-Aufgaben generieren, die die Ping-Pong-Variante nutzen — inklusive vordefinierter Tests, die der Navigator schreibt, und Implementierung durch den Driver.

## Verwandte Konzepte

- [[constructive-alignment]] — Pair Programming als TLA muss zum Lernziel passen

## Quellen

- Beck, K. (1999). Extreme Programming Explained. Addison-Wesley.
- Williams, L. & Kessler, R. (2002). Pair Programming Illuminated. Addison-Wesley.
- Hannay, J.E. et al. (2009). The Effectiveness of Pair Programming: A Meta-Analysis. Information and Software Technology, 51(7), 1110-1122.
```

- [ ] **Step 2: Verify Wikilinks funktionieren bidirektional**

```bash
grep -r "constructive-alignment" wiki/
```

Expected: Link in `pair-programming-unterricht.md` auf `[[constructive-alignment]]` sichtbar.

```bash
grep -r "pair-programming" wiki/
```

Expected: Noch kein Rückverweis in `constructive-alignment.md` — wird in Task 7 ergänzt.

- [ ] **Step 3: Commit**

```bash
git add wiki/pair-programming-unterricht.md
git commit -m "docs: add seed article — Pair Programming im Unterricht (methode)"
```

---

### Task 7: Rückverweise setzen und INDEX.md erstellen

**Files:**
- Modify: `wiki/constructive-alignment.md` (related-Feld + Verwandte Konzepte)
- Create: `INDEX.md`

- [ ] **Step 1: Rückverweis in constructive-alignment.md ergänzen**

Im Frontmatter `related` ergänzen:

```yaml
related:
  - "[[blooms-taxonomie]]"
  - "[[pair-programming-unterricht]]"
```

Im Body unter "Verwandte Konzepte" ergänzen:

```markdown
- [[pair-programming-unterricht]] — Beispiel für eine aligned TLA bei Programmier-Lernzielen
```

- [ ] **Step 2: INDEX.md erstellen**

```markdown
# Didaktik-Wissensbasis — Index

Dieses Repository enthält agent-optimierte Artikel zu didaktischen Grundlagen für die IT-Berufsausbildung (FIAE/FIDP).

**Artikel:** 2 | **Letzte Aktualisierung:** 2026-04-07

---

## Nach Typ

### Theorien & Modelle
- [[constructive-alignment]] — Abstimmung von Lernzielen, Aktivitäten und Prüfung nach Biggs (1996)

### Methoden & Formate
- [[pair-programming-unterricht]] — Kooperatives Programmieren als Lernmethode mit Driver/Navigator-Rollen

### Evidenz & Forschung
*(noch keine Artikel)*

### Praxis & Erfahrung
*(noch keine Artikel)*

---

## Nach Lernfeld (Rahmenlehrplan)

### LF5: Software zur Verwaltung von Daten anpassen
- [[pair-programming-unterricht]]

### LF6: Serviceanfragen bearbeiten
- [[constructive-alignment]] — Beispiel für Alignment in LF6

### LF8: Daten systemübergreifend bereitstellen
- [[pair-programming-unterricht]]

---

## Nach didaktischem Problem

### Kompetenzorientierung
- [[constructive-alignment]] — Sicherstellen, dass Ziele, Aktivitäten und Prüfung zusammenpassen

### Heterogenität / Differenzierung
- [[pair-programming-unterricht]] — Heterogene Paare für Wissenstransfer

### Aktivierung / Handlungsorientierung
- [[pair-programming-unterricht]] — Lernende programmieren aktiv statt nur zuzuschauen
```

- [ ] **Step 3: Verify Gesamtstruktur**

```bash
find . -name "*.md" -not -path "./.git/*" | sort
```

Expected:
```
./CLAUDE.md
./INDEX.md
./sources/README.md
./templates/evidenz.md
./templates/methode.md
./templates/praxis.md
./templates/theorie.md
./wiki/constructive-alignment.md
./wiki/pair-programming-unterricht.md
```

- [ ] **Step 4: Verify Wikilinks bidirektional**

```bash
grep -r "\[\[pair-programming" wiki/constructive-alignment.md
grep -r "\[\[constructive-alignment" wiki/pair-programming-unterricht.md
```

Expected: Beide Dateien verweisen aufeinander.

- [ ] **Step 5: Commit**

```bash
git add INDEX.md wiki/constructive-alignment.md
git commit -m "docs: add INDEX.md (Map of Content) and set bidirectional wikilinks"
```

---

### Task 8: Abschluss-Validierung

- [ ] **Step 1: Repo-Struktur prüfen**

```bash
tree -I .git
```

Expected:
```
.
├── CLAUDE.md
├── INDEX.md
├── docs
│   └── superpowers
│       ├── plans
│       │   └── 2026-04-07-didaktik-repo-setup.md
│       └── specs
│           └── 2026-04-07-didaktik-repo-design.md
├── sources
│   └── README.md
├── templates
│   ├── evidenz.md
│   ├── methode.md
│   ├── praxis.md
│   └── theorie.md
└── wiki
    ├── constructive-alignment.md
    └── pair-programming-unterricht.md
```

- [ ] **Step 2: Frontmatter-Pflichtfelder prüfen**

```bash
for f in wiki/*.md; do
  echo "=== $f ==="
  grep -E "^(title|type|tags|created|updated|summary):" "$f"
  echo ""
done
```

Expected: Alle 6 Pflichtfelder in jedem Wiki-Artikel vorhanden.

- [ ] **Step 3: Broken Wikilinks prüfen**

```bash
grep -ohP '\[\[([^\]]+)\]\]' wiki/*.md INDEX.md | sort -u | while read link; do
  target=$(echo "$link" | sed 's/\[\[//;s/\]\]//')
  if [ ! -f "wiki/${target}.md" ]; then
    echo "BROKEN: $link -> wiki/${target}.md"
  fi
done
```

Expected: `blooms-taxonomie` wird als BROKEN gemeldet — das ist korrekt, dieser Artikel existiert noch nicht. Alle anderen Links sollten auflösen.

- [ ] **Step 4: Final commit**

```bash
git add docs/
git commit -m "docs: add design spec and implementation plan"
```

- [ ] **Step 5: Git log prüfen**

```bash
git log --oneline
```

Expected: 6 Commits in sauberer Reihenfolge.
