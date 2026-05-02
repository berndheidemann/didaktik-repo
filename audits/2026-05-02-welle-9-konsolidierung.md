# Welle 9 — Pattern-Heuristik-Sweep (worked-examples/scaffolding/icap/multimedia/peer-instruction)

**Datum:** 2026-05-02
**Methodik:** v3-Single-Pass mit explizitem Pattern-Heuristik-Schwerpunkt (Layer-1-DOI/arXiv-Erstautoren-Abgleich Pflicht). 5 Subagents parallel, model: opus, ohne Self-Consistency-Pass.
**Auditierte Artikel:** worked-examples, scaffolding, icap-framework, multimedia-gestaltungsprinzipien, peer-instruction.

## Anlass + Hypothese

Nach Welle 8 wurde der Strategie-Wechsel von Score-getriebener Auswahl zu Pattern-Heuristik beschlossen. Welle 9 ist die erste Welle nach diesem Wechsel.

**Auswahl-Logik:** Statt Score-Top-5 wurden 5 Artikel nach kombiniertem Pattern-Heuristik-Profil gewählt:
- **worked-examples** (Score 17): RCT:3 + 7 Self-Citations (höchster Wert) — Pattern #14-Risiko
- **scaffolding** (16): 33 Tab-Zeilen + klass-tab — Pattern #10
- **icap-framework** (16): Chi/Wylie-Self-Citation-Cluster + 7 neuere Cites — Pattern #14 + #2
- **multimedia-gestaltungsprinzipien** (16): 27 Tab-Zeilen + Effektstärken-Tabelle — Pattern #6 + #10
- **peer-instruction** (15): Mazur-Klassiker + n-unbelegt — Pattern #2 + #3

**Hypothese:** Pattern-Heuristik fängt CRITs auch bei niedrigerem Score, die linear-Score-getrieben übersehen worden wären.

**Hypothese bestätigt:** icap-framework (Score 16) hatte 2 CRITs (28 % CRIT-Rate, höchste der Welle 9). Die linear nächste Auswahl-Logik wäre erst nach den ICAP-Cites bei Score 15 angekommen.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| worked-examples | 9 | 7 | 2 | 0 | 0 | 0.92 | 14 (1.6/cite) |
| scaffolding | 9 | 8 | 0 | 1 | 0 | 0.91 | 13 (1.4/cite) |
| icap-framework | 7 | 3 | 2 | 0 | 2 | 0.91 | 16 (2.3/cite) |
| multimedia-gestaltungsprinzipien | 9 | 6 | 3 | 1 | 0 | 0.88 | 14 (1.6/cite) |
| peer-instruction | 6 | 5 | 1 | 0 | 0 | 0.91 | 10 (1.7/cite) |
| **Σ** | **40** | **29** | **8** | **2** | **2** | **0.91** | **67 (1.68/cite)** |

**2 CRITs + 2 MAJORs in 40 Cites = 10 % Befund-Dichte** — vergleichbar mit Welle 7 (9,5 %), niedriger als Welle 8 (20,5 %). CRIT-Konzentration in einem Artikel (icap-framework, beide CRITs).

| Welle | Score-Range | Cites | CRIT | MAJOR | Befund-Dichte |
|---|---|---|---|---|---|
| 3 | 27-40 | 47 | 0 | 7 | 15 % |
| 4 | 27-40 | 63 | 1 | 6 | 11 % |
| 5 | 22-23 | 43 | 5 | 10 | 35 % |
| 6 | 24-29 | 41 | 4 | 3 | 17 % |
| 7 | 21-23 | 42 | 3 | 1 | 9.5 % |
| 8 | 18-20 | 44 | 4 | 5 | 20.5 % |
| **9** | **15-17** | **40** | **2** | **2** | **10 %** |

Niedrigster Score (15-17) zeigt mittelschwere Befund-Dichte — Pattern-Heuristik-Auswahl war notwendig, um 2 CRITs zu fangen, die in einer Score-getriebenen Welle bei Score 16 niedrig priorisiert worden wären.

## Wiederkehrende Fehlermuster (Welle 9)

### Pattern #2 Hybrid-Citation, jetzt 16× repo-systematisch (+2 in Welle 9)

**Beide CRITs in icap-framework** sind Hybrid-Citations:

1. **icap-framework Citation 5 — Thurn et al. 2023 npj Science of Learning**:
   - Wiki-Citation: „Thurn, C. M., Edelsbrunner, P. A., Berkowitz, M., Deiglmayr, A. & **Schumacher, R.** (2023). Questioning central assumptions of the ICAP framework. *npj Science of Learning, 8, **55**.* https://doi.org/10.1038/s41539-023-00197-4"
   - Real (PMC + CrossRef): Letzter Co-Autor ist **Lennart Schalk**, nicht Schumacher. Article-Nummer **49**, nicht 55.
   - **Klassischer Sub-Pattern 2a (Namensvetter-Drift)**: Lennart Schalk und Ralph Schumacher sind beide ETH-Zürich-affilierte Bildungsforschende, die im Mathe-/Naturwissenschafts-Didaktik-Feld publizieren. Das ist die gleiche Variante wie:
     - Welle 6: Brady S.T. (Wake Forest) ↔ Brady L.M. (Univ. Washington) im Belonging-Feld
     - Welle 7: Levant et al. ↔ Para et al. im Imposter-Feld
     - **jetzt 4× systematisch dokumentiert.**
   - Inhaltsbefund: Wiki-Kritikpunkt 4 „Hilfenutzung" wird Thurn zugeschrieben, steht so aber nicht im Paper.

2. **icap-framework Citation 6 — Wu & Schunn 2023 Contemporary Educational Psychology**:
   - Wiki-Citation: „**Wu, L.** & Schunn, C. D. (2023). **Passive, active, constructive, and interactive: An extended ICAP-based coding guide as a framework for the analysis of classroom observations.** Contemporary Educational Psychology, 73, 102160."
   - Real (CrossRef + ScienceDirect): DOI 10.1016/j.cedpsych.2023.102160 + Volume 73 + Pages 102160 → reales Paper „**Passive, active, and constructive engagement with peer feedback: A revised model of learning from peer feedback**" von **Yong Wu** & Schunn (n=367 AP-Schüler:innen, US-High-Schools, Peer-Feedback-Studie).
   - **Neue Hybrid-Variante (Sub-Pattern 2c, NEU)**: DOI/Volume/Pages-Tripel führt zu einem realen Paper, aber **Titel und Topic gehören zu einem anderen Paper** (vermutlich Vosniadou et al. 2023 in *Teaching and Teacher Education* oder Hofkens 2023). Erstautor-Initial **„L." statt „Y." (Yong Wu)**. Wiki-Behauptung „reliables Lehrkräfte-Coding mit Training" gehört nicht zu Wu/Schunn 2023.
   - **Wichtig:** Subtilere Variante als bisher — DOI-Lookup allein hätte den Fehler nicht gefangen, weil DOI auf reales Paper verweist. Der Fehler entsteht, wenn DOI von Paper A mit Titel/Topic von Paper B kombiniert wird.

### Pattern #6 Effektstärken-Generationenfehler (light-Variante)

**multimedia-gestaltungsprinzipien Citation 1 — Mayer 12-Prinzipien-Tabelle**:
- Tabelle Z. 56-71 enthält für Signaling **d ≈ 0,69**.
- Kanonische Werte: **0,41** (Mayer/Fiorella 2014 Cambridge Handbook 2nd ed., 24/28 Tests) bzw. **0,46** (Mayer 2017 *J. Computer Assisted Learning* Review).
- **11/12 anderen Effektstärken stimmen exakt** mit kanonischen Werten überein (Coherence 0.86, Redundancy 0.86, Spatial 1.10, Temporal 1.22, Segmenting 0.79, Pretraining 0.75, Modality 0.76, Multimedia ≈1.35-1.39, Personalization 0.79, Voice 0.74, Image 0.20). Nur Signaling drift.
- Mögliche Erklärung: Verwechslung mit einem anderen Effekt (z.B. Multimedia 0,67) oder Übernahme aus tertiärer Quelle. Pattern #6 light, MAJOR.

**scaffolding Body Z. 128 — Concreteness Fading „d ≈ 0,4–0,7"**:
- Body attribuiert d-Range an **Goldstone & Son 2005** (Einzelstudie, qualitativ, JLS) + **Fyfe et al. 2014** (narrativer/qualitativer systematic review, kein meta-analytischer pooled effect).
- Eine d-Range ist strukturell aus keiner der beiden Quellen ableitbar — Einzelstudien produzieren keine Range, qualitative Reviews aggregieren keine Effektgrößen.
- Pattern #6 + #9 (Studientyp-Klassifikation) kombiniert. Vermutlich aus tertiärer Online-Sekundärquelle übernommen. MAJOR.

### Pattern #4 Variante A: Body-Inline ohne Quellenliste-Eintrag

**multimedia-gestaltungsprinzipien Citations 8+9**:
- Mayer & Jackson 2005 (J. Exp. Psychol. Applied 11(1), 13-18) und Rey 2012 (Educational Research Review) werden inline im Body als Beleg für „seductive details reduzieren Lernerfolg" zitiert.
- Beide Citations sind **real und korrekt attribuiert**, fehlen aber in der Quellenliste am Artikelende.
- Welle-5-Variante des Pattern #4. Beide MINOR.

**worked-examples Body Z. 89**:
- Body zitiert „Renkl, Atkinson, Maier & Staley (2002)" — real, J. Exp. Education 70(4), 293-315, DOI 10.1080/00220970209599510, passend zur Body-Aussage.
- Fehlt in Quellenliste. Hygiene-Hinweis, formal MINOR (vom Subagent als „nicht eskaliert" markiert, weil Citation real ist und korrekt attribuiert).

### Pattern #14 Self-Citation-Cluster (light)

**worked-examples**: Renkl 3×, Margulieux/Morrison/Ericson/Denny je 2× — als Cluster sauber, weil **distinkte Befunde**: jede Cite trägt eine andere These. Kein Doppel-Cite als unabhängige Evidenz für dieselbe Behauptung. Pattern #14 negativ.

**icap-framework**: Chi 2009 + Chi/Wylie 2014 + Chi/Adams 2018 — wird nicht offengelegt, aber im ICAP-Theorie-Artikel inhaltlich gerechtfertigt (Chi-Lineage IST das Framework). MINOR-Level Disclosure-Lücke.

**multimedia-gestaltungsprinzipien**: Mayer 2009 + Mayer 2021 (3rd ed.) + Mayer/Moreno 2003 + Mayer/DaPra 2012 + Fiorella/Mayer 2015 — Mayer-Cluster ist Genrenorm in CTML-Artikel. Pattern #14 nicht audit-eskalationswürdig.

### Pattern #7 Hot-Spot-Inversion (light)

**peer-instruction Citation 3 — Zingaro & Porter 2014**:
- Body „PI wirkt besonders bei **Higher-Order-Fragen**" ist soft-Paraphrase von „largest gains for more challenging PI questions" (kein Bloom-Bezug im Paper).
- Hauptbefund des Papers ist eigentlich **Wert der Instruktor-Intervention nach Peer-Diskussion** (raw gain 22% vs. 14%) — wird im Body unterschlagen.
- Pattern #7-light. MINOR (Volltext paywalled, konservativ).

### Bemerkenswert positiv

- **worked-examples** ist Saubercase auf Layer-1: Alle 9 DOIs CrossRef-bestätigt, kein Hybrid-Citation, kein Erstautor-Drift. **Margulieux 2020 wird ohne d-Wert zitiert** — die in Welle 8 als nicht reproduzierbar identifizierte d≈0,44-Aussage ist strukturell vermieden.
- **peer-instruction** ist Saubercase: Alle 6 DOIs verifiziert. Wichtig: **Porter et al. 2013 „Halving Fail Rates" ist hier korrekt zugeordnet** (Erstautoren-Trio Porter/Bailey-Lee/Simon, „per-course average of 61%, 20%→7%" exakt aus Abstract). Das ist genau die Citation, die in Welle 8 von code-review-unterricht **fälschlich** Simon & Cutts zugeschrieben war — bestätigt die Welle-8-Korrektur.
- **scaffolding** Wood/Bruner/Ross 1976 6-Funktionen-Tabelle: **1:1 mit Original** (recruitment / reduction in degrees of freedom / direction maintenance / marking critical features / frustration control / demonstration). Vorbildlich.
- **icap-framework** Chi & Wylie 2014: Klassifikations-Tabelle entspricht Original-Chi/Wylie-Tabelle 1, kein Pattern #10.
- **multimedia-gestaltungsprinzipien** 11/12 Effektstärken stimmen exakt — nur Signaling drift. Tabellen-Vorlage solide.

## Detail-Findings (CRITs nur)

### CRIT 1: icap-framework — Thurn et al. 2023 Schumacher→Schalk + Article-Nr. 55→49

Wiki-Quellenliste: *„Thurn, C. M., Edelsbrunner, P. A., Berkowitz, M., Deiglmayr, A. & **Schumacher, R.** (2023). Questioning central assumptions of the ICAP framework. *npj Science of Learning, 8, **55**.* https://doi.org/10.1038/s41539-023-00197-4"*
Real (PMC10652002 + CrossRef + PubMed 37968570): **Christian M. Thurn, Peter A. Edelsbrunner, Michal Berkowitz, Anne Deiglmayr & Lennart Schalk** (npj Science of Learning, 8, **Article 49**, 15. Nov. 2023).
**Korrektur:** „Thurn, C. M., Edelsbrunner, P. A., Berkowitz, M., Deiglmayr, A. & **Schalk, L.** (2023). Questioning central assumptions of the ICAP framework. *npj Science of Learning, 8*, **49**. https://doi.org/10.1038/s41539-023-00197-4". Plus Wiki-Inhaltsaussage „Punkt 4 Hilfenutzung" sollte entweder belegt oder entfernt werden — Thurn et al. nennen die vier Themen overt unreliability, hierarchy lacks empirical support, context/timing matters, framework neglects covert processes.

### CRIT 2: icap-framework — Wu & Schunn 2023 Hybrid-Variante (DOI stimmt, Titel/Topic gehören zu anderem Paper)

Wiki-Quellenliste: *„**Wu, L.** & Schunn, C. D. (2023). **Passive, active, constructive, and interactive: An extended ICAP-based coding guide as a framework for the analysis of classroom observations.** Contemporary Educational Psychology, 73, 102160."*
Real (CrossRef + ScienceDirect): DOI 10.1016/j.cedpsych.2023.102160 → **Yong Wu & Christian D. Schunn (2023). Passive, active, and constructive engagement with peer feedback: A revised model of learning from peer feedback. Contemporary Educational Psychology, 73, 102160.** Studie über Peer-Feedback-Lernen (5 US-High-Schools, n=367 AP-Schüler:innen) — NICHT über Classroom-Observation-Coding-Reliabilität.
**Mögliche tatsächliche Quelle für die Wiki-Behauptung („reliables Lehrkräfte-Coding mit Training"):** Vosniadou, S. et al. (2023) in *Teaching and Teacher Education* oder Hofkens 2023.
**Korrektur:** Cite muss komplett umgeschrieben werden. Entweder (a) Wu/Schunn 2023 mit korrektem Titel + Peer-Feedback-Bezug zitieren und Wiki-Aussage anpassen, oder (b) Cite ersetzen durch korrekte Quelle für Lehrkräfte-Coding-Reliabilität.

## MAJOR-Findings (2)

| # | Datei | Befund | Korrektur |
|---|---|---|---|
| 1 | scaffolding | Body Z. 128 „d ≈ 0,4–0,7 auf Transfer in Mathematik und MINT" attribuiert an Goldstone/Son 2005 (Einzelstudie) + Fyfe 2014 (qualitativer Review). Strukturell unmöglich aus diesen Quellen ableitbar. | Range entfernen oder durch Aussage „in Einzelstudien gefundene Effekte" ersetzen + konkrete Primärstudien (z.B. Fyfe et al. 2012 *Concreteness fading promotes transfer of mathematical knowledge*) ergänzen |
| 2 | multimedia-gestaltungsprinzipien | Tabelle Z. 56-71 nennt Signaling **d ≈ 0,69**. Real **0,41** (Mayer/Fiorella 2014) bzw. **0,46** (Mayer 2017 JCAL) | Wert auf 0,41 (alternativ 0,46) korrigieren mit Quellen-Hinweis |

## MINOR-Backlog (8)

| Datei | Befund | Korrektur |
|---|---|---|
| worked-examples | Atkinson 2000 Titel verkürzt („…Instructional Principles" statt „…from the Worked Examples Research") | Vollen Untertitel ergänzen |
| worked-examples | Denny 2008 Z. 121 — Über-Attribution für Cognitive-Load-Befund (gehört eher zu Ericson 2022) | Cite-Klammer schärfen: Cognitive-Load primär Ericson 2022, Denny 2008 für Klausurfragen-Eignung |
| worked-examples | Renkl/Atkinson/Maier/Staley 2002 im Body, fehlt in Quellenliste | In Quellenliste ergänzen (DOI 10.1080/00220970209599510) |
| icap-framework | Chi/Adams 2018 — Co-Autorin Na Li fehlt in Citation | Vollständige 13er-Autorenliste |
| icap-framework | Chi/Adams 2018 — Inhalts-Frame geglättet („je präziser, desto größer Lerngewinn" → Original: „minimal teacher success but C>A bei Schüler:innen") | Frame an Originalbefund anpassen |
| icap-framework | Wiggins 2017 d ≈ 0,2-0,4 nicht volltext-verifiziert (SAGE 403) | Volltext-Zugang oder konservative kategoriale Aussage |
| multimedia-gestaltungsprinzipien | Cambridge Handbook 3rd ed. (2021) — Co-Editor Fiorella fehlt | „Mayer, R. E., & Fiorella, L. (Eds.) (2021)" |
| multimedia-gestaltungsprinzipien | Um et al. 2012 d ≈ 0,60 nicht volltext-verifiziert; Mayer & Jackson 2005 + Rey 2012 inline ohne Quellenliste-Eintrag | Volltext-Verifikation oder kategorial; beide Inline-Cites in Quellenliste ergänzen |
| peer-instruction | Zingaro & Porter 2014 „Higher-Order-Fragen"-Paraphrase (Original: „more challenging questions"; Hauptbefund Instruktor-Intervention) | Schärfen: „PI-Vorteil bei anspruchsvolleren ConcepTests, plus Wert der Instruktor-Intervention" |

## Cross-Repo-Verdacht (Welle 9)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Thurn et al. 2023 Schumacher→Schalk Co-Autor-Drift | `grep -ri 'Thurn.*Schumacher\|s41539-023-00197-4\|Article 55' wiki/` | mittel — könnte in metakognition/icap/multimedia-Cluster wiederkehren |
| Wu & Schunn 2023 Hybrid (DOI stimmt, Titel/Topic falsch) | `grep -ri '102160\|Wu, L.*Schunn\|extended ICAP-based coding guide' wiki/` | niedrig (Einzelfall) |
| Mayer Signaling d ≈ 0,69 (real 0,41) | `grep -rE 'Signaling.*0[,.]69\|0[,.]69.*Signaling' wiki/` | mittel — Mayer-12-Prinzipien-Tabelle könnte in cognitive-load-theory, interaktive-lernumgebungen, multimedia-Cluster wiederverwendet sein |
| Concreteness Fading „d≈0,4–0,7" mit Goldstone+Fyfe | `grep -rE 'Goldstone.*Son.*2005\|Fyfe.*2014\|d ?[≈=] ?0[,.]4 ?[–-] ?0[,.]7' wiki/` | mittel — concreteness-fading-Pattern, evtl. in contrasting-cases / multimedia-Artikeln |
| Wiggins/Eddy/Grunspan/Crowe 2017 AERA Open ICAP | `grep -ri 'Wiggins.*Eddy\|Wiggins.*ICAP' wiki/` | niedrig |
| Cambridge Handbook 3rd ed. Co-Editor-Drift (nur Mayer statt Mayer+Fiorella) | `grep -ri 'Cambridge Handbook of Multimedia Learning.*2021\|Cambridge Handbook.*3rd' wiki/` | niedrig |
| Atkinson 2000 RER Titel verkürzt | `grep -ri 'Atkinson.*2000\|Learning from Examples: Instructional Principles' wiki/` | niedrig |
| Renkl/Atkinson/Maier/Staley 2002 J. Exp. Education | `grep -ri 'Renkl.*Atkinson.*Maier\|Renkl.*Staley' wiki/` | niedrig |
| Body-Inline ohne Quellenliste (Pattern #4 Variante A) | `grep -rE '\\([A-Z][a-z]+ &amp; [A-Z][a-z]+,? [12][0-9]{3}\\)' wiki/` + Quellenliste-Abgleich | mittel — strukturelles Disziplin-Pattern, alle Theorie-Artikel scannenswert |

## Robust gesicherte CRIT/MAJOR-Liste (Welle-9-Korrektur-Backlog)

| # | Datei | Severity | Korrektur |
|---|---|---|---|
| 1 | icap-framework | **CRITICAL** | Thurn et al. 2023 → Schumacher streichen, Schalk einsetzen; Article-Nr. 55 → 49; „Punkt 4 Hilfenutzung" entweder belegen oder entfernen |
| 2 | icap-framework | **CRITICAL** | Wu & Schunn 2023 → Erstautor-Initial L. → Y. (Yong Wu); Titel komplett auf „Passive, active, and constructive engagement with peer feedback" korrigieren oder Cite durch Vosniadou-2023-Quelle ersetzen |
| 3 | scaffolding | MAJOR | „d ≈ 0,4–0,7" Range aus Goldstone/Son 2005 + Fyfe 2014 streichen |
| 4 | multimedia-gestaltungsprinzipien | MAJOR | Signaling d ≈ 0,69 → 0,41 (oder 0,46 mit Mayer 2017 JCAL als Quelle) |

Plus 8 MINORs (siehe Backlog oben).

## Methodik-Limitierungen + neue Beobachtungen Welle 9

- **Pattern-Heuristik-Auswahl bestätigt:** icap-framework (Score 16) hatte 2 CRITs. Bei reiner Score-Auswahl wäre der Artikel erst nach worked-examples + scaffolding (Score 17, beide ohne CRIT) und vor multimedia + peer-instruction (16 + 15) gekommen — die CRIT-Konzentration in icap-framework wäre möglicherweise erst spät entdeckt worden. Pattern-Heuristik (Self-Citation-Cluster + neue arXiv/DOI-Cites) hat den Brennpunkt direkt aufgefunden.
- **Sub-Pattern 2c (NEU): DOI-Volume-Pages stimmen, Titel und Topic gehören zu anderem Paper** (Wu & Schunn 2023). Subtilere Variante als Sub-Pattern 2a (Co-Autor-Drift) und 2b (interne Misattribution). DOI-Lookup allein hätte den Fehler nicht gefangen — Volltext-Vergleich Titel ↔ Wiki-Behauptung war notwendig. Methodik-Update für v3-Methodik-Datei: bei jedem DOI-Lookup zusätzlich den **Titel im CrossRef-Response** gegen die Wiki-Citation und die **Body-Behauptung** abgleichen.
- **Sub-Pattern 2a (Namensvetter-Drift) jetzt 4× systematisch dokumentiert** (Brady SciAdv W6, Levant Frontiers W7, Gomes-de-Oliveira-Neto/Gonzalez-Barahona W8 als Variante, jetzt Schalk/Schumacher W9). Stabil als wiederkehrendes Pattern.
- **Triage-Tabellen-Zähler-Bug:** scaffolding-Triage zeigte 33 Tab-Zeilen, real sind es 23 (5 Tabellen mit 6+4+4+5+4 Zeilen). Triage-Skript zählt vermutlich Frontmatter-related-Liste oder Header-Zeilen mit. Klein, nicht audit-relevant, aber Triage-Schärfung möglich.
- **Welle-8-Margulieux-d≈0,44-Sweep-Validation:** worked-examples zitiert Margulieux 2020 ohne d-Wert — Welle-8-Befund ist nicht in worked-examples eingedrungen. Cross-Repo-Sweep 5 hatte den Treffer in meta-analysen-cs-education bereits gefangen.
- **Welle-8-Porter-Halving-Sweep-Validation:** peer-instruction zitiert Porter et al. 2013 korrekt mit Erstautoren-Trio + 61%-Wert. Welle-8-Korrektur (Simon & Cutts „verdoppelt Trace-Aufgaben" → Porter 2013) war richtig.

## Empfehlung für nächste Schritte

1. **Bulk-Fix Welle 9** in Cluster-Reihenfolge separat committen:
   - Cluster A (2 CRITs): icap-framework Thurn + Wu&Schunn — beides Hybrid-Citations.
   - Cluster B (2 MAJORs): scaffolding Range entfernen, multimedia Signaling 0,41.
   - Cluster C (8 MINORs): Pagination, Co-Editor, Quellenliste-Vervollständigungen.
2. **Cross-Repo-Sweep 6 nach Welle 9** lohnt sich besonders für:
   - **Mayer Signaling 0,69 in anderen Effektstärken-Tabellen** (cognitive-load-theory, interaktive-lernumgebungen)
   - **Thurn/Schumacher-Pattern** in metakognition/icap-Cluster
   - **Concreteness Fading d-Range** in concreteness-fading.md (falls existiert), contrasting-cases, multimedia-Artikeln
   - **Body-Inline ohne Quellenliste** repo-weit (strukturelles Disziplin-Pattern)
3. **Methodik-Update minor:** Sub-Pattern 2c (DOI stimmt, Titel/Topic falsch) in v3-Methodik-Datei dokumentieren — Layer-1-Pflicht erweitern auf Titel-Match aus CrossRef-Response.
4. **Welle 10:** Bei weiterer Pattern-Heuristik-Strategie nun **Body-Inline-vs-Quellenliste-Sweep** als eigene Welle aufsetzen (regulärer Ausdruck `\([A-Z][a-z]+ &amp; [A-Z][a-z]+,? [12][0-9]{3}\)` gegen Quellenliste-Sektion). Plus DOI/arXiv-Bulk-Lookup für die Restartikel-Citations.
