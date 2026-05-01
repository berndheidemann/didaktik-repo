# Welle 4 — Hattie/KI-Praxis/Verwaltung (v3-Single-Pass)

**Datum:** 2026-05-01
**Methodik:** v3-Single-Pass, 5 Subagents parallel, model: opus, ohne Self-Consistency-Pass.
**Auditierte Artikel:** kooperatives-lernen, ki-tool-auswahl-berufsschule, ki-kompetenzrahmen-schule, rubric-design, desirable-difficulties.

## Anlass + Hypothese

Zweite v3-Welle nach Cross-Repo-Sweep und Korrektur der schwersten Welle-3-Befunde. Hypothese: Top-Risk-Cluster ist abgegrast — restliche Hochrisiko-Artikel werden methodisch vorsichtiger sein, aber neue Pattern auftauchen (Verwaltungs-Tabellen, KI-Tool-Datierungen, Hattie-Edition-Drift in vorher unauditierten Bereichen).

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| kooperatives-lernen | 11 | 9 | 2 | 0 | 0 | 0.86 | 14 (1.27/cite) |
| ki-tool-auswahl-berufsschule | 12 | 6 | 4 | 2 | 0 | 0.85 | 11 (0.92/cite) |
| ki-kompetenzrahmen-schule | 10 | 6 | 2 | 2 | 0 | 0.91 | 14 (1.40/cite) |
| rubric-design | 11 | 6 | 3 | 1 | 1 | 0.88 | 19 (1.73/cite) |
| desirable-difficulties | 19 | 11 | 4 | 1 | 0 | 0.88 | 19 (1.00/cite) |
| **Σ** | **63** | **38** | **15** | **6** | **1** | **0.88** | **77 (1.22/cite)** |

**1 CRITICAL** (Dhulipalla→Pathak in rubric-design) — bestätigt unabhängig den Sweep-Befund. Damit haben Sweep + v3-Audit unabhängig denselben CRIT gefunden — schöner Konvergenz-Beleg für die Methodik.

## Wiederkehrende Fehlermuster (Welle 4)

### Neue Pattern (nicht in Welle 3)

1. **Verwaltungs-Tabellen mit erfundenen Schulart-Trennungen** (1× MAJOR): Bayern reserviert fobizz NICHT für berufliche Schulen — die Trennung "telli für allgemeinbildende, fobizz für berufliche Schulen" existiert in keiner offiziellen Quelle. Plus dieselbe Tabelle ist veraltet (4 Länder als "im Rollout" markiert, sind seit Okt-Dez 2025 produktiv; Bremen + Niedersachsen fehlen).
2. **Internes Selbst-Widerspruch innerhalb desselben Artikels** (1× MAJOR): UNESCO Teachers Framework wird in Zeile 56 mit korrekt 3 Progressionsstufen referenziert, in Zeile 114 mit erfundenen 4 Stufen ("Lead"-Stufe gibt es nicht).
3. **Fabriziertes Update-Jahr** (1× MAJOR): EC Ethical Guidelines "(2022, aktualisiert 2024)" — kein 2024-Update existiert; zweite Version erschien 5. März 2026.
4. **KMK vs. Bildungs-MK (Strukturreform Juni 2024)** (1× MINOR-Hinweis, repo-weit relevant): Beschlüsse ab 10.10.2024 stammen formal von der neu gegründeten Bildungs-MK, nicht vom historischen KMK-Plenum. Im Repo durchgängig "KMK" — meist akzeptable Vereinfachung, bei juristischen/zitatorischen Kontexten präziser zu fassen.
5. **BfDI/DSK-Konfusion bei Orientierungshilfen** (1× MINOR): Die "Orientierungshilfe KI und Datenschutz" (Mai 2024) stammt von der DSK, nicht vom BfDI. BfDI hat im Dezember 2025 separat "KI in Behörden" veröffentlicht.

### Bekannte Pattern bestätigt

6. **arXiv-Erstautor-Misattribution mit südasiatischem Nachnamen** (1× CRIT): Pathak, A. → "Dhulipalla, A. et al." in rubric-design. Gleiche Pattern-Familie wie koreanische arXiv-Erstautoren in Welle 3.
7. **Inline-Cites ohne Vollzitat in Quellenliste** (strukturell, ~10 Treffer in 2 Artikeln): kooperatives-lernen (Lyman 1981, Rosenshine&Meister 1994, J&J 1979) und desirable-difficulties (Adesope 2017 [MAJOR — Body-zitiert mit Wert, fehlt aber komplett in Quellenliste], Brunmair 2019, Bertsch 2007, Butler 2007, Kalyuga 2007, Hwang 2025, Son&Simon 2012). Bibliografische Disziplin systematisch lockerer als bei Welle-3-Artikeln.
8. **Co-Autoren-Auslassung** (3×): Yavuz 2025 ohne Çelik & Yavaş Çelik (rubric-design), Adesope 2017 ohne Trevisan & Sundararajan (desirable-difficulties), Butler 2007 ohne Karpicke & Roediger (desirable-difficulties).
9. **Effektstärken-Wert-Drift in Sekundärliteratur** (1×): Kornell & Bjork 2008 "78%" — Originalpaper berichtet 71% massed-better; 78%/80% kursieren in Sekundärquellen als Aggregat-Variante.
10. **Domänen-Generalisierung ohne Disclosure** (1×): Hwang 2025 wird als "Azubi-Evidenz" zitiert — tatsächlich Korean L2-Vokabel-Lernen bei Vocational-Highschool-Schülern. Kern-Befund (blocked > interleaved bei low-achievers) plausibel transferierbar, aber Übertragungsschritt nicht expliziert.

## Detail-Findings (CRIT + MAJORs)

### CRITICAL — rubric-design

**Citation 8 — "Dhulipalla, A. et al. (2025)" → Pathak, A. et al.**
arXiv:2503.23989, ICER 2025, "Rubric Is All You Need: Improving LLM-based Code Evaluation With Question-Specific Rubrics". Erstautor ist Aditya Pathak (BITS Pilani), Senior Author Dhruv Kumar. "Dhulipalla" kommt unter den 14 Autoren GAR NICHT vor — vollständige Phantom-Erstautoren-Zuschreibung. Inhalt (frage-spezifische Rubrics > frage-agnostische beim LLM-Code-Scoring) verifiziert.
**Korrektur:** "Pathak, A., Gandhi, R., Uttam, V., Ramamoorthy, A., Ghosh, P., Verma, S., Mittal, A., Ased, A., Khatri, C., Nakka, Y., Jindal, A. R., Devansh, Challa, J. S., & Kumar, D. (2025). Rubric is all you need..."
**Repo-weit:** Sweep hat 3 Stellen identifiziert (rubric-design + llm-as-grader + explain-in-plain-english). Werden im nachgelagerten arXiv-Bulk-Fix gemeinsam korrigiert.

### MAJOR — ki-tool-auswahl-berufsschule

**Citation 3 — Erfundene Bayern-fobizz-Trennung.**
Body und Tabelle behaupten "Bayern behält z.B. fobizz explizit für berufliche Schulen, telli für allgemeinbildende". ByCS und KM Bayern stellen telli + ByCS-KI für ALLE Schulen bereit; fobizz wird kommunal über Medien-/KI-Budget finanziert (München, Nürnberg) — ohne Schulart-Reservierung.
**Korrektur:** Tabelle Bayern: "telli + ByCS-KI für alle Schulen seit 15.12.2025; fobizz kommunal über Medien-/KI-Budget (z.B. München, Nürnberg)". Body-Aussage zur Schulart-Trennung streichen.

**Citation 8 — Veraltete Tabelle "im Rollout".**
Saarland, Brandenburg, BW, Hessen sind alle seit Okt-Dez 2025 produktiv (nicht "im Rollout"). Bremen (Juni 2025!) und Niedersachsen fehlen in der Tabelle ganz.
**Korrektur:** Tabelle auf Stand April 2026 aktualisieren — alle 4 Länder zu "produktiv", Bremen + Niedersachsen ergänzen, Klassifikations-Spalte ggf. neu strukturieren.

### MAJOR — ki-kompetenzrahmen-schule

**Citation 2 — UNESCO Teachers: erfundene 4. Progressionsstufe.**
Zeile 56: korrekt "3 Progressionsstufen (Acquire → Deepen → Create)". Zeile 114: "vier Progressionsstufen (Acquire → Deepen → Create → Lead)" mit Dreyfus-Vergleich. UNESCO hat NUR 3 Stufen.
**Korrektur:** Zeile 114 auf 3 Stufen korrigieren, Dreyfus-Mapping anpassen.

**Citation 5 — EC Ethical Guidelines "aktualisiert 2024" frei erfunden.**
Zweite Version erschien laut op.europa.eu am 5. März 2026, kein 2024-Update existiert. Original-Veröffentlichung Oktober 2022.
**Korrektur:** "(2022; 2. Version 03/2026)" oder schlicht "(2022)".

**Plus aggregiert in Mapping-Tabelle (Citation 9):** LF 10a FIAE als "Objektorientierung" — KMK-Originaltitel ist "Benutzerschnittstellen gestalten und entwickeln". Könnte Bernds Schul-Akzentuierung sein (laut Memory weicht eure Schule vom KMK-Titel ab — LF5=OOP/SOLID, LF10=Frontend), aber der Artikel positioniert sich als Referenz auf KMK, nicht auf eure Schule.
**Korrektur:** KMK-Originaltitel pro Lernfeld als primäre Bezeichnung, Schul-Akzentuierung in Klammern.

### MAJOR — rubric-design

**Citation 5 — J&S 2007 "3-5 Kriterien optimal, >7 senkt Reliabilität".**
Im Abstract und in Sekundärquellen nicht belegbar. Plausibler Verdacht: Popham-1997-Empfehlung (3-5 Kriterien) ist fälschlich Jonsson & Svingby zugeschrieben. Volltext paywall.
**Korrektur:** Schwellen-Aussage entweder mit Volltext-Verifikation belegen oder als Popham-Empfehlung kennzeichnen.

**Citation 11 — Yavuz 2025 ohne Co-Autoren.**
Çelik, Ö. & Yavaş Çelik, G. fehlen in der Citation. Bei 3 Co-Autoren laut APA-7 alle aufzuzählen.

### MAJOR — desirable-difficulties

**Citation 9 — Adesope 2017 fehlt komplett in Quellenliste.**
Body zitiert "Adesope 2017: g=0,61" in der Hauptevidenz-Tabelle — Quelle taucht in der finalen Quellenliste am Ende des Artikels nicht auf. Plus Co-Autoren Trevisan & Sundararajan fehlen.
**Korrektur:** "Adesope, O. O., Trevisan, D. A., & Sundararajan, N. (2017). Rethinking the use of tests: A meta-analysis of practice testing. Review of Educational Research, 87(3), 659–701." in Quellenliste ergänzen.

## Cross-Repo-Befunde (neue Pattern aus Welle 4)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| UNESCO 4-Stufen-Halluzination "Lead" | `grep -ri 'acquire.*deepen.*create.*lead\|vier progressionsstufen.*unesco' wiki/` | niedrig (vermutlich Einzelfall) |
| EC Ethical Guidelines "aktualisiert 2024" | `grep -ri 'ethical guidelines.*2024\|aktualisiert 2024.*ethik' wiki/` | niedrig (vermutlich Einzelfall) |
| "KMK" für Beschlüsse ab 10.10.2024 (Bildungs-MK) | `grep -rE 'KMK.{0,30}(2024\|2025)' wiki/` | mittel (häufig im Repo, meist akzeptable Vereinfachung) |
| "BfDI Orientierungshilfe KI" → DSK | `grep -ri 'BfDI.*Orientierungshilfe\|BfDI.*KI und Datenschutz' wiki/` | niedrig |
| "Bayern fobizz für berufliche Schulen" | `grep -ri 'fobizz.*beruflich\|berufliche.*fobizz' wiki/` | niedrig |
| "telli flächendeckend Ende 2025" | `grep -rE 'telli.{0,30}(flächendeckend\|bundesweit)' wiki/` | niedrig |
| Inline-Cites ohne Vollzitat in Quellenliste (strukturell) | manuell pro Artikel — Body-`(Autor JJJJ)` gegen Quellenliste-Sektion | mittel — bibliografische Hygiene |
| Adesope 2017 ohne Co-Autoren | `grep -r 'Adesope' wiki/` | niedrig |
| Kornell & Bjork "78%" vs. Original 71% | `grep -ri 'Kornell.*Bjork\|78 ?%.*massed\|78 ?%.*geblockt' wiki/` | niedrig |
| Hwang 2025 als "Azubi"-Evidenz | `grep -r 'Hwang' wiki/` | niedrig — Domain-Disclosure |

## Robust gesicherte CRIT/MAJOR-Liste (Welle-4-Korrektur-Backlog)

| # | Datei | Severity | Korrektur |
|---|---|---|---|
| 1 | rubric-design + llm-as-grader + explain-in-plain-english | **CRITICAL** | "Dhulipalla, A. et al." → **Pathak, A. et al. (2025)**, arXiv:2503.23989. (3 Stellen, im arXiv-Bulk-Fix gemeinsam) |
| 2 | ki-tool-auswahl-berufsschule | MAJOR | Bayern-Tabelle: fobizz-Schulart-Trennung streichen; "telli + ByCS-KI für alle Schulen", fobizz als kommunale Lösung. |
| 3 | ki-tool-auswahl-berufsschule | MAJOR | Tabelle "im Rollout" → "produktiv" für SL/BB/BW/HE; Bremen + Niedersachsen ergänzen. |
| 4 | ki-kompetenzrahmen-schule | MAJOR | UNESCO Teachers: Zeile 114 von 4 auf 3 Progressionsstufen korrigieren (Lead-Stufe streichen). |
| 5 | ki-kompetenzrahmen-schule | MAJOR | EC Ethical Guidelines: "aktualisiert 2024" → "(2022; 2. Version 03/2026)" oder schlicht "(2022)". |
| 6 | ki-kompetenzrahmen-schule | MAJOR | LF-10a-Mapping: KMK-Originaltitel "Benutzerschnittstellen gestalten und entwickeln" als Primärbezeichnung. |
| 7 | rubric-design | MAJOR | J&S 2007 "3-5 Kriterien"-Schwelle belegen oder als Popham-Empfehlung kennzeichnen. |
| 8 | rubric-design | MAJOR | Yavuz 2025: Co-Autoren Çelik & Yavaş Çelik ergänzen. |
| 9 | desirable-difficulties | MAJOR | Adesope 2017 in Quellenliste ergänzen + Co-Autoren Trevisan & Sundararajan. |

**MINOR-Backlog (15 Befunde):** im Detail-Output der Subagents enthalten — Sammel-PR im nachgelagerten Bulk-Fix.

## Methodik-Limitierungen Welle 4

- **Volltext-Lücken:** Springer/ScienceDirect/Wiley-Paywalls bei mehreren Meta-Analysen (J&S 2007, Panadero 2023, Latimier 2021, Brunmair 2019, Son&Simon 2012). Verifikation lief über Sekundärquellen, Severity konservativ gehalten wo Layer-2-Pflicht nur teilweise erfüllt.
- **Verwaltungs-Tabellen-Aktualität:** ki-tool-auswahl-Tabellen veralten schnell (Tool-Rollouts laufen weiter). MAJOR-Befunde sind Stand 01.05.2026 — Re-Audit alle ~6 Monate sinnvoll.
- **Selbst-Widerspruchs-Detektion:** UNESCO 3-vs-4-Stufen-Inkonsistenz wäre durch reinen Bibliografie-Audit nicht aufgefallen — nur durch Layer-3-Inhaltsanalyse innerhalb desselben Artikels. v3-Methodik fängt das, ist aber tokenintensiv.
- **Konvergenz-Beleg:** Sweep + v3-Audit haben Dhulipalla-Befund unabhängig gefunden — Hinweis, dass Pattern-Sweep + Stichproben-Audit komplementär arbeiten, nicht redundant.

## Empfehlung für nächste Schritte

1. **Bulk-Fix-Schritt 3 (arXiv + MINORs):** wie ursprünglich geplant, jetzt um Welle-4-MAJORs erweitert.
2. **Welle 5 danach:** vier-komponenten-instruktionsdesign (23), fachgespraech-didaktik (23), rag-tutoring-systeme (22), prompt-engineering-didaktisch (22), ki-native-lernumgebungen (22).
3. **Verwaltungs-Tabellen Re-Audit-Routine:** ki-tool-auswahl, ki-kompetenzrahmen, ki-nutzungsregeln und ki-integritaet-pruefungsleistung in einem Mini-Re-Audit alle ~6 Monate, weil sie schnell veralten.
