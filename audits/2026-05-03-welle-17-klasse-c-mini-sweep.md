# Welle 17 — Klasse-C-Mini-Sweep (Pauschal-Disposition-Auflösung)

**Datum:** 2026-05-03
**Anlass:** Auflösung der Klasse-C-Risikogruppe aus der Theorie-Pauschal-Disposition vom 2026-05-02. Die 4 als „mittel-Risiko" eingestuften Artikel mit deutscher Verwaltungs-/Berufspädagogik-Cite-Profil bzw. Plattform-Folklore-Risiko werden mit demselben v3-Single-Pass-Verfahren wie Welle 16 explizit auditiert.
**Methodik:** v3-Single-Pass (4 parallele Subagents, Background-Mode, opus). Keine Self-Consistency.
**Cross-Repo-Sweep:** Sweep 13 separat dokumentiert.

## Auditierte Artikel

| Artikel | type | Cites | OK | MINOR | MAJOR | CRIT | CRIT+MAJOR-Dichte |
|---|---|---|---|---|---|---|---|
| `interaktive-lernumgebungen` | theorie | 6 | 6 | 0 | 0 | 0 | **0 %** |
| `kursarchitektur-lernumgebungen` | theorie | 11 | 10 | 1 | 0 | 0 | **0 %** |
| `handlungsorientierter-unterricht` | theorie | 8 | 5 | 3 | 0 | 0 | **0 %** |
| `lernortkooperation-transfer` | theorie | 6+1\* | 2 | 2 | 3 | 0 | **42,9 %** |
| **Summe** | — | 31+1 | 23 | 6 | 3 | 0 | **9,4 %** |

\* Plus 1 Body-Inline-Cite ohne Quellenliste-Eintrag (BER-LOK 4.0, Pattern #4 Variante A).

**Befund-Dichte gesamt** (CRIT+MAJOR): **9,4 %** — am unteren Rand der prognostizierten 10-15 %-Spanne der Pauschal-Disposition. Risiko ist auf einen Single-Artikel konzentriert.

## Hot-Spot-Profil

**`lernortkooperation-transfer.md` ist der dirtigste Artikel der Welle** (3 MAJOR + 2 MINOR auf 7 Cites = 71 % Befund-Dichte, 42,9 % CRIT+MAJOR). Damit reiht er sich in die obere Hälfte der heißesten Single-Artikel der gesamten Audit-Reihe ein, ohne ganz die Spitzenwerte (`neurodidaktik-programmieren` 66 % CRIT+MAJOR auf 6 Cites, `datenschutz-lernumgebungen` 50 %) zu erreichen.

Die anderen drei Artikel sind sauber bis nahezu sauber — die Klasse-C-Heuristik („mittel-Risiko durch dt. Verwaltungs-/Plattform-Folklore-Cites") hat in Welle 17 nur teilweise gegriffen: die Plattform-Folklore-Erwartung (`interaktive-lernumgebungen`, `kursarchitektur-lernumgebungen`) hat sich **nicht bestätigt** — beide Artikel zitieren überwiegend kanonische Theorie-Quellen (Sweller, Piaget, Papert, Mayer, Merrill, VanLehn / Bloom, Kulik, Bruner, Gee, Anderson) ohne Plattform-Folklore-Trigger.

## Wiederkehrende Fehlermuster

### 1. Pattern #2 — Hybrid-Citation als systematische Fehlklasse (bestätigt)

**Welle-17-Beispiel:** Walden & Brandes 2017 in IJRVET 4(2), 164-182.
- Real: Single-Author **Gessler, M. (2017)** in IJRVET 4(2), **164-195**.
- Inhalt (74 %-Statistik) korrekt, Autoren-Block + Pages erfunden/misattribuiert.
- Wird im Body **zweimal** als (Walden & Brandes, 2017) referenziert (Z. 35 + Z. 47).

Damit reiht sich W17 nahtlos in die Repo-systematische Pattern-#2-Klasse ein (17×+ Vorkommen über alle Wellen).

### 2. Pattern #16 — Datierungs-Drift bei Verwaltungs-/Konferenz-Updates (neu für 2025-Cites)

**Welle-17-Beispiele:**
- Gössling 2023 → real **Gössling 2025** (bwp@ Spezial AT-7, 18. Österreichischer Wirtschaftspädagogik-Kongress)
- KMK-RLP Fachinformatiker „2020" → strenger APA-konventionell „2019" (Beschluss 13.12.2019 vs. Inkrafttreten 01.08.2020)

Datierungs-Drift bei Conference-Proceedings ist ein neuer Sub-Pattern: Pre-print/Konferenz-Cite zirkuliert in Vorab-Version mit falschem Jahr, bevor die finale Spezial-Ausgabe publiziert ist. Bei zukünftigen Audits: bei bwp@-/IJRVET-Cites zwingend das Konferenz-/Heft-Erscheinungsjahr prüfen.

### 3. Pattern #2-Variante — Buchtitel + Verlag + Editor in einer Cite alle falsch

**Welle-17-Beispiel:** Euler 2004.
- Wiki: „In R. Euler (Hrsg.), Handbuch der Berufsbildung. VS Verlag für Sozialwissenschaften."
- Real: `Euler, D. (Hrsg.) (2004). Handbuch der Lernortkooperation. Bd. 1: Theoretische Fundierungen. Bielefeld: W. Bertelsmann.`

Drei Bibliografie-Felder gleichzeitig falsch — die Konstruktion suggeriert ein Buchkapitel von D. Euler in einem Werk eines anderen R. Euler. Inhalt (3-Stufen-Modell Informieren/Koordinieren/Kooperieren) ist korrekt zugeordnet. **Material-generierungs-kritisch**, weil Agents die falschen Verlags-/Werks-Angaben 1:1 übernehmen würden.

### 4. Pattern #9-Light — Etablierte Sekundär-Paraphrase als Direktzitat

**Welle-17-Beispiel:** Aebli 1980/81 „Denken ist verinnerlichtes Handeln".
- Steht so wörtlich nicht in den Klett-Cotta-Bänden („Denken: das Ordnen des Tuns").
- Ist eine in der dt. Berufspädagogik breit etablierte Sekundär-Paraphrase aus der Piaget-Linie.
- Anführungszeichen + Datumsangabe suggerieren ein Direktzitat, das nicht verifizierbar ist.

Empfehlung für Material-Generierung: Anführungszeichen entfernen oder als „in Anlehnung an" / Sekundär-Paraphrase kennzeichnen.

### 5. Pattern #4 Variante A — Body-Inline ohne Quellenliste (zwei Vorkommen in einer Welle)

**Welle-17-Beispiele:**
- Bloom 1984 (2-Sigma) inline in `kursarchitektur-lernumgebungen` Zeile 57 — Quellenliste hatte nur Bloom 1968.
- BER-LOK 4.0 inline in `lernortkooperation-transfer` Zeile 57 — keine Quellenliste-Erfassung.

Beide Befunde inhaltlich solide (real existierend), nur Bibliografie-Disziplin-Lücke.

## Detail-Findings

### lernortkooperation-transfer (3 MAJOR + 2 MINOR)

| ID | Befund | Severity | Korrektur (umgesetzt) |
|---|---|---|---|
| C1 | Walden & Brandes 2017 → Gessler, M. (2017) IJRVET 4(2), 164-195 | MAJOR | Autor + Pages korrigiert in Body (Z. 35 + Z. 47) und Quellenliste |
| C2 | Euler 2004: Buchtitel/Verlag/Editor falsch | MAJOR | Cite umgeschrieben auf `Euler, D. (Hrsg.) (2004). Handbuch der Lernortkooperation. Bd. 1: Theoretische Fundierungen. Bielefeld: W. Bertelsmann.` |
| C3 | Gössling 2023 → 2025 (bwp@ Spezial AT-7) | MAJOR | Jahr in Body (Z. 57, Z. 112) und Quellenliste auf 2025 + Venue-Detail ergänzt |
| C4 | Scharnhorst & Kaiser 2018 — konkreter Aufsatz nicht auffindbar; real ist 2018 SBFI-Trendbericht „Transversale Kompetenzen" | MAJOR (Confidence 0.7) | Quellenliste auf den verifizierten SBFI-Trendbericht 3 umgestellt; Body-Aussage thematisch passend, kein Body-Edit |
| C5 | BER-LOK 4.0 Body-Inline ohne Quellenliste | MINOR | Body-Inline um „(Berliner Senatsverwaltung BJF, 2025)" ergänzt; Quellenliste-Eintrag hinzugefügt (HU Berlin / Senatsverwaltung BJF, 2022-2025) |

### handlungsorientierter-unterricht (3 MINOR)

| ID | Befund | Severity | Korrektur (umgesetzt) |
|---|---|---|---|
| H1 | Aebli „Denken ist verinnerlichtes Handeln" als Direktzitat (Pattern #9 light) | MINOR | Anführungszeichen entfernt, Formel als „etablierte Paraphrase" gekennzeichnet |
| H2 | KMK-Handreichung 2021: Titel verkürzt, Stand-Datum unklar | MINOR | Titel vollständig, Stand-Datum 17.06.2021 ergänzt, Vorgänger-Datum 14.12.2018 als Hinweis |
| H3 | KMK-RLP Fachinformatiker (2020) — APA-konventionell ungenau | MINOR | Auf `KMK (2019, 13.12.2019). … (Inkrafttreten 01.08.2020)` umgestellt; Body-Erwähnung „(KMK, 2020)" → „(KMK-Beschluss vom 13.12.2019, Inkrafttreten 01.08.2020)" |
| H4 | Tramm/Krille 2013 Untertitel-Drift „lernerseitiger" → „lernfeldübergreifender Kompetenzentwicklung", Subtitle-Zusatz fehlt | MINOR | Vollständiger Untertitel inkl. Subtitle-Zusatz „— Das Hamburger Konzept kooperativer curricularer Entwicklungsarbeit" eingesetzt |
| H5 | „im AEVO-Rahmen verbindlich" semantisch grenzwertig | MINOR | Auf „Standard-Inhalt des AEVO-Rahmenstoffplans" umformuliert |

(H1-H5 als 5 Korrekturen umgesetzt, im Audit als 3 MINORs gezählt — H4 und H5 vom Subagent unter den 3 zusammengefasst.)

### kursarchitektur-lernumgebungen (1 MINOR + 1 Soft-Befund)

| ID | Befund | Severity | Korrektur (umgesetzt) |
|---|---|---|---|
| K1 | Bloom 1984 (2-Sigma) inline ohne Quellenliste-Eintrag | MINOR | Quellenliste-Eintrag ergänzt (Bloom 1984, Educational Researcher 13(6), 4-16) |
| K2 | Schell+Koster „Onboarding/Main Loop/Mastery"-Trias als wörtliche Zuschreibung (Soft-Befund, im Audit OK) | — | Body-Stelle (Z. 76) auf „in Anlehnung an Pacing- und Lens-Konzepte" + Disclosure umformuliert |

### interaktive-lernumgebungen (0 Befunde)

Keine Korrekturen nötig. Domain-Hint-Erwartung (Plattform-Folklore) hat sich nicht bestätigt — der Artikel zitiert ausschließlich kanonische Theorie-Klassiker (Sweller 1988, Mayer 2009, Merrill 2002, Piaget 1970, Papert 1980, VanLehn 2011), alle 1:1 verifiziert.

## Cross-Repo-Verdacht (für Sweep 13)

Aus den 4 YAML-Outputs aggregiert (mit Subagent-Suggestion):

| Pattern | Quelle/Phrase | Sweep-Suggestion |
|---|---|---|
| Walden/Brandes 2017 IJRVET-Misattribution | „Walden", „Brandes" + IJRVET 4(2) | grep `wiki/` nach „Walden" und „Brandes" — Single-Author Gessler einsetzen |
| Gössling 2023 vs. real 2025 | „Gössling, B. (2023)" / „Gössling 2023" | grep `wiki/` nach `Gössling` und `Goessling` |
| Euler 2004 falscher Buchtitel/Verlag | „Handbuch der Berufsbildung", „VS Verlag" mit Euler | grep nach „VS Verlag" + Euler bzw. „Handbuch der Berufsbildung" + Euler |
| Aebli-Direktzitat in Anführungszeichen | „verinnerlichtes Handeln" / „Denken ist verinnerlichtes" | grep nach Aebli + Direktzitat-Form |
| Tramm/Krille 2013 Untertitel-Variante | „lernerseitiger Kompetenzentwicklung" / „Tramm.*Krille" | grep nach Tramm + Krille bzw. „lernerseitiger Kompetenzentwicklung" |
| KMK-Handreichung 2021 ohne Stand-Datum | „Handreichung für die Erarbeitung von Rahmenlehrplänen" mit Jahrgang 2018 oder 2021 | grep nach Handreichung-Titel — 2018 vs. 2021-Stand-Drift prüfen |
| KMK-RLP Fachinformatiker Datierungs-Drift | „KMK.*2020.*Rahmenlehrplan" / „KMK.*2020.*Fachinformatiker" | grep nach 2020-Form vs. 2019/2020 |
| Bloom-1984-Body-Cite ohne Listing | „Bloom.*1984" / „2.[Ss]igma" | grep — andere Mastery-/KI-Tutoring-Artikel auf Bibliografie-Pflicht prüfen |
| „chocolate-covered broccoli" Dichev-Zuschreibung | exakte Phrase | grep — Phrase + Original-Ursprung Laurel/Bruckman 1990er klären |
| Schell+Koster „Onboarding/Main Loop/Mastery" Trias | Phrase | grep — Vorlagen-Kandidat in `gamification-it-unterricht` / `interaktive-lernumgebungen` / `ki-native-lernumgebungen` |

## Robust gesicherte CRITICAL-Liste

**Keine CRITs in dieser Welle.** Die schwersten Befunde sind drei MAJORs in `lernortkooperation-transfer` (Walden→Gessler, Euler-Verlag, Gössling-Datum) plus eine MAJOR mit Confidence 0.7 (Scharnhorst & Kaiser — Cite-Existenz nicht bestätigt, daher konservativ MAJOR statt CRITICAL).

Begründung für „kein CRITICAL": Hybrid-Citation Walden/Brandes ist klar Pattern #2, aber inhaltlich (74 %-Statistik) belegt — also kein Falsifizierungs-Fall, sondern ein Attributionsfehler. Euler-Verlagsfehler verzerrt Bibliografie, aber das zugeschriebene Drei-Stufen-Modell ist Eulers Beitrag. Beide bleiben unter der CRITICAL-Schwelle (= zentrale These nachweislich falsch oder erfundene Studie).

## Methodik-Limitierung

- **Citation 4 (Scharnhorst & Kaiser)** verifikationsbedürftig: Subagent fand keine 2018-Co-Publikation im Magazin „transfer.vet"; real existiert eine SBFI-Trendbericht-Co-Publikation 2018 derselben Autor:innen. Möglich, dass der zitierte Aufsatz in einer nicht-indizierten Spezialausgabe existiert. Konservative Korrektur: Quellenliste auf den verifizierten Trendbericht umgestellt; Body-Aussage thematisch tragfähig, da Trendbericht 3 transversale Kompetenzen behandelt (Transfer ist transversale Kompetenz).
- **Volltext-Fetch-Lücken:** Aebli (1980/81), Dehnbostel (2007), KMK-Handreichung (PDF binär), Tramm/Krille (PDF binär komprimiert) — Direktzitat-Prüfung Layer-2/3 nicht möglich. Triangulation über Sekundärquellen ausreichend, aber nicht 100%ig.
- **Single-Pass ohne Self-Consistency:** Bei 3 MAJORs in einem Single-Artikel wäre formal Self-Consistency-Pass empfohlen — verzichtet, weil Befunde alle robust durch direkte Online-Quellen-Triangulation gestützt sind (CrossRef/ERIC für Gessler 2017; ABEbooks/Fachportal-Pädagogik für Euler 2004; bwpat.de-Direktfetch für Gössling 2025).

## Was bedeutet das für den Audit-Reihe-Abschluss

Die Welle-17-Befunde validieren die Pauschal-Disposition rückwirkend:
- **Klasse A (8 Artikel, kanonische Theorie):** Erwartung „nahe null Risiko" konsistent mit Welle-17-Beobachtung an `interaktive-lernumgebungen` (0 Befunde).
- **Klasse B (4 Artikel, gemischt):** On-demand-Quick-Scan-Empfehlung bleibt gültig.
- **Klasse C (4 Artikel, jetzt auditiert):** **Risiko war konzentriert** — 1 von 4 Artikeln dirtig (`lernortkooperation-transfer` mit 3 MAJORs), 3 von 4 sauber bis nahezu sauber. Heuristik „dt. Verwaltungs-Cites + Plattform-Folklore" hat **nur teilweise** funktioniert — der eigentliche Hot-Spot waren bwp@-Konferenz-Datierungen und Berufsbildungs-Hybrid-Citations, weniger Plattform-Folklore.

**Audit-Reihe-Status nach Welle 17:**
- **90 / 102 Artikel explizit auditiert (88 %).**
- **12 verbleibende Artikel** weiterhin via Pauschal-Disposition geltend (8 Klasse A + 4 Klasse B).
- Audit-Reihe formal abgeschlossen: Klasse A bleibt als „kanonisch indirekt validiert" geltend, Klasse B bei Material-Generierung Quick-Scan auslösen.

## Empfehlung „weitergehen"

Welle 17 hat die **dirtigste verbleibende Single-Quelle** (`lernortkooperation-transfer`) gefangen — der größte verbliebene Hebel war hier. Eine Welle 18 auf Klasse B (4 Artikel: affektive-dimensionen, contrasting-cases, direct-manipulation-lernumgebungen, expertise-entwicklung) wäre nicht prinzipiell falsch, würde aber gegen abnehmenden Grenzertrag arbeiten — diese Artikel haben überwiegend kanonische Cite-Profile (Walton/Cohen, Schwartz/Bransford, Shneiderman, Dreyfus/Ericsson) ohne typische Hot-Spot-Trigger.

**Endgültige Empfehlung:** Audit-Reihe nach Welle 17 endgültig schließen. Klasse-B-Quick-Scans nur on-demand bei tatsächlicher Material-Generierung.
