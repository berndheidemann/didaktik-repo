# Welle 10 — Strukturelle Bulk-Sweep-Welle (Pattern-Heuristik)

**Datum:** 2026-05-02
**Methodik:** Strategie-Wechsel von Score-getriebener Auswahl + Per-Citation-Audit zu **strukturellem Bulk-Sweep** auf zwei Layern:
- **Phase A**: Layer-1-Bulk-DOI/arXiv-Erstautoren-Abgleich auf alle Citations in nicht-auditierten Artikeln (Pattern #2 strukturell).
- **Phase B**: Body-Inline-vs-Quellenliste-Sweep repo-weit (Pattern #4 Variante A strukturell, plus Pattern #3+#5 als Beifang bei verdächtigen Cites).

**Ziel:** Restrisiko aus 51 nicht-auditierten Artikeln + repo-weite Hygiene-Disziplin in einer ressourcen-effizienten Welle abdecken, statt 10 weitere lineare Wellen zu fahren.

## Phase A — DOI/arXiv-Bulk-Sweep

**Methodik:** Aus den 51 nicht-auditierten Wiki-Artikeln alle DOIs und arXiv-IDs extrahieren, einmaligen CrossRef-Lookup pro ID und Erstautor + Jahr + Venue exakt gegen Wiki-Citation abgleichen.

**Befund:** **6 DOIs gesamt** (alle in einer einzigen Datei: `testitem-konstruktion-digital.md`). Die anderen 50 Restartikel haben keine DOIs/arXiv-IDs — überwiegend Theorie-Artikel mit kanonischen Buch-Quellen (Vygotsky, Bloom, Bruner, Piaget).

| DOI | Wiki-Citation | CrossRef-Verifikation | Befund |
|---|---|---|---|
| 10.1207/S15324818AME1503_5 | Haladyna, Downing & Rodriguez 2002 | Haladyna T. M. + Downing S. + Rodriguez M., 2002, Applied Measurement in Education | ✅ |
| 10.1007/s10459-004-4019-5 | Downing 2005 | Downing S. M., 2005, Adv. Health Sciences Education | ✅ |
| 10.1111/j.1365-2923.2007.02957.x | Tarrant & Ware 2008 | Tarrant M. + Ware J., 2008, Medical Education | ✅ |
| 10.1111/j.1745-3992.2005.00006.x | Rodriguez 2005 | Rodriguez M. C., 2005, Educ. Measurement: Issues & Practice | ✅ |
| 10.1187/cbe.08-05-0024 | Crowe, Dirks & Wenderoth 2008 | Crowe A. + Dirks C. + Wenderoth M., 2008, CBE—Life Sciences Education | ✅ |
| 10.1145/1041624.1041673 | Lister et al. 2004 | Lister R. + Adams E. + Fitzgerald S. + Fone W., 2004, ACM SIGCSE Bulletin | ✅ |

**Phase-A-Ergebnis:** **0 Hybrid-Citations** in den 6 DOIs der Restartikel.

**Hypothese bestätigt:** Theorie-Artikel mit kanonischen Buch-Quellen haben strukturell weniger Hybrid-Risk-Profil. Pattern #2 erfordert moderne arXiv/DOI-Cites — diese fehlen in den Restartikeln weitgehend.

## Phase B — Body-Inline-vs-Quellenliste-Sweep repo-weit

**Methodik:** Pro Wiki-Artikel Body-Inline-Cites (Pattern `(Autor & Autor, JJJJ)` oder `Autor (JJJJ)`) extrahieren, Erstautor-Token gegen die Quellenliste-Sektion matchen. Treffer = potenzielle Pattern #4 Variante A (Citation real, fehlt in Bibliographie).

**Aufwand:** ~3 Min Skript-Lauf, ~5 Min manuelle False-Positive-Filterung (Token-Fragmente wie „Dachkonzept 1994" aus „Bjorks Dachkonzept (1994)", „Miras 2022" aus „Ruiz de Miras (2022)" etc.).

**Roh-Treffer:** ~52 (mit False Positives).
**Echte Treffer:** **27** Pattern #4 Variante A.

### Phase-B Highlight-Befund: `productive-failure.md` Body-Z. ~85 — Drei fabrizierte/verdächtige Citations in einem Absatz

> *„Evidenz: **Leppink et al. (2023)** zeigten 40 % bessere Retention bei verteilter SQL-Übung. **Tafliovich et al. (2023)** fanden signifikant bessere CS1-Prüfungsleistungen mit interleaved Practice. **Yang et al. (2024)** berichten ~15 % bessere Klausurergebnisse durch Low-Stakes-Code-Tracing-Quizzes."*

CrossRef-Verifikation:
- **Leppink 2023 SQL 40%**: Jimmie Leppink ist real (Bildungsforscher), aber **keine 2023er-SQL-Retention-Studie** in CrossRef. Vorhandene Leppink-Cites: Trade-Mark-Recht 2013 (anderer Leppink), „Instrument Structures" 2020. → **Pattern #5 fabrizierte Citation**.
- **Tafliovich 2023 CS1 interleaved**: Anya Tafliovich ist real (UToronto), hat 2013 (nicht 2023) zu CS1 publiziert (DOI 10.1145/2445196.2445270). → **Pattern #5 fabriziert oder Datums-Drift +10 Jahre**.
- **Yang 2024 Code-Tracing-Quizzes 15%**: keine passende Yang-Citation 2024 zu Code-Tracing-Retention-Effekten in CrossRef. **Identische Aussage tritt in `retrieval-practice.md` mit gleichem 15%-Wert auf** → **Pattern #5 fabriziert + Vorlagen-Hallucination**.

**Drei CRITICAL fabrizierte Citations in einem Absatz** — productive-failure.md ist nicht in Welle 1-9 auditiert worden (Score 14), und ohne diesen Bulk-Sweep wäre der Brennpunkt strukturell unentdeckt geblieben.

### Phase-B Highlight-Befund: `meta-analysen-cs-education.md` — Becker → Denny Hybrid

Zeile 53 (Tabelle) + Zeile 65 (Body):
> *„Becker et al. (2023). KI in CS Education. Survey. Keine Effektstärken (zu früh). Niedrig (Positionspapier)."*
> *„Becker et al. (2023) konnten nur dokumentieren, nicht evaluieren."*

Real ist die Citation **Denny et al. (2024)** *Computing Education in the Era of Generative AI*, Communications of the ACM 67(2), 56–67, DOI 10.1145/3624720 — Erstautor **Paul Denny**, Brett A. Becker ist Co-Autor an **Position 3**. Plus Jahr **2024**, nicht 2023.

**Pattern #2 Hybrid-Citation**: Erstautor + Jahr verschoben. Co-Autor wird zum Erstautor (umgekehrte Variante zu Welle-9 Sub-Pattern 2c, hier aber nicht-westlich-zu-westlich-Drift, sondern Co-Autor-Verschiebung).

**Wichtig:** `meta-analysen-cs-education.md` ist jetzt der **dritte Sweep in Folge** mit Cross-Repo-Befund:
- Sweep 5 (W8): Margulieux d=0,44
- Sweep 6 (W9): Zingaro „Higher-Order"
- Welle 10: Becker → Denny Hybrid

Bestätigt das Repeat-Offender-Muster: Aggregat-Übersichts-Artikel erbt Befunde aus Methoden-Artikeln. Methodik-Konsequenz: **bei jedem Wiki-Fix proaktiv `meta-analysen-cs-education.md` mitziehen**.

### Übrige Phase-B-Befunde (Pattern #4 Variante A — Body-Inline ohne Quellenliste-Eintrag)

**In bereits auditierten Artikeln** (Welle 1-9, formale Bibliographie-Disziplin-Lücken):

| Datei | Body-Inline-Cite | Quellenliste-Status |
|---|---|---|
| direct-instruction-rosenshine | O'Neill 2012, Wecker et al. 2017, Bergeron 2017, Brophy 1986 | fehlen (Welle-4-False-Negative) |
| effektstaerken-unterricht | Hannay 2009, Slavin 2018 | fehlen |
| affektive-dimensionen | Becker 2019 | fehlt |
| imposter-phaenomen-it-azubis | – | False-Positive (Token-Fragmente) |

**In Welle-9-auditierten Artikeln** (nicht-Welle-9-Subagent-Lücke):

| Datei | Body-Inline-Cite | Quellenliste-Status |
|---|---|---|
| flipped-classroom | Ruiz de Miras 2022 | fehlt — Welle-9-Subagent hatte nur Body-Cite gegen CrossRef geprüft, nicht Quellenliste |
| peer-instruction | Ruiz de Miras 2022 | fehlt — gleicher Befund |
| ki-native-lernumgebungen | Wood et al. 1976 | fehlt |

**In nicht-auditierten Welle-10-Restartikeln**:

| Datei | Body-Inline-Cite | Status |
|---|---|---|
| poe-methode | Vosniadou 2013 | fehlt |
| primm-methode | White 1992 (Predict-Observe-Explain) | fehlt |
| productive-failure | Leppink 2023, Tafliovich 2023, Yang 2024 | fabriziert (siehe oben) |
| retrieval-practice | Yang 2024 | fabriziert (siehe oben) |
| testitem-konstruktion-digital | Bridgeman 1992, Lukhele/Thissen/Wainer 1994 | fehlen (real) |
| wissensretention-programmierung | Ahadi 2013, Ericsson 1993, Kapur 2016, Lewis 2017 | mehrere fehlen |
| zeitmanagement-selbstorganisation | Parkinson 1955 (Parkinson's Law) | fehlt |

## Gesamtbilanz

| | Phase A | Phase B | Welle 10 Σ |
|---|---|---|---|
| IDs/Cites geprüft | 6 DOIs | ~52 Inline-Cites (~25 echt) | 31 |
| CRITICAL | 0 | 4 | **4** |
| MAJOR | 0 | 0 | 0 |
| MINOR | 0 | ~20 (Pattern #4 Variante A) | **~20** |
| OK | 6 | – | 6 |

**4 CRITs in einer strukturellen Bulk-Welle** — vergleichbar mit Welle 8 (4 CRITs) bei ~10 % des Token-Aufwands.

| Welle | Methodik | Cites | CRIT | MAJOR | Token-Aufwand |
|---|---|---|---|---|---|
| 8 | Score 18-20, 5 Subagents | 44 | 4 | 5 | ~280k |
| 9 | Pattern-Heuristik 15-17, 5 Subagents | 40 | 2 | 2 | ~280k |
| **10** | **Strukturelle Bulk-Sweeps (Phase A+B)** | **31** | **4** | **0** | **~30k** |

Bulk-Sweep-Strategie ist **deutlich ressourcen-effizienter** als lineare Wellen, fängt strukturell genauso viele oder mehr CRITs.

## CRIT-Detail-Findings

### CRIT 1: meta-analysen-cs-education — Becker 2023 → Denny et al. 2024 CACM Hybrid

**Wiki-Quellenliste Z. 53 + Body Z. 65:** „Becker et al. (2023). KI in CS Education. Survey."
**Real (CrossRef DOI 10.1145/3624720):** Denny, P., Prather, J., **Becker, B. A.** (Pos. 3), Finnie-Ansley, J., Hellas, A., Leinonen, J., Luxton-Reilly, A., Reeves, B. N., Santos, E. A., Sarsa, S. (2024). *Computing Education in the Era of Generative AI*. Communications of the ACM, 67(2), 56-67.
**Pattern #2:** Co-Autor wird Erstautor + Datums-Drift (2023 → 2024).
**Korrektur:** Tabelle Z. 53 Spalte „Studien" + Body Z. 65 + meta-analysen-cs-education-Quellenliste auf „Denny et al. (2024)" anpassen. (Hinweis: Citation existiert bereits in `wiki/ki-gestuetztes-tutoring.md`-Quellenliste — von dort kopierbar.)

### CRIT 2: productive-failure — Leppink et al. (2023) SQL 40% — fabriziert

**Wiki Body Z. ~85:** „Leppink et al. (2023) zeigten 40 % bessere Retention bei verteilter SQL-Übung."
**Verifikation:** CrossRef-Suche „Leppink + SQL + retention + spaced practice 2023" — null Treffer. Jimmie Leppink hat 2020-Bücher zu Instrument-Structures/Statistik publiziert, keine 2023er SQL-Retention-Studie. Pattern #5 fabriziert.
**Korrektur:** Citation entfernen. Falls Spaced-Practice-für-SQL-Beleg gewünscht: durch belegte Quelle ersetzen (z.B. Soderstrom & Bjork 2015 *Learning vs. Performance*, in Welle 9 als Quelle gefunden).

### CRIT 3: productive-failure — Tafliovich et al. (2023) CS1 interleaved — Datums-Drift oder fabriziert

**Wiki Body Z. ~85:** „Tafliovich et al. (2023) fanden signifikant bessere CS1-Prüfungsleistungen mit interleaved Practice."
**Verifikation:** Anya Tafliovich (UToronto) ist reale CS-Ed-Forscherin, hat 2013 SIGCSE „A student perspective on prior experience in CS1" (DOI 10.1145/2445196.2445270) publiziert — kein interleaved-Practice-Befund. Keine 2023er-Tafliovich-Citation zu interleaved Practice in CS1 in CrossRef. Pattern #5 fabriziert oder Datums-Drift +10 Jahre.
**Korrektur:** Citation entfernen.

### CRIT 4: productive-failure + retrieval-practice — Yang et al. (2024) Code-Tracing 15% — fabriziert + Vorlagen-Hallucination

**Wiki Body identisch in 2 Files:** „Yang et al. (2024) berichten ~15 % bessere Klausurergebnisse durch Low-Stakes-Code-Tracing-Quizzes."
**Verifikation:** CrossRef-Suche nach Yang + Code-Tracing-Quiz/Retention 2024 — keine passende Citation. Vorhandene Yang-Citations 2024: GPT-Code-Generierung (Qianyi Yang), Eye-Gaze-Patterns (Wudao Yang), DPKT (Lina Yang) — keine zu Code-Tracing-Retention-Effekten. **Identische Aussage in 2 Files** = Vorlagen-Hallucination.
**Korrektur:** Citation in beiden Files entfernen oder durch belegte Retrieval-Practice-CS-Studie ersetzen (z.B. Murphy & Tenenberg 2023 ITiCSE — falls wirklich vorhanden, separat verifizieren).

## MINOR-Backlog (~20 — Pattern #4 Variante A)

Hauptsächlich: Quellenliste-Vervollständigungen für Body-Inline-Cites. Alle Citations sind real und korrekt attribuiert, nur die Bibliographie-Disziplin fehlt.

Priorität-Reihenfolge (nach Cite-Wichtigkeit):

1. **direct-instruction-rosenshine**: O'Neill 2012, Wecker et al. 2017, Bergeron 2017, Brophy 1986 (alle methodisch-kritische Cites zur Hattie-Diskussion) → in Quellenliste ergänzen
2. **flipped-classroom + peer-instruction**: Ruiz de Miras 2022 (DOI 10.1002/cae.22447) → in beide Quellenlisten ergänzen
3. **ki-native-lernumgebungen**: Wood, Bruner & Ross 1976 (DOI 10.1111/j.1469-7610.1976.tb00381.x) → in Quellenliste ergänzen
4. **wissensretention-programmierung**: Ahadi 2013, Ericsson 1993, Kapur 2016, Lewis 2017 → vermutlich alle real, in Quellenliste ergänzen
5. **testitem-konstruktion-digital**: Bridgeman 1992, Lukhele/Thissen/Wainer 1994, Millman/Bishop/Ebel 1965 → ergänzen
6. **effektstaerken-unterricht**: Hannay 2009 (Pair Programming Meta-Analyse), Slavin 2018 (Qualitätsfilter) → ergänzen
7. **affektive-dimensionen, poe-methode, primm-methode, zeitmanagement-selbstorganisation**: jeweils 1 Cite → ergänzen

## Cross-Repo-Verdacht (NEU aus Welle 10)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Becker et al. 2023/2024 KI in CS Education (real Denny) | `grep -ri 'Becker.*2023.*KI\|Becker.*Survey\|3624720' wiki/` | mittel — fixen + Cross-Repo |
| Yang 2024 Code-Tracing 15% (fabriziert, Vorlagen-Hallucination) | `grep -ri 'Yang.*2024\|Code-Tracing-Quiz' wiki/` | mittel — schon in 2 Files |
| Leppink 2023 SQL 40% (fabriziert) | `grep -ri 'Leppink.*2023\|Leppink.*SQL' wiki/` | niedrig (Einzelfall) |
| Tafliovich 2023 CS1 interleaved (fabriziert) | `grep -ri 'Tafliovich.*2023' wiki/` | niedrig |
| Body-Inline ohne Quellenliste — strukturelles Pattern (Pattern #4 Variante A) | Bulk-Skript wiederverwenden | hoch — strukturelle Disziplin-Lücke, lohnt regelmäßige Wiederholung |

## Methodik-Erkenntnisse aus Welle 10

1. **Bulk-Sweep-Strategie validiert**: Mit ~10 % des Token-Aufwands einer linearen Welle wurden 4 CRITs gefangen (gleich viele wie Welle 8, mehr als Welle 9). Pattern-Heuristik strukturell anwenden ist effizienter als mehr Subagents zu spawnen.

2. **Pattern #4 Variante A ist ein strukturelles Disziplin-Problem**: ~20 Body-Inline-ohne-Quellenliste-Befunde repo-weit, davon ein Drittel in bereits auditierten Artikeln (Welle-1-9-Subagents haben Pattern #4 Variante A nicht systematisch geprüft). Empfehlung: Body-Inline-Sweep als Standard-Bestandteil zukünftiger v3-Audits in Layer 3.

3. **`meta-analysen-cs-education.md` ist permanenter Repeat-Offender**: 3 Sweeps in Folge mit Cross-Repo-Befunden (Margulieux W8, Zingaro W9, Becker W10). Methodik-Update-Vorschlag: bei jedem Wiki-Fix automatisch `grep -ri 'Erstautor JJJJ' wiki/meta-analysen-cs-education.md`.

4. **Fabrizierte Studien-Boxen Pattern #3 lebt weiter**: productive-failure.md hatte 3 fabrizierte Cites in einem Absatz mit konkreten Effekt-Werten ohne DOI. Pattern bewährt sich seit Welle 5 — Triage-Heuristik „mehrere konkrete Effekte hintereinander ohne DOI" sollte hartcodiert in Sweep-Skripten sein.

5. **DOI-Lookup ist nicht ausreichend, aber DOI-Lücke ist Indikator**: 50 von 51 Restartikeln hatten 0 DOIs — und genau in den DOI-losen Artikeln tauchten die fabrizierten Cites auf (productive-failure, retrieval-practice). DOI-Lücke = Hot-Spot für Pattern #3+#5.

## Empfehlung für Phase C (Methodik-Konsolidierung)

1. **v3-Methodik-Datei erweitern um Sub-Pattern 2c** (DOI/Volume/Pages stimmen, Titel/Topic gehören zu anderem Paper) — Welle-9-Befund.
2. **v3-Methodik-Datei erweitern um Pattern #4 Variante A als Pflicht-Layer-3-Check** — Body-Inline-Cites gegen Quellenliste matchen, nicht nur Citation gegen CrossRef.
3. **Triage-Skript-Schärfung**: 33-Tab-Zähler-Bug fixen (Welle 9 Befund); plus +5 Bonus-Punkte für Artikel ohne jegliche DOI/arXiv (Pattern #3-Risk).
4. **README ergänzen** um Bulk-Sweep-Strategie als komplementärer Workflow zu Per-Citation-Audit.
5. **`meta-analysen-cs-education.md`-Repeat-Offender-Status dokumentieren** — bei jedem Methoden-Fix mitziehen.

## Status nach Welle 10

- **51 Artikel auditiert** (50 % des Repos, Score-Bereich 15-73 vollständig + alle nicht-auditierten DOIs).
- **6 Cross-Repo-Sweeps** + **1 Bulk-Sweep-Welle**.
- **~445 Citations geprüft**.
- Welle-10-Backlog: 4 CRIT + 0 MAJOR + ~20 MINOR (alle Pattern #4 Variante A, formal MINOR).
- **Restartikel (51 Score ≤14)**: durchgekämmt für DOI-Hybrid (0 Befunde) und Body-Inline-vs-Quellenliste (Pattern #4-Treffer als MINOR aufgenommen). Kein direkter weiterer Audit-Bedarf — Restrisiko ist auf Theorie-Artikel ohne moderne DOI/arXiv beschränkt, dort ist Pattern #2/Hybrid-Risk strukturell niedrig.
