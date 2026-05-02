# Cross-Repo-Sweep 8 (nach Welle 12)

**Datum:** 2026-05-02
**Anlass:** 8 Patterns aus Welle-12-Konsolidierung repo-weit verifizieren.
**Ergebnis:** 1 MINOR-Spillover (Nathan/Petrosino EBS-Generalisierung in cognitive-task-analysis.md).

## Patterns geprüft

| # | Pattern | Grep | Befunde | Status |
|---|---|---|---|---|
| 1 | Sentance/Waite/Kallia 2019 WiPSCE-Venue-Drift | `Sentance.*WiPSCE\|Implementation of the PRIMM` | 0 | clean |
| 2 | Nückles 2009 Phantom-Citation (ER&E 15(2)) | `Nückles.*2009\|Educational Research and Evaluation.*15` | 1 (lerntagebuch, schon gefixt) | clean |
| 3 | Glogger 2012 Venue-Drift (L&I statt JEP / Diversity statt Combinations) | `Glogger.*2012\|Glogger.*Diversity` | 1 (lerntagebuch, schon gefixt) | clean |
| 4 | Raspberry Pi Foundation als Pseudo-Autor primmportal.com | `Raspberry Pi Foundation.*primmportal\|primmportal.com` | 1 (primm-methode, schon gefixt) | clean |
| 5 | Nathan & Petrosino 2003 als Beleg für „Experten überspringen Schritte" | `Nathan.*Petrosino\|Expert Blind Spot` | **2 inhaltliche Treffer** (cognitive-apprenticeship gefixt; cognitive-task-analysis spillover) | **1 Spillover** |
| 6 | Leisen Sprachstufenmodell-Stufenanzahl | `Leisen.*Stufen\|Sprachstufenmodell` | 1 (sprachsensibler-it-unterricht, schon gefixt) | clean |
| 7 | Beese et al. 2014 als „Klett-Langenscheidt" ohne DLL-16-Reihen-Hinweis | `Beese.*Klett\|Sprachbildung in allen Fächern` | 1 (sprachsensibler-it-unterricht, schon gefixt) | clean |
| 8 | Echevarria/SIOP-Edition 2016 vs 2017 | `Echevarria\|SIOP` | 1 (sprachsensibler-it-unterricht, Edge-Case belassen) | clean |

## Spillover-Detail

### Spillover 1: cognitive-task-analysis — Nathan/Petrosino EBS-Generalisierung

**Datei:** `wiki/cognitive-task-analysis.md` Z. 37
**Vorher:** *„Erfahrene Programmierer:innen haben so viel automatisiert, dass sie beim Erklären entscheidende Denkschritte überspringen — der **Expert Blind Spot** (Nathan & Petrosino, 2003)."*
**Nachher:** *„Erfahrene Programmierer:innen haben so viel automatisiert, dass sie beim Erklären entscheidende Denkschritte überspringen — das **Expert-Blind-Spot**-Phänomen (Begriff geprägt von Nathan & Petrosino 2003 für Math-Preservice-Teachers; in der Instruktionsdesign-Literatur breiter als Curse of Knowledge generalisiert, vgl. Hinds 1999, Clark et al. 2008)."*
**Severity:** MINOR (Pattern #17 Genre-Überschreibung — gleicher Welle-12-Befund wie in cognitive-apprenticeship). In CTA-Literatur ist die Cite Nathan/Petrosino als Begriffs-Anker etabliert; Wiki-Text macht jetzt explizit, dass die Curse-of-Knowledge-Generalisierung nicht direkt aus dem 2003er Paper stammt.

## Bilanz

**8 Patterns, 1 Spillover (12,5 % Trefferquote).** Niedriger als Welle-7-Sweep (Sweep 4: 0 Befunde) und Welle-10-Sweep (Sweep 7: 0 Spillover), höher als Welle-11-Erwartung (Sweep-7-Trend: 0).

**Bemerkenswert:** Der EBS-Generalisierungs-Spillover war erwartbar — Nathan/Petrosino 2003 wird in der CS-Education-Literatur (Clark/Feldon CTA, Koedinger/Nathan 2004) routinemäßig als Begriffs-Anker für „Curse of Knowledge"-Phänomene zitiert, obwohl ihre spezifische Studie nur Schwierigkeits-Einschätzung untersucht. Das Wiki bildet diese geläufige Zitierpraxis ab.

`meta-analysen-cs-education.md` ist diesmal **nicht** als Repeat-Offender getroffen (Sweep-5 + Sweep-6 hatten dort je 1 Befund). Möglicherweise hat der Welle-9-Methoden-Fix den Aggregat-Artikel jetzt für längere Zeit ruhig gestellt.

## Methodik-Erkenntnis

Cross-Repo-Sweep nach Per-Citation-Welle (Welle 12) findet weiterhin idiosynkratische Spillovers, wenn der Welle-12-Befund ein konzeptuelles Generalisierungs-Pattern (Pattern #17) statt ein Vorlagen-Pattern (z.B. Hattie-Edition-Drift) ist. Konkrete Bibliografie-Drifts (Patterns #16/#19 Welle-12-Hauptbefunde Sentance, Nückles, Glogger) sind alle idiosynkratisch — nur 0 Spillovers, weil die einzelnen Cites jeweils nur in genau einem Wiki-Artikel verwendet werden.

Sweep-Trefferquote-Trend (vorhandene Patterns):
- Sweep 1 (W4): 6 MAJORs (Vorlagen-Cluster)
- Sweep 2 (W5): 6 MAJORs (Vorlagen-Cluster)
- Sweep 3 (W6): 0 (idiosynkratisch)
- Sweep 4 (W7): 0
- Sweep 5 (W8): 1 MAJOR (meta-analysen-cs-education)
- Sweep 6 (W9): 1 MINOR (meta-analysen-cs-education)
- Sweep 7 (W10): 0
- **Sweep 8 (W12): 1 MINOR (Pattern #17 in cognitive-task-analysis)**

Tendenz: ab Welle 6+ werden Befunde zunehmend idiosynkratisch, Aggregat-Artikel-Repeat-Offending ist auch zurückgegangen. Cross-Repo-Sweeps liefern weiterhin Wert, aber der Token-Aufwand pro Befund steigt (8 Greps → 1 Befund vs. Sweep 1: 8 Greps → 6 Befunde).

## Korrektur durchgeführt

- `wiki/cognitive-task-analysis.md` Z. 37: EBS-Cite-Anker präzisiert mit Hinds 1999 / Clark et al. 2008 als zusätzliche Generalisierungsquellen (analog zum Welle-12-Fix in cognitive-apprenticeship).
