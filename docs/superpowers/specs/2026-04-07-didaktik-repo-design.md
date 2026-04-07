# Didaktik-Repo: Design-Spezifikation

## Vision

Das Didaktik-Repo ist eine agent-optimierte Wissensbasis für didaktische Theorie, Forschung und Best Practices. Es dient als theoretisches Fundament, auf dem AI-Agents aufbauen, um innovative, interaktive Lernumgebungen für Fachinformatiker (FIAE/FIDP) zu entwickeln.

**Ziel:** Weg von klassischem E-Learning (lesen, Tutorials) hin zu "Learning by Doing" — ermöglicht durch agentengestützte Softwareentwicklung, die hochgradig angepasste Lernsituationen erzeugt.

**Konsument:** Eigene AI-Agents (Claude Code), die das Repo zur Laufzeit durchsuchen oder als Kontext-Injection nutzen.

## Architektur: Karpathy-Pattern + Zettelkasten

Zwei-Schichten-Modell nach dem Karpathy "LLM Wiki"-Pattern, kombiniert mit Zettelkasten-Prinzipien (flache Struktur, reichhaltige Verlinkung).

### Verzeichnisstruktur

```
didaktik-repo/
├── CLAUDE.md              # Agent-Navigationsanweisungen & Konventionen
├── INDEX.md               # Map of Content — kuratierter Einstieg
├── sources/               # Rohmaterial (unveränderliche Quellen)
│   └── README.md          # Konventionen für Quellenablage
├── wiki/                  # Kompilierte, verlinkte Wissensbasis
│   └── *.md               # Flach — alle Artikel auf einer Ebene
└── templates/             # Dokumentvorlagen pro Typ
    ├── theorie.md
    ├── methode.md
    ├── evidenz.md
    └── praxis.md
```

### Schicht 1: `sources/`

Unveränderliches Rohmaterial. PDFs, Artikel-URLs, Notizen, Transkripte. Wird nicht direkt von Agents zur Wissensfindung genutzt, sondern dient als Grundlage für die Kompilation in `wiki/`.

Dateinamen: `YYYY-MM-DD-kurztitel.{pdf,md,txt,url}`

### Schicht 2: `wiki/`

Die eigentliche Wissensbasis. Jeder Artikel ist ein eigenständiges Markdown-Dokument mit strukturiertem YAML-Frontmatter. **Keine Unterordner** — Kategorisierung erfolgt über das `type`-Feld im Frontmatter, nicht über Ordnerstruktur.

Dateinamen: `kebab-case.md` (z.B. `constructive-alignment.md`, `blooms-taxonomie.md`)

## Dokumentformat (Wiki-Artikel)

### YAML-Frontmatter

```yaml
---
title: Constructive Alignment
type: theorie                    # theorie | methode | evidenz | praxis
tags: [assessment, lernziele, kompetenzorientierung]
related:
  - "[[blooms-taxonomie]]"
  - "[[kompetenzorientierung]]"
audience: [FIAE, FIDP]          # Zielgruppe
taxonomiestufe: [anwenden]       # Bloom: erinnern|verstehen|anwenden|analysieren|bewerten|erschaffen
evidenzgrad: meta-analyse        # meta-analyse|rct|quasi-experimentell|praxisbericht (optional)
sozialform: [einzelarbeit, gruppe]  # optional
created: 2026-04-07
updated: 2026-04-07
source: "[[sources/2026-04-07-biggs-1996.pdf]]"  # optional — Verweis auf Rohmaterial
summary: >
  Abstimmung von Lernzielen, Lehr-/Lernaktivitäten
  und Prüfungsformen nach Biggs (1996). Zentral für
  kompetenzorientierte Unterrichtsplanung.
---
```

**Pflichtfelder:** `title`, `type`, `tags`, `created`, `updated`, `summary`
**Empfohlene Felder:** `related`, `audience`, `taxonomiestufe`
**Optionale Felder:** `evidenzgrad`, `sozialform`, `source`

### Designentscheidungen Frontmatter

- **`summary`** ermöglicht Relevanzprüfung ohne den ganzen Artikel zu lesen (Token-sparend)
- **`type`** statt Ordner verhindert künstliche Kategorie-Entscheidungen
- **`related` mit Wikilinks** macht Beziehungen maschinenlesbar und navigierbar
- **`taxonomiestufe`** nach Bloom/Anderson erlaubt gezielte Suche nach Komplexitätsstufe
- **`evidenzgrad`** signalisiert dem Agent die Belastbarkeit einer Aussage

### Artikelstruktur (Body)

```markdown
# {Titel}

## Kernidee
Prägnante Zusammenfassung in 2-3 Sätzen.

## Beschreibung
Ausführliche Erklärung des Konzepts/der Methode.

## Bezug zur IT-Ausbildung
Konkrete Relevanz für FIAE/FIDP. Beispiele aus Lernfeldern.

## Praktische Anwendung
Wie kann ein Agent dieses Wissen nutzen, um Lernsituationen zu gestalten?

## Verwandte Konzepte
- [[blooms-taxonomie]] — liefert die Kompetenzstufung
- [[kompetenzorientierung]] — übergeordnetes Prinzip

## Quellen
- Biggs, J. (1996). Enhancing teaching through constructive alignment. ...
```

**Konventionen:**
- Artikel max. ~8.000 Zeichen — darüber aufteilen
- Wikilinks `[[dateiname]]` für interne Querverweise (ohne .md-Endung)
- Jeder Abschnitt muss auch isoliert verständlich sein (Progressive Disclosure)
- "Bezug zur IT-Ausbildung" und "Praktische Anwendung" sind die wichtigsten Abschnitte für Agents — hier liegt der Mehrwert gegenüber generischem Didaktik-Wissen

## INDEX.md — Map of Content

Der INDEX.md ist der primäre Einstiegspunkt für Agents. Er bietet drei Navigationspfade:

### Aufbau

```markdown
# Didaktik-Wissensbasis — Index

## Zusammenfassung
Kurzer Überblick: Was ist hier, wie viele Artikel, letzte Aktualisierung.

## Nach Typ
### Theorien & Modelle
- [[constructive-alignment]] — Abstimmung von Lernzielen, Aktivitäten und Prüfung
- [[blooms-taxonomie]] — Kognitive Kompetenzstufen nach Anderson/Krathwohl
...

### Methoden & Formate
- [[pair-programming-unterricht]] — Kooperatives Programmieren als Lernmethode
...

### Evidenz & Forschung
...

### Praxis & Erfahrung
...

## Nach Lernfeld (Rahmenlehrplan)
### LF1: Das Unternehmen und die eigene Rolle im Betrieb beschreiben
...

### LF6: Serviceanfragen bearbeiten
...

## Nach didaktischem Problem
### Heterogenität / Differenzierung
- [[adaptive-lernumgebungen]] — ...
...

### Motivation & Engagement
...

### Wissenstransfer
...
```

**Konventionen:**
- Jeder Eintrag: Wikilink + einzeilige Kurzbeschreibung (aus `summary`)
- Wird bei jedem neuen Artikel aktualisiert
- Maximal 200 Zeilen — bei Wachstum thematische Sub-MOCs auslagern

## CLAUDE.md — Agent-Navigationsanweisungen

Die CLAUDE.md enthält alles, was ein Agent braucht, um das Repo zu verstehen und zu nutzen:

```markdown
# Didaktik-Repo

## Was ist das?
Agent-optimierte Wissensbasis für didaktische Grundlagen.
Zielgruppe: Fachinformatiker (FIAE/FIDP) in der Berufsschule.

## Struktur
- `INDEX.md` — Einstiegspunkt, Map of Content
- `wiki/` — Wissensartikel (flach, nach Zettelkasten-Prinzip)
- `sources/` — Rohmaterial (nicht direkt nutzen)
- `templates/` — Vorlagen für neue Artikel

## Navigation
1. Starte mit INDEX.md für einen Überblick
2. Nutze Grep auf wiki/ um nach Tags oder Begriffen zu suchen
3. Folge [[Wikilinks]] um verwandte Konzepte zu finden
4. Lies das `summary`-Feld im Frontmatter um Relevanz zu prüfen

## Neuen Artikel anlegen
1. Template aus templates/ wählen (passend zum Typ)
2. Dateiname: kebab-case.md
3. Alle Pflichtfelder im Frontmatter ausfüllen
4. Querverweise zu bestehenden Artikeln setzen (related + Inline-Wikilinks)
5. INDEX.md aktualisieren (alle drei Navigationspfade prüfen)
6. Bestehende Artikel prüfen: Sollten sie auf den neuen Artikel verweisen?
```

## Templates

Vier Templates in `templates/`, je eines pro Dokumenttyp. Jedes Template enthält das vollständige Frontmatter-Schema mit Platzhaltern und die erwartete Artikelstruktur.

### Template: Theorie (`templates/theorie.md`)
Für Lerntheorien, didaktische Modelle, Taxonomien.
Abschnitte: Kernidee, Beschreibung, Bezug zur IT-Ausbildung, Praktische Anwendung, Verwandte Konzepte, Quellen.

### Template: Methode (`templates/methode.md`)
Für konkrete Unterrichtsmethoden und Lernformate.
Zusätzliche Abschnitte: Durchführung, Voraussetzungen, Varianten, Sozialform, Zeitbedarf.

### Template: Evidenz (`templates/evidenz.md`)
Für Forschungsergebnisse und Studien.
Zusätzliche Abschnitte: Studiendesign, Stichprobe, Kernergebnisse, Effektstärke, Limitationen.

### Template: Praxis (`templates/praxis.md`)
Für Erfahrungsberichte, Unterrichtsszenarien, Beispiele.
Zusätzliche Abschnitte: Kontext, Durchführung, Ergebnisse, Lessons Learned.

## Ingest-Workflows

### Workflow A: Agent-Recherche (Primär)

1. Agent erhält Thema oder Fragestellung
2. Agent recherchiert (Web, eigenes Wissen)
3. Agent wählt passendes Template
4. Agent erstellt Artikel nach Template
5. Agent setzt Querverweise zu bestehenden Artikeln
6. Agent aktualisiert INDEX.md
7. Agent prüft, ob bestehende Artikel Rückverweise brauchen

### Workflow B: Quellen-Fütterung

1. Quelle wird in `sources/` abgelegt
2. Agent liest und analysiert die Quelle
3. Agent kompiliert einen oder mehrere Wiki-Artikel daraus
4. Schritte 4-7 wie bei Workflow A
5. Agent setzt `source`-Feld im Frontmatter auf die Quelldatei

### Qualitätsprüfung (bei beiden Workflows)

- Alle Pflichtfelder vorhanden?
- Summary prägnant und aussagekräftig?
- Mindestens 1 Querverweis zu bestehendem Artikel?
- Artikel unter 8.000 Zeichen?
- INDEX.md aktualisiert?

## Bewusste Nicht-Entscheidungen

- **Kein RAG / Vektordatenbank:** Bei der erwarteten Größenordnung (50-500 Artikel) reicht dateibasiertes Lesen. Kann später ergänzt werden.
- **Kein Obsidian-Lock-in:** Format ist Obsidian-kompatibel (Wikilinks, Frontmatter), aber das Repo funktioniert ohne Obsidian.
- **Keine Ordner-Hierarchie in wiki/:** Kategorisierung über `type`-Tag, nicht Ordner. Verhindert rigide Strukturen und Einordnungsprobleme.
- **Keine automatische Backlink-Pflege:** Rückverweise werden beim Ingest manuell geprüft. Ein Validierungsskript kann später ergänzt werden.
- **Kein Versionierungssystem:** Git reicht als History.

## Skalierungsstrategie

- **Bis 50 Artikel:** INDEX.md als einzelne Map of Content genügt
- **50-200 Artikel:** Thematische Sub-MOCs einführen (z.B. `wiki/_moc-konstruktivismus.md`)
- **200+ Artikel:** REGISTRY.yaml als maschinenlesbare Ergänzung zum INDEX evaluieren
- **500+ Artikel:** RAG-Ergänzung evaluieren

## Referenzen

- Karpathy, A. (2025). LLM Knowledge Base Architecture. https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
- Croft, J. Designing a Machine-Readable Knowledge Base with Obsidian. https://www.jamescroft.co.uk/designing-a-machine-readable-knowledge-base-with-obsidian/
- GitHub Blog. How to Write a Great agents.md. https://github.blog/ai-and-ml/github-copilot/how-to-write-a-great-agents-md-lessons-from-over-2500-repositories/
- Biggs, J. (1996). Enhancing Teaching Through Constructive Alignment. Higher Education, 32(3).
