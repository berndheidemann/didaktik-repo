# Cross-Repo-Sweep 9 (nach Welle 13)

**Datum:** 2026-05-02
**Anlass:** 10 Patterns aus Welle-13-Konsolidierung repo-weit verifizieren.
**Ergebnis:** **2 MINOR-Spillovers** (Bjork & Bjork 2011 Erstautor-Reihenfolge in productive-failure und retrieval-practice).

## Patterns geprüft

| # | Pattern | Befunde | Status |
|---|---|---|---|
| 1 | Michaeli/Romeike 2019 EDUCON-vs-WiPSCE-Hybrid | 1 (debugging-als-kompetenz, schon gefixt) | clean |
| 2 | WiPSCE-2019-Cite-Magnet (alle Treffer gegen ACM-DL-TOC) | 1 (debugging-als-kompetenz, schon gefixt) | clean |
| 3 | Liew/Treagust AERA/AARE-Verwechslung | 0 (Treffer war nur poe-methode, gefixt) | clean |
| 4 | Bjork & Bjork Erstautor-Reihenfolge (R.A. vs. E.L.) | **2 Spillovers** (productive-failure, retrieval-practice) | **2 Spillovers** |
| 5 | Jamieson 2016/2018 ASC vs. SPPS Hybrid | 1 (pruefungsvorbereitung, schon gefixt) | clean |
| 6 | Mark CHI 2008 „23:15"-Folklore-Zahl | 1 (zeitmanagement, schon gefixt) | clean |
| 7 | Roediger & Karpicke 2006 d-Range 0.50-0.80 (Generationenfehler) | 1 (pruefungsvorbereitung, schon gefixt) | clean |
| 8 | Cepeda 2008 „50% Verlust in 7 Tagen" Quantifizierung | 1 (pruefungsvorbereitung, schon gefixt; wissensretention nutzt anderes Cepeda-2006-Paper unproblematisch) | clean |
| 9 | Personal Kanban Co-Autorin „Barry, T." statt „DeMaria Barry" | 1 (zeitmanagement, schon gefixt) | clean |
| 10 | BKT-Default-Werte (0.3/0.1/0.1/0.2) als „Standard nach C&A 1995" | 1 (lerner-modell-mastery-tracking, schon gefixt) | clean |

## Spillover-Detail

### Spillover 1+2: Bjork & Bjork 2011 Erstautor-Reihenfolge

Der Welle-13-Befund (Pattern #2a Co-Autor-Drift bei realen Namensvettern: E. L. Bjork ist Erstautorin, nicht R. A. Bjork) wiederholt sich in zwei weiteren Wiki-Artikeln:

**Datei 1: `wiki/productive-failure.md` Z. 124**
- Vorher: *„Bjork, R. A. & Bjork, E. L. (2011). Making Things Hard on Yourself, But in a Good Way..."*
- Nachher: *„Bjork, E. L. & Bjork, R. A. (2011). ... Creating Desirable Difficulties to Enhance Learning. In M. A. Gernsbacher, R. W. Pew, L. M. Hough & J. R. Pomerantz (Hrsg.), Psychology and the Real World (S. 56-64). Worth."*

**Datei 2: `wiki/retrieval-practice.md` Z. 141**
- Identische Korrektur

**Severity:** je MINOR (Pattern #2a kosmetisch — Citation real und korrekt zugeordnet, nur Erstautor-Reihenfolge falsch).

`desirable-difficulties.md` (Z. 150) und `pruefungsvorbereitung-lernstrategie.md` (Welle-13-Fix) hatten die korrekte Reihenfolge bereits.

## Bilanz

**10 Patterns, 2 Spillovers (20 % Trefferquote).** Höher als Sweep 8 (1/8 = 12,5 %), niedriger als Sweep 5/6 (1 Befund pro Sweep, aber jeweils im Repeat-Offender meta-analysen-cs-education).

Sweep-Trefferquote-Trend:
- Sweep 1 (W4): 6 MAJORs (Vorlagen-Cluster)
- Sweep 2 (W5): 6 MAJORs (Vorlagen-Cluster)
- Sweep 3 (W6): 0
- Sweep 4 (W7): 0
- Sweep 5 (W8): 1 MAJOR (meta-analysen-cs-education)
- Sweep 6 (W9): 1 MINOR (meta-analysen-cs-education)
- Sweep 7 (W10): 0
- Sweep 8 (W12): 1 MINOR (cognitive-task-analysis EBS-paraphrase)
- **Sweep 9 (W13): 2 MINORs (productive-failure + retrieval-practice Bjork-Erstautor)**

**Wichtige Beobachtung:** Bjork & Bjork 2011 ist als prominente Citation in der Desirable-Difficulties-/Retrieval-Practice-Literatur in 4 Wiki-Artikeln verwendet (productive-failure, retrieval-practice, desirable-difficulties, pruefungsvorbereitung). 2 von 4 hatten falsche Erstautor-Reihenfolge. Bei Pattern #2a (Co-Autor-/Erstautor-Drift) ist Cross-Repo-Sweep besonders wirksam, weil prominente Cites typischerweise mehrfach verwendet werden.

**`meta-analysen-cs-education.md` diesmal nicht getroffen** — Repeat-Offender-Status seit W12 pausiert.

## Methodik-Erkenntnis

Welle-13-Befunde sind durchmischt: Hybrid-Citations (Michaeli/Romeike, Jamieson) und Folklore-Quantifizierungen (Mark 23:15) sind idiosynkratisch und in genau einem Wiki-Artikel verwendet — 0 Spillover. Erstautor-/Co-Autor-Drifts (Bjork & Bjork) und Vorlagen-Cites schlagen bei Cross-Repo-Sweep durch — 2 Spillovers.

**Empfehlung:** Bei zukünftigen Welle-Audits Pattern #2a (Erstautor-/Co-Autor-Drift) als systematisch in Cross-Repo-Sweep-Plan aufnehmen, weil jede prominente Cite in der Lernpsychologie-Literatur typischerweise in 3-5 Wiki-Artikeln referenziert wird.

## Korrekturen durchgeführt

- `wiki/productive-failure.md` Z. 124: Bjork & Bjork 2011 Erstautor-Reihenfolge umgestellt + Hrsg.-Liste vervollständigt + Untertitel ergänzt
- `wiki/retrieval-practice.md` Z. 141: identische Korrektur
