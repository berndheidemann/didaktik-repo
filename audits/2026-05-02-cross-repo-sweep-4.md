# Cross-Repo-Sweep nach Welle 7 (2026-05-02)

**Methodik:** Direkte Grep-Suche durchs `wiki/`-Verzeichnis nach den 12 Welle-7-Verdachts-Pattern aus `2026-05-02-welle-7-konsolidierung.md`. Kein Subagent — Pattern-Liste war kompakt und Greps eindeutig.

**Anlass:** Welle 7 produzierte 3 CRITs + 1 MAJOR + 8 MINORs in 5 Artikeln. Alle 3 CRITs konzentriert in `imposter-phaenomen-it-azubis`. Hypothese: Hybrid-Citations (Levant), fabrizierte Citations (Rohrmann), Stichproben-Inflation (Guenes), BIBB-Update-Drift, Black/Wiliam-Genre-Misklassifikation und Macmillan/Gale-Verlag könnten in nicht-auditierten Artikeln dupliziert sein.

## Bilanz

**0 neue Befunde, 0 weitere Korrekturen erforderlich.** Alle 12 Pattern sind ausschließlich in den 5 Welle-7-Artikeln aufgetreten und dort bereits gefixt. Wie schon nach Welle 6 (Sweep-3): Welle-7-Bugs sind idiosynkratisch, nicht aus geteilten Citations-Vorlagen entstanden.

## Pattern-für-Pattern

| # | Pattern | Welle-7-Quelle | Treffer in nicht-auditierten Artikeln | Status |
|---|---|---|---|---|
| 1 | Levant/Villwock/Manzardo Frontiers 2024 1360540 | imposter Z. 86, 176 | **0** (nur dort, bereits auf Para et al. korrigiert) | clean ✓ |
| 2 | Rohrmann 2019 Psychotherapeut 64(3), 313–323 | imposter Z. 181 | **0** (nur dort, bereits auf Hogrefe-Buch korrigiert) | clean ✓ |
| 3 | Guenes 2023 mit n=2.665 statt 624 | imposter Z. 62 | **0** (nur dort, bereits korrigiert) | clean ✓ |
| 4 | Bravata 2020 als Beleg für SE-spezifische 52 % | imposter Z. 38 | **0** (nur dort, bereits Body-Drift behoben — Bravata bleibt für Prävalenz-Spanne 9-82 % korrekt zitiert) | clean ✓ |
| 5 | BIBB Umsetzungshilfen "(2020, Update 2025)" | abschlussprojekt Z. 193 | **0** (nur dort, bereits korrigiert. Anmerkung: `ki-erfahrungsberichte-berufliche-bildung` zitiert BIBB 2025 als Hermann-Schmidt-Preis 2025 — das ist eine andere, real existierende BIBB-Publikation, kein Pattern-Treffer) | clean ✓ |
| 6 | Walton & Cohen als "Minority-Stress-Forschung" geframed | imposter Z. 142 | **0 als Body-Aussage** (nur dort, bereits auf "Belonging-Intervention-Forschung" korrigiert). **1 Soft-Hit:** `belonging-interventionen.md` hat "minority-stress" im **Tags-Feld** — konzeptuell unsauber (Walton/Cohen-Belonging ≠ Meyer-Minority-Stress), aber Tags dienen thematischer Auffindbarkeit; akzeptabel | clean (mit kosmetischer Anmerkung) ✓ |
| 7 | Black & Wiliam 1998 als "Meta-Analyse" klassifiziert | formatives-assessment Z. 79, Frontmatter | **0 expliziter "Meta-Analyse"-Treffer** in nicht-auditierten Artikeln. Allgemeine Black/Wiliam-1998-Cites in feedback-/effektstärken-/mastery-Kontexten wurden in Wellen 1-4 bereits geprüft. | clean ✓ |
| 8 | Margolis (2008) Sole-Author (fehlende Co-Autorinnen) | imposter Z. 179 | **0** (nur dort, bereits mit 5 Autorinnen ergänzt) | clean ✓ |
| 9 | Clark/Feldon (2008) "Macmillan/Gale" vs. Routledge | cognitive-task Z. 147 | **0** (nur dort, bereits auf "Routledge / AECT" korrigiert). Anmerkung: `scaffolding.md:181` zitiert Belland (2014) im 4.-Auflage-Handbuch — Verlag "Springer" ist dort korrekt (4. Auflage 2014 ist Springer-Edition, nur 3. Auflage 2008 war Routledge/AECT) | clean ✓ |
| 10 | Dunlap (2005) "professionelle Identität" als gemessenes Outcome | abschlussprojekt Z. 56 | **0** (nur dort, bereits auf Selbstwirksamkeit beschränkt) | clean ✓ |
| 11 | Tofel-Grehl 27 vs. 20 Studien (MetaX-Aggregat unter Tofel-Grehl-Cite) | cognitive-task Z. 49, 148 | **0** weitere Treffer; im Welle-7-Audit als OK mit Anmerkung gelassen | clean ✓ |
| 12 | IHK Rhein-Neckar URL als Domain-Root | abschlussprojekt Z. 194 | **0** (nur dort, bereits auf Deep-Link korrigiert) | clean ✓ |

## Soft-Hit: belonging-interventionen Tags

`belonging-interventionen.md:4` hat im Tags-Feld:

```yaml
tags: [belonging, walton-cohen, zugehoerigkeit, minority-stress, stereotype-threat, dropout-praevention, attribution, intervention]
```

Der Tag `minority-stress` ist konzeptuell ungenau, weil Minority-Stress (Meyer 2003) ein anderes Konstrukt ist als Belonging-Uncertainty (Walton & Cohen 2007). Der Tag dient aber thematischer Auffindbarkeit (Schnittstelle Belonging-Interventionen ↔ Minority-Stress-Forschung in der Psychologie); ein Suchender, der "Minority-Stress" eintippt, sollte den Belonging-Artikel finden. **Akzeptabel im Tags-Feld**, aber im **Body-Text** wäre es eine Konstrukt-Misattribution (wie in imposter Z. 142 vor dem Fix). Kein Korrekturbedarf.

## Methoden-Notizen

**Konvergenz mit Sweep-3:** Sweep-3 (nach Welle 6) fand ebenfalls 0 Befunde — Welle-6-Bugs waren idiosynkratisch. Sweep-4 bestätigt das Muster: Welle-7-Bugs sind ebenfalls Einzelfall-Hybrid-/fabrizierte Citations, nicht aus geteilten Vorlagen. Die ersten beiden Sweeps (nach Welle 4, 5) fanden je 5-6 MAJORs, weil die damaligen Pattern Vorlagen-Charakter hatten (Becker SIGCSE/ITiCSE, Stahl/Xiao-Erstautor, BfDI/DSK-Verwechslung, Kremer/Sloane bwp@, Denny CACM-Hybrid).

**Strukturwechsel ab Welle 6:** Mit zunehmender Repo-Sättigung verschiebt sich das Pattern-Profil von Vorlagen-Bugs (frühere Wellen) zu Einzelfall-Bugs (späte Wellen). Sweep-Ausbeute sinkt stark; der Schutz muss in den Audits selbst liegen, nicht im Sweep.

**Welle-6-Methodik-Update wirksam:** Sub-Pattern 4B (Body-vs-Body-Aussage-Drift) hat in Welle 7 den Bravata/Guenes-Drift gefangen. Sub-Pattern 2a (Hybrid mit realer Namensvetter:in) hat den Levant/Para-Hybrid gefangen. Beide Pattern bleiben Repo-relevant, sollten als Layer-3-Pflicht-Checks in künftigen Audits weiter verankert sein.

**Methodik-Limitierung:** Sweep prüft nur Pattern, die Welle 7 explizit gefunden hat. Cross-Repo-Restrisiko bleibt für noch-nicht-auditierte Artikel — vermutlich Score 18-21-Bereich (Welle 8+). Bei zunehmender Sättigung lohnt es sich, Triage-Strategie auf Pattern-basierte Heuristik zu wechseln (Body-Cite-Token-Drift, doppelte Erwähnung desselben Befunds, n=-Werte ohne Quellenliste-Match) statt linearem Score.

## Bemerkenswert positiv

- **Walton/Cohen-Forschungsgruppen-Lineage** trotz mehrerer Belonging-/Affektiv-/Stereotype-Threat-Artikel im Repo nicht als "Minority-Stress-Forschung" geframed außerhalb der einen imposter-Z.-142-Stelle.
- **Bravata 2020** wird in `imposter-phaenomen` korrekt für die Prävalenz-Spanne 9-82 % zitiert; der 52 %-SE-Wert wurde nicht repo-weit fälschlich auf Bravata gezogen.
- **BIBB-Publikationen** repo-weit konsistent zitiert: Umsetzungshilfen 2020, Hermann-Schmidt-Preis 2025, KI-Schulpreis 2025 — alle als reale, nachweisbare Werke. Keine Vorlagen-Halluzination.
- **Spector-Handbuch-Edition-Disziplin:** Cognitive Task Analysis nutzt 3. Auflage (2008, Routledge/AECT), Scaffolding-Artikel nutzt 4. Auflage (2014, Springer) — beides korrekt. Keine Edition-Drift.

## Empfehlung

- **Kein zusätzlicher Korrektur-Backlog.** Welle 7 + Sweep-4 schließen ab.
- **Welle 8 als nächster Schritt:** generative-learning-aktivitaeten (Score 20), differenzierung-inklusion (20), subgoal-labeling (18) und weitere mit Score 18-21. Bei Score-Werten unter 20 ist Triage-Score-Aussagekraft zunehmend gering — pragmatisch könnte die nächste Welle abschließen, was an Hochrisiko-Artikeln noch übrig ist.
- **Methodik-Update bleibt offen:** Restbacklog könnte in v3-audit-methodik.md aufgenommen werden (z.B. die Inhalts-Layer-2-Stichproben-Inflation als Welle-7-Pattern formal dokumentieren). Aktuell aber nicht dringend, weil das Layer-2-Volltext-Fetch-Muster bereits etabliert ist.
