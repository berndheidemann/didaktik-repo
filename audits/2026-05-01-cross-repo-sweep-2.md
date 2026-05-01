# Cross-Repo-Sweep nach Welle 5 (2026-05-01)

**Methodik:** 1 Subagent (general-purpose, opus, background), gezielte Pattern-Suche, ~30 min Wall-Clock, ~115k Token.
**Anlass:** 18 Pattern aus Welle 4+5 sollten repo-weit geprüft werden, vor allem in nicht-auditierten Artikeln.

## Bilanz

**6 neue MAJORs, ~5 MINORs** in 5 Files. Davon 2 in schon auditierten Artikeln (Welle-2/Welle-4-Audits hatten sie übersehen) und 3 in nicht-auditierten Artikeln.

## MAJOR-Befunde

| # | Datei:Zeile | Pattern | Befund | Korrektur |
|---|---|---|---|---|
| 1 | `wiki/explain-in-plain-english.md:94, 188` | Denny-Hybrid | "Denny, Kumar & Giacaman (2024). Explaining Code With a Purpose. ITiCSE 2024" — echte ITiCSE-2024-Autoren laut Aalto-Volltext: **Denny, Smith, Fowler, Prather, Becker, Leinonen** (Kumar/Giacaman gehören zu SIGCSE 2023). | "Denny, P., Smith, D. H., Fowler, M., Prather, J., Becker, B. A., & Leinonen, J." |
| 2 | `wiki/llm-as-grader.md:201` | Erstautor-Misattribution | "Stahl, M. et al. (2024). From Automation to Augmentation. arXiv:2401.06431" → tatsächlicher Erstautor **Changrong Xiao**. **6. unabhängige Misattribution bei chinesischem Namen.** | "Xiao, C. et al. (2024)" |
| 3 | `wiki/ki-tool-auswahl-berufsschule.md:227` | Behörden-Verwechslung (Welle-4-Audit übersehen) | "BfDI (2024/2025). Orientierungshilfen zu KI und Datenschutz" — Orientierungshilfe Mai 2024 ist von der **DSK** (Datenschutzkonferenz), nicht BfDI. | "Datenschutzkonferenz (DSK) (2024). Orientierungshilfe Künstliche Intelligenz und Datenschutz." |
| 4 | `wiki/retrieval-practice.md:139` | Fabrizierte Citation | "Yang, C. et al. (2024). Retrieval Practice in Computer Science Education. Computers & Education 210, Article 104963" — nicht auffindbar in WebSearch. | Streichen oder durch belegbare CS-Retrieval-Quelle ersetzen. |
| 5 | `wiki/retrieval-practice.md:140` | Fabrizierte Citation | "Tafliovich, A. et al. (2023). Interleaved Practice in CS1. SIGCSE 2023" — kein Paper dieses Titels im SIGCSE-2023-Programm (Tafliovich war Associate Program Chair, hat aber keinen Beitrag dieses Titels). | Streichen. |
| 6 | `wiki/mastery-learning.md:184` (Welle-2-Audit übersehen!) | Hybrid-Citation | "Jang, S. et al. (2023). A Practical Review of Mastery Learning. KJME 35(1)" — echter Paper-Titel ist von **Winget & Persky (2023, AJPE 87(5), 100043)**. KJME 35(1) hat keine Mastery-Learning-Review. | "Winget, A. M., & Persky, A. M. (2023). A Practical Review of Mastery Learning. *American Journal of Pharmaceutical Education, 87*(5), 100043." |

## MINOR-Befunde

| # | Datei:Zeile | Pattern | Befund | Korrektur |
|---|---|---|---|---|
| 7 | `wiki/testitem-konstruktion-digital.md:106, 184` | "betrieblicher Auftrag" Vor-2020-Begriff | Tabellenzelle "Projekt, betrieblicher Auftrag" als Performance-Task-Beispiel | → "betriebliche Projektarbeit" |
| 8 | `wiki/metakognition.md:140` | Hattie/Donoghue Substrategien-Werte | Cluster-2-Welle-4-Korrektur war zu vorsichtig — Sweep findet die Werte (Planning 0,80; Monitoring 0,71; Evaluation 0,75) im Volltext-Abstract als reproduzierbar | Vor Korrektur: Original-Abstract eigenständig prüfen (Subagenten widersprechen sich) |
| 9-N | `ki-kompetenzrahmen-schule`, `ki-nutzungsregeln-unterricht`, `ki-integritaet-pruefungsleistung`, `ki-tool-auswahl-berufsschule` | KMK statt Bildungs-MK | Beschluss vom 10.10.2024 stammt formal von der neu gegründeten Bildungsministerkonferenz (Strukturreform Juni 2024). KMK als Marke wird weiter genutzt — Verwechslungsrisiko gering, aber technisch ungenau. | Sammel-MINOR; bei Beschlüssen ab 10.10.2024 "Bildungsministerkonferenz (Bildungs-MK, Nachfolge-Konferenz der KMK)" präferieren |

## Methoden-Notizen

**Konvergenz mit früheren Sweeps:**
- Erstautor-Misattribution bei nicht-westlichen Namen: jetzt 6× systematisch dokumentiert
- Hybrid-Citation (echter Titel + falsche Autoren): jetzt 4× dokumentiert (Lancaster/Cotton, Denny CACM, Denny ITiCSE, Jang KJME)
- v2/v3-Audits haben *fabrizierte* Citations in mid-priority-Artikeln übersehen — der Sweep ist diagnostisch komplementär, nicht redundant

**Risk-Triage-Folgeempfehlung:** Triage-Score-Bonus für nicht-auditierte Artikel mit ≥3 nicht-westlichen Erstautoren ohne CrossRef-DOI sowie ≥2 arXiv-Citations ohne explizite arXiv-ID-Verifikation. Pattern für Hybrid-Citation-Detektion: doppelte Existenz-Prüfung von Autorenliste UND Titel UND Venue jeweils einzeln gegen CrossRef.

**Methodik-Lücke:** Subagent-Konflikt bei Hattie/Donoghue-Substrategien — Welle-5-Subagent sagte "nicht reproduzierbar", Sweep-Subagent sagt "explizit im Abstract". Hier wäre Self-Consistency-Pass (3× v3-Audit) oder direkte Verifikation per WebFetch nötig, bevor Korrekturen weiter verschärft oder zurückgenommen werden.

**Nicht weiter geprüft (Stichprobe sauber):** Becker SIGCSE/ITiCSE (nach Welle-5-Fix korrekt), Kazemitabaar CHI 2024 (CodeAid ist tatsächlich CHI 2024, DOI 10.1145/3613904.3642773), UNESCO 4-Stufen "Lead", "Visible Learning 2. Aufl. 2023", fobizz-Bayern, Lancaster/Cotton, Soosai Raj, Jill-Watson-AI-Magazine, Kremer/Sloane, EC Ethical Guidelines 2024, FIAusbV Update 2025 — alle 0 Treffer in nicht-auditierten Artikeln (oder schon gefixt).

## Bemerkenswert positiv

- **Stichprobe von 24 n-Zahlen-Studien-Boxen außerhalb der schon gefixten ki-native-lernumgebungen-Cluster:** alle echte Quellen mit DOI/PNAS/arXiv (Bravata 2020 Imposter, Wouters 2013 Twine, Habgood/Ainsworth 2011 Zombie Division, Freeman 2014 PNAS, EduPIJ Khanmigo 2025, Wisniewski/Zierer/Hattie 2020 Frontiers etc.). **Fabrizierte Mini-Studien-Boxen sind kein systematisches Repo-Pattern**, sondern auf den ki-native-lernumgebungen-Cluster begrenzt.
- KMK-Beschluss-Datierungen 10.10.2024, 18.12.2025, 13.12.2019 — alle korrekt verifiziert wo geprüft.
