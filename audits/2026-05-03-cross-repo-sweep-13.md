# Cross-Repo-Sweep 13 (post Welle 17)

**Datum:** 2026-05-03
**Anlass:** Spillover-Check für die 10 in Welle 17 dokumentierten `cross_repo_verdacht`-Pattern.
**Methodik:** Direkt-Grep auf `wiki/` für jede Verdachts-Phrase. Bei Treffern Lokal-Inspektion und Sofort-Korrektur (gleicher Severity wie Original-Befund).

## Geprüfte Pattern (10) und Ergebnis

| # | Pattern | Ursprung W17 | grep-Treffer | Status |
|---|---|---|---|---|
| 1 | Walden & Brandes 2017 IJRVET-Misattribution | lernortkooperation-transfer | 0 | clean |
| 2 | Gössling 2023 vs. real 2025 | lernortkooperation-transfer | 1 (nur Quell-Artikel) | bereits in W17-Pass gefixt |
| 3 | Euler 2004 „Handbuch der Berufsbildung / VS Verlag" | lernortkooperation-transfer | 0 | clean |
| 4 | Aebli „verinnerlichtes Handeln" als Direktzitat | handlungsorientierter-unterricht | 1 (nur Quell-Artikel) | bereits in W17-Pass gefixt |
| 5 | Tramm/Krille 2013 Untertitel-Drift | handlungsorientierter-unterricht | **1 SPILLOVER in `lernsituationen-gestalten`** | gefixt |
| 6 | KMK-Handreichung 2021 ohne Stand-Datum | handlungsorientierter-unterricht | **1 SPILLOVER in `lernsituationen-gestalten`** + 1 abweichende KMK-2007-Variante in `unterrichtsphasen-artikulation` (separate ältere Quelle, kein Befund) | 1× gefixt |
| 7 | KMK-RLP Fachinformatiker Datierungs-Drift | handlungsorientierter-unterricht | 2 weitere Vorkommen: `lernsituationen-gestalten` (bereits korrekt formuliert „2019/2020 mit Beschluss-Datum"), `ki-kompetenzrahmen-schule` (**kuriose Doppel-Datierung „13.12.2019 / 13.01.2020"** — gefixt) | 1× gefixt |
| 8 | Bloom 1984 (2-Sigma) Body-Cite ohne Listing | kursarchitektur-lernumgebungen | 2 weitere Vorkommen: `learning-engineering` und `mastery-learning` — **beide haben Bloom 1984 sauber im Quellenverzeichnis** | clean |
| 9 | „chocolate-covered broccoli" Dichev-Zuschreibung | kursarchitektur-lernumgebungen | 1 (nur Quell-Artikel) | im Quell-Audit als Soft-Befund (Zuschreibung in Repo plausibel, Original-Ursprung Laurel/Bruckman 1990er nicht im Repo nachgezogen) |
| 10 | Schell+Koster „Onboarding/Main Loop/Mastery"-Trias | kursarchitektur-lernumgebungen | 1 (nur Quell-Artikel, in Body-/Summary-Stellen identische Phrase) | bereits in W17-Pass mit Disclosure-Hinweis versehen |

## Spillover-Korrekturen umgesetzt

### `lernsituationen-gestalten.md` (2 Spillover-Fixes)

1. **KMK-Handreichung 2021** — Z. 146: verkürzter Titel ohne Stand-Datum → ersetzt durch vollständigen Titel inkl. Stand 17.06.2021 + Hinweis auf Vorgänger 14.12.2018 (analog Fix in `handlungsorientierter-unterricht`).
2. **Tramm/Krille 2013** — Z. 149: stark verkürzter Titel („Planung des Lernfeldunterrichts.") → ersetzt durch vollständigen Titel inkl. korrektem Untertitel „lernfeldübergreifender Kompetenzentwicklung" und Subtitle-Zusatz „Das Hamburger Konzept kooperativer curricularer Entwicklungsarbeit".

### `ki-kompetenzrahmen-schule.md` (1 Spillover-Fix)

3. **KMK-RLP Fachinformatiker** — Z. 156: kuriose Doppel-Datierung „Beschluss vom 13.12.2019 / 13.01.2020" (das zweite Datum ist nicht belegbar, vermutlich Datierungs-Konfusion mit der Verkündung im Bundesanzeiger) → ersetzt durch standardisierte Form `KMK (2019, 13.12.2019). *Rahmenlehrplan ...* (Inkrafttreten 01.08.2020).` analog Fix in `handlungsorientierter-unterricht`.

### `unterrichtsphasen-artikulation.md` (kein Fix)

KMK-Handreichung 2007-Variante in Z. 162 ist eine andere ältere Auflage der KMK-Handreichung (2007, vor 2018-Update); wird im Artikel als historische Referenz zitiert, nicht als Standard-Cite. **Kein Befund.**

## Bilanz

- **3 Spillover-Befunde** in `lernsituationen-gestalten` (×2) und `ki-kompetenzrahmen-schule` (×1).
- **7 Pattern repo-weit clean** (entweder keine weiteren Vorkommen oder andere Artikel haben Cite bereits korrekt).
- **Sweep-Trefferquote: 30 %** (3 von 10 Pattern produzierten Spillovers) — im Mittelfeld der Sweep-Reihe (Sweep 15 hatte 50 % als Hochwert, Sweep 12 0 %).
- **Severity der Spillovers:** alle MINOR (Bibliografie-Hygiene). Keine MAJORs/CRITs als Spillover.

## Methodische Bemerkungen

- **Pattern 8 (Bloom 1984)** ist ein positives Negativ-Ergebnis: zwei andere Artikel (`learning-engineering`, `mastery-learning`) haben den Cite **bereits sauber** in der Quellenliste — die Disziplin-Lücke war auf `kursarchitektur-lernumgebungen` beschränkt. Das stützt die Annahme, dass Pattern #4 Variante A artikel-spezifisch (nicht systemisch) auftritt.
- **Pattern 7 (KMK-RLP-Datierung)** hat den interessantesten Treffer: `ki-kompetenzrahmen-schule` hatte eine zweifache Datums-Verschmelzung („13.12.2019 / 13.01.2020"). Der Januar-Termin ist nicht als Beschluss-Datum belegbar; vermutlich Konfusion mit Verkündung im Bundesanzeiger oder mit dem KMK-Beschluss zur Ausbildungsverordnung. Bei zukünftigen KMK-RLP-Cites: Beschluss-Datum 13.12.2019 + Inkrafttreten 01.08.2020 als Standard-Form.
- **Pattern 10 (Schell+Koster-Trias)** im Quell-Artikel mit Disclosure-Hinweis versehen, aber repo-weit nicht weiter dupliziert. Vorlagen-Risiko gering.

## Kein weiterer Sweep nötig

Alle 10 W17-Verdachts-Pattern abgearbeitet. Die nicht-trivialen Spillovers (3 ×) sind gefixt. Welle 17 + Sweep 13 schließen die Audit-Reihe formal ab.
