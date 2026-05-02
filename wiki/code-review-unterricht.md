---
title: Code Reviews als Lernmethode
type: methode
tags: [peer-learning, programmierung, feedback, kooperatives-lernen, softwareentwicklung]
related:
  - "[[pair-programming-unterricht]]"
  - "[[formatives-assessment]]"
  - "[[scaffolding]]"
  - "[[constructive-alignment]]"
  - "[[blooms-taxonomie]]"
  - "[[cognitive-apprenticeship]]"
  - "[[community-of-practice]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[peer-instruction]]"
  - "[[primm-methode]]"
  - "[[engagement-theory]]"
  - "[[kooperatives-lernen]]"
  - "[[fehlerkultur-im-unterricht]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[affektive-dimensionen]]"
  - "[[expertise-entwicklung]]"
  - "[[wissensretention-programmierung]]"
  - "[[live-coding-lehrmethode]]"
  - "[[icap-framework]]"
  - "[[rubric-design]]"
  - "[[fachgespraech-didaktik]]"
  - "[[explain-in-plain-english]]"
  - "[[abschlussprojekt-begleitung]]"
  - "[[kritische-ki-bewertungskompetenz]]"
  - "[[ki-prompt-handwerk]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
sozialform: [partner, gruppe]
created: 2026-04-07
updated: 2026-04-09

summary: >
  Strukturierte Peer Code Reviews als Lernmethode, die Lesekompetenz,
  Qualitätsbewusstsein und Kommunikationsfähigkeit trainiert — direkt
  berufsrelevant und eine Form von Wiliams Strategie 4 (Peers als Lernressourcen).
  Rubric-Qualität folgt den Hattie-Timperley-Feedback-Ebenen.
---

# Code Reviews als Lernmethode

## Kernidee

Code Reviews übertragen eine zentrale Praxis der professionellen Softwareentwicklung in den Unterricht: Lernende begutachten systematisch den Code ihrer Peers anhand klarer Kriterien. Das trainiert gleichzeitig Code-Lesekompetenz (auf [[blooms-taxonomie]]-Stufe "analysieren"/"bewerten"), Qualitätsbewusstsein und konstruktive Kommunikation — und ist eine direkte Umsetzung von [[formatives-assessment]] Strategie 4 (Lernende als Lernressourcen füreinander).

## Beschreibung

Hundhausen et al. (2013) zeigten, dass Peer Code Reviews die Codequalität und das Verständnis für Softwaredesign signifikant verbessern. Entscheidend ist ein klar vorgegebenes Review-Rubric — ohne Rubric bleiben Reviews oberflächlich ("sieht gut aus").

Ein bewährtes Verfahren ist zweistufig: (1) Review schreiben, (2) das eigene Review vom Peer bewerten lassen (Review-of-Review), was die Reflexionstiefe erhöht.

### Hattie-Feedback-Ebenen als Qualitätskriterium für Reviews

Die wirksamste Justierung eines Review-Rubrics ist nicht die Zahl der Kriterien, sondern die **Feedback-Ebene**, auf der es operiert. Hattie & Timperley (2007) unterscheiden vier Ebenen mit sehr unterschiedlicher Wirksamkeit — die vollständige Tabelle steht in [[formatives-assessment]]:

| Ebene | Review-Kommentar-Beispiel | Wirksamkeit |
|---|---|---|
| **Task** | "In Zeile 14 fehlt die Fehlerbehandlung für `null`." | Nützlich, aber oberflächlich |
| **Process** | "Die Funktion tut zu viel — zerlege sie in `validate()` und `save()`, dann wird Testing einfacher." | Sehr wirksam, fördert Transfer |
| **Self-Regulation** | "Hast du vor dem Commit einen Trockenlauf mit den Grenzwerten gemacht? Das hätte den Bug gezeigt." | Am nachhaltigsten |
| **Self** | "Super gemacht, du bist ein guter Coder!" | **Unwirksam** — keine handlungsrelevante Info |

Novizen-Reviews bleiben typischerweise auf der Task-Ebene stehen ("hier fehlt was", "schreibfehler") — das ist brauchbar, aber unter dem Potenzial. Das Rubric und die Kalibrierungssession sollten **Process-Feedback explizit fordern** ("welche Strategie hätte geholfen?") und **Self-Feedback explizit verbieten**. Review-of-Review ist der Hebel, um Ebenen-Drift zu korrigieren: "War dieser Kommentar auf Task-, Process- oder Self-Regulation-Ebene?" ist eine sehr produktive Meta-Frage.

Für KI-unterstütztes Review (Rubric-Evaluator aus [[llm-integrationsmuster-lernumgebungen]]): Die Hattie-Ebenen gehören als Pflichtfelder ins JSON-Output-Schema, damit das LLM nicht in Task-only-Drift kippt.

## Durchführung

1. **Rubric einführen** — 4-6 Kriterien mit je dreistufiger Skala (unzureichend/akzeptabel/vorbildlich): Funktionale Korrektheit, Lesbarkeit/Naming, Modularität, Fehlerbehandlung, Einhaltung von Konventionen.
2. **Kalibrierungssession** — Alle bewerten denselben Code und vergleichen Ergebnisse. Reduziert Abweichungen von Expertenbewertungen von 30% auf unter 10%.
3. **Code einreichen** — Lernende pushen ihren Code (z.B. via GitHub Classroom als Pull Request).
4. **Review durchführen** — Jede:r erhält den Code eines Peers. Feedback schriftlich anhand des Rubrics + Freitextkommentare.
5. **Review-of-Review** — Lernende bewerten das erhaltene Review: War es hilfreich? Spezifisch? Konstruktiv?
6. **Reflexion** — Gemeinsam besprechen: Welche Muster tauchten auf? Was sind typische Code-Smells?

## Voraussetzungen

- Lernende müssen Grundlagen der Programmiersprache beherrschen (Code lesen können)
- Gemeinsame Coding-Konventionen vereinbart (z.B. Naming, Formatierung)
- Review-Rubric muss vorab eingeführt und kalibriert sein
- Vertrauensvolle Atmosphäre (Feedback auf Code, nicht auf Person — vgl. [[formatives-assessment]] Self-Level vermeiden)
- Tooling: GitHub/GitLab mit Pull Requests oder ein Review-Tool

## Varianten

- **Pull-Request-Workflow (GitHub Classroom):** Lehrkraft erstellt Template-Repos, Lernende forken und erstellen PRs. Autograding via GitHub Actions prüft Tests automatisch, menschliches Review fokussiert auf Design und Lesbarkeit.
- **Mob/Ensemble Programming:** 3-5 Personen, ein Rechner. Driver tippt, Navigator gibt Anweisungen, Rest beobachtet. Rotation alle 5-10 Min. Besonders wirksam für Anfänger:innen und komplexes Debugging.
- **Think-Pair-Share für Code:** (1) Individuell über Code-Problem nachdenken (2 Min.), (2) mit Partner besprechen (3 Min.), (3) im Plenum vorstellen. In CS1-Studien mit Peer Instruction halbierten sich die Durchfallquoten gegenüber Vorlesungs-Kohorten (Porter et al., 2013, SIGCSE). Methoden-Beschreibung in Simon & Cutts (2012, CACM-Opinion).
- **Jigsaw (Gruppenpuzzle):** Jede Expertengruppe erarbeitet ein Design Pattern, dann wird in Stammgruppen zusammengetragen.

### Exkurs: Social Annotation — PR-Review ist die Code-Variante

In Geistes- und Sprachwissenschaften hat sich **Social Annotation** etabliert: Lernende markieren und kommentieren Textstellen direkt im Dokument, andere sehen die Anmerkungen und antworten darauf. Führende Plattformen: **Hypothesis** (Open Source, LTI 1.3 für Moodle/Canvas, US-gehostet) und **Perusall** (kostenlos für Lehrkräfte, KI-unterstütztes Comment-Grading, US-gehostet). Empirie ist moderat positiv: Systematic Reviews (Zhu et al., 39 Studien) zeigen Effekte auf Leseverstehen, Metakognition und Motivation; eine CS-Einführungsstudie (Gomes de Oliveira Neto & Dobslaw, ICSE-SEET 2024) beobachtete 81 % vs. 56 % Bestehensquote bei Perusall-Teilnahme — allerdings mit Selbstselektion, nicht als RCT. Effekt-Größen liegen unter dem, was Retrieval Practice oder Peer Instruction liefern.

**Warum das hier kein eigenständiges Muster ist**: Der Pull-Request-Workflow oben **ist** Social Annotation auf Code. Jeder Inline-Kommentar in einem GitHub/GitLab-PR ist eine Annotation, jede Antwort darauf ist die soziale Dimension, jede "Resolve"-Aktion ist der Schließ-Mechanismus. Die didaktische Grundlogik (gemeinsam an einem Artefakt diskutieren, anker-gebundenes Feedback) ist identisch — nur das Artefakt ist Code statt Text. Für FIAE/FIDP ist das sogar **berufs-authentischer**, weil PR-Workflows der professionelle Standard sind.

**Wann lohnt sich der Blick auf Text-Social-Annotation trotzdem?** Für Phasen, in denen Lernende **kein Code**, sondern Doku, RFCs, Datenschutzerklärungen oder Fachartikel analysieren sollen — also in Flipped-Classroom-Preps oder bei LF4 (DSGVO-Dokumente), LF3/LF8 (RFCs). Dann liefern Hypothesis oder Perusall Funktionen, die PR-Reviews nicht haben (anker-gebundene Text-Markierungen, Thread-Ansicht über das gesamte Dokument).

**DSGVO-Caveat**: Hypothesis und Perusall sind US-gehostet. Für deutsche Schulen ist beides nicht ohne Schul-DSB-Freigabe und Schrems-II-Prüfung einsetzbar — das ist ein harter Blocker, keine Formalie. DE-Alternativen wie **edubreak CAMPUS** existieren (DE-Hosting, LTI), sind aber kommerziell und eher auf Video-Annotation zugeschnitten. Für die Praxis heißt das: **Solange die Aufgabe Code ist, reicht der PR-Workflow**. Erst wenn Text-Annotation wirklich nötig wird, lohnt der DSGVO-Aufwand für eine externe Plattform.

Siehe auch [[kooperatives-lernen]] für die allgemeine Einordnung als Methode.

## Zeitbedarf

- **Vorbereitung:** 1-2 Stunden (Rubric erstellen, Kalibrierungsbeispiel vorbereiten)
- **Kalibrierungssession:** 30-45 Min. (einmalig pro Kurs)
- **Review-Durchführung:** Min. 30 Min. pro Review (Faustregel: halbe Zeit der ursprünglichen Aufgabe)
- **Review-of-Review + Reflexion:** 20-30 Min.

## Bezug zur IT-Ausbildung

Code Reviews sind direkt berufsrelevant — sie werden in fast allen Entwicklerteams praktiziert. Pull-Request-Workflows auf GitHub/GitLab bilden professionelle DevOps-Kultur ab. Geeignet für:

- **LF5:** Review von SQL-Queries und Datenbankschemas
- **LF8:** Review von REST-API-Endpoints (Naming, Fehlerbehandlung, HTTP-Statuscodes)
- **LF10a-12a:** Code Reviews als fester Bestandteil des Projektworkflows
- **Prüfungsvorbereitung:** Code-Analyse ist Bestandteil der IHK-Abschlussprüfung

Gemäß [[constructive-alignment]]: Wenn das Lernziel "bewerten" oder "analysieren" ist, passt Code Review als Assessment-Form direkt.

## Praktische Anwendung

Ein Agent kann Code Reviews unterstützen:

1. **Rubric generieren** — passend zum Lernfeld und zur Aufgabe Review-Kriterien mit Skala erstellen.
2. **Kalibrierungsmaterial erstellen** — Beispiel-Code mit bekannten Stärken und Schwächen für die Kalibrierungssession.
3. **Review-Leitfragen** bereitstellen — "Was macht die Funktion? Ist der Name aussagekräftig? Gibt es Grenzfälle, die nicht behandelt werden?"
4. **Feedback-Qualität prüfen** — Review-Kommentare auf Spezifität und Konstruktivität bewerten, [[scaffolding]] für besseres Feedback geben.

## Verwandte Konzepte

- [[pair-programming-unterricht]] — Synchrones Peer-Feedback (Code Review ist die asynchrone Variante)
- [[formatives-assessment]] — Code Reviews sind Wiliams Strategie 4 (Peers als Lernressourcen); Hattie-Timperley-Feedback-Ebenen-Tabelle als direkte Rubric-Grundlage
- [[scaffolding]] — Rubric und Kalibrierung als Scaffold für konstruktives Feedback
- [[constructive-alignment]] — Code Review als aligned Assessment auf Stufe "analysieren"/"bewerten"
- [[blooms-taxonomie]] — Code-Analyse operiert auf den oberen Taxonomiestufen
- [[llm-integrationsmuster-lernumgebungen]] — Rubric-Evaluator-Muster für KI-unterstützte Reviews mit Hattie-Ebenen als Pflichtfeldern

## Quellen

- Hundhausen, C. D. et al. (2013). Talking About Code: Integrating Pedagogical Code Reviews into Early Computing Courses. ACM Transactions on Computing Education, 13(3), 1-28.
- Luxton-Reilly, A. et al. (2018). Introductory Programming: A Systematic Literature Review. ITiCSE Working Group Report.
- Simon, B. & Cutts, Q. (2012). Peer Instruction: A Teaching Method to Foster Deep Understanding. Communications of the ACM, 55(2), 27-29.
- Porter, L., Bailey-Lee, C., & Simon, B. (2013). Halving Fail Rates Using Peer Instruction: A Study of Four Computer Science Courses. *SIGCSE '13*, 177-182. https://doi.org/10.1145/2445196.2445250
- Hattie, J. & Timperley, H. (2007). The Power of Feedback. *Review of Educational Research*, 77(1), 81-112.
- Zhu, X., Chen, B., Avadhanam, R. M., Shui, H., & Zhang, R. Z. (2020). Reading and connecting: Using social annotation in online classes — A systematic review of research. *Information and Learning Sciences*, 121(5/6), 261-271. https://doi.org/10.1108/ILS-04-2020-0117
- Gomes de Oliveira Neto, F., & Dobslaw, F. (2024). Building Collaborative Learning: Exploring Social Annotation in Introductory Programming. *ICSE-SEET 2024*. arXiv:2407.10322.
