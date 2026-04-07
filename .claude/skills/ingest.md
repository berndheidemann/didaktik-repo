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

**Template-Datei aus `templates/` lesen** (nicht auswendig arbeiten!):
- `templates/theorie.md` — Lerntheorien, Modelle, Taxonomien
- `templates/methode.md` — Unterrichtsmethoden, Lernformate
- `templates/evidenz.md` — Studien, Meta-Analysen, Forschungsergebnisse
- `templates/praxis.md` — Erfahrungsberichte, Unterrichtsszenarien

**Alle Sektionen aus dem Template übernehmen.** Keine Sektion weglassen, keine umbenennen. Das Template definiert die Pflicht-Struktur:
- `theorie`: Kernidee, Beschreibung, Bezug zur IT-Ausbildung, Praktische Anwendung, Verwandte Konzepte, Quellen
- `methode`: Kernidee, Beschreibung, **Durchführung, Voraussetzungen, Varianten, Zeitbedarf**, Bezug zur IT-Ausbildung, Praktische Anwendung, Verwandte Konzepte, Quellen

Dateiname: kebab-case, keine Umlaute (ä→ae, ö→oe, ü→ue, ß→ss), max. 50 Zeichen.

Artikel in `wiki/` erstellen. Alle Frontmatter-Felder gemäß `CLAUDE.md` Frontmatter-Referenz setzen.

**Summary-Regel:** Maximal 2 Sätze. Im YAML-Frontmatter mit `>` gefaltet. Zwei Sätze bedeutet maximal zwei Punkte (`.`). Bei Bedarf Sätze mit Gedankenstrich (`—`), Semikolon oder Komma verbinden statt einen dritten Satz zu beginnen.

Besonderer Fokus auf:
- **"Bezug zur IT-Ausbildung"** — Konkrete Relevanz für FIAE/FIDP mit Lernfeld-Beispielen
- **"Praktische Anwendung"** — Wie kann ein Agent dieses Wissen für Lernsituationen nutzen?

Im Quellmodus: `source`-Feld im Frontmatter auf die Quelldatei setzen.

### 4. Querverweise setzen (Drei-Stellen-Regel)

Querverweise müssen an **drei Stellen synchron** sein:

1. **`related:`-Frontmatter** — Liste aller verwandten Artikel als Wikilinks
2. **Inline-Wikilinks im Body** — Jeder `related:`-Eintrag muss mindestens einmal als `[[wikilink]]` im Fließtext der inhaltlichen Sektionen erscheinen (nicht nur in Verwandte Konzepte)
3. **Verwandte-Konzepte-Sektion** — Jeder `related:`-Eintrag muss hier mit Kurzbeschreibung der Beziehung aufgeführt sein

Vorgehen:
- Bestehende Artikel in `wiki/` durchsuchen (Tags, Summaries, Body-Inhalt).
- Im neuen Artikel: `related:`-Feld, Inline-Wikilinks und Verwandte-Konzepte-Sektion konsistent setzen.
- In bestehenden Artikeln: Rückverweis im `related:`-Feld **und** in der Verwandte-Konzepte-Sektion ergänzen (nur ergänzen, nicht umschreiben).

Tags: Bestehende Tags in `wiki/` bevorzugen für Konsistenz. Tags in kebab-case, keine Umlaute.

### 5. INDEX.md aktualisieren

Alle drei Navigationspfade prüfen und ergänzen:
1. **Nach Typ** — Unter passender Überschrift einfügen (alphabetisch)
2. **Nach Lernfeld** — Unter relevanten Lernfeldern (neue Lernfeld-Überschrift anlegen falls nötig)
3. **Nach didaktischem Problem** — Unter relevanten Kategorien (neue Kategorie anlegen falls nötig)

Format: `- [[dateiname]] — Kurzbeschreibung`

Artikelzähler und Datum im Header aktualisieren.

### 6. Qualitätschecks

Vor dem Commit **jeden** der folgenden Punkte prüfen. Bei Fehler: sofort beheben, nicht aufschieben.

**Frontmatter:**
- [ ] Pflichtfelder vorhanden: `title`, `type`, `tags`, `created`, `updated`, `summary`
- [ ] `type` ist erlaubter Wert (theorie/methode/evidenz/praxis)
- [ ] Summary hat maximal 2 Sätze (zähle die Punkte!)
- [ ] `related:` und Verwandte-Konzepte-Sektion sind synchron (gleiche Einträge)

**Template-Konformität:**
- [ ] Alle Pflicht-Sektionen des gewählten Templates sind vorhanden
- [ ] Methode-Artikel haben: Durchführung, Voraussetzungen, Varianten, Zeitbedarf

**Format:**
- [ ] Artikel unter 8.000 Zeichen (`wc -c` ausführen!)
- [ ] Wikilinks ohne `.md`-Endung (Grep nach `\.md\]\]` ausführen!)
- [ ] Dateiname in kebab-case, keine Umlaute
- [ ] Quellenangaben im APA-Stil

**Querverweise (Drei-Stellen-Regel):**
- [ ] Jeder `related:`-Eintrag erscheint als Inline-Wikilink im Body
- [ ] Jeder `related:`-Eintrag erscheint in Verwandte Konzepte mit Beschreibung
- [ ] Mindestens 1 Querverweis zu bestehendem Artikel (außer es gibt noch keine)
- [ ] Bestehende Artikel haben Rückverweise erhalten (`related:` + Verwandte Konzepte)

**INDEX.md:**
- [ ] Artikelzähler aktualisiert
- [ ] Alle drei Navigationspfade geprüft und ergänzt

### 7. Commit

```bash
git add wiki/<neuer-artikel>.md INDEX.md [geänderte bestehende Artikel]
git commit -m "docs: add <titel> (<type>)"
```
