# Cross-Repo-Sweep 12 (nach Welle 16)

**Datum:** 2026-05-02
**Anlass:** 5 Patterns aus Welle-16-Konsolidierung repo-weit verifizieren.
**Ergebnis:** **0 Spillovers** — alle Welle-16-Befunde komplett idiosynkratisch.

## Patterns geprüft

| # | Pattern | Befunde | Status |
|---|---|---|---|
| 1 | Peitek 2021 eNeuro Hybrid (real Ikutani) | 1 (neurodidaktik-programmieren, schon gefixt) | clean |
| 2 | Dehaene/Cohen 2007 Pages 209-217 (real 384-398) | 1 (neurodidaktik-programmieren, schon gefixt) | clean |
| 3 | Tissenbaum „Authenticity/Audience/Agency/Iteration" als zitiertes Schema | 1 (computational-action, schon gefixt) | clean |
| 4 | Ivanova/Liu for/if-Misattribution | 1 (neurodidaktik-programmieren, schon gefixt) | clean |
| 5 | Dede/Richards Orphan-Cite | 1 (learning-engineering, schon gefixt — Cite entfernt) | clean |

## Bilanz

**5 Patterns, 0 Spillovers.** Vierter Sweep ohne Spillover (nach Sweep 4 / 7 / 10 / **12**). Welle-16-Befunde sind aus zwei strukturellen Gründen vollständig idiosynkratisch:

1. **Domänen-Singularität:** neurodidaktik-programmieren ist der einzige fMRI-/Neurowissenschafts-Artikel im Repo. Peitek/Ikutani-Hybrid und Ivanova/Liu-Misattribution sind nirgends sonst potentiell reproduzierbar.
2. **Konzept-Singularität:** computational-action ist der einzige Tissenbaum/Wing-Cluster-Artikel; die 4-A-Schema-Synthese hat keine Spillover-Fläche.

`meta-analysen-cs-education.md` diesmal **erneut nicht getroffen** — Repeat-Offender-Status seit W12 stabil pausiert (5 Sweeps in Folge).

## Sweep-Trefferquote-Trend (final)

- Sweep 1 (W4): 6 MAJORs (Vorlagen-Cluster)
- Sweep 2 (W5): 6 MAJORs (Vorlagen-Cluster)
- Sweep 3 (W6): 0
- Sweep 4 (W7): 0
- Sweep 5 (W8): 1 MAJOR (meta-analysen-cs-education)
- Sweep 6 (W9): 1 MINOR (meta-analysen-cs-education)
- Sweep 7 (W10): 0
- Sweep 8 (W12): 1 MINOR (cognitive-task-analysis EBS-paraphrase)
- Sweep 9 (W13): 2 MINORs (Bjork-Erstautor)
- Sweep 10 (W14): 0
- Sweep 11 (W15): **5 Spillovers** (lebende Web-Resources!)
- **Sweep 12 (W16): 0**

**Insgesamt 12 Sweeps, ~25 Befunde** — die meisten konzentriert in W1/W2 (Vorlagen) und W11 (lebende Web-Resources). Die Mehrheit der Welle-spezifischen Befunde ab W6 ist idiosynkratisch — Bestätigung, dass das Repo keine systematischen Vorlagen-Halluzinationen mehr hat.

## Methodik-Erkenntnis (final)

Cross-Repo-Sweep ist als komplementäre Methodik etabliert:
- **Hochertrag** bei Vorlagen-Patterns (W1/W2: Verwaltungs-Cite-Cluster, Hattie-Edition-Drift) und bei lebenden Web-Resources (W15: Replit, Codespaces, FSRS, CAST UDL)
- **Niedrigertrag** bei idiosynkratischen Hybrid-/Inversions-Befunden (W6/W7/W10/W14/W16)
- **Konstantertrag** bei Aggregat-Artikeln (meta-analysen-cs-education war 3× in Folge Repeat-Offender W5/W6/W8, dann pausiert ab W12)

**Empfehlung für zukünftige Audits:** Cross-Repo-Sweep weiterhin nach jeder Welle, aber mit niedrigeren Erwartungen. Wert liegt primär in der Bestätigung der Idiosynkrasie (negative confirmation), nicht in neuen Funden.
