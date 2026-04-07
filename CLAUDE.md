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
4. Empfohlene Felder setzen: `related` (Wikilinks zu verwandten Artikeln, **bidirektional** — siehe Konventionen), `audience`, `taxonomiestufe`
5. Im Body Inline-Wikilinks `[[dateiname]]` setzen wo verwandte Konzepte erwähnt werden
6. `INDEX.md` aktualisieren — alle drei Navigationspfade prüfen (Typ, Lernfeld, Problem)
7. Bestehende Artikel prüfen: Sollten sie auf den neuen Artikel verweisen? Wenn ja, `related`-Feld und Body ergänzen

## Konventionen

- Artikel max. ~8.000 Zeichen — darüber in mehrere Artikel aufteilen
- Wikilinks ohne .md-Endung: `[[constructive-alignment]]` nicht `[[constructive-alignment.md]]`
- `related` ist **bidirektional**: Wenn Artikel A im `related`-Feld auf B verweist, muss B auch auf A verweisen. Beim Anlegen oder Erweitern eines Artikels stets auch die Gegenrichtung in den verlinkten Artikeln nachtragen.
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
