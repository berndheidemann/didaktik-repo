# Quellen-Audit-Verfahren

Etablierte Methodik zur systematischen Verifikation von Quellen-Citations in Wiki-Artikeln des Didaktik-Repos. Entwickelt 2026-04-30 nach Entdeckung einer Falsch-Attributierung (Gerlich 2025 fälschlich als RCT zitiert) und einer Stichprobe, die ein systematisches Problem mit Erstautor-Misattribution durch LLM-Halluzination beim Artikel-Schreiben aufgedeckt hat.

**Wann nutzen:**
- Vor Veröffentlichung neuer Wiki-Artikel mit konkreten Effektstärken / Studientyp-Behauptungen
- Wenn Bernd sagt "Quellen prüfen", "Audit", "stimmen die Citations"
- Routinemäßig nach Hinzufügen mehrerer KI-bezogener Artikel (höchstes Risiko-Cluster)

**Wann nicht nutzen:**
- Reine Theorie-Artikel mit kanonischen Quellen (Vygotsky, Piaget, Bloom 1956) — niedriges Risiko
- Praxis-Artikel ohne konkrete Zahlen/Studientypen

## Verfahren in vier Stufen

### Stufe 1 — Risiko-Triage

```bash
scripts/audit-risk-triage.sh
```

Score-Logik (höher = mehr Audit-Priorität):
- +3 pro Effektstärken-Notation (g=, d=, r=)
- +2 pro Stichproben-Notation (n=, k=, N=)
- +1 pro RCT/Meta-Analyse/Survey-Mention
- +1 pro neuer Studienjahr (2023–2026)
- +3 für Markdown-Tabelle mit > 5 Zeilen
- +5 für `type: evidenz`, +3 für `praxis`, +1 für `methode`
- +5 für Hattie-Mention (empirisch hoher Hot-Spot)
- Bereits auditierte Artikel sind im Script mit `[DONE]` markiert (Liste pflegen)

**Welche Artikel auditieren:** Top-N nach Score, in Wellen à 5 parallel.

### Stufe 2 — v2-Audit-Pass

**Subagent-Typ:** `general-purpose` mit `model: "opus"`, Background-Mode (`run_in_background: true`).

**Pro Welle:** 5 parallele Subagents, Wall-Clock ~5–7 min, ~250k Tokens total.

**Prompt-Skelett** (Platzhalter `{ARTIKEL_PFAD}` ersetzen, optional Domänen-Hinweis ergänzen wenn Hot-Spot bekannt — z.B. Hattie-Werte, Erstautor-Risiko):

```
v2-Quellen-Audit für einen Wiki-Artikel im Didaktik-Repo. Frühere Audits hatten ~7-10% Halluzinationsrate ("nicht auffindbar / erfundener Autor / nicht im Paper" zu schnell geurteilt). v2-Protokoll soll das verhindern.

**Zu auditierender Artikel:** {ARTIKEL_PFAD}

{OPTIONAL: Domänen-Hinweis, z.B. "Hattie-Werte besonders gegen visible-learning.org prüfen — andere Stichprobe hatte 7 falsche d-Werte."}

## Was du tun sollst

1. **Lies den Artikel komplett** (Body, Frontmatter, Quellenliste).

2. **Identifiziere alle konkreten Quellen-Behauptungen** — Autor + Jahr + Effektstärke (g=, d=, %, n=, k=), Studientyp (RCT, Meta-Analyse, Survey), Journal/Konferenz/DOI, konkrete Outcomes.

3. **Verifiziere mit v2-Disziplin:**

**Vor jedem "nicht auffindbar / erfundener Autor / nicht im Paper"-Urteil:**
- Mindestens **3 verschiedene Suchanfragen** mit unterschiedlichem Wortlaut (Autor+Titel, Schlüsselzahl+Thema, alternative Schreibweisen / Co-Autoren / arXiv-DOI).
- Bei "erfundene Autoren"-Verdacht: Prüfe explizit andere Papers der Person.
- Bei "Behauptung nicht im Paper"-Verdacht: Prüfe Sekundärquellen.

**Werkzeuge:** CrossRef-API (api.crossref.org/works/[DOI]), arXiv-Suche, WebSearch, WebFetch.

4. **Klassifiziere:** OK / MINOR / MAJOR / CRITICAL.

5. **Confidence (0.00–1.00):** ehrlich kalibriert.
- 0.95–1.00: mehrere unabhängige Quellen
- 0.80–0.94: eine klare Quelle
- 0.60–0.79: einige Indizien
- < 0.60: schwache Evidenz

## Output (KEIN File schreiben):

# Audit-Report v2: {ARTIKEL_NAME}.md

**Geprüfte Citations:** N
**Severity:** X OK / Y MINOR / Z MAJOR / W CRITICAL
**Confidence:** mean=X.XX, low (<0.7): N

## Befunde
| # | Citation | Behauptung | Verifikation | Severity | Confidence | Suchanfragen-Trail |
|---|---|---|---|---|---|---|

## Zusammenfassung (2-3 Sätze)
## Methoden-Notiz (v2-Selbstreflexion, 2-3 Sätze: wo war v2 hilfreich, wo gab's Grenzen)

Plane 30-45 Min. Confidence ehrlich. Keine Implementierungs-Empfehlung.
```

### Stufe 3 — Selektive Verifikation

**Verifikations-Pflicht:**
- Alle **CRITICAL** automatisch
- Alle **MAJOR mit Confidence < 0.90**
- Alle Befunde des Typs "erfundene Autoren / hybridisierte Citation / Behauptung nicht im Paper" (auch bei höherer Confidence — siehe bekannte Halluzinations-Muster unten)
- Alle Stellen, wo zwei v2-Audits **inkonsistent** über dieselbe Citation urteilen

**Verifikations-Subagent:** Wieder `general-purpose` mit `model: "opus"`, einer pro Original-Artikel oder pro Cross-Repo-Befund.

**Verifikations-Prompt-Skelett:**

```
Du bist ein Verifikations-Subagent. Eine v2-Audit-Runde hat in {ARTIKEL_PFAD} Befunde gefunden. Prüfe **unabhängig per WebSearch**, ob diese Befunde echt sind oder ob der v2-Subagent halluziniert hat. Sei skeptisch — suche aktiv nach Gegenbeweisen.

**Zu verifizierende Befunde:**

1. **{SEVERITY}** — {Citation}. v2 sagt: {v2-Befund}.
   → Verifikation: {Konkrete Prüfanweisung, z.B. CrossRef DOI-Lookup, arXiv-Page direkt}.

(weitere Befunde analog)

**Was du tun sollst:**

1. Lies den Original-Artikel.
2. Verifiziere jeden Befund unabhängig (mindestens 3 Suchanfragen pro Befund).
3. **Achte besonders darauf:** Wenn der v2-Befund eine konkrete Korrektur vorschlägt (z.B. "Erstautor X statt Y"), verifiziere die Korrektur eigenständig — nicht nur die Existenz des Fehlers. Bei Korrektur-Halluzinationen erkennt v2 den Fehler richtig, schlägt aber falschen Ersatz vor.
4. Klassifiziere: BESTÄTIGT / TEILWEISE / WIDERLEGT / UNKLAR.

**Output-Format** (KEIN File schreiben):

# Verifikation v2-Befunde: {ARTIKEL}.md

| # | v2-Befund | Verifikation | Begründung mit Quellen-URLs | Endgültige Severity |
|---|---|---|---|---|

## Zusammenfassung (2-3 Sätze)

Plane 15-25 Min. Confidence ehrlich.
```

### Stufe 4 — Konsolidierung

**Output-Datei:** `audits/YYYY-MM-DD-themenname.md` (Beispiel: `2026-04-30-stichprobe-evidenz-block.md`).

**Pflicht-Inhalt:**
1. Anlass + Hypothese
2. Methodik-Hinweis (v1 oder v2, welche Wellen)
3. Gesamtbilanz (Tabelle pro Artikel mit Severity-Verteilung)
4. Wiederkehrende Fehlermuster
5. Detail-Findings (pro Artikel oder pro Befund-Cluster)
6. **Verifikations-Pass-Sektion** wenn durchgeführt — mit "BESTÄTIGT/WIDERLEGT/TEILWEISE"-Tabelle
7. Robust gesicherte CRITICAL-Liste mit konkreten Korrektur-Vorschlägen
8. Methodik-Limitierung explizit benennen (LLM-Subagent-Halluzinationen)

## Bekannte Halluzinations-Muster

### v1 (ohne v2-Disziplin) — ~10 % Halluzinationsrate

- "Nicht im Paper" zu schnell — Subagent hat PDF nicht gründlich gesucht
- "Erfundener Autor" zu schnell — keine alternative Schreibweisen probiert
- "Anonyme Citation" als MAJOR ohne Sekundärquellen-Check

### v2 (mit 3-Suchanfragen-Disziplin) — ~0 % Diagnose-Halluzination

Aber zwei subtilere Fehlertypen:

1. **Korrektur-Halluzination:** v2 erkennt Fehler korrekt, schlägt aber falsche Korrektur vor (Beispiel: Liu/Bridgeman → "Bridgeman, Weeks, Liu" — tatsächlich war es Solo-Liu). Konsequenz: vor Fix immer Korrektur eigenständig verifizieren.
2. **Cross-Audit-Inkonsistenz:** Zwei v2-Subagents urteilen unterschiedlich über dieselbe Citation, oft weil einer von einer Sekundärquelle getäuscht wird (Beispiel: aiassessmentscale.com listet pauschal alle AIAS-Autoren, dadurch falscher MINOR statt CRITICAL bei MacVaugh-Hybridisierung). Konsequenz: bei Inkonsistenz immer dritten Subagent zur Klärung.

## Bekannte Repo-Befund-Muster (Stand 2026-04-30)

Aus 16 auditierten Artikeln, 213 Citations, 15 CRITICAL + 32 MAJOR robust gesichert:

1. **Erstautor-Misattribution** (häufigster Fehlertyp) — Coppock/Shen, Ericson/Fabic, Jang/Winget, Yang/Rheu, Lei/Zhang, Sperling/Veldhuis, Liu/Ali, Stahl/Xiao, Zhang/Chu, Spracher/Spracklen, Becker/Prather (Stichprobe)
2. **Hybridisierte Citations** — Titel von Paper A + Stichprobe/Venue von Paper B (Anthropic Educator-Title + Student-n; AIAS-Original-Autoren + Revisited-Titel; Phung ICER-Titel + LAK-Venue; Murphy 2012-Autoren + Corney 2014-Titel)
3. **Falsche Effektstärken bei Hattie-Werten** — 7 abweichende d-Werte in `effektstaerken-unterricht`; auch in `direct-instruction-rosenshine` (Worked Examples 0,57 vs revidiert 0,37)
4. **Studientyp-Überhöhung** — Surveys werden als RCTs / Wirksamkeitsstudien zitiert (Gerlich-Anlassfall, EduPIJ-SWOT)
5. **Behauptung nicht im Paper** — Liu/Ali "89%-Statistik" steht gar nicht im zitierten Paper; Lortie-Forgues d=0,06 wird als DI-spezifisch zitiert, ist aber generischer Mittelwert
6. **Wiederholte Fehler über mehrere Artikel** — "Freeman 55% weniger Durchfaller" steht in zwei Artikeln gleich falsch; AIAS-MacVaugh-Hybridisierung in zwei Artikeln gleich falsch

## Skalierungs-Schätzung

| Phase | Aufwand pro Artikel | Welle (5 parallel) |
|---|---|---|
| v2-Audit | ~30k Tokens, 3–5 min | ~150k, 5–7 min |
| Verifikation (wenn nötig) | ~30k Tokens, 2–3 min | ~150k, 4–6 min |

**Für volle Repo-Abdeckung (~30 Hochrisiko-Artikel):**
- 6–8 Wellen v2-Audits: ~50–60 min Wall-Clock
- 3–5 Wellen Verifikationen: ~25–30 min
- Total: **~1,5–2 h Wall-Clock, ~5–8 M Tokens**

## Wiederverwendbare Bausteine

- `scripts/audit-risk-triage.sh` — Risk-Score pro Artikel
- `audits/2026-04-30-stichprobe-evidenz-block.md` — Referenz-Output (Format, Detailtiefe, Verifikations-Sektion)
- Diese README — Prompt-Templates und Methodik

**Pflicht beim Erstellen neuer Audits:**
- Liste auditierter Artikel im Triage-Script aktualisieren (`ALREADY_AUDITED`)
- Neuer Audit-Report immer mit Datum im Dateinamen
- Bei wiederkehrenden Fehlermustern: README oben unter "Bekannte Repo-Befund-Muster" ergänzen

## Lehre für die Artikel-Erstellung

Aus diesem Audit gelernt — gilt für alle künftigen Wiki-Artikel:
- **Erstautoren via CrossRef/arXiv direkt verifizieren**, nie via Sekundärquellen oder Trainingsdaten
- **Bei Übernahme von Citations aus bestehenden Repo-Artikeln**: nicht blind vertrauen — auch dort sind bekannte Fehler
- **Hattie-d-Werte gegen visible-learning.org und visiblelearningmetax.com prüfen**, dabei Edition explizit nennen (2009 vs. 2017 vs. 2023 / MetaX)
- **Bei "RCT" / "Meta-Analyse" / "Survey"-Klassifikation**: Studientyp im Originalpaper bestätigen, nicht aus dem Bauch heraus
