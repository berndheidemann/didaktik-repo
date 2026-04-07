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
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
sozialform: [partner, gruppe]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Strukturierte Peer Code Reviews als Lernmethode, die Lesekompetenz,
  Qualitätsbewusstsein und Kommunikationsfähigkeit trainiert — direkt
  berufsrelevant und eine Form von Wiliams Strategie 4 (Peers als Lernressourcen).
---

# Code Reviews als Lernmethode

## Kernidee

Code Reviews übertragen eine zentrale Praxis der professionellen Softwareentwicklung in den Unterricht: Lernende begutachten systematisch den Code ihrer Peers anhand klarer Kriterien. Das trainiert gleichzeitig Code-Lesekompetenz (auf [[blooms-taxonomie]]-Stufe "analysieren"/"bewerten"), Qualitätsbewusstsein und konstruktive Kommunikation — und ist eine direkte Umsetzung von [[formatives-assessment]] Strategie 4 (Lernende als Lernressourcen füreinander).

## Beschreibung

Hundhausen et al. (2013) zeigten, dass Peer Code Reviews die Codequalität und das Verständnis für Softwaredesign signifikant verbessern. Entscheidend ist ein klar vorgegebenes Review-Rubric — ohne Rubric bleiben Reviews oberflächlich ("sieht gut aus").

Ein bewährtes Verfahren ist zweistufig: (1) Review schreiben, (2) das eigene Review vom Peer bewerten lassen (Review-of-Review), was die Reflexionstiefe erhöht.

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
- **Think-Pair-Share für Code:** (1) Individuell über Code-Problem nachdenken (2 Min.), (2) mit Partner besprechen (3 Min.), (3) im Plenum vorstellen. Verdoppelt die Lösungsquote bei Trace-Aufgaben (Simon & Cutts, 2012).
- **Jigsaw (Gruppenpuzzle):** Jede Expertengruppe erarbeitet ein Design Pattern, dann wird in Stammgruppen zusammengetragen.

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
- [[formatives-assessment]] — Code Reviews sind Wiliams Strategie 4 (Peers als Lernressourcen)
- [[scaffolding]] — Rubric und Kalibrierung als Scaffold für konstruktives Feedback
- [[constructive-alignment]] — Code Review als aligned Assessment auf Stufe "analysieren"/"bewerten"
- [[blooms-taxonomie]] — Code-Analyse operiert auf den oberen Taxonomiestufen

## Quellen

- Hundhausen, C. D. et al. (2013). Talking About Code: Integrating Pedagogical Code Reviews into Early Computing Courses. ACM Transactions on Computing Education, 13(3), 1-28.
- Luxton-Reilly, A. et al. (2018). Introductory Programming: A Systematic Literature Review. ITiCSE Working Group Report.
- Simon, B. & Cutts, Q. (2012). Peer Instruction: A Teaching Method to Foster Deep Understanding. Communications of the ACM, 55(2), 27-29.
