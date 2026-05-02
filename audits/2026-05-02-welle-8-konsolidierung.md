# Welle 8 — GLA/Differenzierung/Subgoal/Explorables/Code-Review (v3-Single-Pass)

**Datum:** 2026-05-02
**Methodik:** v3-Single-Pass (mit Welle-6-Erweiterungen: Body-Cite-Token vs. Body-Aussage, Co-Autor-Drift bei Namensvetter:innen, Sub-Pattern 2a/2b), 5 Subagents parallel, model: opus, ohne Self-Consistency-Pass.
**Auditierte Artikel:** generative-learning-aktivitaeten, differenzierung-inklusion, subgoal-labeling, explorable-explanations-im-unterricht, code-review-unterricht.

## Anlass + Hypothese

Sechste v3-Welle. Score-Range **18-20** — niedrigster bisher. Vorhypothese aus Welle-7-Konsolidierung: „Restrepo wird vermutlich mehrheitlich sauber (Theorie-Artikel mit kanonischen Quellen)" — **widerlegt**. Welle-8-Befund-Dichte CRIT+MAJOR liegt bei **20 %** und damit höher als Welle 7 (9,5 %), näher an Welle 6 (17 %).

**Erkenntnis:** Score-Schema versagt erneut als CRIT-Prädiktor. Niedriger Score ≠ saubere Artikel — es identifiziert nur Artikel mit weniger oberflächlichen Triage-Triggern (Effektstärken, Klass-Tabellen, §-Verweise). Hybrid-Citations und Body-vs-Aussage-Drifts treten unabhängig vom Score auf und konzentrieren sich diesmal in **drei** der fünf Artikel.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| differenzierung-inklusion | 9 (+ §-Block) | 7 | 2 | 0 | 0 | 0.92 | 13 (1.4/cite) |
| subgoal-labeling | 7 | 5 | 0 | 1 | 1 | 0.86 | 18 (2.6/cite) |
| explorable-explanations-im-unterricht | 8 (+ 1 Body-only-Cite) | 4 | 3 | 1 | 1 | 0.91 | 12 (1.5/cite) |
| code-review-unterricht | 6 | 2 | 1 | 1 | 2 | 0.86 | 13 (2.2/cite) |
| generative-learning-aktivitaeten | 13 | 8 | 3 | 2 | 0 | 0.88 | 22 (1.7/cite) |
| **Σ** | **43 (+ 1 §-Block + 1 Body-only)** | **26** | **9** | **5** | **4** | **0.89** | **78 (1.81/cite)** |

**4 CRITs + 5 MAJORs in 44 Cites = 20,5 % Befund-Dichte** — zweithöchster Wert nach Welle 5 (35 %).

| Welle | Score-Range | Cites | CRIT | MAJOR | Befund-Dichte (CRIT+MAJOR) |
|---|---|---|---|---|---|
| 3 | 27-40 | 47 | 0 | 7 | 15 % |
| 4 | 27-40 | 63 | 1 | 6 | 11 % |
| 5 | 22-23 | 43 | 5 | 10 | 35 % |
| 6 | 24-29 | 41 | 4 | 3 | 17 % |
| 7 | 21-23 | 42 | 3 | 1 | 9.5 % |
| **8** | **18-20** | **44** | **4** | **5** | **20.5 %** |

CRIT-Verteilung diesmal über **drei** Artikel statt nur einen Brennpunkt (wie Welle 7 imposter). Code-Review-Unterricht ist mit 2 CRIT bei 6 Cites (33 %) der schärfste Solo-Brennpunkt.

## Wiederkehrende Fehlermuster (Welle 8)

### Pattern #2 Hybrid-Citation, jetzt 14× repo-systematisch

Drei neue Hybrid-Citations in Welle 8, alle nach demselben Muster: **echte arXiv-/DOI-ID + falsche Autorenliste**:

1. **subgoal-labeling Citation 6**: „Li, Z., Margulieux, L. E. & Decker, A. (2025) SIGCSE — How good are LLMs at generating subgoal labels?" → Real **Marwan, Ibrahim, Morrison** (DOI 10.1145/3641555.3705195). **Alle drei Autoren falsch**, erscheint **3× im Artikel** (Tab Z. 64, Body Z. 132, Quellenliste Z. 179).
2. **explorable-explanations Citation 7**: „Zhang, Y. et al. (2023) ECCE — Impact of Scrollytelling on Reading Experience and User Engagement" → Real **Tjärnhage, Söderström, Norberg, Andersson, Mejtoft** (DOI 10.1145/3605655.3605683). Pattern #1 (nicht-westlicher Erstautor durch generischen „Zhang" ersetzt) + Titel-Drift („Long-Form Journalism" statt „User Engagement").
3. **code-review-unterricht Citation 6**: „Gonzalez-Barahona, J. M. et al. (2024) ICSE-SEET arXiv:2407.10322" → Real **Francisco Gomes de Oliveira Neto & Felix Dobslaw**. arXiv-ID + Venue + statistische Befunde (81%/56%, n=112) sind real und stimmen — Erstautor komplett fabriziert (westlich-spanischer Name statt portugiesisch-brasilianisch). Schwächere Variante Pattern #1.

**Zusätzlich Phantom-Co-Autor-Variante (Welle-5-Pattern):**

4. **explorable-explanations Citation 4**: „Conlen, M., Conlen, J., & Heer, J. (2018) Idyll" — real nur **Conlen + Heer** (2 Autoren), CrossRef DOI 10.1145/3242587.3242600 bestätigt. Phantom-Co-Autor „Conlen, J." fabriziert.

### Pattern #16 Datierungs-/Venue-Drift Cluster (NEU als 3-Felder-Cluster)

**code-review-unterricht Citation 5** ist eine neue Variante: **drei zusammenfallende Drifts in einer Citation**:
- Jahr 2024 → real **2020**
- Venue „Educational Technology Research and Development" → real **Information and Learning Sciences**
- Body-Behauptung „66 Studien 2008-2023" → real **39 Artikel** (DOI 10.1108/ILS-04-2020-0117)

Pattern #16 + #19 + #3 (n-Inflation) kombiniert. CRIT, weil drei unabhängige Metadaten-Felder gleichzeitig falsch sind.

### Pattern #7 Hot-Spot-Inversion + erfundene Prozentwerte

**generative-learning Citation 3**: Fiorella & Mayer (2013) „Teaching-Expectancy bringt +16 % Retention". Originalpaper findet **explizit das Gegenteil**: Teaching-Expectancy verbessert nur **Immediate Comprehension (d=0.59)**, NICHT delayed Retention. Nur **actual teaching** bringt Retention-Gewinne. Plus: Paper berichtet d-Werte, keine Prozent — die „+16 %"-Zahl ist erfunden. Klassische Hot-Spot-Inversion Pattern #7.

### Pattern #10 Tabelle-Klassifikations-Aufwertung

**generative-learning Citation 2**: Dunlosky et al. (2013) klassifizieren Summarization als **LOW utility** (mit Highlighting, Rereading u.a.). Wiki-Tabelle Z. 50 schreibt „**Moderate Wirkung**". Pattern #10 (erfundene Klassifikations-Stufe) bzw. #17 (Quellen-Genre-Überschreibung).

### Pattern #6 Effektstärken-Generationenfehler (light-Variante)

**subgoal-labeling Citation 4**: Margulieux/Morrison/Decker (2020) IJSE — „d ≈ 0,44 über den Kurs" **3× wiederholt** (Frontmatter-Summary, Z. 35, Z. 63 Tab-Zelle), aber im Abstract/ERIC nicht reproduzierbar. Paper berichtet differenzierte Effekte (Quiz ≠ Exam, Failure-Reduktion, Varianz-Reduktion), keinen course-wide Composite-d. MAJOR statt CRIT, weil Volltext paywalled (Springer 303). Pattern #6 + #4B.

**generative-learning Citation 7**: Leopold/Mayer (2015) — „First-Person stärker"-Befund stammt aus dem **2019er Folgepaper**, nicht 2015. Klassischer Generationen-Drift Pattern #6 light. MINOR.

### Pattern #4B Body-vs-Cite-Token-Drift

**code-review-unterricht Citation 3**: Body Z. 92 „verdoppelt Lösungsquote bei Trace-Aufgaben" Simon & Cutts (2012) zugeschrieben — diese 3-Seiten-CACM-Opinion enthält keine Trace-Aufgaben-Empirie. Verdopplungs-Befund gehört eher zu Porter et al. 2013 „Halving Fail Rates" oder zu Mazur-PI-Klassikern (Physik). MAJOR.

### Pattern #17 Domänen-Übertragung

**generative-learning Citation 11**: Oppici et al. (2023) zeigt „observation = enactment" für **L2-Vokabellernen** (deklarativ, 7 Studien, 309 Pers.). Wiki-Tabelle generalisiert auf **„prozedurale Inhalte"** — Domänen-Wechsel. MINOR.

**generative-learning Citation 10**: Nesbit & Adesope (2006) Akzentuierung „besonders bei Eigenkonstruktion" wäre dezidierter via **Schroeder et al. 2018** (Studying-vs-Constructing-Meta-Analyse) belegt. MINOR.

### Pattern #5 Body-Cite ohne Quellenliste-Eintrag

**explorable-explanations Citation 9**: Burch (2019) Meta-Analyse „+0,5 SD" wird im Body Z. 58 zitiert, aber **fehlt komplett in Quellenliste**. Real d=0,43 (gerundet aufgewertet). Welle-5-Variante „phantom-source"-Pattern. MINOR.

### Pattern #14 Self-Citation-Cluster

**subgoal-labeling**: Margulieux ist in 5 von 7 Citations Erstautorin oder Co-Autorin (1, 2, 3, 4, 5). Forschungslinie wird im Body nicht als research-group-internes Cluster offengelegt. **Nicht severity-erhöht**, weil Margulieux-Cluster faktisch der Hauptlineage des Felds entspricht — aber als Improvement-Hinweis dokumentiert.

### Bemerkenswert positiv

- **differenzierung-inklusion** ist Saubercase wie aktivierung-lehrervortrag in Welle 7: 0 CRIT/0 MAJOR/2 MINOR. KMK 2011, SGB IX § 164, BBiG §§ 8/65, EAA-Datum 28.06.2025, CAST UDL Guidelines, Tomlinson 4-Dimensionen + 3 Schüler-Charakteristika, Steenbergen-Hu 2016 (g=0.70/g=0.42) — alle 1:1 verifiziert.
- **explorable-explanations-im-unterricht** macht im Body explizit aktiv ehrliche Disclosure: „Engagement-Vorteil belegt, Lerntransfer nicht sauber nachgewiesen" — Outcome-Überdehnung negativ.
- **generative-learning Hattie/Timperley 2007** in code-review-unterricht ist Hattie-Edition-Drift-frei (Pattern #8 negativ — Wiki zitiert nur die qualitative Wirksamkeits-Reihenfolge ohne Effektstärken).
- **arXiv-IDs** in allen 4 betroffenen Artikeln sind sauber (Pattern #11 negativ): arXiv:2603.04367 Méndez/Such, arXiv:2407.10322 de Oliveira Neto/Dobslaw — alle stimmen mit Inhalt überein. **Die Hybrid-Citations nutzen die korrekte arXiv-ID, fälschen aber die Autorenliste** — bestätigt erneut, dass DOI/arXiv-Lookup allein nicht reicht.

## Detail-Findings (CRITs nur)

### CRIT 1: subgoal-labeling — Li 2025 Hybrid-Citation

Wiki-Quellenliste Z. 179 (+ Tab Z. 64 + Body Z. 132): *„Li, Z., Margulieux, L. E. & Decker, A. (2025). How good are large language models at generating subgoal labels? SIGCSE '25."*
Real (CrossRef + WebSearch ACM-DL): **Marwan, S., Ibrahim, M., Morrison, B. B. (2025).** DOI 10.1145/3641555.3705195. **Alle drei Citation-Autoren falsch.** Vermutlich Verwechslung mit Margulieux-Decker-Co-Autor-Cluster (aus Citation 4) plus erfundenem Erstautor „Li, Z.".
**Korrektur:** „Marwan, S., Ibrahim, M., & Morrison, B. B. (2025). How good are large language models at generating subgoal labels? *Proceedings of SIGCSE TS 2025*. https://doi.org/10.1145/3641555.3705195" — Tab-Zelle Z. 64 und Body-Verweis Z. 132 mit-korrigieren.

### CRIT 2: explorable-explanations-im-unterricht — Zhang/Tjärnhage Hybrid-Citation

Wiki-Quellenliste Z. 172: *„Zhang, Y. et al. (2023). Impact of Scrollytelling on Reading Experience and User Engagement. Proceedings of ECCE 2023."*
Real (DOI 10.1145/3605655.3605683 + Mejtoft-Publications-Page): **Tjärnhage, A., Söderström, U., Norberg, O., Andersson, M., & Mejtoft, T. (2023).** Titel real *„The Impact of Scrollytelling on the Reading Experience of Long-Form Journalism"*. Klassisches Pattern #1 (skandinavisch-asiatischer Name durch generisch chinesisch klingenden „Zhang" ersetzt) + Pattern #2.
**Korrektur:** „Tjärnhage, A., Söderström, U., Norberg, O., Andersson, M., & Mejtoft, T. (2023). The Impact of Scrollytelling on the Reading Experience of Long-Form Journalism. *ECCE 2023*. https://doi.org/10.1145/3605655.3605683".

### CRIT 3: code-review-unterricht — Zhu 2024 ETR&D Drei-Felder-Drift

Wiki-Citation: *„Zhu, X., Chen, B., Avadhanam, R. M., Shui, H., & Zhang, R. Z. (2024). Reading and connecting: Using social annotation in online classes — A systematic review of research. **Educational Technology Research and Development**."* Body: „66 Studien 2008-2023".
Real (Emerald): **Information and Learning Sciences, 121(5/6), 261-271, 2020.** DOI 10.1108/ILS-04-2020-0117. n=39 Artikel (kein 2008-2023). Eine 2024-ETR&D-Folgepublikation der Autorengruppe ist in WebSearch nicht auffindbar — keine alternative reale Quelle.
**Korrektur:** „Zhu, X., Chen, B., Avadhanam, R. M., Shui, H., & Zhang, R. Z. (2020). Reading and connecting: Using social annotation in online classes — A systematic review of research. *Information and Learning Sciences, 121*(5/6), 261-271. https://doi.org/10.1108/ILS-04-2020-0117" — Body-Aussage „66 Studien 2008-2023" auf reale n=39 korrigieren.

### CRIT 4: code-review-unterricht — Gonzalez-Barahona Hybrid-Citation arXiv:2407.10322

Wiki-Citation: *„Gonzalez-Barahona, J. M., et al. (2024). Social Annotation in an Introductory Programming Course. ICSE-SEET 2024. arXiv:2407.10322."*
Real (arXiv direkt + DBLP + Chalmers research portal): **Gomes de Oliveira Neto, F., & Dobslaw, F. (2024). Building Collaborative Learning: Exploring Social Annotation in Introductory Programming.** arXiv-ID + Venue + statistische Befunde (81%/56%, n=112) sind **real** und decken sich mit dem Wiki-Body. Erstautor und Titel komplett fabriziert.
**Korrektur:** „Gomes de Oliveira Neto, F., & Dobslaw, F. (2024). Building Collaborative Learning: Exploring Social Annotation in Introductory Programming. *ICSE-SEET 2024.* arXiv:2407.10322".

## MAJOR-Findings (5)

| # | Datei | Befund | Korrektur |
|---|---|---|---|
| 1 | subgoal-labeling | Margulieux 2020 IJSE „d ≈ 0,44 über den Kurs" 3× wiederholt, im Abstract nicht reproduzierbar (Paper berichtet differenzierte Quiz/Exam/Failure-Effekte) | Wert streichen oder durch konservative Aussage ersetzen („signifikant reduzierte Failure/Dropout-Quote"); Frontmatter-Summary, Z. 35, Z. 63 anpassen |
| 2 | explorable-explanations | Conlen 2018 Idyll Phantom-Co-Autor „Conlen, J." | „Conlen, M., & Heer, J. (2018). Idyll: A Markup Language for Authoring and Publishing Interactive Articles on the Web. *UIST '18*. https://doi.org/10.1145/3242587.3242600" |
| 3 | code-review-unterricht | Simon & Cutts 2012 CACM-Opinion „verdoppelt Lösungsquote bei Trace-Aufgaben" — Befund nicht aus dieser 3-Seiten-Notiz | Cite ergänzen: Porter et al. 2013 SIGCSE „Halving Fail Rates" als korrekte Quelle des Verdopplungs-/Halbierungs-Effekts |
| 4 | generative-learning-aktivitaeten | Dunlosky 2013 Tabelle Z. 50 „Summarizing — Moderate Wirkung" — Original klassifiziert als **LOW utility** | Tabelle auf „LOW utility, nur mit Training" zurücksetzen (Pattern #10) |
| 5 | generative-learning-aktivitaeten | Fiorella/Mayer 2013 Body „+16 % Retention durch Teaching-Expectancy" — Originalpaper findet Teaching-Expectancy **NICHT** retentionswirksam, nur Comprehension d=0.59 | „+16 %"-Zahl streichen; Tabellenzelle umformulieren („actual teaching > expectancy für Retention") |

## MINOR-Backlog (9)

| Datei | Befund | Korrektur |
|---|---|---|
| differenzierung-inklusion | Baron-Cohen 2001 (AQ-Validierungsstudie) als Beleg für IT-Beruf-Überrepräsentation überdehnt (Pattern #17) | Aussage entschärfen oder Wei et al. / NAS-Reports ergänzen |
| differenzierung-inklusion | UN-BRK „2009 DE" Verkürzung (Ratifikation 24.02.2009 / Inkrafttreten 26.03.2009) | „seit 26.03.2009 in Deutschland in Kraft" |
| explorable-explanations | Case 2017 Titel-Drift Singular vs. Plural; „mehrere Wochen Entwicklung" für Trust nicht im verlinkten Post belegt | Titel auf „How I Make Explorable Explanations" (Plural) korrigieren; Wochen-Aussage streichen oder besser belegen |
| explorable-explanations | Méndez/Such 2026: 4-Conditions-Studie verkürzt auf „gegenüber klassischer Textform" | „verglichen mit Text + Nutrition-Label-Varianten + standalone Visualisierung" |
| explorable-explanations | Burch 2019 als Body-Cite ohne Quellenliste-Eintrag, +0,5 SD aufgerundet (real d=0,43) | Burch in Quellenliste aufnehmen + Wert auf d=0,43 korrigieren |
| code-review-unterricht | Hundhausen 2013 Kalibrierungs-Effekt „30 % auf unter 10 %" volltext-paywalled, nicht verifiziert | Volltext-PDF prüfen oder Wert entfernen, falls dort nicht belegt |
| generative-learning-aktivitaeten | Leopold/Mayer 2015 mit „First-Person stärker"-Befund — Befund stammt aus 2019er Folgepaper | Leopold & Mayer (2019) zusätzlich oder statt 2015 zitieren |
| generative-learning-aktivitaeten | Nesbit/Adesope 2006 „besonders bei Eigenkonstruktion" Akzent leicht überdehnt | Schroeder et al. 2018 als Co-Cite oder Aussage entschärfen |
| generative-learning-aktivitaeten | Oppici 2023 L2-Vokabel-Befund (deklarativ) auf „prozedurale Inhalte" generalisiert | Domäne präzisieren („übertragbar auf prozedurale Inhalte mit Caveat") |

## Cross-Repo-Verdacht (Welle 8)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Li/Margulieux/Decker 2025 SIGCSE Hybrid (real Marwan/Ibrahim/Morrison) | `grep -ri 'Li.*Margulieux\|3641555\.3705195\|How good are large language models' wiki/` | mittel — andere CS-Ed-Methodenartikel könnten Cite kopiert haben (worked-examples, parsons-problems, ki-native-lernumgebungen, llm-integrationsmuster) |
| Zhang/Tjärnhage ECCE 2023 Scrollytelling-Hybrid | `grep -ri 'Zhang.*Scrollytelling\|3605655\.3605683\|ECCE.*2023' wiki/` | niedrig — Domain hauptsächlich UX/Lernumgebungen-Artikel |
| Gonzalez-Barahona arXiv:2407.10322 Hybrid (real de Oliveira Neto/Dobslaw) | `grep -ri 'Gonzalez-Barahona\|2407\.10322\|de Oliveira Neto\|Building Collaborative Learning' wiki/` | mittel — Perusall/Social-Annotation kann in formatives-assessment, kooperatives-lernen, kursarchitektur-lernumgebungen auftauchen |
| Zhu et al. ETR&D 2024 (real Information and Learning Sciences 2020) | `grep -ri 'Zhu.*Avadhanam\|Reading and connecting\|10\.1108/ILS-04-2020' wiki/` | mittel — Social-Annotation-Vorlage repo-weit |
| Conlen/Heer Idyll Phantom-Co-Autor | `grep -ri 'Conlen.*Conlen\|Conlen, J\.' wiki/` | niedrig (vermutlich Einzelfall) |
| Dunlosky 2013 Summarizing-Klassifikation | `grep -ri 'Dunlosky.*[Mm]oderate\|Summarizing.*[Mm]oderate\|Summarization.*[Mm]oderate' wiki/` | mittel — andere Lernstrategien-Artikel könnten Klassifikation aufgewertet haben |
| Fiorella/Mayer 2013 Teaching-Expectancy +16% Retention | `grep -ri 'Teaching-Expectancy\|Fiorella.*Mayer.*2013' wiki/` | niedrig (vermutlich Einzelfall) |
| Leopold/Mayer 2015 First-Person-Befund (real 2019) | `grep -ri 'Leopold.*Mayer.*2015' wiki/` | niedrig |
| Margulieux 2020 d≈0,44 course-wide Composite | `grep -ri 'Margulieux.*2020\|Margulieux.*0,44\|Margulieux.*0\.44' wiki/` | niedrig |
| Simon & Cutts 2012 „verdoppelt Trace-Aufgaben" | `grep -ri 'Simon.*Cutts.*verdoppel\|Simon.*Cutts.*2012' wiki/` | niedrig |
| Oppici 2023 L2-Vokabel-Domäne auf prozedurale Inhalte generalisiert | `grep -ri 'Oppici.*2023' wiki/` | niedrig |
| Burch 2019 Meta-Analyse Body-Cite ohne Quellenliste | `grep -ri 'Burch.*2019' wiki/` | niedrig |
| Baron-Cohen AQ-Validierung als Beleg für Berufsdemografie | `grep -ri 'Baron-Cohen\|AQ.*Quotient\|Empathizing-Systemizing' wiki/` | niedrig |

## Robust gesicherte CRIT/MAJOR-Liste (Welle-8-Korrektur-Backlog)

| # | Datei | Severity | Korrektur |
|---|---|---|---|
| 1 | subgoal-labeling | **CRITICAL** | Li 2025 SIGCSE → Marwan/Ibrahim/Morrison (Tab Z. 64, Body Z. 132, Quellenliste Z. 179) |
| 2 | explorable-explanations | **CRITICAL** | Zhang 2023 ECCE → Tjärnhage et al. (Quellenliste Z. 172) + Titel auf „Long-Form Journalism" |
| 3 | code-review-unterricht | **CRITICAL** | Zhu 2024 ETR&D → 2020 Information and Learning Sciences, n=39 statt 66, Zeitraum bis 2020 |
| 4 | code-review-unterricht | **CRITICAL** | Gonzalez-Barahona 2024 → de Oliveira Neto/Dobslaw arXiv:2407.10322 + Titel auf „Building Collaborative Learning" |
| 5 | subgoal-labeling | MAJOR | Margulieux 2020 IJSE „d≈0,44 über den Kurs" → konservative kategoriale Aussage |
| 6 | explorable-explanations | MAJOR | Conlen 2018 Idyll Phantom-Co-Autor entfernen |
| 7 | code-review-unterricht | MAJOR | Simon & Cutts 2012 „verdoppelt Trace-Aufgaben" → Porter 2013 |
| 8 | generative-learning | MAJOR | Dunlosky 2013 Summarizing „Moderate" → „LOW utility" |
| 9 | generative-learning | MAJOR | Fiorella/Mayer 2013 Teaching-Expectancy „+16 % Retention" → ersetzen durch korrekten d=0.59 Comprehension-Befund + actual-teaching-Diktum |

Plus 9 MINORs (siehe Backlog oben).

## Methodik-Limitierungen Welle 8

- **Welle-6-Methodik-Update bewährt sich erneut**: Body-Cite-Token-vs-Aussage-Check fängt subgoal-labeling d≈0,44 (3× wiederholt), Fiorella/Mayer +16 %, Simon & Cutts „verdoppelt"-Drift, Burch +0,5 SD-Aufrundung — diese hätten ohne Layer-3-Pflicht durch isolierte Quellenlisten-Verifikation überlebt.
- **Hybrid-Citation Pattern #2 jetzt 14× repo-systematisch**. Drei neue Welle-8-Cases (Marwan/Li, Tjärnhage/Zhang, de Oliveira Neto/Gonzalez-Barahona) bestätigen: **DOI/arXiv-Lookup allein reicht nicht**, weil die echte ID korrekt zitiert wird, nur die Autorenliste ist ausgetauscht. Co-Autorenliste-Check ist der robuste Diskriminator.
- **Score-Schema endgültig als CRIT-Prädiktor disqualifiziert**: Welle 8 (Score 18-20) hat 20 % CRIT+MAJOR-Dichte, Welle 7 (Score 21-23) hatte 9,5 %. **Niedriger Score ≠ saubere Artikel**. Empfehlung für Folge-Wellen: nicht weiter Score-getriebene lineare Welle, sondern **Pattern-Heuristik-Sweep** (siehe nächster Abschnitt).
- **Volltext-Paywall-Limit:** subgoal-labeling Margulieux 2020 IJSE und code-review Hundhausen 2013 hatten paywalled Volltext (Springer 303 / ACM 403). Severity konservativ vergeben; bei Volltext-Zugang könnte sich entweder OK oder CRIT ergeben. Empfehlung: bei MAJOR-Befunden mit Volltext-Lücke proaktiv Bibliothek-Zugang oder Author-Request einleiten.
- **Drei-Felder-Drift als neue CRIT-Variante:** Zhu 2024 ETR&D zeigt, dass Datierung + Venue + n-Zahl gleichzeitig drift'en können (Pattern #16 + #19 + #3 kombiniert). Folge-Welle-Methodik-Update: bei jeder Citation **alle drei Metadaten-Felder unabhängig gegen CrossRef/DOI prüfen**, auch wenn ein Feld stimmt.

## Strategie-Wechsel-Empfehlung: Pattern-Heuristik statt Score

Die linearen Score-getriebenen Wellen 1-8 haben **42 Artikel auditiert** (~370 Citations) und decken den Score-Bereich 18-73 vollständig ab. Restliche unauditierte Artikel haben Score ≤ 17 — Triage-Score bietet dort keine differenzierende Aussagekraft mehr.

**Empfehlung für Welle 9 und Folge:** Wechsel von Score-Auswahl zu **Pattern-Heuristik-Sweep**:

1. **arXiv/DOI-ID-Liste extrahieren** aus dem gesamten Repo. Pro ID einmaliger CrossRef/arXiv-Erstautoren-Abgleich. Spätestens hier fallen Hybrid-Citations Pattern #2 strukturell auf, ohne komplette Artikel-Audits.
2. **Citations mit konkreten n-/d-/g-/QWK-Werten** im Body-Cite-Kontext gegen Original-Abstracts prüfen. Pattern #6 + Pattern #4B + Pattern #3 (fabrizierte n-Zahlen) automatisierbar.
3. **Bekannte fragile Quellen als Triage-Trigger** verwenden: z.B. „CACM-Opinion-Stücke als Effekt-Beleg" (wie Simon & Cutts 2012 Pattern #4B) oder „Single-Author-Cites von Margolis/Gonzalez-Barahona/Zhang" (Hybrid-Risk-Marker).
4. **Restliche niedrig-Score-Artikel (≤17)** in Cluster-Audits mit reduzierter Tool-Pflicht (Layer-1-Citation-Stichprobe statt full v3) — bei Befund eskalieren.

Nicht-lineare Strategie reduziert vermutlich Token/Wall-Clock auf ~30-50 % der bisherigen Wellen-Kosten und fängt strukturelle Pattern besser als Score-Heuristik.

## Empfehlung für nächste Schritte

1. **Bulk-Fix Welle 8** in Cluster-Reihenfolge separat committen:
   - Cluster A (4 CRITs): subgoal Li 2025, explorable Tjärnhage 2023, code-review Zhu 2020, code-review de Oliveira Neto 2024 — alle Hybrid-Citations.
   - Cluster B (5 MAJORs): Inhalts-Layer-2-Korrekturen.
   - Cluster C (9 MINORs): Pagination, Verlag, Domänen-Präzisierung, Disclosure.
2. **Cross-Repo-Sweep nach Welle 8** lohnt sich besonders für:
   - **Marwan/Ibrahim/Morrison 2025 SIGCSE Hybrid** in CS-Ed-Methoden-Artikeln (parsons-problems, worked-examples, ki-native-lernumgebungen, llm-integrationsmuster).
   - **arXiv:2407.10322 Gonzalez-Barahona-Pattern** in Social-Annotation-/Perusall-Kontexten (formatives-assessment, kooperatives-lernen).
   - **Zhu Social-Annotation-Vorlage** (real ILS 2020, n=39).
   - **Dunlosky-Klassifikations-Aufwertung** (LOW → moderate) in anderen Lernstrategien-Artikeln.
3. **Methodik-Update minor:** Drei-Felder-Drift (Pattern #16 + #19 + #3 kombiniert) als CRIT-Variante in v3-Methodik-Datei nachtragen — Layer-1-Pflicht auf alle Metadaten-Felder unabhängig prüfen.
4. **Welle 9 Strategiewechsel:** Pattern-Heuristik-Sweep statt Score-getriebene lineare Welle. Konkretes Verfahren:
   - Schritt 1: Repo-weit alle DOIs und arXiv-IDs extrahieren, einmaliger CrossRef-Erstautoren-Abgleich.
   - Schritt 2: alle Body-Cite-Tokens mit numerischen Werten (`d=`, `g=`, `n=`, `QWK=`, „% Effekt") gegen Original-Abstracts.
   - Schritt 3: Restliche niedrig-Score-Artikel (≤17) als Stichprobe.
