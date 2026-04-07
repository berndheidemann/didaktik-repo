# Ingest-Skill: Design-Spezifikation

## Zweck

Ein Claude-Code-Skill, der neue Artikel in die Didaktik-Wissensbasis aufnimmt. Automatisiert den kompletten Workflow: Inhalt beschaffen, Artikel nach Template erstellen, Querverweise setzen, INDEX.md aktualisieren, committen.

## Datei

`.claude/skills/ingest.md`

## Auslösung

### Slash-Command

- `/ingest Spiralcurriculum` — Recherche-Modus
- `/ingest sources/2026-04-08-bruner.pdf` — Quellmodus

### Natürliche Sprache (Trigger-Beschreibung im Frontmatter)

Erkennt Formulierungen wie:
- "Recherchiere X und füge es zur Wissensbasis hinzu"
- "Neuer Artikel über X"
- "Verarbeite diese Quelle für das Wiki"
- "Füge X zum didaktik-repo hinzu"

## Modus-Erkennung

Der Skill erkennt am Argument, welcher Modus aktiviert wird:

### Recherche-Modus (Standard)

**Trigger:** Argument ist ein Thema/Begriff (kein Dateipfad).

**Ablauf:**
1. Bestehende Artikel in `wiki/` durchsuchen — gibt es bereits einen Artikel zu diesem Thema?
2. Falls ja: Agent informiert den Nutzer und fragt, ob erweitern oder neuen Artikel erstellen
3. Falls nein: Web-Recherche zum Thema durchführen
4. Typ bestimmen (theorie/methode/evidenz/praxis) basierend auf dem Inhalt
5. Passendes Template aus `templates/` laden
6. Artikel schreiben (Frontmatter + Body nach Template-Struktur)
7. Querverweise setzen (bestehende Artikel in `wiki/` nach verwandten Themen durchsuchen, `related`-Feld und Inline-Wikilinks setzen)
8. INDEX.md aktualisieren (alle drei Navigationspfade prüfen: Typ, Lernfeld, Problem)
9. Bestehende Artikel prüfen: Wo ist ein Rückverweis sinnvoll? `related`-Feld und Body ergänzen
10. Qualitätschecks durchführen
11. Alle geänderten Dateien committen

### Quellmodus

**Trigger:** Argument ist ein Dateipfad (enthält `sources/` oder endet auf `.pdf`, `.md`, `.txt`).

**Ablauf:**
1. Quelle lesen und analysieren
2. Entscheiden: Wird ein oder werden mehrere Artikel daraus? (Ein Fachartikel = ein Wiki-Artikel. Ein umfassendes Buch-Kapitel = ggf. mehrere)
3. Für jeden Artikel: Schritte 4-11 wie im Recherche-Modus
4. Zusätzlich: `source`-Feld im Frontmatter auf die Quelldatei setzen

## Artikel-Erstellung

### Template-Auswahl

Der Skill wählt das Template basierend auf dem Inhalt:
- **theorie** — Lerntheorien, didaktische Modelle, Taxonomien, Prinzipien
- **methode** — Unterrichtsmethoden, Lernformate, Sozialformen
- **evidenz** — Forschungsergebnisse, Studien, Meta-Analysen
- **praxis** — Erfahrungsberichte, Unterrichtsszenarien, Beispiele

### Frontmatter

Alle Pflichtfelder werden automatisch gesetzt:
- `title`: Aus dem Thema abgeleitet
- `type`: Automatisch bestimmt
- `tags`: Aus dem Inhalt extrahiert (bestehende Tags in `wiki/` bevorzugen für Konsistenz)
- `created`: Heutiges Datum
- `updated`: Heutiges Datum
- `summary`: 1-2 Sätze, prägnant

Empfohlene Felder werden wenn möglich gesetzt:
- `related`: Wikilinks zu verwandten Artikeln (aus Schritt 7)
- `audience`: FIAE und/oder FIDP
- `taxonomiestufe`: Nach Bloom/Anderson

Optionale Felder nur wenn inhaltlich sinnvoll:
- `evidenzgrad`: Nur bei Typ evidenz
- `sozialform`: Nur bei Typ methode/praxis
- `source`: Nur im Quellmodus

### Body-Inhalt

Der Skill folgt der Abschnittsstruktur des gewählten Templates. Besonderer Fokus auf:
- **"Bezug zur IT-Ausbildung"** — Konkrete Relevanz für FIAE/FIDP mit Lernfeld-Beispielen
- **"Praktische Anwendung"** — Wie kann ein Agent dieses Wissen nutzen?

Diese Abschnitte machen den Unterschied zu generischem Didaktik-Wissen und sind der Hauptmehrwert.

### Dateiname

Automatisch aus dem Titel abgeleitet:
- kebab-case
- Keine Umlaute (ä→ae, ö→oe, ü→ue, ß→ss)
- Max. 50 Zeichen
- Beispiel: "Blooms Taxonomie" → `blooms-taxonomie.md`

## Querverweise

### Vorwärts-Verweise (neuer Artikel → bestehende)

Der Skill durchsucht `wiki/` nach thematisch verwandten Artikeln:
1. Grep nach Tags, die zum neuen Thema passen
2. Frontmatter-Summaries lesen für Relevanzprüfung
3. Gefundene Artikel ins `related`-Feld aufnehmen
4. Im Body an passenden Stellen Inline-Wikilinks `[[dateiname]]` setzen

### Rück-Verweise (bestehende Artikel → neuer Artikel)

Der Skill prüft für jeden verwandten Artikel:
1. Ist ein Rückverweis inhaltlich sinnvoll?
2. Falls ja: `related`-Feld ergänzen und ggf. Inline-Wikilink im Body setzen
3. Nur ergänzen, nicht umschreiben — bestehenden Inhalt respektieren

## INDEX.md-Update

Der Skill aktualisiert INDEX.md in allen drei Navigationspfaden:

1. **Nach Typ:** Artikel unter der passenden Typ-Überschrift einfügen (alphabetisch)
2. **Nach Lernfeld:** Artikel unter allen relevanten Lernfeldern einfügen. Falls ein Lernfeld noch nicht im INDEX existiert, Überschrift ergänzen.
3. **Nach didaktischem Problem:** Artikel unter allen relevanten Problemkategorien einfügen. Falls eine Kategorie noch nicht existiert, Überschrift ergänzen.

Format pro Eintrag: `- [[dateiname]] — Kurzbeschreibung aus summary`

Artikelzähler und Datum im Header aktualisieren.

## Qualitätschecks

Vor dem Commit prüft der Skill:

- [ ] Alle Pflichtfelder im Frontmatter vorhanden (`title`, `type`, `tags`, `created`, `updated`, `summary`)
- [ ] `type` ist einer der erlaubten Werte (theorie/methode/evidenz/praxis)
- [ ] Summary ist max. 2 Sätze
- [ ] Artikel ist unter 8.000 Zeichen (sonst aufteilen und den Nutzer informieren)
- [ ] Mindestens 1 Querverweis zu bestehendem Artikel (außer es ist erst der 1. Artikel)
- [ ] Wikilinks ohne `.md`-Endung
- [ ] INDEX.md wurde aktualisiert
- [ ] Quellenangaben im APA-Stil vorhanden
- [ ] Dateiname in kebab-case

Falls ein Check fehlschlägt, behebt der Skill das Problem automatisch, bevor er committet.

## Commit

Der Skill committet automatisch alle geänderten Dateien:

```
git add wiki/<neuer-artikel>.md INDEX.md [geänderte bestehende Artikel]
git commit -m "docs: add <titel> (<type>)"
```

Beispiel: `docs: add Blooms Taxonomie (theorie)`

## Duplikat-Handling

Vor der Artikel-Erstellung prüft der Skill:
1. Grep nach dem Thema in `wiki/*.md` (Titel, Tags, Summary)
2. Falls ein existierender Artikel das Thema bereits abdeckt:
   - Agent informiert den Nutzer: "Es gibt bereits [[existierender-artikel]] zu diesem Thema."
   - Fragt: "Soll ich den bestehenden Artikel erweitern oder einen separaten Artikel erstellen?"
3. Falls kein Duplikat: normal fortfahren

## Skill-Datei Struktur

Die `.claude/skills/ingest.md` enthält:

```yaml
---
name: ingest
description: Fügt neue Artikel zur Didaktik-Wissensbasis hinzu. Recherchiert Themen im Web oder verarbeitet Quellen aus sources/.
triggers:
  - /ingest
  - "neuer Artikel"
  - "recherchiere.*für.*wiki"
  - "füge.*wissensbasis.*hinzu"
  - "verarbeite.*quelle"
---
```

Gefolgt vom kompletten Workflow als Markdown-Instruktionen, die der Agent Schritt für Schritt abarbeitet.
