# Welle 16 — Gezielter Mini-Sweep auf 4 Praxis-nahe Theorie-Artikel

**Datum:** 2026-05-02
**Anlass:** Strategie-Empfehlung nach Welle 15: Audit-Reihe formal abschließen + gezielter Mini-Sweep auf die 4 Theorie-Artikel mit Praxis-naher Empirie-Mischung. Die anderen 16 kanonischen Theorie-Artikel (Vygotsky/Piaget/Sweller/Lave-Wenger/Biggs/Deci-Ryan/CTGV) bekommen eine Pauschal-Disposition ohne expliziten Audit.
**Methodik:** v3-Single-Pass, 4 Subagents parallel.
**Auditierte Artikel:** learning-engineering, neurodidaktik-programmieren, threshold-concepts, computational-action.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz |
|---|---|---|---|---|---|---|
| learning-engineering | 4 | 3 | 1 | 0 | 0 | 0.93 |
| neurodidaktik-programmieren | 6 | 2 | 0 | 2 | 2 | 0.93 |
| computational-action | 3 | 2 | 0 | 1 | 0 | 0.88 |
| threshold-concepts | 4 | 4 | 0 | 0 | 0 | 0.91 |
| **Σ** | **17** | **11** | **1** | **3** | **2** | **0.91** |

**2 CRIT + 3 MAJOR + 1 MINOR in 17 Cites = 29 % CRIT+MAJOR-Dichte** — höchste Dichte der gesamten Audit-Reihe.

| Welle | Cites | CRIT | MAJOR | Befund-Dichte (CRIT+MAJOR) |
|---|---|---|---|---|
| 11 | 33 | 0 | 7 | 21 % |
| 12 | 19 | 1 | 2 | 16 % |
| 13 | 37 | 0 | 5 | 13.5 % |
| 14 | 28 | 1 | 5 | 21,4 % |
| 15 | 40 | 1 | 6 | 17,5 % |
| **16** | **17** | **2** | **3** | **29 %** |

**Welle 16 ist die ergiebigste Welle gemessen an CRIT+MAJOR-Dichte.** Die Heuristik „4 verdächtige Theorie-Artikel" (anstatt 20 pauschal oder 5 zufällig) hat die richtigen Artikel selektiert.

## Pattern-Verteilung Welle 16

| Pattern | Treffer Welle 16 | Beispiele |
|---|---|---|
| #2c Hybrid-Citation (Titel/Venue/DOI stimmen, Autoren falsch) | 1 (CRIT) | Peitek 2021 eNeuro → real **Ikutani et al. 2021** (NAIST/Japan, komplett anderes Team) |
| #7 Hot-Spot-Inversion / Subpattern 2b interne Misattribution | 1 (CRIT) | for/if-MVPA-Diskriminierbarkeit auch Ivanova zugeschrieben — Ivanova findet explizit das **Gegenteil** |
| #16 Pages-Drift | 1 (MAJOR) | Dehaene & Cohen 2007 Neuron 56(2): Wiki **209-217** → real **384-398** |
| #17 Inhalts-Überschreibung mit synthetischer Framework-Behauptung | 1 (MAJOR) | computational-action „Vier Designprinzipien Authenticity/Audience/Agency/Iteration" — Tissenbaum 2021 hat 2 Dimensionen × 2 Kriterien, nicht diese 4-A-Liste |
| #4 invertiert (Orphan-Cite) | 1 (MINOR) | Dede/Richards 2020 in Quellenliste, im Body nicht angesprochen |

## Wichtige systematische Erkenntnisse

### 1. fMRI-Empirie ist der heißeste Domänen-Hot-Spot im gesamten Repo

**neurodidaktik-programmieren.md trägt 4 von 5 schweren Welle-16-Befunden** (2 CRIT + 2 MAJOR auf 6 Cites = 66 % CRIT+MAJOR-Dichte). Pattern-Profil:
- Hybrid-Citation Pattern #2c (Peitek-eNeuro → Ikutani-eNeuro) — Forschungsgruppen-Verwechslung, weil zwei zeitgleiche fMRI-Code-Comprehension-Papers von verschiedenen Teams (Magdeburg/Saarbrücken vs. NAIST Japan) ähnliche Topics haben
- Hot-Spot-Inversion Pattern #7 (Ivanova als für/if-Diskriminierbarkeits-Beleg) — gleiche Studien-Findings werden auf das falsche Paper attribuiert
- Pages-Drift Pattern #16 (Dehaene/Cohen) — sloppy Bibliografie

**Empfehlung für Material-Generierung:** Wenn ein Agent neurodidaktische/fMRI-Befunde in Lernsituationen einbauen soll, ist neurodidaktik-programmieren.md **vor dem Fix nicht zitierbar**.

### 2. Pop-Wissenschafts-Folklore-Subpattern jetzt 4× repo-systematisch

- W13: Mark CHI 2008 „23:15"-Folklore-Zahl
- W14: Lytle 2019 „drei Bedingungen, Verständnis/Frustration"
- W15: Svabensky 2021 als CTF-Wirkungsbeleg
- **W16: Tissenbaum 2021 „vier Designprinzipien Authenticity/Audience/Agency/Iteration"**

Alle vier Befunde teilen dieselbe Struktur: peer-reviewter Cite + erfundene/synthetisierte Inhalts-Behauptung, die in dem zitierten Paper nicht so steht. Das ist jetzt das **stabilste Subpattern** der gesamten Audit-Reihe.

### 3. Heuristik „verdächtige Praxis-nahe Theorie-Artikel" funktioniert

Die Auswahl der 4 Artikel basierte auf der Vermutung: Theorie-Artikel mit moderner Empirie-Mischung (fMRI / Plattform-Daten / DBR-Synthesen) tragen höheres Hot-Spot-Risiko als kanonische Theorie-Artikel.

Resultat:
- **neurodidaktik-programmieren** (fMRI): 4 schwere Befunde — heißester Single-Artikel der gesamten Audit-Reihe
- **computational-action** (DBR): 1 MAJOR (Framework-Synthese)
- **learning-engineering** (Plattform-Empirie): 1 MINOR (Orphan-Cite)
- **threshold-concepts** (Misconception-Forschung): 0 — Hypothese hier widerlegt; kanonisch bleibt

3 von 4 ausgewählten Artikeln hatten substanzielle Befunde — das rechtfertigt den Mini-Sweep als Methodik. Pauschal-Disposition für die 16 verbleibenden kanonischen Theorie-Artikel ist damit empirisch fundiert.

### 4. Subpattern „synthetische Framework-Behauptung" als neue Risiko-Klasse

Tissenbaum 2021 vier-A-Liste + Ericson 2022 „47 Studien" + Beese „wirksamste Einzelhilfe" + BKT-Defaults „nach C&A 1995" sind alle Beispiele desselben Subpatterns:
- **Pattern**: Quellenliste sauber, Body-Aussage präsentiert eine elegante didaktische Synthese als wäre sie ein zitiertes Schema/Befund
- **Risiko für Material-Generierung**: HOCH — der Agent zitiert das fingierte Schema 1:1 weiter

## Detail-Findings

### CRIT 1: neurodidaktik-programmieren — Peitek-eNeuro Hybrid (real Ikutani)

**Wiki:** *„Peitek, N. et al. (2021). Expert Programmers Have Fine-Tuned Cortical Representations of Source Code. eNeuro, 8(1)."*
**Real:** Titel + Venue + DOI **10.1523/ENEURO.0405-20.2020** gehören zu **Ikutani, Y., Kubo, T., Nishida, S., Hata, H., Matsumoto, K., Ikeda, K., & Nishimoto, S. (2021)** — NAIST Japan + ATR Labs. Komplett anderes Forschungsteam als Peitek/Apel/Parnin/Brechmann/Siegmund. Peitek-Gruppe hat dasselbe Jahr ein **separates** ICSE-2021-Paper publiziert (im Wiki als Citation 4 korrekt zitiert).
**Severity:** CRITICAL (Pattern #2c)
**Korrektur:** Erstautor + Co-Autorenliste komplett auf Ikutani-Team umstellen.

### CRIT 2: neurodidaktik-programmieren — for/if-MVPA-Misattribution

**Wiki Z. 36:** Body schreibt for/if-Diskriminierbarkeit Ivanova UND Liu 2020 zu.
**Real:** Liu et al. 2020 finden MVPA-Diskriminierbarkeit (PFC 64,7%, IPS 67,4%, pMTG 68,4%). **Ivanova et al. 2020 findet explizit das Gegenteil** — MD-Antworten robust *regardless of program structure*; sequenziell, for, if produzieren KEINE meaningfully unterschiedlichen Signaturen.
**Severity:** CRITICAL (Pattern #7 + Subpattern 2b interne Misattribution)
**Korrektur:** Body-Aussage entkoppeln: Ivanova → MD-Netzwerk strukturunabhängig; Liu → for/if über MVPA diskriminierbar.

### MAJOR 1: neurodidaktik-programmieren — Dehaene & Cohen Pages-Drift

**Wiki:** *„Dehaene, S. & Cohen, L. (2007). Cultural Recycling of Cortical Maps. Neuron, 56(2), **209-217**."*
**Real:** *Neuron 56(2), **384-398***. CrossRef + PubMed + ScienceDirect einstimmig.
**Severity:** MAJOR (Pattern #16)

### MAJOR 2: computational-action — Tissenbaum 2021 „vier Designprinzipien"

**Wiki Z. 57-64:** *„In einem späteren Paper (BJET 2021) formulieren die Autoren vier Prinzipien für computational-action-orientierte Lernumgebungen: 1. Authenticity 2. Audience 3. Agency 4. Iteration."*
**Real:** Tissenbaum 2021 strukturiert als **2 Dimensionen × je 2 Kriterien**: (a) Computational Identity — Lernende verantwortlich für Artikulation/Design eigener Lösungen; Authentizität ggü. Computing-Community; (b) Digital Empowerment — authentisch+persönlich-relevante Kontexte; Wirkungspotential im eigenen Leben/Community. **Iteration ist im Paper DBR-Forschungsmethode, nicht Lernumgebungs-Designprinzip.**
**Severity:** MAJOR (Pattern #17 — synthetische Framework-Behauptung als zitiertes Schema)

### MINOR 1: learning-engineering — Dede/Richards Orphan-Cite

**Wiki:** *„Dede, C. & Richards, J. (Hrsg.). (2020). The 60-Year Curriculum: New Models for Lifelong Learning in the Digital Economy. Routledge."*
**Real:** Bibliografie korrekt. Aber im gesamten Body wird das Werk nicht ein einziges Mal zitiert oder paraphrasiert.
**Severity:** MINOR (Pattern #4 invertiert — Orphan-Cite)

## Cross-Repo-Verdacht (Welle 16)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Peitek 2021 eNeuro Hybrid (real Ikutani) | `grep -ri 'Peitek.*eNeuro\|Peitek.*Fine-Tuned\|Expert Programmers Have Fine-Tuned' wiki/` | niedrig (idiosynkratisch) |
| Dehaene/Cohen 2007 Pages 209-217 | `grep -ri 'Dehaene.*209\|Cultural Recycling.*209' wiki/` | niedrig |
| Ivanova/Liu for/if-Misattribution | `grep -ri 'Ivanova.*Liu\|MVPA.*for' wiki/` | niedrig |
| Tissenbaum „vier Designprinzipien Authenticity/Audience/Agency/Iteration" | `grep -ri 'Authenticity.*Audience.*Agency.*Iteration\|Tissenbaum.*Prinzipien' wiki/` | mittel (ggf. in handlungsorientierter-unterricht oder lernsituationen-gestalten) |
| Dede/Richards 2020 Orphan-Cite | `grep -ri 'Dede.*Richards\|60-Year Curriculum' wiki/` | niedrig |

## Korrektur-Backlog

**Cluster CRIT (eigener Commit):**
1. neurodidaktik-programmieren.md — Peitek/Ikutani-Hybrid + Ivanova/Liu-Misattribution (zusammenhängend, beide neurodidaktik)

**Cluster MAJOR:**
2. neurodidaktik-programmieren.md — Dehaene/Cohen Pages 209-217 → 384-398
3. computational-action.md — Tissenbaum Vier-A-Schema → 2 Dimensionen × 2 Kriterien

**Cluster MINOR:**
4. learning-engineering.md — Dede/Richards Orphan-Cite (Body-Bezug ergänzen oder Cite entfernen)

## Stand nach Welle 16

- **86 Artikel auditiert** (Welle 1-15 + 4 Welle-16-Praxis-nahe-Theorie) — **84 % von 102 Wiki-Artikeln explizit auditiert**
- **Praxis-/Methoden-Sweep + gezielter Theorie-Mini-Sweep komplett abgeschlossen**
- **Verbleibend: 16 kanonische Theorie-Artikel für Pauschal-Disposition** ohne expliziten Audit
