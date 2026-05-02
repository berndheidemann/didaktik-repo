# Welle 14 — Zweite Welle Praxis-/Methoden-Sweep (Option B)

**Datum:** 2026-05-02
**Methodik:** v3-Single-Pass mit Welle-13-Erkenntnissen (Hybrid-Risk + Pop-Wissenschafts-Folklore + Verwaltungs-Cluster). 5 zufällige Subagents parallel auf Stichprobe aus dem Praxis-/Methoden-Pool (13 verbleibende Artikel nach Welle 13).
**Zufalls-Seed:** deterministisch (`welle-14-2026-05-02-deterministic-seed`).
**Auditierte Artikel:** datenschutz-lernumgebungen, spaced-repetition-algorithmen, gamification-it-unterricht, use-modify-create, aufgabentypen-interaktive-lernumgebungen.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| gamification-it-unterricht | 3 | 2 | 0 | 1 | 0 | 0.94 | 7 (2.33/cite) |
| use-modify-create | 3 | 1 | 0 | 2 | 0 | 0.93 | 8 (2.67/cite) |
| datenschutz-lernumgebungen | 8 | 4 | 1 | 2 | 1 | 0.91 | 11 (1.38/cite) |
| spaced-repetition-algorithmen | 6 | 5 | 1 | 0 | 0 | 0.92 | 12 (2.00/cite) |
| aufgabentypen-interaktive-lernumgebungen | 8 | 7 | 1 | 0 | 0 | 0.93 | 10 (1.25/cite) |
| **Σ** | **28** | **19** | **3** | **5** | **1** | **0.93** | **48 (1.71/cite)** |

**1 CRIT + 5 MAJOR + 3 MINOR in 28 Cites = 21,4 % CRIT+MAJOR-Dichte, 32 % Gesamt-Befund-Dichte.**

| Welle | Cites | CRIT | MAJOR | Befund-Dichte (CRIT+MAJOR) |
|---|---|---|---|---|
| 11 | 33 | 0 | 7 | 21 % |
| 12 | 19 | 1 | 2 | 16 % |
| 13 | 37 | 0 | 5 | 13.5 % |
| **14** | **28** | **1** | **5** | **21,4 %** |

**Welle 14 ist deutlich dirtier als Welle 13.** Befund-Dichte (21,4%) liegt auf Welle-11-Niveau. Hauptursache: ein einzelner Artikel (datenschutz-lernumgebungen) trägt 4 von 9 Befunden — Verwaltungs-Cluster mit drei fabrizierten/misattribuierten Cites.

## Pattern-Verteilung Welle 14

| Pattern | Treffer Welle 14 | Beispiel |
|---|---|---|
| #5 fabrizierte Citation | 1 | EDPB Education-Context-Guidelines 2023 (existieren nicht) |
| #12 Verwaltungs-Cite-Trägerschafts-/Titel-Misattribution | 2 | BayLfD „Orientierungshilfe" 2024 (real FAQ); BfDI „Tätigkeitsbericht zum Bildungssektor" (existiert separat nicht) |
| #2 Hybrid-Citation (Titel + Venue) | 1 | López-Pernas FIE 2019 → real IEEE Access 7, 31723-31737 |
| #16 Datierungs-Drift | 1 | Franklin et al. SIGCSE **2020** → real SIGCSE **2017** |
| #17 Genre-Überschreibung / Inhalts-Reframing | 1 | Lytle 2019: Wiki „drei Progressionen, Verständnis/Frustration" → real 2 Bedingungen, perceived difficulty + ownership |
| #2a Erstautor-Drift / Doppelname | 1 | Hoofnagle 2019 → real **van der Sloot** Erstautor; „Borgesius" → „Zuiderveen Borgesius" |
| #16 mild | 2 | Ericson 2022 „677 initial" (real „677 nach Dedup"); FSRS-Versions-Drift FSRS-3 → FSRS-5/6 |

## Wichtige systematische Erkenntnisse

### 1. Welle-1-Pattern-#12-Verwaltungs-Cluster reproduziert (NEU für Restpool)

`datenschutz-lernumgebungen.md` ist nach v1-Welle-1 (Stichprobe-Evidenz-Block) der erste Welle-14-Audit, der das Pattern-#12-Hot-Spot-Profil (fabrizierte/misattribuierte Verwaltungs-Cites) reproduziert. 3 von 8 Cites in einem einzigen Artikel sind Pattern #5/#12-Befunde — Welle 1 hatte sehr ähnliche Trefferquoten in Verwaltungs-Cluster-Artikeln (KMK/BfDI-Misattribution).

**Hypothese:** Verwaltungs-Cite-Cluster (DSK/EDPB/BfDI/LfDI) tragen strukturell höheres Fabrikations- und Misattribution-Risiko als peer-reviewte Cites — weil die offiziellen Veröffentlichungslisten weniger maschinen-lesbar (CrossRef ↔ DSK-Webseite-Liste) und die Themen-/Titel-Kombinationen plausibel klingen.

### 2. Conference-Cite-Hot-Spot bestätigt sich in Welle 14

3 von 5 Welle-14-MAJORs sind Conference-Cite-Probleme:
- López-Pernas FIE 2019 → IEEE Access (Pattern #2 + #19)
- Franklin SIGCSE 2020 → SIGCSE 2017 (Pattern #16 Year-Drift)
- Lytle ITiCSE 2019 Inhalts-Reframing (Pattern #17)

In Kombination mit Welle 13 (Sentance/Waite/Kallia 2019 WiPSCE → SIGCSE 2019; Michaeli/Romeike 2019 WiPSCE/EDUCON; Liew/Treagust 1998 AERA/AARE) ist das Conference-Cite-Risiko-Profil im Restpool weiterhin systematisch.

### 3. „WiPSCE-2019-Cite-Magnet" pausiert

Nach Welle 12 (Sentance) + Welle 13 (Michaeli/Romeike) hatte sich der WiPSCE-2019-Cite-Magnet als systematisches Pattern dargestellt. Welle 14 hat keinen WiPSCE-2019-Befund — hauptsächlich, weil unter den 5 Welle-14-Artikeln keiner WiPSCE 2019 zitiert. Das Pattern ist also nicht „repariert", sondern die Stichprobe hat es nicht getroffen.

### 4. Pattern #2a Co-Autor-/Doppelname-Drift häufiger als erwartet

3 von 5 Welle-14-Artikeln tragen Erstautor-/Doppelname-Drift in mindestens einer Cite:
- datenschutz-lernumgebungen: Hoofnagle → van der Sloot Erstautor + Zuiderveen Borgesius
- (Welle-13-Spillover bereits gefixt: Bjork & Bjork 2011)

Konsistent mit Welle-13-Befund (DeMaria Barry, Bjork & Bjork 2011).

## Detail-Findings

### CRIT 1: datenschutz-lernumgebungen — EDPB Education-Guidelines 2023

**Wiki:** *„European Data Protection Board (2023). Guidelines on the Application of the GDPR in the Digital Education Context."*
**Real:** EDPB hat 2023 nur Guidelines 1/2023 (LED Art. 37) und 2/2023 (ePrivacy Art. 5(3)) veröffentlicht. Eine Education-Context-Guideline existiert nicht. EDPB-Work-Programme 2023-2024 enthält keine Education-Context-Guidelines.
**Severity:** CRITICAL (Pattern #5 fabriziert)
**Korrektur:** Citation streichen oder durch real existierende DSGVO-Education-Quelle ersetzen (z.B. EDPB Statement 02/2025 zu Age Assurance, oder Article 29 Working Party WP 235 zu Data Protection in Education).

### MAJOR 1: datenschutz-lernumgebungen — BayLfD „Orientierungshilfe" 2024

**Wiki:** *„Bayerischer Landesbeauftragter für den Datenschutz (2024). Orientierungshilfe: Datenschutz an Schulen in Bayern."*
**Real:** BayLfD veröffentlicht zum Schul-Datenschutz: (a) FAQ „Datenschutz an bayerischen öffentlichen Schulen" (datenschutz-bayern.de/datenschutzreform2018/FAQ_Schulen.pdf, fortlaufend); (b) Arbeitspapiere zu Schülerunterlagen + Foto/Video-Aufnahmen. Eine eigenständige 2024-„Orientierungshilfe" mit diesem Titel ist in der Veröffentlichungsliste nicht zu finden.
**Severity:** MAJOR (Pattern #12 + #16)
**Korrektur:** Cite präzisieren auf real existierendes BayLfD-Dokument (FAQ_Schulen.pdf oder konkrete Arbeitspapier).

### MAJOR 2: datenschutz-lernumgebungen — BfDI „Tätigkeitsbericht zum Bildungssektor"

**Wiki:** *„Bundesbeauftragte für den Datenschutz und die Informationsfreiheit (BfDI) (2023). Tätigkeitsbericht zum Bildungssektor."*
**Real:** BfDI publiziert genau einen jährlichen Tätigkeitsbericht (sektorenübergreifend). 32. TB 2023 wurde am 20.03.2024 vorgestellt. Ein separater Bildungssektor-Bericht existiert nicht. BfDI-Zuständigkeit deckt überwiegend Bundesbehörden ab; Schul-Datenschutz fällt in Länderkompetenz.
**Severity:** MAJOR (Pattern #12 + #16)
**Korrektur:** Cite präzisieren auf konkretes Kapitel im 32. TB 2023 oder durch LfDI-/DSK-Dokument ersetzen.

### MAJOR 3: gamification-it-unterricht — López-Pernas Hybrid-Citation

**Wiki:** *„López-Pernas, S. et al. (2019). Escaping from the Classroom: Educational Escape Rooms in CS. Proceedings of FIE 2019."*
**Real:** *„Examining the Use of an Educational Escape Room for Teaching Programming in a Higher Education Setting"*. **IEEE Access, 7, 31723-31737** (DOI 10.1109/ACCESS.2019.2902976). Co-Autoren: Gordillo, Barra, Quemada.
**Severity:** MAJOR (Pattern #2 + #19)
**Korrektur:** *„López-Pernas, S., Gordillo, A., Barra, E., & Quemada, J. (2019). Examining the use of an educational escape room for teaching programming in a higher education setting. IEEE Access, 7, 31723-31737. https://doi.org/10.1109/ACCESS.2019.2902976"*

### MAJOR 4: use-modify-create — Lytle 2019 Inhalts-Reframing

**Wiki Z. 47:** *„Lytle et al. (2019) verglichen drei Lesson-Progressionen (UMC, Use→Create, direkte Create) und fanden: UMC führte zu signifikant höherem Verständnis und niedrigerer Frustration."*
**Real:** Studie verglich nur **zwei** Bedingungen (UMC vs. Control). Outcome-Variablen waren **perceived difficulty + Artefakt-Ownership**, nicht Verständnis (Post-Test) und Frustration.
**Severity:** MAJOR (Pattern #17 Genre-Überschreibung)
**Korrektur:** Body-Aussage umschreiben auf 2 Bedingungen + perceived-difficulty/ownership-Befund.

### MAJOR 5: use-modify-create — Franklin et al. Year-Drift

**Wiki:** *„Franklin, D., Skifstad, G. ... (2020). Using Upper-Elementary Student Performance to Understand Conceptual Sequencing in a Blocks-based Curriculum. Proceedings of SIGCSE 2020."*
**Real:** SIGCSE **2017**, pp. 231-236 (DOI 10.1145/3017680.3017760). 3 Jahre falsch datiert.
**Severity:** MAJOR (Pattern #16 Year-Drift)
**Korrektur:** *„Franklin, D., Skifstad, G., Rolock, R., Mehrotra, I., Ding, V., Hansen, A., Weintrop, D., & Harlow, D. (2017). Using upper-elementary student performance to understand conceptual sequencing in a blocks-based curriculum. Proceedings of SIGCSE 2017, 231-236. https://doi.org/10.1145/3017680.3017760"*

## MINOR-Backlog

| Datei | Befund | Pattern | Korrektur |
|---|---|---|---|
| datenschutz-lernumgebungen | Hoofnagle 2019: Erstautor-Drift (real van der Sloot zuerst) + „Borgesius" → „Zuiderveen Borgesius" Doppelname | #2a | „van der Sloot, B., Hoofnagle, C. J., & Zuiderveen Borgesius, F. J. (2019). ..." |
| spaced-repetition-algorithmen | FSRS-Formel-Drift: Wiki zeigt FSRS-3-Form `R = (1 + t/(9S))^(-1)` mit 17 Parametern, aktuell ist FSRS-4.5/5/6 mit `R = (1 + (19/81)·t/S)^(-0.5)` und 19 Parametern (Anki-Stable seit ~mid-2024) | #16 Versions-Drift | Formel + Parameter-Zahl auf FSRS-5/6 updaten oder explizit als FSRS-3 markieren |
| aufgabentypen-interaktive-lernumgebungen | Ericson 2022 Body: „677 initial identifiziert" — real „677 nach Dedup" (152 Duplikate vorher entfernt aus ~829) | #16 mild | „677 (nach Dedup)" oder konkretem Endbestand der inkludierten Studien |

Plus Body-Inline ohne Quellenliste-Eintrag (datenschutz, Pattern #4-A): EuGH Breyer 2016 (C-582/14, Urteil 19.10.2016).

## Cross-Repo-Verdacht (Welle 14)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| EDPB-Education-Guidelines 2023 Fabrikation | `grep -ri 'EDPB.*Education\|EDPB.*Digital Education\|Guidelines.*GDPR.*Education' wiki/` | mittel (Datenschutz-Cluster) |
| BfDI-„Tätigkeitsbericht zum Bildungssektor" Fabrikation | `grep -ri 'BfDI.*Bildung\|Tätigkeitsbericht.*Bildung' wiki/` | niedrig |
| BayLfD-Orientierungshilfe 2024 Datierungs-Drift | `grep -ri 'Bayerischer Landesbeauftragter.*2024\|BayLfD.*2024' wiki/` | niedrig |
| Hoofnagle-vs-van-der-Sloot Erstautor-Drift | `grep -ri 'Hoofnagle\|Borgesius' wiki/` | niedrig |
| López-Pernas FIE 2019 vs. IEEE Access 2019 | `grep -ri 'López-Pernas\|Lopez-Pernas\|Escaping from the Classroom' wiki/` | niedrig |
| Lytle 2019 „drei Progressionen / Verständnis / Frustration"-Re-Skinning | `grep -ri 'Lytle.*201[89]' wiki/` | niedrig |
| Franklin SIGCSE 2017 vs. 2020 Year-Drift | `grep -ri 'Franklin.*Skifstad\|Using Upper-Elementary' wiki/` | niedrig |
| FSRS-Formel-Drift (FSRS-3 vs FSRS-5/6) | `grep -ri 'FSRS\|(1 + t/' wiki/` | mittel (potenziell in spaced-repetition-scheduler-bauen) |
| Ericson 2022 „677 initial" Inhalts-Drift | `grep -ri 'Ericson.*2022\|Parsons Problems and Beyond' wiki/` | niedrig |
| Body-Inline EuGH Breyer ohne Quellenliste | `grep -ri 'Breyer.*2016\|C-582/14' wiki/` | niedrig |

## Methodik-Erkenntnisse

1. **Welle-1-Pattern-#12-Hot-Spot reproduziert sich in datenschutz-Artikeln**: 3 von 8 Cites in datenschutz-lernumgebungen sind fabrizierte/misattribuierte Verwaltungs-Cites — gleiche Struktur wie Welle 1 KMK/BfDI-Befunde. Verwaltungs-Cluster bleibt strukturell hochrisiko.
2. **Conference-Cite-Risiko bleibt systematisch**: 3/5 Welle-14-MAJORs sind Conference-Cite-Probleme. Plus 2/5 Welle-13-MAJORs (Sentance/Michaeli WiPSCE-Cluster). Conference-Citations brauchen strikteres Layer-1 (DOI + Pages + Co-Autoren-Match) als peer-reviewte Journals.
3. **Pattern #2a Co-Autor-/Doppelname-Drift ist häufiger als gedacht**: in Welle 13 + 14 jetzt 3× repo-systematisch (DeMaria Barry, Bjork-Erstautor, Hoofnagle/van der Sloot). Methodik-Empfehlung: Co-Autor-Match in Layer 1 standardisiert durchführen.
4. **Lebende Web-Resources (FSRS, H5P) bringen Versions-Drift-Risiko**: nicht klassische Pattern-#5/#16-Bibliografie-Drift, sondern Inhalts-Drift. Bei Methoden-/Algorithmus-Artikeln: Versions-Disclosure (FSRS-3 vs FSRS-5/6) explizit machen.

## Korrektur-Backlog für Welle-14-Bulk-Fix

**Cluster CRIT (zuerst, eigener Commit):**
1. datenschutz-lernumgebungen.md — EDPB Guidelines 2023 streichen oder ersetzen

**Cluster MAJOR:**
2. datenschutz-lernumgebungen.md — BayLfD + BfDI Verwaltungs-Cites korrigieren
3. gamification-it-unterricht.md — López-Pernas Hybrid auf IEEE Access umstellen
4. use-modify-create.md — Lytle Body-Reframing + Franklin Year-Drift

**Cluster MINOR:**
5. datenschutz-lernumgebungen.md — Hoofnagle/van der Sloot Erstautor-Drift + EuGH Breyer in Quellenliste
6. spaced-repetition-algorithmen.md — FSRS-Versions-Disclosure
7. aufgabentypen-interaktive-lernumgebungen.md — Ericson „677 nach Dedup"

## Verbleibender Praxis-/Methoden-Pool

Nach Welle 14 verbleiben **8 Praxis-/Methoden-Artikel** (10 methode + 2 praxis - 13 W13-Audit - 5 W14-Audit). Welle 15 schließt damit den Methoden-/Praxis-Sweep ab (5 Artikel + 3 Rest).
