# Cross-Repo-Sweep 10 (nach Welle 14)

**Datum:** 2026-05-02
**Anlass:** 10 Patterns aus Welle-14-Konsolidierung repo-weit verifizieren.
**Ergebnis:** **0 Spillovers** — alle Welle-14-Befunde idiosynkratisch.

## Patterns geprüft

| # | Pattern | Befunde | Status |
|---|---|---|---|
| 1 | EDPB-Education-Guidelines 2023 Fabrikation | 0 | clean |
| 2 | BfDI-„Tätigkeitsbericht zum Bildungssektor" Fabrikation | 0 | clean |
| 3 | BayLfD-Orientierungshilfe 2024 Datierungs-Drift | 1 (datenschutz, schon gefixt) | clean |
| 4 | Hoofnagle-vs-van-der-Sloot Erstautor-Drift / Zuiderveen Borgesius | 1 (datenschutz, schon gefixt) | clean |
| 5 | López-Pernas FIE 2019 vs. IEEE Access 2019 | 1 (gamification, schon gefixt) | clean |
| 6 | Lytle 2019 Inhalts-Reframing („drei Progressionen / Verständnis / Frustration") | 1 (use-modify-create, schon gefixt) | clean |
| 7 | Franklin SIGCSE 2017 vs. 2020 Year-Drift | 1 (use-modify-create, schon gefixt) | clean |
| 8 | FSRS-Formel-Drift (FSRS-3 vs FSRS-5/6) — spezifische Formel `(1 + t/(9·S))` | 0 weitere Files (`spaced-repetition-scheduler-bauen.md` enthält FSRS-Mention, aber nicht die FSRS-3-Formel) | clean |
| 9 | Ericson 2022 „677 initial" Inhalts-Drift | 0 weitere Files (keine andere wiki/-Datei verwendet die spezifische „677 initial"-Quantifizierung) | clean |
| 10 | Body-Inline EuGH Breyer ohne Quellenliste | 1 (datenschutz, schon gefixt) | clean |

## Bilanz

**10 Patterns, 0 Spillovers.** Sweep 10 ist der dritte Sweep in der Reihe ohne Spillover (Sweep 4 / 7 / 10 hatten je 0). Welle-14-Befunde sind durchweg idiosynkratisch.

Sweep-Trefferquote-Trend:
- Sweep 1 (W4): 6 MAJORs (Vorlagen-Cluster)
- Sweep 2 (W5): 6 MAJORs (Vorlagen-Cluster)
- Sweep 3 (W6): 0
- Sweep 4 (W7): 0
- Sweep 5 (W8): 1 MAJOR (meta-analysen-cs-education)
- Sweep 6 (W9): 1 MINOR (meta-analysen-cs-education)
- Sweep 7 (W10): 0
- Sweep 8 (W12): 1 MINOR (cognitive-task-analysis EBS-paraphrase)
- Sweep 9 (W13): 2 MINORs (productive-failure + retrieval-practice Bjork-Erstautor)
- **Sweep 10 (W14): 0**

## Methodik-Erkenntnis

Welle-14-Befunde sind aus zwei Gründen besonders idiosynkratisch:
1. **Verwaltungs-Cite-Cluster** (datenschutz-lernumgebungen) ist ein Spezialfall — Verwaltungs-Cites werden im Repo praktisch nur in diesem einen Artikel sowie in den bereits Welle-1-auditierten Artikeln verwendet. Keine Vorlagen-Verbreitung.
2. **Conference-Year/Title-Drifts** (Lytle, Franklin, López-Pernas) treffen jeweils einzigartige Cites, die in keinem anderen Wiki-Artikel auftauchen — methode-Artikel zitieren CS-Education-Conferences typischerweise auf engste fachliche Aussagen.

`meta-analysen-cs-education.md` diesmal **erneut nicht getroffen** — Repeat-Offender-Status seit W12 stabil pausiert.

**Konsequenz für Welle 15:** Cross-Repo-Sweep 11 nach Welle 15 wird vermutlich auch wenig Spillover finden. Bulk-Sweep-Wert sinkt; Aufwand-Nutzen-Verhältnis verschiebt sich Richtung Per-Audit-Tiefe statt Cross-Repo-Breite.
