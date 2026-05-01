# Welle 6 — EiPE/Belonging/Tutoring/Twine/Evaluation (v3-Single-Pass)

**Datum:** 2026-05-01
**Methodik:** v3-Single-Pass, 5 Subagents parallel, model: opus, ohne Self-Consistency-Pass.
**Auditierte Artikel:** explain-in-plain-english, evaluation-lernumgebungen, interactive-fiction-twine, ki-gestuetztes-tutoring, belonging-interventionen.

## Anlass + Hypothese

Vierte v3-Welle. Score-Range 24-29 — leicht über Welle 5 (22-23) und deutlich unter Welle 3+4 (27-40). Hypothese nach Welle 5: niedriger-Score-Artikel haben höhere CRIT-Rate, weil weniger Sorgfalt bei Erstellung. **Hypothese bestätigt** — Welle 6 produziert 4 CRITs (zwei Hybrid-Citations in `belonging-interventionen`, eine fabrizierte Citation in `ki-gestuetztes-tutoring`, eine Hybrid-Misattribution in `explain-in-plain-english`). Ähnlich hohe Befund-Dichte wie Welle 5.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| explain-in-plain-english | 10 | 7 | 2 | 1 | 1 | 0.92 | 14 (1.4/cite) |
| evaluation-lernumgebungen | 7 | 6 | 1 | 0 | 0 | 0.93 | 12 (1.7/cite) |
| interactive-fiction-twine | 12 | 8 | 2 | 2 | 0 | 0.88 | 17 (1.4/cite) |
| ki-gestuetztes-tutoring | 5 | 4 | 0 | 0 | 1 | 0.93 | 13 (2.6/cite) |
| belonging-interventionen | 7 | 5 | 0 | 0 | 2 | 0.93 | 11 (1.6/cite) |
| **Σ** | **41** | **30** | **5** | **3** | **4** | **0.92** | **67 (1.63/cite)** |

**4 CRITs + 3 MAJORs in 41 Cites = 17 % Befund-Dichte.** Welle-Vergleich:

- Welle 3: 47 Cites / 0 CRIT / 7 MAJOR — 15 %
- Welle 4: 63 Cites / 1 CRIT / 6 MAJOR — 11 %
- Welle 5: 43 Cites / 5 CRIT / 10 MAJOR — 35 %
- **Welle 6: 41 Cites / 4 CRIT / 3 MAJOR — 17 %**

Welle 6 liegt zwischen Welle 4 und Welle 5. Niedriger als Welle 5, aber deutlich CRIT-lastiger als Welle 3+4. Score-Triage bleibt strukturell schwach für CRIT-Detektion — Hybrid-Citations und fabrizierte Citations werden nicht zuverlässig durch das Score-Schema getriggert.

## Wiederkehrende Fehlermuster (Welle 6)

### Dominantes Pattern: Hybrid-Citations (4× in 41 Cites)

Pattern #2 aus der Methodik (echter Titel/Plattform/DOI + falsche Autoren) ist in Welle 6 das mit Abstand häufigste CRIT/MAJOR-Pattern:

1. **belonging-interventionen Citation 5** — *Brady, L. M., Reeves, S. L., Garcia, J. et al. (2020). Science Advances 6(18).* DOI/Titel/Jahr/Venue/Inhalt korrekt; Autoren komplett anders: real **Shannon T. Brady, Geoffrey L. Cohen, Shoshana N. Jarvis, Gregory M. Walton**. **Neue Hybrid-Variante:** Verwechslung mit anderer realer Forscherin gleichen Nachnamens (Laura M. Brady ist ebenfalls Belonging-Forscherin).
2. **belonging-interventionen Citation 7** — *Hannover & Zander (2020). Unterrichtswissenschaft 48(3), 353-377.* Titel/Jahr/Journal korrekt; Autoren komplett anders: real **Björn Kröske** (single author), Issue 48(2), pp. 243-272. Hannover und Zander sind ebenfalls reale deutsche Belonging-Forscherinnen.
3. **interactive-fiction-twine Citation 9** — *Kotchian & McCall (2022). Programming Historian.* Titel/Plattform stimmen; Lektion ist real von **Gabi Kirilloff (2021)** verfasst. Kotchian/McCall werden **innerhalb der Lektion** als zitierte Praxis-Beispiele erwähnt.
4. **explain-in-plain-english Citation 8** — *Denny et al. (2024) ITiCSE QWK > 0,7 + frage-spezifisches Rubric besser als generisches.* Citation an sich korrekt; aber Body Z. 148 schreibt Denny zwei Befunde zu, die nicht im Paper stehen — QWK-Wert existiert nicht (real: Cohen's κ = 0,79 Inter-Coder), und Rubric-Vergleich stammt aus **Pathak et al. 2025** (gleicher Artikel, Z. 96 korrekt attribuiert; Z. 148 falsch dupliziert). **Interne Misattribution:** Befund wird im selben Artikel zweimal verwendet, einmal richtig, einmal falsch.

Hybrid-Citation-Repo-Zähler: jetzt 4× Welle 5 + 4× Welle 6 + 4 frühere = **12× systematisch dokumentiert**. **Stärkstes wiederkehrendes Pattern im Repo.**

### Pattern: Komplett fabrizierte Citation (1×)

5. **ki-gestuetztes-tutoring Citation 5** — *Presti et al. (2024). Student Over-Reliance on AI Code Generation Tools. ITiCSE 2024.* In DBLP, ACM-DL, Google Scholar, arXiv null Treffer. Die im Body zitierte 30%-Zahl gibt es in der Literatur unter anderen Autoren (ICETC '24, Working Group Reports). Ähnlich wie Welle 5 (Lancaster/Cotton SIGITE, Goel AI Magazine).

### Pattern: Hot-Spot-Inversion light / didaktischer Spin (1×)

6. **interactive-fiction-twine Citation 4** — *Ho et al. 2025 IEEE S&P als Beleg für "Debrief = Wirkfaktor".* Paper-Konklusion ist breiter: "anti-phishing training in current commonly deployed forms is unlikely to offer significant practical value". Reflexions-Mehrwert-These ist plausible Lehrer-Eigeninterpretation, kein Paper-Befund. Studientyp (RCT, N=19.500, 8 Monate) korrekt.

### Pattern: Venue-Drift Journal ↔ Conference (1×)

7. **explain-in-plain-english Citation 7** — *Fowler et al. (2022) ITiCSE 2022 Proceedings.* Real *Computer Science Education* (Journal, T&F) 32(3), 355-383 — DOI 10.1080/08993408.2022.2079866. Plus Co-Autor-Drift "Hassan, C." → "Hassan, M." (Mohammed).

### Pattern: Co-Autor-Drift / Pagination-Drift (3× MINOR)

8. **explain-in-plain-english Citation 5** — Chen 2020: 5-Autoren-Paper als 4-Autoren-Cite zitiert (Rajarshi Haldar fehlt).
9. **explain-in-plain-english Citation 9** — Kerslake 2025: Erstautor-Initial "E." statt korrekt "C." (Chris Kerslake).
10. **evaluation-lernumgebungen Citation 3** — Reeves 2006: Seitenangabe pp. 52-66 statt korrekt pp. 86-109 (Kapitel 4 ≠ Kapitel 5).

### Pattern: Sekundäre MINORs (Tool-/Online-Quellen)

11. **interactive-fiction-twine Citation 6** — Inkle/Ink Datierung 2023 (Sprache seit 03/2016 OS, "2023" ist Website-Stand).
12. **interactive-fiction-twine Citation 8** — CISA-Titel "Cybersecurity Tabletop Exercise Tips" statt offiziellem "CISA Tabletop Exercise Packages (CTEP)".

### Bemerkenswert positiv

- **Walton 2023 (belonging-interventionen)** wird im Wiki **korrekt** als heterogen geframed ("Katalysator, nicht Ersatz für gute Schule") — Hot-Spot-Inversions-Risiko explizit vermieden.
- **Pathak 2025 (explain-in-plain-english)** trotz südasiatischem Erstautor + 13-köpfiger Autorenliste **kein** Erstautor-Misattribution-Pattern — Domain-Hint-Trigger war false-positive.
- **Liffiton/CodeHelp Koli '23, Leinonen SIGCSE '23, Finnie-Ansley ACE '22, Denny CACM 2024 67(2):56-67** in `ki-gestuetztes-tutoring` alle bibliografisch sauber — Denny-CACM-Hybrid-Pattern (Welle 5) hier **nicht** dupliziert.
- **Wouters 2013 d=0.29/d=0.36, Chernikova 2020 g=0.85, Ho 2025 1.82%/30.8%** in `interactive-fiction-twine` exakt verifiziert.
- **Triage-Indikatoren in `evaluation-lernumgebungen` waren alle false-positives** — n-Zahlen sind Playtest-Empfehlungen (n=5, n=12, n=3-5), keine Studien-Boxen mit fabrizierten Werten. "Hattie" nur als abstrakte Schwellen-Erwähnung. Heuristik `n-unbelegt` produziert hier rauschen.

## Detail-Findings (CRITs nur)

### CRIT 1: belonging-interventionen — Brady 2020 SciAdv Hybrid-Citation

Wiki-Zeile: *"Brady, L. M., Reeves, S. L., Garcia, J. et al. (2020). A brief social-belonging intervention in college improves adult outcomes for black Americans. Science Advances, 6(18)."*
Real (CrossRef 10.1126/sciadv.aay3689 + PMC7190359): **Brady, S. T., Cohen, G. L., Jarvis, S. N., Walton, G. M.** Inhaltsbefund (7-11 Jahre Follow-up, bessere Karriere/Wohlbefinden) per PMC-Volltext bestätigt.
**Korrektur:** "Brady, S. T., Cohen, G. L., Jarvis, S. N. & Walton, G. M. (2020). A brief social-belonging intervention in college improves adult outcomes for black Americans. Science Advances, 6(18), eaay3689."

### CRIT 2: belonging-interventionen — Hannover & Zander 2020 Hybrid-Citation

Wiki-Zeile: *"Hannover, B. & Zander, L. (2020). Schulisches Wohlbefinden, Zugehörigkeit und Unterstützung bei Schülerinnen und Schülern im gemeinsamen Unterricht der Sekundarstufe I. Unterrichtswissenschaft, 48(3), 353-377."*
Real (CrossRef 10.1007/s42010-020-00067-7): **Kröske, B.** (single author), Unterrichtswissenschaft **48(2), 243-272**.
**Korrektur:** "Kröske, B. (2020). Schulisches Wohlbefinden, Zugehörigkeit und Unterstützung bei Schülerinnen und Schülern im gemeinsamen Unterricht der Sekundarstufe I. *Unterrichtswissenschaft, 48*(2), 243-272." — Citation steht nur in der Quellenliste, im Body nicht zitiert.

### CRIT 3: ki-gestuetztes-tutoring — Presti et al. 2024 ITiCSE fabriziert

Wiki-Zeile (Tabellenzeile): *"~30 % der Studierenden reichen KI-Lösungen ein, ohne sie zu verstehen (Presti et al., 2024). Quelle: Presti, A. et al. (2024). Student Over-Reliance on AI Code Generation Tools. Proceedings of ITiCSE 2024."*
**Verifikation negativ:** DBLP, ACM-DL, Google Scholar, arXiv jeweils null Treffer für "Presti ITiCSE 2024". Die 30%-Zahl existiert in CS-Education-Literatur nur unter anderen Autoren/Venues (ICETC '24; ITiCSE Working-Group-Report 2024 zu KI-Praxis).
**Korrektur:** Citation entfernen. Falls die These behalten werden soll, durch belegbare Quelle ersetzen — z.B. Prather et al. (2025) "Beyond the Hype: A Comprehensive Review of Generative AI in Computing Education" (ITiCSE-WG 2025) oder Hou et al. (2024, arXiv:2412.16453, n=95 cross-sectional GenAI-Use im CS).

### CRIT 4: explain-in-plain-english — Denny 2024 QWK-Misattribution (interne Inkonsistenz)

Wiki Z. 148 (Praktische Anwendung): *"Denny et al. (2024): QWK > 0,7 gegen menschliche Rater, mit frage-spezifischem Rubric deutlich besser als mit generischem."*
Real (arXiv:2403.06050, Aalto-Volltext): Denny 2024 nutzt **Code-Generation-Grading** ohne Rubric. Berichtet Cohen's κ = 0,79 (Inter-Coder, nicht vs. Gold-Standard) und Prompt-Erfolgsraten 96-99 %. Kein QWK-Wert. Kein Generic-vs-Question-Specific-Rubric-Vergleich.
**Hybrid-Misattribution mit interner Quelle:** Z. 96 desselben Artikels attribuiert den Rubric-Vergleichs-Befund **korrekt** an Pathak et al. (2025) — Z. 148 dupliziert ihn fälschlich auf Denny.
**Korrektur:** Z. 148 entweder auf Pathak (2025) umattribuieren ODER durch Denny-eigene Metrik ersetzen ("Cohen's κ = 0,79 Inter-Coder, Prompt-Erfolg 96-99 %; Code-Generation-Grading ohne explizites Rubric").

## MAJOR-Findings (3)

| # | Datei | Befund | Korrektur |
|---|---|---|---|
| 1 | explain-in-plain-english | Fowler et al. (2022) — Venue ist *Computer Science Education* 32(3), 355-383 (DOI 10.1080/08993408.2022.2079866), nicht ITiCSE 2022 Proceedings. Co-Autor "Hassan, C." real "Hassan, M." (Mohammed) | Vollständige Citation: "Fowler, M., Smith, D. H., Hassan, M., Poulsen, S., West, M. & Zilles, C. (2022). Reevaluating the relationship between explaining, tracing, and writing skills in CS1. *Computer Science Education, 32*(3), 355-383." |
| 2 | interactive-fiction-twine | Programming Historian Twine-Lesson Hybrid: real Kirilloff (2021), nicht Kotchian/McCall (2022) | "Kirilloff, G. (2021). Interactive Fiction in the Humanities Classroom: How to Create Interactive Text Games Using Twine. *Programming Historian*." Body-Erwähnung der "McCall-Methode" als interner Verweis innerhalb der Lektion klarstellen. |
| 3 | interactive-fiction-twine | Ho et al. (2025) als Beleg für "Reflexion fehlt = Wirkfaktor" — Paper-These ist breiter "Training in der aktuellen Form weitgehend wirkungslos" | Inhalts-Aussage entschärfen: "Ho et al. (2025) finden, dass anti-phishing training in der gängigen Form weitgehend wirkungslos ist; die Vermutung, dass Debrief/Reflexion der entscheidende fehlende Wirkfaktor ist, ist eine didaktische Eigeninterpretation, kein Paper-Befund." |

## MINOR-Backlog (5)

| Datei | Befund | Korrektur |
|---|---|---|
| evaluation-lernumgebungen | Reeves (2006) Seitenangabe pp. 52-66 | → pp. 86-109 |
| explain-in-plain-english | Chen et al. (2020) fehlender Co-Autor | Rajarshi Haldar ergänzen |
| explain-in-plain-english | Kerslake et al. (2025) Erstautor-Initial | "E." → "C." (Chris) |
| interactive-fiction-twine | Inkle/Ink Datierung 2023 | "2016 (Open Source); abgerufen 2023" |
| interactive-fiction-twine | CISA-Seiten-Titel | "CISA Tabletop Exercise Packages (CTEP)" |

## Cross-Repo-Verdacht (neue Pattern aus Welle 6)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Brady 2020 SciAdv mit "L. M. Brady, Reeves, Garcia"-Autoren | `grep -ri 'Brady.*L\. M\.\|Brady.*Reeves\|Brady.*Garcia' wiki/` und `grep -ri 'Brady.*2020.*Science Adv\|Brady.*sciadv' wiki/` | mittel — verwandte Artikel: imposter-phaenomen-it-azubis, affektive-dimensionen, abschlussprojekt-begleitung |
| Hannover & Zander 2020 Unterrichtswissenschaft 48(3), 353-377 (statt Kröske 48(2), 243-272) | `grep -ri 'Hannover.*Zander\|Zander.*2020.*Unterrichts' wiki/` | niedrig (Cite steht nur in Quellenliste, nicht im Body) |
| Kotchian/McCall (2022) Programming Historian Twine | `grep -ri 'Kotchian\|programming historian.*2022\|McCall.*Twine' wiki/` | niedrig (vermutlich Einzelfall) |
| Denny 2024 + "QWK > 0,7" oder "QWK > 0.7" oder "frage-spezifisches Rubric" | `grep -ri 'Denny.*QWK\|Denny.*0,7\|Denny.*0\.7\|Denny.*frage-spezifisch' wiki/` | **hoch** — Misattribution kann in self-explanation, llm-as-grader, rubric-design (Domain-überlappend) reproduziert sein |
| Fowler 2022 ITiCSE 2022 (statt Computer Science Education Journal) + "Hassan, C." | `grep -ri 'Fowler.*2022.*ITiCSE\|Hassan, C\.' wiki/` | mittel |
| Presti et al. 2024 ITiCSE / "Student Over-Reliance" | `grep -ri 'Presti\|Student Over-Reliance' wiki/` | mittel — andere KI-Praxis-Artikel: ki-tutoring-evidenzlage, ki-native-lernumgebungen, deskilling-ki-codegenerierung, hint-engineering-llm-tutoring |
| Ho et al. 2025 Phishing mit "Reflexion/Debrief"-Spin | `grep -ri 'Ho.*2025\|phishing.*training\|Debrief.*phishing' wiki/` | niedrig — Spin-Pattern selten |
| Reeves (2006) "Design research from a technology perspective" pp. 52-66 | `grep -ri 'Reeves.*2006.*52-66\|Reeves.*Educational Design Research' wiki/` | niedrig |
| Chen et al. 2020 EiPE-Rubric als 4-Autoren-Cite | `grep -ri 'Chen.*Azad.*West.*Zilles' wiki/` | niedrig |
| Walton-Cohen-Self-Citation-Cluster ohne Lineage-Disclosure | manuell in FIDP/affektive Artikeln | niedrig (nicht falsch, nur Transparenz) |

## Robust gesicherte CRIT/MAJOR-Liste (Welle-6-Korrektur-Backlog)

| # | Datei | Severity | Korrektur |
|---|---|---|---|
| 1 | belonging-interventionen | **CRITICAL** | Citation 5 — Autorenliste auf "Brady, S. T., Cohen, G. L., Jarvis, S. N. & Walton, G. M." korrigieren |
| 2 | belonging-interventionen | **CRITICAL** | Citation 7 — auf "Kröske, B. (2020). … *Unterrichtswissenschaft, 48*(2), 243-272." korrigieren |
| 3 | ki-gestuetztes-tutoring | **CRITICAL** | Presti-2024-Citation streichen oder durch belegbare Quelle ersetzen (z.B. Prather et al. 2025 ITiCSE-WG, Hou et al. 2024 arXiv:2412.16453) |
| 4 | explain-in-plain-english | **CRITICAL** | Body Z. 148 — Denny-QWK/Rubric-Aussage auf Pathak (2025) umattribuieren oder durch Denny-eigene Metrik ersetzen |
| 5 | explain-in-plain-english | MAJOR | Fowler et al. (2022) — Venue auf *Computer Science Education* 32(3), 355-383; Co-Autor "Hassan, M." statt "Hassan, C." |
| 6 | interactive-fiction-twine | MAJOR | Programming Historian Cite — auf "Kirilloff, G. (2021)" korrigieren; Body-Verweise auf "McCall-Methode" als sekundäre Erwähnung kennzeichnen |
| 7 | interactive-fiction-twine | MAJOR | Ho et al. 2025 — Inhalts-Aussage entschärfen ("Training in der gängigen Form wirkungslos"; "Reflexion fehlt" als didaktische Eigeninterpretation kennzeichnen) |
| 8 | evaluation-lernumgebungen | MINOR | Reeves (2006) Seitenangabe pp. 52-66 → pp. 86-109 |
| 9 | explain-in-plain-english | MINOR | Chen et al. (2020) — Co-Autor Rajarshi Haldar ergänzen |
| 10 | explain-in-plain-english | MINOR | Kerslake et al. (2025) — Erstautor-Initial "E." → "C." (Chris) |
| 11 | interactive-fiction-twine | MINOR | Inkle/Ink Datierung präzisieren |
| 12 | interactive-fiction-twine | MINOR | CISA-Titel auf "CISA Tabletop Exercise Packages (CTEP)" |

## Methodik-Limitierungen Welle 6

- **Triage-Score-Schwäche bestätigt:** Score 24-29 produzierte 4 CRITs + 3 MAJORs in 41 Cites. Das Score-Schema kann **Hybrid-Citations und fabrizierte Citations** nicht zuverlässig vorhersagen, weil sie weder Effektstärken noch Klassifikations-Tabellen noch §-Verweise nutzen. Sie sind reine Bibliografie-Layer-1-Befunde, die nur durch CrossRef-Erstautoren-Abgleich gefangen werden.
- **Body-vs-Quellenliste-Inkonsistenz** (Welle-5-Hot-Spot) ist in Welle 6 in zwei Varianten aufgetreten: (a) Body-zitiert-Co-Autor-falsch (Brady 2020), (b) Body-zitiert-Aussage-falsch-attribuiert obwohl Quellenliste korrekt (Denny 2024 QWK in EiPE Z. 148). Variante (b) ist die hinterhältigste Form — Quellenliste verifiziert sauber, aber Body zieht Befund von Citation A auf Citation B um. Layer 3 sollte Body-Cite-Tokens (`Autor JJJJ`) **gegen Body-Aussage** abgleichen, nicht nur gegen Quellenliste.
- **Neue Hybrid-Variante:** Erstautor-Initial-Verwechslung mit anderer realer Forscherin gleichen Nachnamens (S. T. Brady ↔ L. M. Brady). Ähnliches Risiko-Pattern zu Erstautor-Misattribution bei nicht-westlichen Namen, aber strukturell anders — beide sind reale Forscherinnen, die im selben Feld publizieren. Verifikation: Erstautor-Vorname/Initial **plus** Co-Autorenliste muss matchen.
- **False-Positive-Trigger:** `n-unbelegt` triggerte 4× in `evaluation-lernumgebungen`, aber alle Treffer waren Playtest-Empfehlungen (n=5, n=3-5, n=12), keine Studien-Boxen. Heuristik braucht Verfeinerung (Abgrenzung n-Empfehlung vs. n-Studie).
- **Konvergenz mit früheren Wellen:** Hybrid-Citation-Pattern jetzt 12× systematisch dokumentiert (4× Welle 5 + 4× Welle 6 + 4× früher). Stärkstes wiederkehrendes Pattern. Erstautor-Misattribution bei nicht-westlichen Namen in Welle 6 nicht reproduziert (Pathak korrekt zitiert) — Pattern bleibt aber hoch-priorisiert.

## Empfehlung für nächste Schritte

1. **Bulk-Fix Welle 6** — die 4 CRITs sind dringlich (zwei Hybrid-Citations bibliographisch toxisch, eine fabrizierte Citation didaktisch toxisch, eine interne Misattribution durchschaubar für aufmerksame Leser). Reihenfolge: CRITs zuerst (belonging × 2, ki-gestuetztes-tutoring, explain-in-plain-english), dann MAJORs (Fowler-Venue, Programming-Historian-Hybrid, Ho-Spin), dann MINORs.
2. **Cross-Repo-Sweep nach Welle 6** lohnt sich besonders für:
   - **Denny-QWK-Misattribution** in self-explanation, llm-as-grader, rubric-design (hohes Domain-Overlap)
   - **Brady-2020-SciAdv** in imposter-phaenomen-it-azubis und affektiv-related Artikeln
   - **Presti-2024-ITiCSE** in KI-Praxis-Artikeln (ki-tutoring-evidenzlage etc.)
3. **Methodik-Update v3:**
   - Layer 3 erweitern: **Body-Cite-Token vs. Body-Aussage**-Check (interne Misattribution-Pattern wie Denny-QWK Z. 148)
   - Hybrid-Variante "Erstautor-Initial-Verwechslung mit realer Namensvetterin" als Sub-Pattern dokumentieren
   - Heuristik `n-unbelegt` verfeinern (Abgrenzung Studien-Box vs. Empfehlung)
4. **Welle 7 danach:** imposter-phaenomen-it-azubis (Score 23), cognitive-task-analysis (23), aktivierung-lehrervortrag (22), abschlussprojekt-begleitung (22), formatives-assessment (21).
