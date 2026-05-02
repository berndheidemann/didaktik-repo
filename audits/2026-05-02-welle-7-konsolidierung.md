# Welle 7 — Imposter/CTA/Aktivierung/Abschluss/FA (v3-Single-Pass)

**Datum:** 2026-05-02
**Methodik:** v3-Single-Pass (frisch um Welle-6-Erweiterungen ergänzt: Body-Cite-Token vs. Body-Aussage, Co-Autor-Drift bei Namensvetter:innen), 5 Subagents parallel, model: opus, ohne Self-Consistency-Pass.
**Auditierte Artikel:** imposter-phaenomen-it-azubis, cognitive-task-analysis, aktivierung-lehrervortrag, abschlussprojekt-begleitung, formatives-assessment.

## Anlass + Hypothese

Fünfte v3-Welle. Score-Range 21-23 — niedrigster Range bisher. Hypothese: Score-Schema bleibt schwach für CRIT-Vorhersage; nach Welle-6-Methodik-Update (Body-vs-Body-Aussage-Check) sollten interne Misattributionen jetzt zuverlässiger gefangen werden.

**Hypothese teilweise bestätigt:**
- **Methodik-Update wirksam:** Welle-7-Subagent hat im imposter-phaenomen-Artikel das Sub-Pattern 4B (Body-Cite-Token Bravata mit Wert aus Guenes) explizit als Welle-6-Pattern erkannt und dokumentiert.
- **Score-Schwäche bestätigt:** Score 22-23 produzierte sowohl Saubercases (aktivierung Score 22 → 0 CRIT bei 13 Cites) als auch Brennpunkte (imposter Score 23 → 3 CRIT bei 11 Cites). Risk-Score erlaubt keine zuverlässige Risiko-Vorhersage auf Artikel-Ebene.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| imposter-phaenomen-it-azubis | 11 | 5 | 3 | 0 | 3 | 0.91 | 14 (1.4/cite) |
| cognitive-task-analysis | 6 | 5 | 1 | 0 | 0 | 0.92 | 9 (1.5/cite) |
| aktivierung-lehrervortrag | 13 | 12 | 1 | 0 | 0 | 0.91 | 13 (1.0/cite) |
| abschlussprojekt-begleitung | 8 | 5 | 2 | 1 | 0 | 0.88 | 13 (1.6/cite) |
| formatives-assessment | 4 | 3 | 1 | 0 | 0 | 0.93 | 9 (2.3/cite) |
| **Σ** | **42** | **30** | **8** | **1** | **3** | **0.91** | **58 (1.38/cite)** |

**3 CRITs + 1 MAJOR in 42 Cites = 9.5 % Befund-Dichte** — niedrigste der ganzen Audit-Reihe. Aber: alle 3 CRITs in einem Artikel (imposter-phaenomen-it-azubis). Welle-Vergleich:

| Welle | Score-Range | Cites | CRIT | MAJOR | Befund-Dichte |
|---|---|---|---|---|---|
| 3 | 27-40 | 47 | 0 | 7 | 15 % |
| 4 | 27-40 | 63 | 1 | 6 | 11 % |
| 5 | 22-23 | 43 | 5 | 10 | 35 % |
| 6 | 24-29 | 41 | 4 | 3 | 17 % |
| **7** | **21-23** | **42** | **3** | **1** | **9.5 %** |

Trend bei niedrigem Score: Welle 5 (35 %) → Welle 6 (17 %) → Welle 7 (9.5 %) — könnte als "Rest-Repo wird sauberer" interpretiert werden, ist aber bei nur 3 Datenpunkten (Welle 5-7) statistisch nicht belastbar. Realer Effekt vermutlich: Hot-Spots konzentrieren sich auf einzelne Artikel (Welle 7 imposter ist Solo-Brennpunkt mit 3/3 CRITs).

## Wiederkehrende Fehlermuster (Welle 7)

### Imposter-Cluster: 3 CRITs in einem Artikel

1. **Hybrid-Citation Sub-Pattern 2a (Welle-6-Methodik bestätigt)** — Levant/Villwock/Manzardo (2024) Frontiers Scoping Review. DOI 10.3389/fpsyg.2024.1360540 gehört real **Para/Dubreuil/Miquelon/Martin-Krumm** (Frontiers 2024). Levant et al. sind reale Imposter-Forschende, aber Autoren eines anderen Papers (Medical Students 2022, DOI 10.1007/s40670-022-01675-x). Inhalts-Layer (31 Studien) passt zum realen Para-Paper. **Gleiche Hybrid-Variante wie Brady SciAdv 2020** in Welle 6 — reale Forscher:innen im selben Feld werden falsch zugeordnet.

2. **Inhalts-Layer-2 Stichproben-Inflation** — Guenes et al. (2023) "Imposter phenomenon in software engineers" arXiv:2312.03966. Wiki Z. 62 nennt n=2.665, real **624 Respondents** aus 26 Ländern. Faktor ~4,3, kein Tippfehler-Bereich. 52,7%-Wert stimmt. **Neuer Sub-Pattern:** Inhalts-Layer-Falschwert bei korrekter Citation.

3. **Komplett fabrizierte Citation** — Rohrmann (2019) "Hochstapler-Phänomen" Psychotherapeut 64(3), 313-323. Nicht reproduzierbar (Springer-Index, Uni-Frankfurt-Publikationsliste, 3-fache WebSearch — null Treffer). Rohrmann ist reale Forscherin am Imposter-Thema, hat 2019 publiziert (Hogrefe-Buch + Praxis-Ergotherapie + Psychologie-Heute), aber **nicht** in der Fachzeitschrift Psychotherapeut. Konsistent mit Welle-6-Pattern: plausibel klingende Citation, in keiner Datenbank auffindbar.

### Imposter-Cluster: 3 weitere MINORs (Welle-6-Methodik-Pattern)

4. **Body-vs-Body-Aussage-Drift Sub-Pattern 4B (Welle-6-Methodik-Treffer)** — Wiki Z. 38 attribuiert "52% Software Engineers" an Bravata (2020), real stammt der Wert aus Guenes (2023). Quellenliste-Eintrag Bravata ist korrekt (medizinisch-klinische Review, kein SE-spezifischer 52%-Wert). Sub-Pattern 2b im engeren Sinne: derselbe 52%-Wert wird im Body 2× verwendet, einmal an Bravata, einmal an Guenes attribuiert — Welle-6-Methodik-Update fängt das genau.

5. **Co-Autoren-Liste unvollständig** — Margolis (2008) "Stuck in the shallow end" als Sole-Author zitiert. Reale Autoren: **Margolis, Estrella, Goode, Holme, Nao** (5-Köpfige Autorinnen-Gruppe).

6. **Konstrukt-Misattribution** — Walton & Cohen 2011 als "Minority-Stress-Forschung" geframed (Body Z. 142). Real: Belonging-Intervention-Forschung. Minority-Stress ist Meyer 2003-Lineage (Psychologie der LGBTQ-Stigmatisierung). Effekt-Aussage "wirken signifikant über Jahre" korrekt (3-Jahres-Follow-up; spätere Brady et al. 2020 sogar 7-Jahres).

### Andere Welle-7-Befunde

7. **Datierungs-Drift Verwaltungs-Update (Pattern #16)** — abschlussprojekt-begleitung Citation 3: BIBB Umsetzungshilfen "(2020, Update 2025)". BIBB-Publikationsseite zeigt nur 2020-Edition, kein 2025-Update. Mutmaßliche Verwechslung mit dem **IHK-Prüfungskatalog-Update 2025** (analog Welle-5-Pattern "FIAusbV Update 2025" als Verordnungsnovelle suggeriert).

8. **Genre-Misklassifikation Review als Meta-Analyse** — formatives-assessment Citation 1: Black & Wiliam (1998) "Assessment and Classroom Learning" wird im Body als Effektstärken-Beleg ("d=0,4-0,7") zitiert, ohne offenzulegen dass es eine narrative Literatur-Synthese aus ~250 Sekundärquellen ist. Frontmatter `evidenzgrad: meta-analyse` passt formal nicht. Plus: Kingston & Nash (2011) Meta-Analyse fand viel kleinere FA-Effekte (d=0,20-0,30) — Hot-Spot-Inversions-Risiko.

9. **Outcome-Überdehnung** — abschlussprojekt-begleitung Citation 1: Dunlap (2005) misst Self-Efficacy, Body schreibt "Anstieg von Selbstwirksamkeit und professioneller Identität". "Professionelle Identität" steckt nur im Titel-Framing, ist kein gemessenes Outcome.

10. **Verlags-Drift (Pattern #19 Venue-Drift)** — cognitive-task-analysis Citation 1: Clark/Feldon 2008 "Macmillan/Gale" vs. real **Routledge** (DOI 10.4324/9780203880869-48). Macmillan/Gale war früherer Distributor. Da Clark/Feldon selbst auf USU Digital Commons "Macmillan/Gale" verwenden, kosmetische Disclosure-Frage.

11. **Pagination-/Initial-/Genre-MINORs** — Dunlap 65-85 → 65-83; Margolis Co-Autorinnen-Liste; oer-informatik H. Stein als Autor fehlt; IHK Rhein-Neckar generischer URL-Root.

### Bemerkenswert positiv

- **aktivierung-lehrervortrag macht selbst aktiv kritische Disclaimer** — Mosteller-Erfindungs-Behauptung als "nicht klar belegt" markiert (Harvard-Gazette bestätigt: Mosteller lernte die Technik bei Bok-Seminar), Klippert/ABC-Liste-Falschattribution explizit als Mythos benannt (Birkenbihl ist real die Urheberin), Wilson/Korn 2007 als Mythos-Check für 10-15-Min-Aufmerksamkeits-Drop. **Vorbildlicher Umgang mit didaktischem Allgemeingut**.
- **Freeman 2014 PNAS** in aktivierung-lehrervortrag korrekt als **Meta-Analyse** klassifiziert (d=0,47, OR=1,95, n=158/67, 225 Studien — alle Werte exakt verifiziert). Domain-Hot-Spot Studientyp-Klassifikationsfehler hier negativ.
- **Mazur Peer Instruction** in aktivierung-lehrervortrag ohne Effektstärken-Behauptung zitiert — kein d=0,49-Hot-Spot-Risiko.
- **Hattie/Timperley 2007** in formatives-assessment — Vier-Ebenen-Modell und Drei-Fragen 1:1 mit Original; Wiliams 5 Schlüsselstrategien wortgenau. Kein Hattie-Edition-Drift (Artikel zieht NICHT die populäre "d=0,79 Feedback"-Behauptung rein).
- **Walton 2023 Belonging-Heterogenität** in imposter-phaenomen wird auch dort sauber gerahmt (durch Verweis auf belonging-interventionen-Artikel).

## Detail-Findings (CRITs nur)

### CRIT 1: imposter-phaenomen-it-azubis — Levant 2024 Hybrid

Wiki-Quellenliste: *"Levant, B., Villwock, J. A. & Manzardo, A. M. (2024). Interventions addressing the impostor phenomenon: A scoping review. Frontiers in Psychology, 15, 1360540."*
Real (Frontiers + PMC): **Para, E., Dubreuil, P., Miquelon, P., & Martin-Krumm, C.** Levant/Villwock/Manzardo sind reale Imposter-Forschende, aber Autoren von "Phenomenology of the Impostor Phenomenon among Medical Students" (DOI 10.1007/s40670-022-01675-x). Inhaltsbefunde (31 Studien, Gruppen-Interventionen) gehören zum Para-Paper, nicht Levant.
**Korrektur:** "Para, E., Dubreuil, P., Miquelon, P., & Martin-Krumm, C. (2024). Interventions addressing the impostor phenomenon: A scoping review. *Frontiers in Psychology, 15*, 1360540. https://doi.org/10.3389/fpsyg.2024.1360540" — Body Z. 86 Verweise mit-korrigieren.

### CRIT 2: imposter-phaenomen-it-azubis — Guenes 2023 Stichproben-Inflation

Wiki Z. 62 (Body-Tabelle): *"Guenes et al. 2023 untersuchten 2.665 Software Engineers und fanden 52,7 % frequent-to-intense Imposter."*
Real (arXiv:2312.03966 + ICSE-SEIS 2024 DOI 10.1145/3639475.3640114): **624 Respondents aus 26 Ländern**. 52,7%-Wert stimmt.
**Korrektur:** "Guenes et al. 2023 untersuchten 624 Software Engineers (26 Länder) und fanden 52,7 % frequent-to-intense Imposter."

### CRIT 3: imposter-phaenomen-it-azubis — Rohrmann 2019 Psychotherapeut nicht reproduzierbar

Wiki-Quellenliste: *"Rohrmann, S. (2019). Hochstapler-Phänomen. Psychotherapeut, 64(3), 313–323."*
**Verifikation negativ:** Springer-Index für Psychotherapeut 64(3), Uni-Frankfurt-Publikationsliste 2020 (offizielle Rohrmann-Selbst-Liste), 3-fache WebSearch in unterschiedlichen Wortlautvarianten — alle null Treffer. Rohrmann ist reale Imposter-Forscherin, hat 2019 aber andere Veröffentlichungen: Hogrefe-Buch "Wenn große Leistungen zu großen Selbstzweifeln führen" (Erstauflage 2018, Neuauflage 2019), Praxis-Ergotherapie-Artikel, Psychologie-Heute-Artikel. **Kein Eintrag in der Fachzeitschrift Psychotherapeut**.
**Korrektur:** Citation streichen oder durch belegbare Rohrmann-Quelle ersetzen — z.B. "Rohrmann, S. (2019). *Wenn große Leistungen zu großen Selbstzweifeln führen* (Neuaufl.). Hogrefe."

## MAJOR-Finding (1)

| # | Datei | Befund | Korrektur |
|---|---|---|---|
| 1 | abschlussprojekt-begleitung | BIBB Umsetzungshilfen "(2020, Update 2025)" — kein 2025-Update bei BIBB; Verwechslung mit IHK-Prüfungskatalog-Update | "Bundesinstitut für Berufsbildung. (2020). *Umsetzungshilfen Fachinformatiker/-in*. Verlag Barbara Budrich." — "Update 2025" streichen oder konkrete Update-Quelle (IHK-Prüfungskatalog) separat zitieren |

## MINOR-Backlog (8)

| Datei | Befund | Korrektur |
|---|---|---|
| imposter-phaenomen-it-azubis | Body Z. 38 "52% SE Bravata 2020" zieht Wert auf falsche Quelle | → "Guenes et al. 2023, n=624" (siehe CRIT 2) |
| imposter-phaenomen-it-azubis | Margolis 2008 als Sole-Author zitiert | → "Margolis, J., Estrella, R., Goode, J., Holme, J. J., & Nao, K. (2008)." |
| imposter-phaenomen-it-azubis | Walton & Cohen 2011 als "Minority-Stress-Forschung" geframed | → "Belonging-Intervention-Forschung" (Minority-Stress = Meyer 2003-Lineage) |
| cognitive-task-analysis | Clark/Feldon 2008 Verlag "Macmillan/Gale" | → "Routledge" (Macmillan/Gale war Distributor) |
| aktivierung-lehrervortrag | Ruhl/Hughes/Schloss 1987 Pause-Aktivität "Notizen austauschen" | → "Paar-Diskussion zur Notizen-Überarbeitung" (präziser) |
| abschlussprojekt-begleitung | Dunlap 2005 Pagination 65-85; "professionelle Identität" überdehnt | → 65-83; "Anstieg der Selbstwirksamkeit" (Identität streichen) |
| abschlussprojekt-begleitung | IHK Rhein-Neckar URL ist Domain-Root | → Deep-Link auf konkrete Doku-Seite |
| abschlussprojekt-begleitung | oer-informatik Autor "H. Stein" fehlt in Citation | → "Stein, H. (2024)." statt Domain |
| formatives-assessment | Black & Wiliam 1998 als "Meta-Analyse" gerahmt | → narrative Synthese explizit kennzeichnen; ggf. Kingston/Nash 2011 als Korrektiv ergänzen |

## Cross-Repo-Verdacht (neue Pattern aus Welle 7)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Levant/Villwock/Manzardo Frontiers 2024 1360540 (statt Para et al.) | `grep -ri 'Levant.*Villwock\|Levant.*Manzardo\|Levant.*2024' wiki/` | mittel — andere Imposter-/Belonging-Artikel könnten Cite kopiert haben |
| Rohrmann 2019 Psychotherapeut 64(3), 313-323 (nicht reproduzierbar) | `grep -ri 'Rohrmann.*2019\|Rohrmann.*Psychotherapeut' wiki/` | mittel — Vorlagen-Hallucination möglich |
| Guenes 2023 mit n=2.665 statt 624 | `grep -ri 'Guenes\|2\.665\|2665' wiki/` | niedrig (vermutlich Einzelfall) |
| Bravata 2020 als Beleg für SE-spezifische Werte | `grep -ri 'Bravata.*Software\|Bravata.*52' wiki/` | mittel — Body-Cite-Token-Drift-Pattern (Welle 6 Sub-Pattern 4B) |
| BIBB Umsetzungshilfen "Update 2025" (fabriziertes Update-Jahr) | `grep -ri 'Umsetzungshilfen.*2025\|BIBB.*Update' wiki/` | mittel — Datierungs-Drift-Pattern wie "FIAusbV Update 2025" |
| Walton & Cohen als "Minority-Stress-Forschung" geframed | `grep -ri 'Walton.*Minority-Stress\|Walton.*Minority Stress' wiki/` | niedrig (vermutlich Einzelfall) |
| Black & Wiliam 1998 als "Meta-Analyse" klassifiziert (statt Review) | `grep -ri 'Black.*Wiliam.*Meta\|Wiliam.*Meta-Analyse' wiki/` | mittel — Sekundärzitat-Status-Disclosure-Lücke kann repo-weit auftauchen |
| Margolis 2008 Sole-Author (fehlende Co-Autorinnen Estrella/Goode/Holme/Nao) | `grep -ri 'Margolis.*2008' wiki/` | niedrig |
| Clark/Feldon 2008 "Macmillan/Gale" vs. Routledge | `grep -ri 'Macmillan/Gale\|Handbook of Research on Educational Communications' wiki/` | niedrig |
| Dunlap 2005 "professionelle Identität" als gemessenes Outcome | `grep -ri 'Dunlap.*2005' wiki/` | niedrig |
| Tofel-Grehl 27 vs. 20 Studien (MetaX-Aggregat unter Tofel-Grehl-Cite) | `grep -ri 'Tofel-Grehl' wiki/` | niedrig |

## Robust gesicherte CRIT/MAJOR-Liste (Welle-7-Korrektur-Backlog)

| # | Datei | Severity | Korrektur |
|---|---|---|---|
| 1 | imposter-phaenomen-it-azubis | **CRITICAL** | Levant/Villwock/Manzardo 2024 → Para/Dubreuil/Miquelon/Martin-Krumm (Frontiers 2024 1360540) |
| 2 | imposter-phaenomen-it-azubis | **CRITICAL** | Guenes 2023 Stichprobe n=2.665 → 624 |
| 3 | imposter-phaenomen-it-azubis | **CRITICAL** | Rohrmann 2019 Psychotherapeut 64(3) streichen → durch Hogrefe-Buch ersetzen |
| 4 | abschlussprojekt-begleitung | MAJOR | BIBB Umsetzungshilfen "(2020, Update 2025)" → nur 2020 |

Plus 8 MINORs (siehe Backlog oben).

## Methodik-Limitierungen Welle 7

- **Welle-6-Methodik-Update wirksam:** Sub-Pattern 4B (Body-vs-Body-Aussage-Drift) wurde im imposter-Artikel explizit gefangen (Bravata-Token mit Guenes-Wert). Hätte vor dem Update potenziell durch Quellenlisten-Verifikation verschleiert werden können. Validiert die Layer-3-Erweiterung.
- **Sub-Pattern 2a (Hybrid-Citation Erstautor-Verwechslung mit realer Namensvetter:in)** zum zweiten Mal direkt erkannt (nach Brady SciAdv in Welle 6 jetzt Levant Frontiers in Welle 7) — Pattern stabil.
- **Inhalts-Layer-2 Stichproben-Inflation als neue Variante:** Guenes n=2.665 vs. 624 ist kein Hybrid, kein fabriziert, sondern reale Citation mit falschem Wert. Faktor-4-Diskrepanz auch bei Layer-2-Volltext-Fetch sehr deutlich. Triage-Heuristik: jede `[nN] ?[≈=] ?[0-9]+`-Stelle gegen Volltext.
- **Triage-Score-Schwäche bestätigt:** Welle 7 Score 21-23. aktivierung (Score 22) hatte 0 CRITs, imposter (Score 23) hatte 3 CRITs. Score-Schema kann Hybrid-Citations und Layer-2-Falschwerte strukturell nicht vorhersagen.
- **Score-Range bisher abgedeckt:** Wellen 3-7 = 21-40. Top-25 Hochrisiko-Artikel weitgehend abgedeckt (27 von vermutlich ~30-35 audit-würdigen). Folge-Wellen werden Score 18-21-Bereich abdecken; Triage-Strategie-Wechsel überlegen (Pattern-basierte Heuristik statt Score).

## Empfehlung für nächste Schritte

1. **Bulk-Fix Welle 7** — die 3 CRITs in imposter-phaenomen sind dringlich (Hybrid + Falschwert + fabriziert sind bibliographisch toxisch). MAJOR (BIBB-Update) plus 8 MINORs.
2. **Cross-Repo-Sweep nach Welle 7** lohnt sich besonders für:
   - **Levant-Frontiers-2024-Hybrid** in Belonging-/Affektiv-Artikeln
   - **Rohrmann-Psychotherapeut-Vorlage** repo-weit (Vorlagen-Hallucination möglich)
   - **BIBB-Umsetzungshilfen-Update-2025-Pattern** (analog FIAusbV-2025)
   - **Black/Wiliam-Genre-Misklassifikation** in feedback-/effektstärken-/mastery-Artikeln
3. **Methodik bleibt stabil** — Welle-6-Update hat sich bewährt; keine neuen Pattern, die strukturelle Methodik-Anpassung erfordern. Inhalts-Layer-2-Stichproben-Inflation als Triage-Hinweis im Audit-README dokumentieren wäre möglich.
4. **Welle 8 danach:** generative-learning-aktivitaeten (Score 20), differenzierung-inklusion (20), subgoal-labeling (18) und weitere mit Score 18-20. Möglicherweise schließen sich die Hochrisiko-Artikel ab — Restrepo wird vermutlich mehrheitlich sauber (Theorie-Artikel mit kanonischen Quellen).
