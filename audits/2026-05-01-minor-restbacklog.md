# MINOR-Restbacklog (Stand 2026-05-01)

**Anlass:** Detail-MINORs aus Welle-3/4/5-Subagent-YAMLs, die in den jeweiligen Welle-Konsolidierungen nicht in einer eigenen Backlog-Tabelle aufgeführt wurden, plus terminologische Sammel-Korrekturen aus Sweep-2.

**Status:** Diese MINORs sind nicht dringlich (alle CRITs + MAJORs sind gefixt), sollten aber dokumentiert sein, damit sie bei einer späteren Sammel-Korrektur nicht vergessen werden.

## Welle-3-MINOR-Restbacklog

| Datei | Befund | Korrekturvorschlag |
|---|---|---|
| ki-prompt-handwerk | CLEAR-Tabellen-Übersetzung leicht in Richtung "Iteration / Output-Check" verschoben gegenüber Lo (2023)-Original (Adaptive ist im Original Temperature/Phrasing-Tuning, nicht V1→V2→V3) | CLEAR-Definitionen näher am Original wiedergeben oder als didaktische Adaption kennzeichnen |
| ki-prompt-handwerk | Pădurean et al. (2025) Beschreibung "skaliert für Edukationskontexte" ist lockere Paraphrase — Kernbeitrag ist Plattform-Design + Usage-Studie | "Plattform-Studie mit >900 Studierenden im CS1-Kontext" (in Cluster-2-Bulk-Fix bereits gefixt) |
| ki-prompt-handwerk | Hoffman "Impromptu" als orphan citation (steht nur in Quellenliste, wird im Body nicht referenziert) | Body-Verweis ergänzen oder Quelle aus Quellenliste entfernen |
| llm-integrationsmuster-lernumgebungen | Generische Citations ohne Erstautor (Nursing-Debriefing-Scoping-Review, Frontiers-Roleplay) | Vollständige Citations mit Erstautor + Originaltitel |
| llm-integrationsmuster-lernumgebungen | "Tandfonline 2025" als hängende Inline-Referenz im Body, fehlt in Quellenliste | Vollzitat in Quellenliste ergänzen |
| llm-integrationsmuster-lernumgebungen | "~50 % Sycophancy-Behauptung" ohne Quellenanker im Body | Quelle (Science 2026 oder ELEPHANT) ergänzen |
| unterrichtsphasen-artikulation | Roth-Stufe 4 "Bewährung" weggelassen ("Stufe der Bewährung — der Tuns und Ausführens") | Original-Wortlaut ergänzen oder als didaktische Verkürzung kennzeichnen |
| unterrichtsphasen-artikulation | Meyer/Junghans 2022 — Reihenfolge: laut Cornelsen ist Junghans Erstautorin der 20. Aufl. | "Junghans, C. & Meyer, H. (2022)" |
| unterrichtsphasen-artikulation | KMK 2007 "sechs Schritte vollständige Handlung" — KMK-Originaltext nutzt teils 5-Phasen-Variante | Aussage präzisieren oder als Anwender-Konvention kennzeichnen |
| metakognition | Schraw & Moshman 1995 "strukturell identisch mit Zimmermans SRL-Phasen" — Querverweis ist Sekundärliteratur-Synthese, sollte mit Zimmerman-Originalcite belegt werden | Zimmerman 2000/2002 als zusätzliche Quelle ergänzen |
| metakognition | Chi 1989/1994 als Doppel-Cite ohne Replikations-Hinweis (Self-Citation-Cluster) | Hinweis "Chi-Forschungsgruppe, 1989+1994" ergänzen |

## Welle-4-MINOR-Restbacklog

| Datei | Befund | Korrekturvorschlag |
|---|---|---|
| kooperatives-lernen | J&J 2009 Effektstärken-Range "0,50–0,65" konservativ — J&J-Linie berichtet typisch 0,55–0,67 | Range präzisieren oder Edition explizit nennen |
| rubric-design | Panadero 2023 "substantielle Effekte" für g=0,45 — Meta-Analyse selbst nennt es "moderate and positive" | "moderat-positiv" oder "g=0,45" direkt zitieren |
| rubric-design | Gonzalez Single-Point-Rubric 2014 → tatsächliches Veröffentlichungsdatum laut cultofpedagogy.com 4. Februar 2015 | Datum 2014 → 2015 |
| desirable-difficulties | Kornell & Bjork "78 % hielten massed besser" — Originalpaper berichtet 71% massed-better, 17% equal, 12% spaced-better | "~80 % hielten massed/blocked für effektiver oder gleichwertig" oder konkret 71% |
| desirable-difficulties | Lipowsky 2015 Schulpädagogik heute Heft 6 Seiten 1-10 — Heftnummer und Seiten nicht eindeutig verifizierbar | Bibliografische Details prüfen oder Heftangabe entfernen |
| desirable-difficulties | Agarwal & Bain (2019) "Notenstufe-Gewinn" ist Buch-Marketing-Claim, kein peer-reviewter Effekt | Charakterisierung als "Praxisbericht / Buch-Marketing" kennzeichnen, nicht als robuste Evidenz |
| desirable-difficulties | Bjork-Self-Citation-Cluster (5× R./E. Bjork in Quellenliste, alle als unabhängige Belege im Body) | Hinweis "Bjork-Forschungsgruppe ist Begründer des Konstrukts" ergänzen |
| ki-kompetenzrahmen-schule | UNESCO-Datierung "September 2024" — UNESCO-Seite nennt 8. August 2024 | Datum auf August 2024 |
| ki-kompetenzrahmen-schule | DigComp 2.2 "250+ Beispiele zu KI/IoT/Data" verengt — die 250+ sind Gesamtbeispiele inkl. KI/IoT/Data | "250+ neue Beispiele insgesamt, viele zu KI/IoT/Data" |
| ki-kompetenzrahmen-schule | KMK Rahmenlehrplan FIAE — "13.12.2019 / 13.01.2020" zweites Datum unklar | Klärung Beschluss-Datum vs. Inkrafttreten oder zweites Datum entfernen |
| ki-kompetenzrahmen-schule | BIBB-Publikation Verlag — ist Barbara Budrich (Leverkusen), nicht "BIBB-Publikation Bonn" | Verlag korrigieren |

## Welle-5-MINOR-Restbacklog (außerhalb Cluster-3-Bulk-Fix)

| Datei | Befund | Korrekturvorschlag |
|---|---|---|
| fachgespraech-didaktik | Talkpal-Studie (Dikaprio & Diem 2024) — Quellengewicht niedrig (kleines indonesisches OA-Journal) | Im Body schon als "Indiz" gekennzeichnet — OK, aber Disclaimer kann noch expliziter |

## Sweep-2-Sammel-Korrektur (terminologisch)

| Pattern | Files | Korrektur |
|---|---|---|
| KMK statt Bildungs-MK für Beschlüsse ab 10.10.2024 | ki-kompetenzrahmen-schule, ki-nutzungsregeln-unterricht, ki-integritaet-pruefungsleistung, ki-tool-auswahl-berufsschule | "Bildungsministerkonferenz (Bildungs-MK, Nachfolge-Konferenz der KMK)" für Beschlüsse ab dem Strukturreform-Datum 10.10.2024 |

## Methodik-Konsequenzen für künftige Audits

Die folgenden Erkenntnisse aus Welle 3-5 + Sweeps sollten in v3-audit-methodik.md übernommen werden:

1. **Neuer Hot-Spot: Fabrizierte Studien-Boxen** mit konkreten n-Zahlen + Institutionen + Effekt-Richtungen ohne DOI/URL. 4× in ki-native-lernumgebungen + retrieval-practice (Yang/Tafliovich) + mastery-learning (Jang KJME) gefunden.

2. **Neuer Hot-Spot: Body-vs-Quellenliste-Inkonsistenz.** Beispiel Ohmann/Soosai Raj — Quellenliste hatte Single-Author korrekt, Body erwähnte Phantom-Co-Autor.

3. **Hybrid-Citation-Pattern (echter Titel + falsche Autoren) jetzt 4× systematisch dokumentiert:** Lancaster/Cotton SIGITE 2023, Denny CACM 2024, Denny ITiCSE 2024, Jang KJME 2023. DOI-Lookup würde diese nicht fangen — Autorenliste UND Titel UND Venue jeweils einzeln gegen CrossRef prüfen.

4. **Erstautor-Misattribution bei nicht-westlichen Namen jetzt 6× systematisch:** Lee/Kyung, Zhang/Chu, Dhulipalla/Pathak, Liu/Shahzad, Xu/Li, Stahl/Xiao. Plus 1× chinesisch zu unklar (Coppock/Shen — Coppock ist westlicher Name, aber tatsächlich Shen/Tamkin).

5. **Effektstärken-Generationenfehler bestätigt:** Hattie/Donoghue 2016 zitiert Substrategien-Werte aus Donker 2014 als Sekundärzitat — Wiki sollte Originalquelle nennen, nicht das aggregierende Paper.

6. **Subagent-Konflikt-Auflösung:** Wenn zwei Subagenten widersprechen (Welle 5 sagte "Triade nicht reproduzierbar", Sweep sagte "ist im Volltext"), direkten WebFetch zur Originalquelle als Tiebreaker.

7. **Triage-Score-Schwäche:** Niedriger Risk-Score (22-23) korreliert NICHT mit niedrigerer CRIT-Rate. Welle 5 (Score 22-23) hatte 5 CRITs, Welle 3+4 (Score 27-40) zusammen 1 CRIT. Triage sollte Pattern für Hot-Spots integrieren, die im aktuellen Score-Schema nicht abgebildet sind.
