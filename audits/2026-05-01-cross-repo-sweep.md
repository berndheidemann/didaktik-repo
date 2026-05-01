# Cross-Repo-Sweep nach Welle 3 (2026-05-01)

**Methodik:** 1 Subagent (general-purpose, opus, background), gezielte Pattern-Suche statt voller v3-Audit, mit Datei:Zeile-Belegen und WebFetch-Verifikation für die kritischen Treffer. Pflicht-Tool-Use vor Severity-Aussage: CrossRef/arXiv/MetaX.
**Anlass:** 8 wiederkehrende Pattern aus Welle-3-Audits sollten repo-weit geprüft werden, statt sie pro Welle individuell wiederzufinden.
**Wall-Clock:** ~25 min, ~85k Token.

## Bilanz

**1 CRITICAL, 8 MAJOR, 9 MINOR repo-weit** (über die in Welle 3 selbst auditierten Artikel hinaus).

| Pattern | Treffer geprüft | OK | MINOR | MAJOR | CRIT |
|---|---|---|---|---|---|
| 1. Hattie-Edition-Drift | 11 | 3 | 5 | 3 | 0 |
| 2. Anthropic Edu Report Lerneffekt | 5 | 4 | 1 | 0 | 0 |
| 3. arXiv-Erstautor + Misattributionen | 11 | 4 | 2 | 4 | 1 |
| 4. Hattie/Donoghue Substrategien-Triade | 1 | – | – | – | – (nur Welle-3-Treffer) |
| 5. Prather 2020 als empirische CS1 | 5 | 3 | 0 | 0 | 0 (in v3 als Empirie nur in metakognition.md, sonst korrekt als Review klassifiziert) |
| 6. Lortie-Forgues 2019 als Hattie-Kritik | 2 | 0 | 0 | 1 | 0 |
| 7. "Visible Learning, 2. Aufl. 2023" | 4 | 3 | 1 | 0 | 0 |
| 8. GitHub Rubber Duck Mode-Switching | 1 | – | – | – | – (nur Welle-3-Treffer) |

## Detail-Findings

### Pattern 1 — Hattie-Edition-Drift

**effektstaerken-unterricht.md (Referenztabelle, 9× im Repo verlinkt) — die Hauptbaustelle:**

| # | Stelle | Befund | Severity |
|---|---|---|---|
| 1.1 | Z.36-38, 64 | **Feedback d=0,70** unter Header "Hattie 2009/2023" — MetaX 2023 = **0,50** (10 Meta, 1.116 Studien). >40 % Drift. | **MAJOR** |
| 1.2 | Z.63 | **Teacher Clarity 0,75** — MetaX = **0,85** | MINOR |
| 1.3 | Z.62 | **Deliberate Practice 0,79** — MetaX = **0,49** | **MAJOR** |
| 1.4 | Z.68 | **Worked Examples 0,57** — MetaX = **0,47** | MINOR |
| 1.5 | Z.73 | **Pair Programming 0,31** — Quelle unklar (MetaX 404, vermutlich Hannay et al. 2009) | MINOR |

**direct-instruction-rosenshine.md:**

| # | Stelle | Befund | Severity |
|---|---|---|---|
| 1.6 | Z.75-78 | **DI 0,59 / Teacher Clarity 0,75 / Feedback 0,70** unter "Hattie, Visible Learning, 2009/2023" — MetaX-Werte: 0,56 / 0,85 / **0,50** | **MAJOR** |
| 1.7 | Z.133 | "Hattie, J. (2009, **2. Aufl. 2023**)" — Sequel ist Nachfolge-Band, keine Neuauflage | MINOR |

**Weitere Treffer:**

| # | Stelle | Befund | Severity |
|---|---|---|---|
| 1.8 | mastery-learning.md:33, 83 | Mastery Learning d=0,58 (Hattie 2009) — MetaX = **0,67**. Edition disclosed (2009), aber als aktueller Wert präsentiert | MINOR |
| 1.9 | cognitive-task-analysis.md:30, 50 | "Hattie Visible Learning **MetaX: d = 1,29**" — MetaX zeigt 0,87 + 1,70 als Einzelwerte, **gewichteter Mittelwert 1,09**. 1,29 ist ungewichtetes Mittel | MINOR |
| 1.10 | feedback-lernumgebungen.md:56, 62 | Bereits sauber: "Wisniewski et al. 2020 d=0,48 deutlich niedriger als Hatties 0,79" | OK |
| 1.11 | engagement-theory.md:55 | "Hattie d ≈ 0,40-0,55" für Cooperative Learning als Range — MetaX 0,56. Konservativ ok | OK |

### Pattern 2 — Anthropic Education Report Lerneffekt-These

| # | Stelle | Befund | Severity |
|---|---|---|---|
| 2.1 | ki-nutzungsregeln-unterricht.md:59 | Vier Patterns + 36,8 % korrekt, ABER didaktische Wertung *"augmentative Nutzung (Collaborative) ist Kennzeichen von AI Fluency, delegative nicht"* — Anthropic enthält sich dieser Wertung explizit | MINOR |
| 2.2 | deskilling-ki-codegenerierung.md:126 | **Korrekt:** "Nutzungsstudien sind keine Wirksamkeitsstudien…" — macht genau den Punkt, den Welle 3 als Korrektur fordert | OK |
| 2.3-2.5 | div. | Nur Bibliografie / Falschtreffer | OK |

### Pattern 3 — arXiv-Erstautor + Misattributionen

| # | Stelle | Befund | Severity |
|---|---|---|---|
| 3.1 | deskilling-ki-codegenerierung.md:34, 50, 158 | **Coppock/Dunn/Rao 2025 → Shen, J. H. & Tamkin, A. (Anthropic 2026)**, arXiv:2601.20245. Komplette Misattribution mit konkreten Studiendetails | **CRITICAL** ✓ **gefixt 2026-05-01 (b54abcf)** |
| 3.2 | explorable-explanations-im-unterricht.md:57, 173 | Scrollytelling Privacy "(2024)" — arXiv:2603.04367 ist **März 2026 (Méndez, G. G. & Such, J., CHI 2026)**. Datierung 2 Jahre falsch + Erstautor fehlt | **MAJOR** |
| 3.3 | llm-as-grader.md:78, 197 | "GradeOpt (Zhang, S. et al. 2024/2025)" arXiv:2410.02165 → tatsächlicher Erstautor **Yucheng Chu** (MSU) | **MAJOR** |
| 3.4 | llm-as-grader.md:101 | arXiv:2411.10954 als "Indic-EiPE 2024" — ist **Faisal et al., "Dialectal Toxicity Detection"**. Falsches Paper für die These | **MAJOR** |
| 3.5 | imposter-phaenomen-it-azubis.md:62, 180 | "Guenther et al., arXiv:2312.03966" → tatsächlicher Erstautor **Paloma Guenes** (PUC-Rio). 52,7%-Zahl + Inhalt stimmen | MINOR |
| 3.6 | live-coding-lehrmethode.md:146 | Su, X. & Wang, A. Y. — Erstautor verifiziert **Xiaotian Su** ✓ | OK |
| 3.7 | llm-integrationsmuster-lernumgebungen.md:268 | "Lee, D." → **Kyung, D.** (PatientSim, arXiv:2505.17818) — schon in Welle 3 als MAJOR gefangen | (in Welle-3-Backlog) |
| 3.8 | self-explanation.md:75, 164 | "Singh, A." als Erstautor verifiziert (Anjali Singh) | OK |
| 3.9 | hint-engineering-llm-tutoring.md:211-213 | Sharma, Fanous, Cheng — alle korrekt | OK |
| 3.10 | llm-as-grader.md:203 + explain-in-plain-english.md:190 + rubric-design.md:174 | "Rubric Is All You Need" arXiv:2503.23989 als **"Dhulipalla, A. et al."** → tatsächlich **Aditya Pathak et al.** (BITS Pilani). 3× im Repo. Senior Author Dhruv Kumar | **MAJOR** (in Welle-4-CRIT bestätigt) |
| 3.11 | ki-prompt-handwerk.md:193 | "Prompt Programming arXiv:2503.04267" — Erstautor **Pădurean, V.-A.** fehlt in der Citation | MINOR |

### Pattern 6 — Lortie-Forgues 2019 als Hattie-Kritik

| # | Stelle | Befund | Severity |
|---|---|---|---|
| 6.1 | direct-instruction-rosenshine.md:80, 134 | Wiederholt die Misattribution aus unterrichtsphasen verschärft mit konkret falscher Zahl: "Lortie-Forgues & Inglis (2019) und Evans & Yuan (2022) zeigen Re-Analysen … d≈0,06–0,07 für Direct Instruction". Lortie-Forgues misst RCTs allgemein, nicht DI | **MAJOR** ✓ **gefixt 2026-05-01 (3eceaea)** |
| 6.2 | unterrichtsphasen-artikulation.md:117, 161 | In Welle-3-Backlog | (bekannt) |

### Pattern 7 — "Visible Learning, 2. Aufl. 2023"

| # | Stelle | Befund | Severity |
|---|---|---|---|
| 7.1 | direct-instruction-rosenshine.md:133 | "(2009, 2. Aufl. 2023)" | MINOR ✓ **gefixt 2026-05-01 (3eceaea)** |
| 7.2-7.3 | effektstaerken-unterricht, engagement-theory, kooperatives-lernen | Korrekt als "The Sequel" zitiert | OK |

## Korrektur-Backlog (Stand 2026-05-01, nach Welle-4)

**Bereits gefixt:** Pattern 3.1 (Shen/Tamkin), Pattern 1.1-1.5 (Hattie-Tabelle effektstaerken), Pattern 1.6 (Hattie-Tabelle DI), Pattern 1.7 (Buchtitel DI), Pattern 6.1 (Lortie-Forgues DI).

**Noch offen aus Sweep:**

| # | Datei | Severity | Korrektur |
|---|---|---|---|
| 3.2 | explorable-explanations-im-unterricht.md:57, 173 | MAJOR | "(2024)" → "(2026)"; Erstautor ergänzen: Méndez, G. G. & Such, J. "Scrollytelling as an Alternative Format for Privacy Policies", arXiv:2603.04367, CHI 2026 |
| 3.3 | llm-as-grader.md:78, 197 | MAJOR | "Zhang, S. et al." → Chu, Y., Li, H., Yang, K. et al. (2024/2025). arXiv:2410.02165 |
| 3.4 | llm-as-grader.md:101 | MAJOR | arXiv:2411.10954 ist Faisal et al. "Dialectal Toxicity Detection" — Cite streichen oder durch korrekte Indic-EiPE-Quelle (Pawar et al. ICER 2024) ersetzen |
| 3.10 | llm-as-grader.md:203 + explain-in-plain-english.md:190 + rubric-design.md:174 | **CRITICAL** (verschärft durch Welle-4-Audit) | "Dhulipalla, A." → Pathak, A. et al. (2025), arXiv:2503.23989 (3 Stellen) |
| 3.5 | imposter-phaenomen-it-azubis.md:62, 180 | MINOR | "Guenther" → Guenes, P. et al. (2023), arXiv:2312.03966 |
| 3.11 | ki-prompt-handwerk.md:193 | MINOR | Erstautor ergänzen: Pădurean, V.-A. et al. (2025) |
| 1.8 | mastery-learning.md:33, 83 | MINOR | 0,58 → 0,67 (MetaX) oder "(Hattie 2009)" als historisch kennzeichnen |
| 1.9 | cognitive-task-analysis.md:30, 50 | MINOR | "MetaX d=1,29" → "MetaX gewichtet 1,09 / ungewichtet 1,29" oder nur Tofel-Grehl g=0,87 |
| 2.1 | ki-nutzungsregeln-unterricht.md:59 | MINOR | "augmentativ = AI Fluency, delegativ nicht" als eigene didaktische Einschätzung kennzeichnen, nicht Anthropic zuschreiben |

## Methoden-Notiz

**Mit WebFetch verifiziert:** 8 MetaX-Werte, 11 arXiv-IDs (Erstautor-Verifikation).

**Volltext-Lücken / nicht final geprüft:**
- MetaX-404 für Spaced Practice, Pair Programming, Metacognitive Strategies — Edition-Drift dort qualitativ
- Indic-EiPE 2024 (Pawar et al. ICER 2024) als Korrekturvorschlag genannt, nicht eigens verifiziert
- Mastery Learning Jang et al. 2023 (Korean Journal of Medical Education) — koreanischer Nachname + 2023 + Fachjournal: Risiko-Trigger, würde +5 min CrossRef-Check brauchen

**Konvergenz mit Welle 4:** Sweep + Welle-4-Audit haben unabhängig den Dhulipalla→Pathak-Befund gefangen — Hinweis, dass Pattern-Sweep + Stichproben-Audit komplementär arbeiten.
