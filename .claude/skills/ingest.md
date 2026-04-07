---
name: Ingest
description: Fügt neue Artikel zur Didaktik-Wissensbasis hinzu. Nutzen wenn ein neues Thema recherchiert, ein Artikel erstellt, oder eine Quelle aus sources/ verarbeitet werden soll.
---

# Ingest — Artikel zur Wissensbasis hinzufügen

## Modus-Erkennung

Erkenne am Argument, was zu tun ist:
- **Dateipfad** (enthält `sources/` oder endet auf `.pdf`/`.md`/`.txt`) → Quellmodus
- **Alles andere** → Recherche-Modus (Web-Recherche zum Thema)

## Workflow

### 1. Duplikat-Check

Grep in `wiki/*.md` nach dem Thema (Titel, Tags, Summary). Falls Treffer:
- Nutzer informieren: "Es gibt bereits [[existierender-artikel]]."
- Fragen: "Erweitern oder separaten Artikel erstellen?"

### 2. Inhalt beschaffen

**Recherche-Modus:** Web-Recherche zum Thema. Mindestens 2-3 Quellen finden.
**Quellmodus:** Quelle lesen. Entscheiden: ein oder mehrere Artikel? Ein Fachartikel = ein Wiki-Artikel.

### 3. Template wählen und Artikel erstellen

Template aus `templates/` laden basierend auf Inhalt:
- `theorie` — Lerntheorien, Modelle, Taxonomien
- `methode` — Unterrichtsmethoden, Lernformate
- `evidenz` — Studien, Meta-Analysen, Forschungsergebnisse
- `praxis` — Erfahrungsberichte, Unterrichtsszenarien

Dateiname: kebab-case, keine Umlaute (ä→ae, ö→oe, ü→ue, ß→ss), max. 50 Zeichen.

Artikel in `wiki/` erstellen. Alle Frontmatter-Felder gemäß `CLAUDE.md` Frontmatter-Referenz setzen.

Besonderer Fokus auf:
- **"Bezug zur IT-Ausbildung"** — Konkrete Relevanz für FIAE/FIDP mit Lernfeld-Beispielen
- **"Praktische Anwendung"** — Wie kann ein Agent dieses Wissen für Lernsituationen nutzen?

Im Quellmodus: `source`-Feld im Frontmatter auf die Quelldatei setzen.

### 4. Querverweise setzen

Bestehende Artikel in `wiki/` durchsuchen (Tags, Summaries). Für verwandte Artikel:
- Im neuen Artikel: `related`-Feld und Inline-Wikilinks `[[dateiname]]` setzen
- In bestehenden Artikeln: Rückverweis im `related`-Feld und ggf. im Body ergänzen (nur ergänzen, nicht umschreiben)

Tags: Bestehende Tags in `wiki/` bevorzugen für Konsistenz.

### 5. INDEX.md aktualisieren

Alle drei Navigationspfade prüfen und ergänzen:
1. **Nach Typ** — Unter passender Überschrift einfügen (alphabetisch)
2. **Nach Lernfeld** — Unter relevanten Lernfeldern (neue Lernfeld-Überschrift anlegen falls nötig)
3. **Nach didaktischem Problem** — Unter relevanten Kategorien (neue Kategorie anlegen falls nötig)

Format: `- [[dateiname]] — Kurzbeschreibung`

Artikelzähler und Datum im Header aktualisieren.

### 6. Qualitätschecks

Vor dem Commit prüfen:
- Pflichtfelder vorhanden: `title`, `type`, `tags`, `created`, `updated`, `summary`
- `type` ist erlaubter Wert (theorie/methode/evidenz/praxis)
- Artikel unter 8.000 Zeichen
- Wikilinks ohne `.md`-Endung
- Summary max. 2 Sätze
- Mindestens 1 Querverweis zu bestehendem Artikel (außer es gibt noch keine)
- Dateiname in kebab-case
- Quellenangaben im APA-Stil
- INDEX.md aktualisiert

Probleme automatisch beheben.

### 7. Commit

```bash
git add wiki/<neuer-artikel>.md INDEX.md [geänderte bestehende Artikel]
git commit -m "docs: add <titel> (<type>)"
```
