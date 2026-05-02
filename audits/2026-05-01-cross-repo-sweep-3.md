# Cross-Repo-Sweep nach Welle 6 (2026-05-01)

**Methodik:** Direkte Grep-Suche durchs `wiki/`-Verzeichnis nach den 9 Welle-6-Verdachts-Pattern aus `2026-05-01-welle-6-konsolidierung.md`. Kein Subagent — Pattern-Liste war kompakt und Greps sind eindeutig genug.

**Anlass:** Welle 6 produzierte 4 CRITs + 3 MAJORs + 5 MINORs in 5 Artikeln. Hypothese: einige davon (insb. Denny-QWK-Misattribution, Brady-2020-Hybrid, Reeves-Pagination, Fowler-Venue-Drift) könnten in nicht-auditierten Artikeln dupliziert sein, weil Citations-Vorlagen oft repo-weit kopiert werden.

## Bilanz

**0 neue Befunde, 0 weitere Korrekturen erforderlich.** Alle 9 Pattern sind ausschließlich in den 5 Welle-6-Artikeln aufgetreten und dort bereits gefixt.

## Pattern-für-Pattern

| # | Pattern | Welle-6-Quelle | Treffer in nicht-auditierten Artikeln | Status |
|---|---|---|---|---|
| 1 | Denny 2024 + "QWK > 0,7" / "frage-spezifisches Rubric" | explain-in-plain-english Z. 148 | **0** (nur dort, bereits auf Pathak 2025 umattribuiert) | clean ✓ |
| 2 | Brady 2020 SciAdv "L. M. Brady, Reeves, Garcia"-Autoren | belonging-interventionen Z. 177 | **0** (Z. 62 Body-Tabelle nutzt nur "Brady et al." — kein Pattern-Treffer) | clean ✓ |
| 3 | Hannover & Zander 2020 Unterrichtswissenschaft 48(3), 353-377 | belonging-interventionen Z. 179 | **0** (nur dort, bereits auf Kröske 2020 48(2):243-272 korrigiert) | clean ✓ |
| 4 | Kotchian/McCall (2022) Programming Historian Twine | interactive-fiction-twine Z. 153 | **0** (nur dort, bereits auf Kirilloff 2021 korrigiert; Body-Z. 92 als interner Verweis gerahmt) | clean ✓ |
| 5 | Fowler 2022 ITiCSE 2022 + "Hassan, C." | explain-in-plain-english Z. 187 | **0** (nur dort, bereits auf CSE Journal 32(3):355-383 + Hassan, M. korrigiert) | clean ✓ |
| 6 | Presti et al. 2024 ITiCSE / "Student Over-Reliance" | ki-gestuetztes-tutoring Z. 80, 121 | **0** (nur dort, bereits gestrichen) | clean ✓ |
| 7 | Ho 2025 mit "Reflexion fehlt"-Spin | interactive-fiction-twine Z. 56 | **0** (nur dort, bereits entschärft) | clean ✓ |
| 8 | Reeves (2006) "Design research from a technology perspective" pp. 52-66 | evaluation-lernumgebungen Z. 159 | **0** (nur dort, bereits auf pp. 86-109 korrigiert) | clean ✓ |
| 9 | Chen et al. (2020) EiPE-Rubric als 4-Autoren-Cite (ohne Haldar) | explain-in-plain-english Z. 185 | **0** (Z. 91 Body-Verweis nutzt akzeptierte 4-Autoren-Verkürzung; Quellenliste Z. 185 bereits ergänzt) | clean ✓ |

## Methoden-Notizen

**Konvergenz mit früheren Sweeps:**
- Sweep-1 (nach Welle 4) fand 6 MAJORs in 5 Files — primär weil Cluster-Pattern wie "Becker SIGCSE/ITiCSE", "betrieblicher Auftrag", "Denny CACM-Hybrid" repo-weit aus geteilten Citations-Vorlagen entstanden waren.
- Sweep-2 (nach Welle 5) fand 6 weitere MAJORs in 5 Files — auch dort waren Pattern wie "Stahl/Xiao Erstautor", "BfDI/DSK-Verwechslung", "KMK/Bildungs-MK" wiederholt.
- **Sweep-3 (jetzt, nach Welle 6) findet 0 weitere Befunde.** Welle-6-Bugs sind strukturell anders: Hybrid-Citations und fabrizierte Citations sind **Einzelfall-spezifisch** und nicht aus geteilten Vorlagen entstanden. Das stützt die Hypothese aus Welle 5: Niedriger-Score-Artikel sind unter-auditiert, ihre Bugs sind aber **idiosynkratisch**, nicht systematisch im Sinne wiederverwendeter Citations-Pools.

**Konsequenz für künftige Wellen:** Die kombinierte Strategie (v3-Audit + Cross-Repo-Sweep) hat sich bewährt — 2 Sweeps fanden je 5-6 MAJORs (Wellen 4+5), aber die Trefferdichte sinkt mit zunehmender Repo-Sättigung. Sweep-3 ist clean, was nicht bedeutet, dass das Repo perfekt ist, sondern dass die *bekannten* Welle-6-Pattern keinen Cross-Repo-Anker haben. Künftige Wellen werden vermutlich neue Pattern produzieren, die wiederum gegrep't werden müssen — aber die Ausbeute pro Sweep wird kleiner.

**Methodik-Limitierung:** Der Sweep prüft nur Pattern, die Welle 6 explizit gefunden hat. Welle-6-Audit war pro Artikel sauber, aber das Score-Schema fängt strukturell keine Hybrid-/fabrizierten-Citations. Cross-Repo-Restrisiko: Hybrid-Citations in noch-nicht-auditierten Artikeln (Welle 7+ Score 21-23) bleiben undetektiert, bis sie selbst auditiert werden.

## Bemerkenswert positiv

- **Reeves-Pagination-Pattern**: 0 weitere Treffer im Repo. Das wäre ein typischer Vorlagen-Fehler gewesen (wenn jemand das Reeves-Kapitel mehrfach zitiert), aber er ist isoliert geblieben.
- **Brady-2020-Hybrid**: trotz mehrerer related-Artikel (imposter-phaenomen-it-azubis, affektive-dimensionen, abschlussprojekt-begleitung, self-determination-theory) wurde diese Citation nirgendwo dupliziert. Belonging-Interventionen ist der einzige Belonging-Praxis-Artikel, der diese Quelle nutzt.
- **Presti-Citation**: trotz 6 verwandter KI-Praxis-Artikel (ki-tutoring-evidenzlage, ki-native-lernumgebungen, deskilling-ki-codegenerierung, hint-engineering-llm-tutoring, llm-as-grader, rag-tutoring-systeme) keine Duplikation. Die fabrizierte Citation war isoliert.

## Empfehlung

- **Kein zusätzlicher Korrektur-Backlog.** Welle 6 + Sweep 3 schließen ab.
- **Welle 7 als nächster Schritt:** imposter-phaenomen-it-azubis (Score 23), cognitive-task-analysis (23), aktivierung-lehrervortrag (22), abschlussprojekt-begleitung (22), formatives-assessment (21).
- **Methodik-Update bleibt offen** (aus Welle-6-Konsolidierung): v3-Layer-3 sollte Body-Cite-Token vs. Body-Aussage prüfen, nicht nur gegen Quellenliste — die Denny-QWK-Z.-148-Misattribution war ein Body-internal-Drift-Pattern, das nur durch genaue Body-Lektüre fiel.
