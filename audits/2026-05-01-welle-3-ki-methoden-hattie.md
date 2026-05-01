# Welle 3 — KI-Methoden + Hattie-Hot-Spot (v3-Single-Pass)

**Datum:** 2026-05-01
**Methodik:** v3-Single-Pass (siehe `v3-audit-methodik.md`), 5 Subagents parallel, model: opus, ohne Self-Consistency-Pass.
**Auditierte Artikel:** hint-engineering-llm-tutoring, ki-prompt-handwerk, llm-integrationsmuster-lernumgebungen, unterrichtsphasen-artikulation, metakognition.

## Anlass + Hypothese

Erste Welle nach Etablierung der v3-Methodik. Hypothese: Top-5 nach Risk-Score (Range 27–40) wird Erstautor-Misattribution bei arXiv-Preprints, Hattie-Edition-Drift und Klassifikations-Tabellen-Konfabulation zeigen. Welle ist thematisch kohärent (4× KI/LLM, 2× Hattie-Hot-Spot durch Überschneidung).

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| hint-engineering-llm-tutoring | 12 | 12 | 0 | 0 | 0 | 0.93 | 17 (1.42/cite) |
| ki-prompt-handwerk | 9 | 5 | 2 | 2 | 0 | 0.89 | 11 (1.22/cite) |
| llm-integrationsmuster-lernumgebungen | 10 | 6 | 3 | 1 | 0 | 0.91 | 10 (1.00/cite) |
| unterrichtsphasen-artikulation | 8 | 4 | 2 | 2 | 0 | 0.88 | 14 (1.75/cite) |
| metakognition | 8 | 5 | 1 | 2 | 0 | 0.86 | 16 (2.00/cite) |
| **Σ** | **47** | **32** | **8** | **7** | **0** | **0.89** | **68 (1.45/cite)** |

**0 CRITICAL** ist Welle-3-Premiere — Welle 1+2 hatten je 5–7 CRITs. Mögliche Erklärungen: (a) Top-Risk-Cluster (Evidenz-Block) ist abgegrast, restliche Hochrisiko-Artikel sind methodisch vorsichtiger geschrieben; (b) v3-Aggregations-Effekt schiebt Grenzfälle Richtung MAJOR statt CRIT (Pass-A/B/C-Granularität würde wohl 1-2 CRITs aus den Hattie-Tabellen-Zellen extrahieren).

## Wiederkehrende Fehlermuster (in dieser Welle)

1. **Hot-Spot-Inversion light** (2×): Quelle wird als Beleg für eine These zitiert, die die Quelle explizit NICHT macht. Anthropic Education Report ("Collaborative schlägt Direct in Lerneffekt" — Anthropic enthält sich der Bewertung). Lortie-Forgues & Inglis 2019 ("Hattie-Methodenkritik" — Paper ist über RCT-Informativität allgemein).
2. **Hattie-Edition-Drift** (1× MAJOR, +1× partiell sauber): "2009/2023"-Header mit 2009/2018-Vintage-Werten. Besonders Feedback 0,70 (alt) vs. MetaX 2023 = 0,50 ist >40%-Drift.
3. **Substrategien-Konfabulation aus Effektstärken-Tabellen** (1×): Hattie & Donoghue 2016 Triade "Planning 0,80; Monitoring 0,71; Evaluation 0,75" ist nicht zellengenau im Paper auffindbar — Monitoring 0,71 ✓, Planning vermutlich aus "Planning and prediction" 0,76 verschoben, Evaluation 0,75 nicht reproduzierbar.
4. **Studientyp-Klassifikationsfehler** (1×): Prather et al. 2020 als empirische CS1-Studie zitiert — ist tatsächlich Systematic Review. Korrekte empirische Quelle für die Aussage wäre Gorson & O'Rourke 2020 (gleiche ICER) oder Loksa et al.
5. **Erstautor-Misattribution bei arXiv** (1×): PatientSim "Lee, D." → tatsächlich "Kyung, D." (arXiv:2505.17818). Klassisches Pattern aus Welle 1+2 (Domain-Hint hat sich erneut bestätigt).
6. **Plausibilitäts-Misattribution mit echter Quelle** (1×): Uni-Potsdam-Methodenpool wird zitiert für Aussage "Ergebnissicherung als theoretisch untererforscht" — steht so nicht auf der zitierten Seite.
7. **Datierungsfehler im Übergangsbereich Vergangenheit/Zukunft** (1×): GitHub Rubber Duck "2025" — Feature wurde April 2026 angekündigt, Datum ist vor Existenz des Features. Plus Kategoriefehler (Second-Opinion-Code-Review-Agent ≠ Rubber-Ducking-Prompt-Modus).
8. **Generische Citations ohne Erstautor + Originaltitel** (2×): "Nursing Simulation Debriefing Scoping Review", "Role-Play Cognitive and Emotional Impact Study" — bibliografisch unter Repo-Standard.
9. **Hängende Inline-Referenzen** (1×): "Tandfonline 2025" im Body, ohne Eintrag in Quellenliste; "~50% Sycophancy" im Body ohne Quelle.

## Detail-Findings (MAJORs nur)

### ki-prompt-handwerk

**MAJOR-1 (Citation 4) — Anthropic Education Report Lerneffekt-These.**
Behauptung: "Collaborative schlägt Direct in Lerneffekt." Anthropic-Report sagt explizit: "understanding AI's actual impact on learning requires further research" und merkt an, dass auch Collaborative-Conversations "questionable learning outcomes" haben können. Die 47%- und 574k-Zahlen stimmen, die didaktische Schlussfolgerung ist erfunden.
**Korrektur:** "Anthropic findet vier Nutzungsmuster (~23-29 % je); ~47 % aller Conversations sind 'direct'-Pattern (Lösung statt Erklärung). Anthropic enthält sich explizit einer Lerneffekt-Bewertung."

**MAJOR-2 (Citation 6) — GitHub Rubber Duck.**
Doppelter Fehler: (a) Jahr 2025 statt 2026 (Feature-Announcement war 6. April 2026); (b) Kategoriefehler — GitHubs "Rubber Duck" ist ein Second-Opinion-Review-Agent (zweites LLM-Modell aus anderer Familie reviewed Plans/Implementations des primären Agenten), nicht der Prompt-Modus "Rubber Ducking" (Problem an AI verbalisieren). Quelle stützt These "KI-Nutzung ist modusabhängig" nicht.
**Korrektur:** Citation streichen oder durch andere Quelle für Modus-Argument ersetzen; falls Rubber-Duck-Beispiel beibehalten wird, als 2026 datieren und als "Multi-Modell-Code-Review" beschreiben.

### llm-integrationsmuster-lernumgebungen

**MAJOR-1 (Citation 8) — PatientSim Erstautor "Lee, D." statt "Kyung, D."**
arXiv:2505.17818 stimmt, Inhalt (4-achsige Persona-Modellierung) stimmt, nur Erstautor falsch. Tatsächlicher Erstautor: Daeun Kyung (KAIST). Klassische arXiv-Erstautor-Misattribution mit generischem koreanischen Nachnamen.
**Korrektur:** "Kyung, D., Chung, H., Bae, S., Kim, J., Sohn, J. H., Kim, T., Kim, S. K., & Choi, E. (2025)."

### unterrichtsphasen-artikulation

**MAJOR-1 (Citation 6) — Hattie-Edition-Drift in Effektstärken-Tabelle.**
Header sagt "2009/2023", Werte sind 2009/2018-Vintage. Zellen-Bilanz:
- Teacher Clarity 0,75 = 2009/2018-Wert; MetaX 2023 = 0,85.
- Direct Instruction 0,59 = 2009-Wert; MetaX 2023 = 0,56.
- Classroom Discussion 0,82 = stabil 2009/2018; MetaX 2023 nicht direkt verifizierbar (404).
- Feedback 0,70 = 2018-Wert; MetaX 2023 = **0,50** (Hattie hat seine Feedback-Aussage relativiert).

Plus: "2. Aufl. 2023" für Visible Learning ist irreführend — 2023 erschien "Visible Learning: The Sequel" als Nachfolge-Band, nicht als Neuauflage.
**Korrektur:** Tabellen-Header auf Edition pro Wert spezifizieren ("Hattie 2009 / 2018" oder "Hattie/MetaX 2023"). Feedback-Wert auf 0,50 (MetaX) aktualisieren oder Edition explizit benennen. Buchtitel präzisieren.

**MAJOR-2 (Citation 7) — Lortie-Forgues & Inglis 2019 als "Hattie-Kritik".**
DOI/Autoren/Jahr/Venue korrekt. Aber: Paper untersucht Informativität von Bildungs-RCTs (mittlere ES 0,06, große CIs in EEF/NCEE-Studien) — KEINE direkte Hattie-Kritik. Wird in Sekundärliteratur kontextuell gegen Hattie herangezogen, aber Originalarbeit hat Hattie nicht zum Gegenstand.
**Korrektur:** Entweder einschlägige Hattie-Methodenkritik (O'Neill 2012, Wecker et al. 2017, Bergeron 2017) zitieren oder Lortie-Forgues präziser als "RCT-Informativitäts-Studie, die in der Sekundärliteratur als Hattie-relativierend eingeordnet wird" framen.

**MAJOR-3 (Citation 8) — Uni Potsdam Methodenpool Misattribution.**
Aussage "Ergebnissicherung als theoretisch untererforscht" steht so nicht auf der zitierten Seite. Plausibilitäts-These mit real existierender Quelle dekoriert.
**Korrektur:** Aussage entweder belegen (sekundäre Übersicht zur Forschungslage) oder als eigene didaktische Einschätzung kennzeichnen, ohne Methodenpool-Beleg.

### metakognition

**MAJOR-1 (Citation 6) — Hattie & Donoghue 2016 Substrategien-Triade.**
Triade "Planning 0,80; Monitoring 0,71; Evaluation 0,75" ist nicht zellengenau im Paper auffindbar:
- Monitoring 0,71 ✓ (im PMC-Volltext bestätigt).
- Planning 0,80 — vermutlich aus "Planning and prediction" 0,76 (Tabelle 6 "Success Criteria") verschoben oder aus anderer Quelle.
- Evaluation 0,75 — in keiner Sekundärabbildung der Hattie/Donoghue-Tabellen reproduzierbar.

Hattie-Hauptwert d≈0,60 für metakognitive Strategien ist sauber (Visible-Learning-Ranking Dec 2017 Update).
**Korrektur:** Triade entweder mit zellengenauer Quelle belegen oder durch den unstrittigen Hauptwert d≈0,60 ersetzen.

**MAJOR-2 (Citation 8) — Prather et al. 2020 als empirische Quelle.**
Bibliografie sauber (DOI 10.1145/3372782.3406263, alle Co-Autoren ✓). ABER: Paper ist Systematic Review (123+53+31 Papers klassifiziert), nicht empirische CS1-Messung. Die zugeschriebene Aussage "CS1-Lernende überschätzen massiv ihre Fähigkeit, Code zu erklären — selbst bei Code, den sie nicht korrekt tracen können" steht so nicht im Review-Paper als Originalbefund. Korrekte empirische Quelle: Gorson & O'Rourke (2020) "Why do CS1 Students Think They're Bad at Programming?" (DOI 10.1145/3372782.3406273, gleiche ICER 2020) oder Loksa et al. Studientyp-Klassifikationsfehler + möglicherweise Hybrid-Cite mit Loksa-Co-Autoren-Befund (Loksa ist Co-Autor von Prather 2020).
**Korrektur:** Entweder Prather 2020 als "Systematic Review der CS1-Metakognitions-Literatur" beschreiben (ohne empirische Detail-Behauptung) oder Cite auf Gorson & O'Rourke 2020 / Loksa et al. umbiegen.

## Cross-Repo-Befunde

Die folgenden Pattern wurden in Welle 3 erstmals gesehen oder verschärft. Vor Welle 4 mit Grep prüfen, ob sie repo-weit auftauchen:

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Hattie-Edition-Drift "2009/2023"-Header | `grep -r 'Hattie' wiki/ \| grep '2023'` — alle Treffer Werte gegen MetaX prüfen | hoch (Feedback 0,70 → 0,50 bewegt didaktische Aussagen) |
| Anthropic Education Report "Collaborative schlägt Direct" | `grep -r 'Anthropic Education' wiki/`; `grep -r '574' wiki/` | mittel — Zahlen ok, Lerneffekt-These nicht |
| GitHub Rubber Duck als Mode-Switching-Beleg | `grep -r 'Rubber Duck' wiki/`; `grep -r 'GitHub Copilot CLI' wiki/` | niedrig (vermutlich Einzelfall) |
| Koreanische arXiv-Erstautoren ("Lee, D.", "Kim, J.", "Park, S.") | `grep -rE 'arXiv:25..\..* (Lee|Kim|Park|Choi), [A-Z]\.'` | mittel — systematisches Pattern |
| Hattie & Donoghue Substrategien-Triade (Planning/Monitoring/Evaluation) | `grep -r 'Donoghue' wiki/` + Werte-Check | mittel — Zelle-für-Zelle verifizieren |
| Prather 2020 als empirische CS1-Quelle | `grep -r 'Prather' wiki/` — wenn als Empirie zitiert, korrigieren | mittel |
| Lortie-Forgues 2019 als Hattie-Methodenkritik | `grep -r 'Lortie-Forgues' wiki/` | niedrig (vermutlich Einzelfall) |
| "Visible Learning, 2. Aufl. 2023" | `grep -r '2. Aufl. 2023' wiki/` — überall durch "The Sequel (2023)" ersetzen | niedrig |
| Generische Citations ohne Erstautor (PMC-ID-only, "Study"-Phrasen) | `grep -rE '^- [A-Z][a-z]+ [A-Z]' wiki/ \| ` invertiertes Matching | niedrig — bibliografische Disziplin |
| Hängende Inline-Verlagsreferenzen ("Tandfonline 2025" o.ä.) | `grep -rE '(Tandfonline\|ScienceDirect\|PubMed) 20[0-9]{2}' wiki/` | niedrig |
| "~50 % Sycophancy" o.ä. ohne Quellenanker | `grep -rE '~?\d+ ?%' wiki/` — Stichprobe auf Quellennähe | niedrig |

Empfehlung: Vor Welle 4 einmal die drei hochpriorisierten Pattern (Hattie-Edition-Drift, Anthropic-Lerneffekt-These, koreanische arXiv-Erstautoren) repo-weit grep'en und in einem kurzen "Cross-Repo-Sweep"-Audit konsolidieren. Das ist günstiger als jede Welle individuell die gleichen Pattern wiederzufinden.

## Robust gesicherte MAJOR-Liste (Korrektur-Backlog)

| # | Artikel | Befund | Korrektur |
|---|---|---|---|
| 1 | ki-prompt-handwerk | Anthropic Edu Report "Collaborative schlägt Direct in Lerneffekt" | Lerneffekt-Aussage streichen; nur 47% / 574k / 4 Patterns berichten |
| 2 | ki-prompt-handwerk | GitHub Rubber Duck 2025 + Mode-Switching-Beleg | Cite streichen oder als "2026, Multi-Modell-Code-Review" reframen |
| 3 | llm-integrationsmuster | PatientSim "Lee, D." statt "Kyung, D." | Erstautor korrigieren |
| 4 | unterrichtsphasen | Hattie-Tabelle "2009/2023" mit Mix aus 2009/2018-Werten | Edition pro Zelle benennen; Feedback auf MetaX 0,50 aktualisieren oder Edition disclosieren; Buchtitel präzisieren |
| 5 | unterrichtsphasen | Lortie-Forgues 2019 als Hattie-Kritik | Reframen oder durch O'Neill/Wecker/Bergeron ersetzen |
| 6 | unterrichtsphasen | Methodenpool "Ergebnissicherung untererforscht" nicht im Original | Beleg ergänzen oder als eigene Einschätzung kennzeichnen |
| 7 | metakognition | Hattie/Donoghue Substrategien-Triade Planning/Eval nicht reproduzierbar | Triade durch d≈0,60 (Hauptwert) ersetzen oder zellengenau belegen |
| 8 | metakognition | Prather 2020 als empirische CS1-Quelle | auf Gorson & O'Rourke 2020 oder Loksa umbiegen, oder Aussage abschwächen |

**MINOR-Backlog** (8 Befunde) ist im Detail-Output der Subagents enthalten — nicht zwingend vor Welle 4 abzuarbeiten, sondern Sammel-PR sobald Sweep läuft.

## Methodik-Limitierungen dieser Welle

- **Volltext-Fetch-Lücken:** Bei mehreren Citations wurden PDFs/Verlagswebseiten geblockt (PNAS 403, ScienceDirect 403, Springer-Paywall, Routledge). Verifikation lief dann über Sekundärquellen (Knowledge@Wharton, ERIC-Abstracts, Tandfonline-Reviews, MetaX). Severity wurde konservativ gehalten, wo Volltext-Pflicht (Layer 2) nicht vollständig erfüllt war (siehe `self_critique.uebersehene_pflichten` im Subagent-YAML).
- **Hattie-Tabellen-Granularität:** v3-Aggregation verschmilzt einzelne Zellen-Befunde zu einem MAJOR — Pass-A/B/C-Granularität würde aus der Hattie-Tabelle vermutlich 1 CRIT (Feedback 0,70 → 0,50) + mehrere MINORs extrahieren. Methodik-Datei verankert die Schärfungs-Regel in Layer 3, in dieser Welle nicht angewendet.
- **Self-Consistency-Pass nicht durchgeführt:** Keine CRITs unter Confidence < 0.85, daher nicht indiziert. Hattie-Tabellen-Drift (Confidence 0.92) und Prather-Studientyp (Confidence 0.90) wären Kandidaten, falls man retrospektiv schärfen will — Mehrheits-Vote könnte Severity nach oben treiben.
- **Cross-Repo-Verdacht ist gesammelt, nicht aufgelöst:** Die Tabelle oben listet Pattern, die zu prüfen sind. Tatsächliche Repo-Sweeps stehen aus.

## Empfehlung für nächste Schritte

1. **Cross-Repo-Sweep** auf die 3 hochprioren Pattern (Hattie-Edition-Drift, Anthropic-Lerneffekt-These, koreanische arXiv-Erstautoren) als eigener Mini-Audit (~30 min, ein Subagent).
2. **MAJOR-Backlog (8 Befunde)** als Korrektur-PR — entweder direkt am Artikel oder gebündelt nach Pattern-Cluster.
3. **Welle 4** auf nächste Top-5 nicht-auditierte Artikel nach Score (nach Sweep, weil der die Triage verändern kann): aktuell vermutlich kooperatives-lernen, ki-tool-auswahl-berufsschule, ki-kompetenzrahmen-schule, rubric-design, desirable-difficulties.
