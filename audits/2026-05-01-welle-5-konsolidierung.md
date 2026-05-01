# Welle 5 — KI-/RAG/Verwaltung/4C-ID (v3-Single-Pass)

**Datum:** 2026-05-01
**Methodik:** v3-Single-Pass, 5 Subagents parallel, model: opus, ohne Self-Consistency-Pass.
**Auditierte Artikel:** vier-komponenten-instruktionsdesign, fachgespraech-didaktik, rag-tutoring-systeme, prompt-engineering-didaktisch, ki-native-lernumgebungen.

## Anlass + Hypothese

Dritte v3-Welle. Hypothese: Score-Range 22-23 ist niedriger als Welle 3+4 — restliche Hochrisiko-Artikel sollten methodisch vorsichtiger sein. **Hypothese widerlegt** — Welle 5 hat mehr CRITs als Welle 3+4 zusammen. Vermutlich weil niedriger-Score-Artikel weniger Sorgfalt bei der Erstellung bekamen und häufiger fabrizierte "Mini-Studien-Boxen" enthalten.

## Gesamtbilanz

| Artikel | Citations | OK | MINOR | MAJOR | CRIT | Konfidenz | Tool-Calls |
|---|---|---|---|---|---|---|---|
| vier-komponenten-instruktionsdesign | 8 | 6 | 1 | 1 | 0 | 0.91 | 13 (1.6/cite) |
| prompt-engineering-didaktisch | 8 | 5 | 2 | 1 | 0 | 0.92 | 11 (1.4/cite) |
| ki-native-lernumgebungen | 10 | 3 | 1 | 3 | 3 | 0.86 | 11 (1.1/cite) |
| rag-tutoring-systeme | 7 | 2 | 3 | 2 | 0 | 0.91 | 18 (2.6/cite) |
| fachgespraech-didaktik | 10 | 4 | 2 | 3 | 2 | 0.88 | 14 (1.4/cite) |
| **Σ** | **43** | **20** | **9** | **10** | **5** | **0.90** | **67 (1.56/cite)** |

**5 CRITICALs in einer Welle** — neuer Höchststand. Welle-Vergleich:
- Welle 3: 47 Cites / **0 CRIT** / 7 MAJOR
- Welle 4: 63 Cites / 1 CRIT / 6 MAJOR
- Welle 5: 43 Cites / **5 CRIT** / 10 MAJOR

Befund-Dichte (CRIT+MAJOR) pro Citation: Welle 3 = 15 %, Welle 4 = 11 %, **Welle 5 = 35 %**. Die niedriger-Score-Artikel sind nicht *sicherer*, sondern *unter-auditierter* — Risk-Triage-Score sollte um ein Pattern für "fabrizierte Studien-Boxen mit konkreten n-Zahlen ohne Quelle" ergänzt werden.

## Wiederkehrende Fehlermuster (Welle 5)

### Neue Pattern

1. **Komplett fabrizierte Mini-Studien-Boxen** (3× CRIT in ki-native-lernumgebungen):
   - "UT Austin (Fall 2024, n≈200) Copilot-first" — keine Publikation, keine PM
   - "Georgia Tech (Goel, 2024, n≈150) Multi-Agent" — keine Studie auffindbar
   - "Stanford HAI Driver/Navigator/Peer-System" — kein Projekt nachweisbar (MAJOR statt CRIT, weil interne Lab-Prototypen plausibel existieren könnten)
   
   Pattern: konkrete Institution + konkretes Jahr + konkrete n-Zahl + konkrete Effekt-Richtung, aber ohne DOI/URL/Paper. Sound-Bites, die in der Literatur nicht existieren.

2. **Fabrizierte Citation mit echtem Titel + erfundenen Autoren** (1× CRIT in fachgespraech-didaktik):
   - "Lancaster & Cotton (2023). AI meets AI. SIGITE 2023." → echter Paper-Titel "AI meets AI" ist von **Xie/Wu/Chakravarty 2023**. Die naheliegende echte Quelle für die These wäre Cotton/Cotton/Shipway 2023 (IETI).

3. **Phantom-Co-Autor im Body, Quellenliste OK** (1× CRIT in fachgespraech-didaktik):
   - Body: "Ohmann & Soosai Raj (2019)" — Quellenliste korrekt: "Ohmann (2019)" Single-Author. Soosai Raj ist erfunden. Inkonsistenz Body/Quellenliste sollte als eigener Hot-Spot in Triage-Script.

4. **Fabrizierte Citation komplett (echter Autor, falsches Werk)** (1× CRIT in ki-native-lernumgebungen):
   - "Goel, A. (2024). AI Teaching Assistants: Lessons from Jill Watson. AI Magazine, 45(1), 78-89." — AI Magazine 45(1) 2024 ist NSF-AI-Institutes-Special-Issue, Goel-Beiträge sind Editorial (S. 4-5) + AI-ALOE-Bericht. Halluzinations-Anker vermutlich Goels echtes 2017er "Using AI to Teach AI" (AI Magazine 38(2)).

5. **Venue-Falschdeklaration: Buch als Journal-Artikel** (1× MAJOR in vier-komponenten-instruktionsdesign):
   - "Kremer & Sloane (2001). Lernfelder implementieren. **bwp@ Berufs- und Wirtschaftspädagogik – online, 4**" — ist Eusl-Verlag-Monografie (Paderborn), kein bwp@-Online-Artikel. bwp@-Issue 4 erschien 2003 (nicht 2001) und enthält Kremer + Sloane nur als getrennte Solo-Beiträge.

6. **Hybrid-Citation mit Autoren-Vertauschung CACM ↔ SIGCSE** (1× MAJOR in prompt-engineering-didaktisch):
   - "Denny, P., Kumar, V., & Giacaman, N. (2024). Computing Education in the Era of Generative AI. CACM 67(2), 56-67." — Autoren gehören zu **"Conversing with Copilot"** (SIGCSE 2023, arXiv:2210.15157). Echte CACM-Arbeit hat 10 Autoren (Denny, Prather, Becker, Finnie-Ansley, Hellas, Leinonen, Luxton-Reilly, Reeves, Santos, Sarsa).

7. **Verwaltungs-Faktualfehler-Cluster im FIAusbV-Block** (1× MAJOR in fachgespraech-didaktik):
   - "12-15 Min Präsentation" — §20 FIAusbV nennt "höchstens 15 Min", kein Mindestwert
   - "Update 2025" der FIAusbV — existiert nicht, nur Prüfungskatalog wurde angepasst
   - Struktogramm/PAP "optional" — Prüfungskatalog 2025 hat sie *entfernt*, nicht optional gemacht
   - "betrieblicher Auftrag" — Vor-2020-VO-Begriff, FIAusbV 2020 nutzt "betriebliche Projektarbeit"

### Bekannte Pattern bestätigt

8. **Erstautor-Misattribution bei nicht-westlichen Namen** (2× MAJOR in rag-tutoring-systeme):
   - LPITutor: "Shahzad, K." → tatsächlich **Liu, Z.** (PeerJ Computer Science 2025)
   - MEGA-RAG: "Li, S." → tatsächlich **Xu, S.** (Initial behalten, Nachname auf häufigeres "Li" "normalisiert")
   
   Konsistent mit Welle 3 (Lee/Kyung), Sweep (Zhang/Chu), Welle 4 (Dhulipalla/Pathak). **Systematisches Repo-Pattern.**

9. **Erstautor-Reihenfolge invertiert** (1× MAJOR in fachgespraech-didaktik):
   - "Novak & Ohmann (2025)" → tatsächlich **Ohmann & Novak** (SIGCSE TS 2025)

10. **Venue-Verwechslung SIGCSE ↔ ITiCSE / CHI 2024 ↔ 2023** (2× MAJOR in ki-native-lernumgebungen):
    - Becker et al. 2023: SIGCSE → ITiCSE
    - Kazemitabaar 2024: CHI 2024 → CHI 2023

11. **Inhalts-Überschreibung von Position-Papers / Survey-Befunden** (3× MAJOR):
    - Becker 2023 (Position-Paper) als Beleg für "Copilot-First-Pädagogik"
    - Denny SIGCSE 2024 Prompt Problems als "effektiv für Computational Thinking" (Paper misst Selbstauskunft, nicht Wirksamkeit)
    - MEGA-RAG-Public-Health-Befund als generische RAG-Effektivität

12. **Übergeneralisierung von Domänen-Studien** (2× MAJOR in rag-tutoring-systeme):
    - "PMC, 2025"-Cancer-Information-Studie als universelle RAG-Halluzinations-Metrik
    - MEGA-RAG-Wert (>40%) aus PubMed-Korpus als generisch

13. **Lost-in-the-Middle semantisch invertiert** (1× MINOR in prompt-engineering-didaktisch):
    - Liu et al.: Mitte des Kontexts wird *unter*-genutzt (U-Kurve)
    - Wiki: "übergewichten die Mitte und verlieren End-/Anfangsregeln"
    - Praxis-Empfehlung (Wichtiges an Anfang/Ende) korrekt, Begründung verkehrt herum

## Detail-Findings (CRITs nur)

### CRIT 1-3: ki-native-lernumgebungen — Fabrizierte Mini-Studien-Boxen

Drei "Vorläufige-Evidenz"-Boxen mit konkreten Zahlen für Studien, die in der Literatur und in Pressemitteilungen nicht existieren:
- "UT Austin (Fall 2024, n≈200): vergleichbare Prüfungsleistung, signifikant bessere Debugging-Skills in Copilot-first-Kohorte"
- "Georgia Tech (Goel, 2024, n≈150): Multi-Agent-Konfiguration reduziert Over-Reliance"
- "Goel, A. (2024). AI Teaching Assistants: Lessons from Jill Watson. AI Magazine, 45(1), 78-89."

**Korrektur:** Boxen entfernen oder als spekulative Architektur-Vorschläge kennzeichnen (ohne n-Zahlen, ohne Effekt-Richtungen, ohne Institutionsnamen mit Implikation einer Originalstudie).

### CRIT 4: fachgespraech-didaktik — Soosai-Raj-Phantom-Co-Autor

Body: "Ohmann & Soosai Raj (2019) etablieren Oral Exams in der CS-Education-Forschung." Quellenliste hat Ohmann korrekt als Single-Author. Soosai Raj ist eine echte Forscherin (Cynthia Soosai Raj, UCSD/UVic), aber NICHT Co-Autorin des SIGCSE-2019-Papers von Peter Ohmann.
**Korrektur:** Body-Text auf "Ohmann (2019)" (Single-Author) korrigieren.

### CRIT 5: fachgespraech-didaktik — Lancaster/Cotton fabriziert

"Lancaster, T. & Cotton, D. (2023). AI meets AI. Proceedings of SIGITE 2023." — echtes Paper "AI Meets AI" auf SIGITE 2023 ist von **Xie, Wu, Chakravarty** (NSF-PAR ID 10535909). Lancaster (Thomas) und Cotton (Debby) sind reale AI-Integrity-Forscher, aber nicht die Autoren dieses Werks. Naheliegende echte Quelle für die These (Oral Exams als KI-Cheating-Mitigation): **Cotton, D., Cotton, P. & Shipway, J. (2023). Chatting and cheating. Innovations in Education and Teaching International.**
**Korrektur:** Citation streichen und durch Cotton/Cotton/Shipway (2023, IETI) ersetzen, oder Aussage entfernen.

## Cross-Repo-Verdacht (neue Pattern aus Welle 5)

| Pattern | Grep-Empfehlung | Risiko |
|---|---|---|
| Kremer & Sloane (2001) als bwp@-Quelle (statt Eusl-Monografie) | `grep -ri 'Kremer.*Sloane.*bwp\|Kremer.*Sloane.*2001' wiki/` | **hoch** — vermutlich in lernsituationen-gestalten, handlungsorientierter-unterricht, lernfeldkonzept |
| Denny CACM-Hybrid mit Kumar/Giacaman | `grep -r 'Denny.*Kumar.*Giacaman' wiki/` | mittel — auch in rag-tutoring-systeme, ki-tutoring-evidenzlage möglich |
| Goel "Jill Watson" AI Magazine 45(1) 78-89 | `grep -r 'Jill Watson\|AI Magazine.*45.*78' wiki/` | niedrig (vermutlich Einzelfall) |
| "Lancaster & Cotton SIGITE 2023" Hybrid | `grep -ri 'Lancaster.*Cotton\|Cotton.*Lancaster' wiki/` | mittel |
| "Soosai Raj" als phantom-Co-Autor neben Ohmann | `grep -r 'Soosai Raj' wiki/` | niedrig |
| "Novak & Ohmann" invertierte Reihenfolge | `grep -ri 'Novak.*Ohmann\|Ohmann.*Novak' wiki/` | niedrig |
| "betrieblicher Auftrag" als Vor-2020-Begriff im FIAusbV-Kontext | `grep -ri 'betrieblicher Auftrag\|betrieblichen Auftrag' wiki/` | mittel |
| "FIAusbV Update 2025" suggeriert Verordnungsnovelle | `grep -ri 'FIAusbV.*2025\|VO 2020.*Update 2025' wiki/` | mittel |
| Erstautor-Misattribution bei chinesischen Autoren (Li, Zhang, Liu, Xu, Chen, Wang) | manuell, stichprobenartig CrossRef-verifizieren | **hoch** (systematisches Pattern) |
| UT-Austin/Goel/Stanford-HAI-Mini-Studien-Boxen mit fabrizierten n-Zahlen | `grep -rE 'n ?[≈=] ?[0-9]+' wiki/ \|` Stichprobe | **hoch** (neuer Triage-Trigger) |
| Becker SIGCSE/ITiCSE Verwechslung | `grep -ri 'Becker.*ITiCSE\|Becker.*SIGCSE.*2023' wiki/` | niedrig |
| Kazemitabaar CHI 2024 statt 2023 | `grep -ri 'Kazemitabaar.*CHI 2024\|Kazemitabaar.*2024' wiki/` | niedrig |
| "Lost in the Middle" semantisch invertiert (Mitte wird *über*-statt unter-gewichtet) | `grep -ri 'Lost in the Middle\|Mitte.*übergewicht' wiki/` | niedrig |
| Anthropic-Doku-URL ohne /overview-Suffix | `grep -r 'docs.anthropic.com/en/docs/build-with-claude/prompt-engineering' wiki/` | niedrig |
| ScienceDirect-PII (8-stellig) statt Artikelnummer (5-6-stellig) | manuell bei caeai/elsevier-Citaten | niedrig |

## Robust gesicherte CRIT/MAJOR-Liste (Welle-5-Korrektur-Backlog)

| # | Datei | Severity | Korrektur |
|---|---|---|---|
| 1-3 | ki-native-lernumgebungen | **CRITICAL** ×3 | UT-Austin-/Georgia-Tech-/Goel-AI-Magazine-Boxen entfernen oder als spekulativ kennzeichnen |
| 4 | fachgespraech-didaktik | **CRITICAL** | Body: "Ohmann & Soosai Raj (2019)" → "Ohmann (2019)" |
| 5 | fachgespraech-didaktik | **CRITICAL** | "Lancaster & Cotton SIGITE 2023" streichen oder durch Cotton/Cotton/Shipway 2023 IETI ersetzen |
| 6 | vier-komponenten-instruktionsdesign | MAJOR | Kremer & Sloane (2001) — Venue auf Eusl-Verlag, Paderborn (Wirtschaftspädagogisches Forum, Bd. 10) korrigieren |
| 7 | prompt-engineering-didaktisch | MAJOR | Denny CACM 2024 — Autoren von SIGCSE-2023 (Kumar/Giacaman) durch echte CACM-2024-10-Autoren ersetzen, oder beide Papers separat zitieren |
| 8 | ki-native-lernumgebungen | MAJOR | Becker et al. 2023 — Venue ITiCSE → SIGCSE; "Copilot-First"-Inhaltsclaim entschärfen |
| 9 | ki-native-lernumgebungen | MAJOR | Stanford HAI Driver/Navigator-System — als spekulatives Konzept kennzeichnen oder streichen |
| 10 | ki-native-lernumgebungen | MAJOR | Denny SIGCSE 2024 Prompt Problems — Inhalts-Claim "effektiv für Computational Thinking" entschärfen (Paper misst Selbstauskunft) |
| 11 | ki-native-lernumgebungen | MAJOR | Kazemitabaar CHI 2024 → CHI 2023 |
| 12 | rag-tutoring-systeme | MAJOR | Li-Survey 2025 — Artikelnummer 100578 → 100417; "51 Studien"-Behauptung paywalled, ggf. entfernen oder verifizieren |
| 13 | rag-tutoring-systeme | MAJOR | LPITutor — "Shahzad, K." → Liu, Z. et al. |
| 14 | rag-tutoring-systeme | MAJOR | MEGA-RAG — "Li, S." → Xu, S. et al.; >40%-Wert mit Domain-Disclaimer (Public-Health, PubMed-Korpus) |
| 15 | rag-tutoring-systeme | MAJOR | "PMC, 2025"-Citation für 2-18%/39%-Werte spezifizieren oder streichen |
| 16 | fachgespraech-didaktik | MAJOR | Novak & Ohmann (2025) → Ohmann & Novak |
| 17 | fachgespraech-didaktik | MAJOR | FIAusbV-Block: §20 "höchstens 15 Min" (kein 12-Min-Mindestwert), Prüfungskatalog 2025 ≠ VO-Update, Struktogramm/PAP entfernt (nicht optional), "betrieblicher Auftrag" → "betriebliche Projektarbeit" |

**MINOR-Backlog (9 Befunde):** Joughin Pluralisierung, Fenton-Untertitel, Talkpal-Quellenstärke, Gracel-Initial M./K., Anthropic-URL /overview, Schulhoff-Titel-Wortlaut, Liu Lost-in-the-Middle Inversion, Neck Untertitel, Frerejean Co-Autoren-Cite-Form. Sammel-PR im Folge-Schritt.

## Methodik-Limitierungen Welle 5

- **Triage-Score-Schwäche aufgedeckt:** Niedriger-Score-Artikel (22-23) haben höhere CRIT-Rate als Höher-Score-Artikel (27-40). Triage-Script sollte um Pattern für **fabrizierte Studien-Boxen** ergänzt werden — Trigger: konkrete Institutionen + konkrete n-Zahlen + konkrete Effekt-Richtung *ohne* DOI/URL/arXiv-ID. Heuristik: `grep -E '(n|N) ?[=≈] ?[0-9]+' + Plausibilitätscheck per WebSearch`.
- **Body-vs-Quellenliste-Inkonsistenzen** (Soosai-Raj-Pattern) sind ein neuer Hot-Spot, der in v3-Layer-3 nicht explizit verankert ist. Methodik-Datei sollte erweitert werden.
- **Fabrizierte Citations mit echtem Titel + erfundenen Autoren** (Lancaster/Cotton-Pattern) sind besonders heimtückisch — DOI-Lookup würde sie nicht fangen, weil DOI nicht angegeben oder zu echtem Paper mit anderen Autoren führt.
- **Konvergenz mit früheren Wellen:** Erstautor-Misattribution bei chinesischen Autoren (Liu→Shahzad, Xu→Li) bestätigt Pattern aus Welle 3 (Lee/Kyung), Sweep (Zhang/Chu), Welle 4 (Dhulipalla/Pathak). Systematisch.

## Empfehlung für nächste Schritte

1. **Bulk-Fix Welle 5** — die 5 CRITs sind dringlich (fabrizierte Citations sind bibliographisch und didaktisch toxisch). Reihenfolge: CRITs zuerst (ki-native-lernumgebungen + fachgespraech-didaktik), dann MAJORs.
2. **Methodik-Update:** v3-audit-methodik.md um Hot-Spot "fabrizierte Studien-Boxen" und "Body-vs-Quellenliste-Inkonsistenz" ergänzen. Triage-Script um Heuristik-Pattern dafür erweitern.
3. **Cross-Repo-Sweep nach Welle 5** lohnt sich: Kremer/Sloane-bwp@-Pattern, Denny-CACM-Hybrid, fabrizierte Mini-Studien-Boxen mit n-Zahlen, "betrieblicher Auftrag"-Begriff.
4. **Welle 6** danach: ki-tool-bewertung-rubric, peer-feedback-it-projekte, lernsituationen-gestalten, lernsituationen-evaluation, lernfeldkonzept (Score je 19-22).
