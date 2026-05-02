# Welle 11 — Stichproben-Sanity-Check Score-≤14-Restartikel

**Datum:** 2026-05-02
**Methodik:** v3-Single-Pass (Welle 1-9-Standard mit Welle-6/9/10-Erweiterungen). 5 zufällige Subagents parallel auf Stichprobe aus dem Pool nicht-v3-auditierter Artikel (48 Artikel mit Score ≤14, plus 3 explizit Welle-10-auditierte = 51 Pool nach Welle 10).
**Zufalls-Seed:** deterministisch (`welle-11-2026-05-02-deterministic-seed`).
**Auditierte Artikel:** blooms-taxonomie, fehlerkultur-im-unterricht, kompetenzfeststellung-programmierung, misconception-analyse, notional-machines.

## Anlass + Hypothese

Nach Welle 10 (Strukturelle Bulk-Sweeps) war der Status: 54 Artikel explizit auditiert, 48 verbleibende strukturell durch Phase A+B durchgesehen. Hypothese vor Welle 11: **„Theorie-Artikel mit kanonischen Quellen (Vygotsky/Bloom/Piaget) haben strukturell niedriges Hybrid-Risk — Restpool wird mehrheitlich sauber sein."**

**Hypothese teilweise widerlegt.** Stichprobe zeigt:
- **Theorie-Artikel auf kanonischem Boden tatsächlich sauber**: blooms-taxonomie (0 Befunde / 3 Cites), misconception-analyse (1 MINOR / 8 Cites) — beide hatten exakt die erwarteten kanonischen Cites (Bloom 1956, Anderson/Krathwohl 2001, Krathwohl 2002, Chi 2005/2008, Vosniadou 2013, Clement 1993, Hestenes/Wells/Swackhamer 1992, diSessa 1993, Sorva 2013, Große & Renkl 2007).
- **Praxis-Artikel mit Verwaltungs-/Empirie-Bezug haben weiterhin strukturelle Befunde**: fehlerkultur (2 MAJOR / 9 Cites), kompetenzfeststellung (2 MAJOR / 4 Cites), notional-machines (3 MAJOR / 9 Cites). Trotz niedrigem Score (8-13).

**Konsequenz:** Score-Heuristik korreliert mit *Cite-Volumen + Effekt-Werte-Anzahl*, nicht mit Hybrid-Risk-Profil. Praxis-Artikel mit moderner CS-Ed-Cite-Mischung (auch bei Score ≤14) brauchen v3-Audit.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| blooms-taxonomie | 3 | 3 | 0 | 0 | 0 | 0.95 | 7 (2.3/cite) |
| fehlerkultur-im-unterricht | 9 | 5 | 2 | 2 | 0 | 0.88 | 11 (1.2/cite) |
| kompetenzfeststellung-programmierung | 4 | 1 | 1 | 2 | 0 | 0.86 | 9 (2.3/cite) |
| misconception-analyse | 8 | 7 | 1 | 0 | 0 | 0.93 | 12 (1.5/cite) |
| notional-machines | 9 | 4 | 2 | 3 | 0 | 0.88 | 9 (1.0/cite) |
| **Σ** | **33** | **20** | **6** | **7** | **0** | **0.90** | **48 (1.45/cite)** |

**0 CRIT + 7 MAJOR in 33 Cites = 21 % CRIT+MAJOR-Dichte** — höher als erwartet für Score-≤14-Stichprobe.

| Welle | Score-Range | Cites | CRIT | MAJOR | Befund-Dichte |
|---|---|---|---|---|---|
| 3 | 27-40 | 47 | 0 | 7 | 15 % |
| 4 | 27-40 | 63 | 1 | 6 | 11 % |
| 5 | 22-23 | 43 | 5 | 10 | 35 % |
| 6 | 24-29 | 41 | 4 | 3 | 17 % |
| 7 | 21-23 | 42 | 3 | 1 | 9.5 % |
| 8 | 18-20 | 44 | 4 | 5 | 20.5 % |
| 9 | 15-17 (Pattern-Heuristik) | 40 | 2 | 2 | 10 % |
| 10 | strukturell + 3 explizit | ~31 | 4 | 0 | 13 % |
| **11** | **≤14 (zufällige Stichprobe)** | **33** | **0** | **7** | **21 %** |

**Wichtige Beobachtung:** Welle 11 hat **keine CRITs** (keine Hybrid-Citations, keine fabrizierten Cites), aber sehr viele **bibliografische Detail-Drifts** (Jahr / Venue / Pages / Titel falsch). Pattern hat sich verschoben:

- **Wellen 1-9**: häufigster Befund Hybrid-Citations (Pattern #2) und fabrizierte Cites (Pattern #5)
- **Welle 11**: häufigster Befund bibliografische Drift (Pattern #16 + #19) und Genre-Überschreibung (Pattern #17)

## Wiederkehrende Fehlermuster (Welle 11)

### Pattern #16 + #19 Bibliografische Drift (NEU als dominantes Muster)

5 von 7 MAJORs sind reine Bibliografie-Drifts ohne Hybrid-Charakter:
- **fehlerkultur Tulis 2013**: *Learning and Instruction 27, 65-79* → real *Teaching and Teacher Education 33, 56-68* (kompletter Journal-Wechsel + Volume + Pages)
- **kompetenzfeststellung Baird 2014**: Wiki „2017" → real **2014**; Venue „Oxford University Centre" → real **Norwegian Knowledge Centre for Education**
- **notional-machines Karnalim & Ayub 2017**: Wiki „2018 / 12(1) / 33-44" → real **2017 / 11(2) / 67-76** (Jahr + Volume + Issue + Pages alle falsch)
- **notional-machines Fincher et al. 2020**: Pages „57-70" → real **21-50**; Titel-Untertitel „The Education of Attention" fehlt
- **fehlerkultur Edmondson 1999**: Body-Pointe (Krankenhaus-/Medikationsfehler-Studie) gehört zu **Edmondson 1996** JABS 32(1), nicht zur 1999er ASQ-Studie (Manufacturing-Teams)

**Charakteristik:** DOI/Topic stimmen, aber Detail-Metadaten falsch. Ähnlich Sub-Pattern 2c (Welle 9 Wu/Schunn) aber **ohne** Hybrid-Charakter — nur sloppy Citing.

### Pattern #17 Genre-Überschreibung (Welle-7-Wiederholung)

**kompetenzfeststellung Nickolaus & Seeber 2013**: Wiki sagt „Forschung zeigt: Projekt-Komponente sagt Berufserfolg besser voraus als schriftlicher Teil" — das Kapitel ist eine **Methoden-Übersicht zu Kompetenzdiagnostik**, keine empirische Validitätsstudie zur IHK-Prüfung. Genre-Überschreibung Pattern #17 + Inhalts-Halluzination.

### Pattern #6/#7 Direkte Wert-Inflation (Welle-10-Wiederholung)

**notional-machines Guo 2021**: Wiki Z. 67 „**25+ Millionen Nutzer:innen**" — Paper-Titel sagt explizit **„Ten Million Users"** (Faktor-2,5-Inflation). Direkter Widerspruch zur einzigen Quelle.

### Pattern #4 Variante A (Pattern-Heuristik bewährt)

**fehlerkultur**: „Favorite Mistake"-Routine → real **„My Favorite No"** (Leah Alcala / Teaching Channel). Plus Alcala, Google SRE Book, Etsy fehlen in Quellenliste.

### Sonstige MINORs

- **kompetenzfeststellung Jadud 2006**: „korreliert **stark**" — real moderate / context-dependent
- **misconception-analyse Chi 2005**: Terminologie „Matter, Process, Mental State" — Chis kanonische Top-Level-Kategorien sind „**Entities**, Processes, Mental States" (Matter ist allenfalls Subkategorie)
- **notional-machines Sorva 2018 + Fincher 2020 Tabellen-Attribution**: 6-Zeilen-Tabelle ist Wiki-Synthese, keine 1:1-Übernahme aus den genannten Quellen
- **notional-machines Lister 2004 Dreistufen-Modell**: gehört eher zu **Lister/Corney/Teague 2011-2014** (Neo-Piagetian-Lineage)
- **kompetenzfeststellung Denny 2024**: orphan source list entry (in Quellenliste, nicht im Body inline-zitiert) — inverse Pattern #4

### Bemerkenswert positiv

- **blooms-taxonomie**: Saubercase. Bloom 1956, Anderson & Krathwohl 2001, Krathwohl 2002 alle CrossRef-/WorldCat-verifiziert; Knowledge-Dimensions-Tabelle 1:1 kanonisch; Position-Swap (Synthese 5→Erschaffen 6) exakt korrekt.
- **misconception-analyse**: Quasi-Saubercase. Chi-Doppel-Cite (2005, 2008) als Theorie-Linie transparent (kein Pattern #14). Sorva 2013 korrekt als Forschungssynthese klassifiziert (Welle-1-Hot-Spot vermieden).
- **notional-machines Sorva 2013**: Wiki klassifiziert explizit als „Forschungssynthese"/„Review", nicht als Längsschnitt-Empirie — Welle-1-Hot-Spot-Inversion-Vorbefund hier nicht reproduziert. Wiki hat aus früheren Audits gelernt.
- **Pattern #4 Variante A**: in 4 von 5 Welle-11-Artikeln **clean** (nur fehlerkultur hatte 3 Treffer). Welle-10-Bulk-Sweep + Methodik-Update wirken.
- **Pattern #5 fabrizierte Citations**: in 0 von 5 Welle-11-Artikeln. Welle-10-Befund (3 fabrizierte Cites in productive-failure) ist nicht repräsentativ für Restpool.

## Detail-Findings (MAJORs)

### MAJOR 1: fehlerkultur — Tulis 2013 Venue-Drift

Wiki-Quellenliste: *„Tulis, M. (2013). Error management behavior in classrooms. Learning and Instruction, 27, 65-79."*
Real (CrossRef DOI 10.1016/j.tate.2013.02.003): **Teaching and Teacher Education, 33, 56-68**.
**Korrektur:** „Tulis, M. (2013). Error management behavior in classrooms: Teachers' responses to student mistakes. *Teaching and Teacher Education, 33*, 56–68. https://doi.org/10.1016/j.tate.2013.02.003"

### MAJOR 2: fehlerkultur — Edmondson 1999 mit Krankenhaus-Studien-Pointe

Body Z. 63: *„Ihre ursprüngliche Krankenhaus-Studie zeigte... Bessere Teams meldeten mehr Medikationsfehler"* — attribuiert an Edmondson 1999 ASQ. Real ist Edmondson 1999 ASQ eine Manufacturing-Teams-Studie (51 Teams). Krankenhaus-Pointe stammt aus **Edmondson 1996, Journal of Applied Behavioral Science, 32(1), 5-28** (in der Quellenliste komplett fehlend).
**Korrektur:** Edmondson 1996 in Quellenliste ergänzen, Body so umformulieren dass beide Studien sauber referenziert sind.

### MAJOR 3: kompetenzfeststellung — Baird 2014 Datierung + Venue

Wiki: *„Baird, J. et al. (2017). Assessment and Learning: State of the Field Review. Oxford University Centre for Educational Assessment."*
Real: **2014** (nicht 2017); kommissioniert vom **Norwegian Knowledge Centre for Education**, nicht OUCEA-Publikation. Co-Autor:innen: Jo-Anne Baird, Therese N. Hopfenbeck, Paul Newton, Gordon Stobart, Anna T. Steen-Utheim.
**Korrektur:** „Baird, J.-A., Hopfenbeck, T. N., Newton, P., Stobart, G., & Steen-Utheim, A. T. (2014). *Assessment and Learning: State of the Field Review*. Report commissioned by the Norwegian Knowledge Centre for Education."

### MAJOR 4: kompetenzfeststellung — Nickolaus & Seeber 2013 Genre-Überschreibung

Wiki Body: *„Forschung (Nickolaus & Seeber, 2013) zeigt: Die Projekt-Komponente der IHK-Prüfung sagt Berufserfolg besser voraus als der schriftliche Teil."*
Real: Nickolaus/Seeber 2013 ist Methoden-/Diagnostik-Übersichtskapitel zu Kompetenzmodellierung in der beruflichen Bildung. Keine empirische Validitätsstudie zur IHK-Prüfung.
**Korrektur:** Body-Aussage entfernen oder durch belegte Quelle ersetzen (z.B. ASCOT-Studien des BIBB).

### MAJOR 5: notional-machines — Karnalim & Ayub Bibliografische Detail-Drift

Wiki: *„Karnalim, O. & Ayub, M. (2018). The effectiveness of a program visualization tool. CommIT Journal, 12(1), 33-44."*
Real: **2017 / 11(2) / 67-76**, DOI 10.21512/commit.v11i2.3704.
**Korrektur:** „Karnalim, O. & Ayub, M. (2017). The Effectiveness of a Program Visualization Tool on Introductory Programming: A Case Study with PythonTutor. *CommIT Journal, 11*(2), 67-76. https://doi.org/10.21512/commit.v11i2.3704"

### MAJOR 6: notional-machines — Guo 2021 „25+ Millionen" Inflation

Wiki Z. 67: *„Python Tutor mit 25+ Millionen Nutzer:innen in 180+ Ländern (Guo 2021)."*
Real (Paper-Titel + Abstract): **„Ten million users"**.
**Korrektur:** „über 10 Millionen Nutzer:innen in über 180 Ländern (Guo 2021, Stand 2021)" — falls aktuellere Zahlen (>10 Mio.) gewünscht, neue Quelle finden, nicht Guo 2021 zuschreiben.

### MAJOR 7: notional-machines — Fincher et al. 2020 Pages

Wiki: *„Proceedings of the Working Group Reports on ITiCSE, 57-70"* → real **21-50**. Titel-Untertitel „The Education of Attention" fehlt.
**Korrektur:** „Fincher, S. et al. (2020). Notional Machines in Computing Education: The Education of Attention. *Proceedings of the Working Group Reports on Innovation and Technology in Computer Science Education* (ITiCSE-WGR 2020), 21-50. https://doi.org/10.1145/3437800.3439202"

## MINOR-Backlog (6)

| Datei | Befund | Korrektur |
|---|---|---|
| fehlerkultur | „Favorite Mistake" → real „My Favorite No" (Leah Alcala / Teaching Channel) | Begriff korrigieren + Alcala / Google SRE Book / Etsy in Quellenliste ergänzen |
| kompetenzfeststellung | Jadud 2006 „korreliert stark" mit Lernerfolg | → „korreliert moderat / context-dependent" (Becker/Watson 2016 EDM) |
| kompetenzfeststellung | Denny 2024 orphan source list (im Quellenverzeichnis, nicht im Body inline) | Body-Inline-Cite ergänzen oder Quellenliste-Eintrag entfernen |
| misconception-analyse | Chi 2005 „Matter, Process, Mental State" Terminologie | → „Entities (Substances/Concrete Objects), Processes, Mental States" (Chi 2008 Fig. 3.1) |
| notional-machines | Tabellen-Doppel-Attribution Sorva 2018 + Fincher 2020 (Wiki-Synthese, keine 1:1-Tabelle) | Tabellen-Attribution auf Sorva 2013 ToCE als primäre Quelle umstellen |
| notional-machines | Lister 2004 „Dreistufen-Modell" — gehört zu Listers Neo-Piagetian-Arbeiten | → Lister/Corney/Teague 2011 ACE als Quelle des Dreistufen-Schemas |

## Cross-Repo-Verdacht (Welle 11)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Tulis 2013 Venue-Drift (Learning and Instruction 27 statt Teaching and Teacher Education 33) | `grep -ri 'Tulis.*2013\|Tulis.*Learning and Instruction' wiki/` | niedrig (vermutlich Einzelfall) |
| Edmondson 1999 mit Krankenhaus-Pointe statt Edmondson 1996 | `grep -ri 'Edmondson.*1999\|Edmondson.*Krankenhaus\|Edmondson.*Medikation' wiki/` | mittel (Psychological-Safety-Cluster) |
| Baird 2014 vs. „2017" + Norwegian Knowledge Centre vs. „OUCEA" | `grep -ri 'Baird.*201[47]\|Assessment and Learning.*State of the Field' wiki/` | niedrig |
| Nickolaus & Seeber 2013 Genre-Überschreibung | `grep -ri 'Nickolaus\|Seeber.*2013' wiki/` | mittel (Berufsbildungs-Cluster) |
| Karnalim & Ayub Bibliografie 2018/12(1)/33-44 → real 2017/11(2)/67-76 | `grep -ri 'Karnalim\|CommIT.*Journal' wiki/` | mittel (Visualisierungs-Cluster) |
| Guo 2021 „25+ Millionen Nutzer" — real „10 Millionen" | `grep -ri 'Python Tutor\|Guo.*2021\|25.*Millionen.*Nutzer' wiki/` | mittel |
| Fincher 2020 Pages 57-70 statt 21-50 | `grep -ri 'Fincher.*2020\|3437800\.3439202' wiki/` | niedrig |
| Chi „Matter" statt „Entities" Terminologie | `grep -ri 'Matter.*Process.*Mental\|ontologisch.*Matter' wiki/` | niedrig |
| Lister 2004 Dreistufen-Modell-Misattribution | `grep -ri 'Lister.*2004.*Stufen\|Lister.*Dreistufen' wiki/` | niedrig |
| „Favorite Mistake" → „My Favorite No" | `grep -ri 'Favorite Mistake\|Alcala' wiki/` | niedrig |

## Methodik-Erkenntnisse

1. **Score-Heuristik versagt bei Praxis-Artikeln auch bei Score ≤14**: 3 von 5 Welle-11-Artikeln hatten 2-3 MAJORs trotz niedrigem Score. Score korreliert mit Cite-*Volumen* + Effekt-*Werten*, nicht mit Hybrid-Risk-Profil.
2. **Theorie-Artikel mit kanonischen Quellen sind tatsächlich sauber** — Hypothese für Klassiker-Artikel (Bloom, Vygotsky, Chi, Piaget, etc.) bestätigt.
3. **Pattern verschiebt sich von Hybrid (Pattern #2) zu Bibliografie-Drift (Pattern #16/#19)** in niedrig-Score-Pool. Mögliche Erklärung: Hybrid-Citations entstehen typischerweise bei „neuen, frischen" Cites in Hochrisiko-Artikeln (KI-Themen, neueste arXiv-Preprints); bibliografische Drifts entstehen bei „älteren, etablierten" Cites, die aus Sekundärliteratur kopiert wurden ohne Originalquelle-Re-Check.
4. **Welle-10-Bulk-Sweep-Effektivität bestätigt**: Pattern #4 Variante A wurde in 4/5 Welle-11-Artikeln **nicht** mehr gefunden — der Welle-10-Bulk-Fix hat strukturell das Problem geschlossen.
5. **Domain-Hint-Halluzinationen**: Subagent für misconception-analyse berichtete, der Domain-Hint im Prompt habe Sleeman/du-Boulay/Pavlova/Sirkiä/22-Tab-Zeilen erwartet, aber keiner davon kam im Artikel vor. Triage-Skript-Output ist nicht als „Such-Direktive" zu lesen, sondern als grobe Heuristik. Methodik-Update: Domain-Hints im Prompt explizit als „mögliche Hot-Spots, nicht garantierte Vorbefunde" framen.

## Konsequenz für die verbleibenden 43 Restartikel

Die These „Score ≤14 = niedriges Risiko" ist nur für **kanonische Theorie-Artikel** korrekt. Für **Praxis-Artikel mit Verwaltungs-/Empirie-Bezug** (Programmieren, Berufsbildung, IT-spezifische Lernformate) ist auch Score 8-14 nicht safe. **Entscheidung gehört in eine separate Strategie-Diskussion** (Welle 12 vs. weitere Bulk-Sweeps vs. Stop).

Vorschlag: **Welle-11-Befunde fixen, Cross-Repo-Sweep, Push** — danach offene strategische Entscheidung für die restlichen 43 Artikel.
