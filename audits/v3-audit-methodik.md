# v3-Single-Pass-Audit — Methodik (produktiv ab 2026-05-01)

Empirisch validiert an 5 Artikeln (effektstaerken-unterricht, ihk-pruefungskatalog-2025, kritische-ki-bewertungskompetenz, wissensretention-programmierung, self-explanation) gegen Pass-1+Pass-2+Pass-A/B/C als Baseline. Test-Bilanz: 8 CRIT + 13 MAJOR (v3) vs. 8 CRIT + 23 MAJOR (Pass-A/B/C bei kompakterer v3-Aggregation), mit 3 % weniger Token und einem von Pass-A/B/C übersehenen CRITICAL (Ericson/Fabic-Erstautor) zusätzlich gefangen.

## Forschungsbasis

- **DeepMind FACTS, REFIND SemEval 2025, GhostCite (2025-2026):** State-of-the-Art bei Citation-Hallucination ist *span-level verification* mit *tool-augmented retrieval*, nicht sequenzielle Multi-Pass-Eskalation.
- **Frontier-Modelle (Opus/GPT-4-Klasse) zeigen diminishing returns auf Decomposition** — sie machen das intern. Pass-A/B/C-Trennung wirkt diagnostisch (Diskrepanz = fragile belief), nicht primär accuracy-steigernd.
- **Strukturierter Output (Schema-zwingend) > verbale Anweisung.** Format-Drift ist die Hauptfehlerquelle bei "verbessertem" Prompting.
- **Self-Consistency (3× parallel + Mehrheits-Vote) ist der billige Multi-Pass-Ersatz** — DeepMind-FACTS-Befund: ~25 % Error-Reduktion ohne Eskalations-Risiko.

## Per-Citation-Workflow (verbindlich für jede Citation)

Jede Citation MUSS alle drei Layers durchlaufen, dokumentiert im YAML-Output:

### Layer 1: Bibliografie

- CrossRef-API (`api.crossref.org/works/[DOI]`) oder arXiv-Page direkt aufrufen
- Erstautor + Co-Autoren-Liste 1:1 abgleichen mit Citation
- Jahr (Print) + Venue exakt prüfen
- **Pflicht:** Wenn Citation einen Erstautor nennt → CrossRef-Erstautor zwingend explizit gegen Citation-Erstautor abgleichen, NICHT nur DOI-Existenz. (Diese Regel allein hat im v3-Test einen Pass-A/B/C-Fehler gefangen — Ericson/Morrison vs. tatsächlich Fabic/Mitrovic/Neshatian.)

### Layer 2: Inhaltsdeckung

- **Pflicht WebFetch des Originalpapers** für jede Citation mit konkretem Wert (d=, g=, n=, k=, %) oder mit "X belegt These Y"-Konstruktion
- Steht der Wert *exakt* im Paper, oder ist er aus einem anderen Paper, das diese Quelle nur referenziert? (**Effektstärken-Generationencheck**)
- Stützt das Paper die These — oder findet es das **Gegenteil**? (Aktiv Gegenbeweise im Abstract + Diskussion suchen, **Hot-Spot-Inversion**)
- Studientyp gegen Methodensektion verifizieren (Meta-Analyse / RCT / Survey / Einzelstudie / theoret. Synthese)

### Layer 3: Kontext + Wortlaut + Tabellen

- **Direktzitate (in Anführungszeichen):** Wörtliche Phrase im Originaltext suchen. Bei dt. Verwaltungstexten (KMK / BIBB / FIAusbV / IHK): offizielle Primärquelle (gesetze-im-internet.de, kmk.org, bibb.de) zwingend.
- **Tabellen mit Klassifikationen / offiziellen Bezeichnungen:** Zelle-für-Zelle gegen Original. **Bei Effektstärken-Tabellen separate Severity je Zelle vergeben, nicht zusammenfassen** (Granularität). Bei Klassifikations-Tabellen mit derselben Ursache (z.B. mehrere falsche Bereichsnamen) Aggregation erlaubt.
- **§-Verweise:** Gegen tatsächlichen Verordnungstext.
- **Self-Citation-Check:** Wenn ein Autor mehrfach in der Quellenliste auftaucht — explizit prüfen, ob es offengelegt wird (Doppel-Cite als unabhängige Evidenz dargestellt = MAJOR).
- **Kontext-Verzerrung:** Wann/worüber wurde Zitat im Original gesagt? Reihenfolge in Autorenlisten?

## Tool-Use-Pflicht-Regel

Vor jedem Severity-Urteil ≥ MINOR muss mindestens eine der folgenden Aktionen dokumentiert sein:

- CrossRef-API-Call (Layer 1)
- WebFetch des Originalpapers (Layer 2)
- WebFetch der Original-Tabelle / des Verordnungstexts (Layer 3)
- Mindestens 3 verschiedene WebSearches mit unterschiedlichem Wortlaut (für "nicht auffindbar"-Urteile)

Wenn keine Tool-Aktion dokumentiert: Severity = OK (Default, kann nicht hochgesetzt werden).

## Output-Schema (YAML, verbindlich)

```yaml
artikel: wiki/X.md
audit_metadata:
  prompt_version: "v3-single-pass"
  total_citations: N
  severity_summary:        # MUSS aus citations[].final_severity berechnet werden, nicht freihändig
    OK: x
    MINOR: y
    MAJOR: z
    CRITICAL: w
  confidence_mean: 0.xx
  total_tool_calls: N
  tool_calls_per_citation: 1.x   # Audit-Qualitätsmetrik

citations:
  - id: 1
    raw_citation: "<wie im Artikel zitiert>"

    bibliografie:
      tool_used: "CrossRef" | "arXiv" | "WebSearch" | "none"
      doi_or_arxiv: "..."
      verifizierter_erstautor: "..."
      verifizierte_coautoren: [...]
      verifiziertes_jahr: 2024
      verifiziertes_venue: "..."
      diskrepanz: null | "<Beschreibung>"
      severity: OK | MINOR | MAJOR | CRITICAL

    inhalt:
      behauptung: "..."
      volltext_gefetcht: true | false
      wert_im_paper: true | false | n/a
      stuetzt_these: true | false | partial
      gegenbeweis_gesucht: true | false
      gegenbeweis_gefunden: null | "<Beschreibung>"
      studientyp_korrekt: true | false | n/a
      severity: OK | MINOR | MAJOR | CRITICAL

    kontext:
      direktzitat_woertlich: true | false | n/a
      tabelle_zellen_geprueft: true | false | n/a
      tabelle_diskrepanz: null | "<Beschreibung>"
      paragraph_existiert: true | false | n/a
      self_citation_offengelegt: true | false | n/a
      severity: OK | MINOR | MAJOR | CRITICAL

    final_severity: OK | MINOR | MAJOR | CRITICAL  # = max(bibliografie, inhalt, kontext)
    confidence: 0.95
    befund_kurz: "<2-3 Sätze, was ist das Problem>"
    quellen_konsultiert: ["url1", "url2", "url3"]

self_critique:
  unsichere_befunde:
    - citation_id: 5
      grund: "Quelle hängt an einer Sekundärquelle"
  nicht_aufgeloeste_diskrepanzen:
    - "Erstautor-Streit Citation 8 — könnte Triangulation brauchen"
  uebersehene_pflichten:
    - "Citation 12 — Volltext nicht gefetcht (PDF-Paywall), daher Severity-Aussage schwächer"

cross_repo_verdacht:
  - pattern: "<Hybrid-Citation X>"
    suggestion: "Im Repo nach <Pattern> grep'en"
```

## Optionaler Self-Consistency-Pass (für strittige CRITs)

Wenn der primäre v3-Audit CRITICAL-Befunde liefert, deren Confidence < 0.85 oder bei denen der Subagent in der Self-Critique-Sektion Unsicherheit dokumentiert:

→ **3× v3-Audit parallel auf demselben Artikel laufen lassen, Mehrheits-Vote bei strittigen Severities.**

Das ist der **billige Multi-Pass-Ersatz** statt sequenzieller Eskalation und entspricht DeepMind-FACTS-Multi-Judge-Consensus-Pattern.

## Wann v3 nicht reicht

- **Hattie-Effektstärken-Tabellen:** Bei expliziten Effektstärken-Tabellen ist Pass-A/B/C-Granularität (separate Severity je Zelle) didaktisch wertvoller als v3-Aggregation. Schärfungs-Regel ist im Layer-3-Schritt verankert.
- **Cross-Repo-Befunde verifizieren:** Ein einziger Audit findet das Pattern. Cross-Repo-Suche ist eine separate Folge-Aufgabe (Grep + manuell prüfen).
- **Sehr alte oder paywalled-Quellen:** Wenn Volltext nicht fetchbar, dokumentiert Subagent das in `self_critique.uebersehene_pflichten` — Konsequenz: zusätzliche manuelle Prüfung notwendig.

## Empirische Validierung (v3-Test, 2026-05-01)

| Artikel | v3 (CRIT/MAJOR) | A/B/C (CRIT/MAJOR) | v3 vs A/B/C |
|---|---|---|---|
| effektstaerken | 0 / 3 | 1 / 4 | -1 CRIT, kompaktere Aggregation |
| ihk-pruefungskatalog | 3 / 2 | 3 / 7 | gleichwertig, kompakter |
| kritische-ki | 3 / 3 | 4 / 3 | -1 CRIT (HalluCode-Framework-Detail) |
| wissensretention | 1 / 2 | 0 / 5 | +1 CRIT (Cepeda verschärft), milder bei Sorva/Lewis |
| self-explanation | 1 / 3 | 0 / 4 | **+1 CRIT — Ericson/Fabic von A/B/C übersehen!** |
| Σ | 8 CRIT / 13 MAJOR | 8 CRIT / 23 MAJOR | gleichwertig CRIT, kompaktere MAJORs |

Token-Aufwand v3 vs. A/B/C: ~283k vs. ~291k über 5 Artikel — fast identisch (-3 %).

## Wiederverwendbares Prompt-Skelett

```
v3-Single-Pass-Audit eines Wiki-Artikels im Didaktik-Repo /home/bernd/projects/didaktik-repo.

**Methodik-Datei zwingend zuerst lesen:** /home/bernd/projects/didaktik-repo/audits/v3-audit-methodik.md

**Zu auditierender Artikel:** {ARTIKEL_PFAD}

**Domänen-Hinweis (allgemein, keine konkreten Vorbefunde):** {DOMAIN_HINT}

**Aufgabe:** Audit komplett mit v3-Verfahren. Per-Citation-Workflow alle drei Layers in einem Block, YAML-Output, Tool-Use-Pflicht vor Severity ≥ MINOR. Self-Critique- und Cross-Repo-Verdacht-Sektion am Ende sind Pflicht.

**Output:** YAML wie in Methodik-Datei spezifiziert. KEIN File schreiben. severity_summary aus citations[].final_severity berechnen, nicht freihändig.

**Token-/Zeit-Ziel:** ~40-60k Token, ~25-30 min Wall-Clock.

Plane 25-35 Min. KEIN File schreiben.
```

## Bekannte Halluzinations-Muster (für Domain-Hints)

Aus Pass-1+Pass-2+v3-Audits robust gesichert:

1. **Erstautor-Misattribution** (häufigster Fehlertyp) — besonders bei arXiv-Preprints und CHI-/ICER-Papers. Initial-Konfusion (z.B. "Yang, J." aus "Janghee Cho" mit Phantom-Nachname).
2. **Hybridisierte Citations** — Titel von Paper A + Stichprobe/Venue/Autoren von Paper B.
3. **Effektstärken-Generationenfehler** — d-Wert wird Quelle X zugeschrieben, ist aber aus früherer Meta-Analyse, die X nur referenziert (Cepeda → Donovan, Roediger&Butler → Rowland).
4. **Hot-Spot-Inversion** — zentrale These ist genau das Gegenteil der zitierten Quelle (Barbieri 2023 SE-negativer-Moderator als positiver dargestellt).
5. **Hattie-Edition-Drift** — 2009-Werte unter "2009/2023"-Header ohne Edition-Disclosure.
6. **Studientyp-Klassifikationsfehler** — Surveys als RCTs, theoretische Reviews als Längsschnitt-Empirie, Einzelstudien als Meta-Analysen.
7. **Strukturierte Tabellen mit erfundenen Kategorien** — HalluCode 5 statt 3 Kategorien, IHK-Bereichsnamen aus FIAusbV paraphrasiert statt übernommen.
8. **Falsche arXiv/DOI mit komplett anderem Paper-Inhalt** — arXiv-ID stimmt, Inhalt ist anderer Forschungsbereich.
9. **Fabrizierte Direkt-Zitate aus dt. Verwaltungstexten** — KMK-Direktzitat in dieser Form nicht reproduzierbar; "§ 17 MPO-IT" als Norm nicht etabliert.
10. **Quelle widerspricht sich selbst** — zitierte Sekundärquelle widerlegt eigene Behauptung (Freudenberg-Preisträger steht in eigener idw-online-Quelle).
11. **Self-Citation als unabhängige Evidenz** — Gerlich-Doppel-Cite ohne Offenlegung.
12. **Begriffsverwechslung mit veralteter VO** — "Betrieblicher Auftrag" als Begriff der Vor-2020-VO.
