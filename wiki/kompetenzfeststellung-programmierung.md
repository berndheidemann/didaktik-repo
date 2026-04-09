---
title: Kompetenzfeststellung im Programmierunterricht
type: praxis
tags: [assessment, portfolio, prozess-assessment, ihk-pruefung, kompetenzorientierung]
related:
  - "[[formatives-assessment]]"
  - "[[constructive-alignment]]"
  - "[[blooms-taxonomie]]"
  - "[[code-review-unterricht]]"
  - "[[expertise-entwicklung]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[learning-engineering]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[selbstgesteuertes-lernen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten, erschaffen]
sozialform: [einzelarbeit, partner, gruppe]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Innovative Assessment-Formen jenseits von Multiple Choice — Portfolio-Assessment,
  prozessbasierte Bewertung und kontinuierliche Kompetenzprofile ergänzen die
  IHK-Prüfung und bilden Programmierkompetenz authentischer ab.
---

# Kompetenzfeststellung im Programmierunterricht

## Kernidee

Traditionelle Prüfungsformate (Multiple Choice, Lückentext) testen primär Faktenwissen auf [[blooms-taxonomie]]-Stufe "erinnern". Programmieren ist aber eine Handlungskompetenz, die auf Stufe "anwenden" bis "erschaffen" operiert. Innovative Assessment-Formate — Portfolio, Prozess-Assessment, KI-integrierte Prüfungen — bilden diese Kompetenz authentischer ab und ergänzen die IHK-Prüfung.

## Kontext

Die IHK-Abschlussprüfung für Fachinformatiker:innen besteht aus: Teil 1 (schriftlich, 90 Min., breit) und Teil 2 (betriebliches Projekt 40h/80h + Fachgespräch + schriftlich). Teil 2 ist deutlich authentischer als Teil 1 — das Projekt und das Fachgespräch testen echte Handlungskompetenz. Die Herausforderung: Wie kann der Unterricht die Zeit zwischen den Prüfungen mit aussagekräftiger Kompetenzfeststellung füllen?

## Durchführung

### Portfolio-Assessment

Lernende pflegen ein kuratiertes GitHub-Portfolio über die gesamte Ausbildung: Commit-Verlauf, Projektevolution, Dokumentation. Das Portfolio erfasst Dimensionen, die Klausuren nicht abbilden: Iteration, Reaktion auf Feedback, Wachstum über Zeit.

**Format:** Markdown-Dateien im eigenen Git-Repo. Pro Lernfeld mindestens ein Projekt-Artefakt mit Reflexion. Bewertung gegen ein Rubric (vgl. [[code-review-unterricht]]).

### Prozess-Assessment

Nicht nur *was* Lernende produzieren, sondern *wie* sie es tun: IDE-Interaktionsmuster, Debugging-Verhalten, Commit-Sequenzen. KI-Plattformen können den gesamten Entwicklungsprozess instrumentieren und Prozess-Metriken generieren (vgl. [[ki-native-lernumgebungen]]).

Jadud (2006) entwickelte den "Error Quotient" — ein Maß dafür, wie systematisch Lernende auf Compile-Fehler reagieren. Systematisches Debugging korreliert stark mit Lernerfolg.

### Kompetenzbasierte Progression

Mastery-basiert statt zeitbasiert: Lernende weisen Kompetenz nach, bevor sie weiterschalten (vgl. [[learning-engineering]]). Jede Lernfeld-Kompetenz wird als nachweisbare Fähigkeit definiert, nicht als "behandeltes Thema." Passt perfekt zum Handlungskompetenz-Modell des Rahmenlehrplans (vgl. [[handlungsorientierter-unterricht]]).

### KI-integrierte Prüfungen

Da Azubis beruflich mit KI-Tools arbeiten werden, müssen Prüfungen das adressieren:
- **KI-erlaubte Prüfungen:** Bewertet wird, was Lernende mit KI-Output *tun* — evaluieren, debuggen, integrieren
- **Prozess-sichtbare Prüfungen:** Die Interaktion mit KI ist selbst Bewertungsgegenstand
- **Fachgespräch als Verifikation:** Mündliche Nachfrage prüft, ob Verständnis hinter dem Code steckt

## Ergebnisse

Forschung (Nickolaus & Seeber, 2013) zeigt: Die Projekt-Komponente der IHK-Prüfung sagt Berufserfolg besser voraus als der schriftliche Teil. Continuous Assessment korreliert besser mit Langzeit-Retention als Einzelprüfungen (Baird et al., 2017). Portfolio-Assessment erfasst Wachstum und Iteration — Qualitäten, die kein Einzeltest messen kann.

## Lessons Learned

- **Rubrics sind Pflicht:** Ohne transparente Bewertungskriterien wird Portfolio-Assessment subjektiv und unfair. Rubrics aus [[code-review-unterricht]] adaptieren.
- **Kalibrierung trainieren:** Lernende sollen ihre eigene Leistung einschätzen *bevor* sie Feedback erhalten — trainiert Metakognition und reduziert Dunning-Kruger (vgl. [[selbstgesteuertes-lernen]]).
- **Fachgespräch als stärkstes Format:** Mündliche Prüfung verhindert KI-generierte Submissions und prüft Verständnistiefe. Im Berufsschulalltag als regelmäßiges Mini-Fachgespräch (5-10 Min.) umsetzbar.
- **Prozess-Daten brauchen Transparenz:** Lernende müssen wissen, dass ihr Prozess beobachtet wird, und die Daten müssen ihnen zugänglich sein (Lernfortschritt, nicht Überwachung).

## Bezug zur IT-Ausbildung

| Assessment-Form | Lernfeld-Bezug | Bloom-Stufe |
|----------------|---------------|-------------|
| **Portfolio** | LF5-12: Projektartefakte über die Ausbildung | Erschaffen |
| **Code Review (Peer)** | LF8, LF10-12: PR-basierte Bewertung | Bewerten |
| **Prozess-Assessment** | LF6: Debugging-Verhalten bei Troubleshooting | Analysieren |
| **Mini-Fachgespräch** | Alle LF: "Erkläre, warum du das so gelöst hast" | Bewerten |
| **KI-integrierte Aufgabe** | LF11a-12a: Mit Copilot arbeiten und Ergebnis bewerten | Bewerten/Erschaffen |

## Praktische Anwendung

Ein Agent kann Kompetenzfeststellung unterstützen:

1. **Multi-Signal-Kompetenzprofil:** Unit-Test-Ergebnisse + Linter-Scores + Code-Review-Qualität + Projektmetriken zu einem per-Lernfeld-Kompetenzprofil aggregieren (vgl. [[learning-engineering]]).
2. **Rubrics generieren** — passend zum Lernfeld und zur [[blooms-taxonomie]]-Stufe automatisch Bewertungskriterien erstellen.
3. **Kalibrierungs-Training:** Regelmäßig fragen "Wie schätzt du deine Lösung ein?" — dann mit automatisiertem Assessment vergleichen.
4. **Fachgespräch-Fragen generieren:** "Erkläre, warum du hier ein Dictionary statt einer Liste gewählt hast" — prüft Verständnis hinter dem Code.

## Verwandte Konzepte

- [[formatives-assessment]] — Kompetenzfeststellung nutzt formative Daten für summative Aussagen
- [[constructive-alignment]] — Assessment muss auf gleicher Bloom-Stufe wie Lernziel operieren
- [[blooms-taxonomie]] — Programmieren operiert auf Stufe "anwenden"+ — Assessment muss das auch
- [[code-review-unterricht]] — Peer-Code-Reviews als strukturiertes Assessment-Format
- [[expertise-entwicklung]] — Subskill-Assessment pro Expertise-Stufe
- [[handlungsorientierter-unterricht]] — Handlungskompetenz erfordert handlungsorientiertes Assessment
- [[ki-native-lernumgebungen]] — KI-integrierte Prüfungsformate als Zukunftsmodell

## Quellen

- Jadud, M. C. (2006). Methods and Tools for Exploring Novice Compilation Behaviour. Proceedings of ICER 2006, 73-84.
- Nickolaus, R. & Seeber, S. (2013). Berufliche Kompetenzen: Modellierung und Diagnostik. Beiheft der Zeitschrift für Berufs- und Wirtschaftspädagogik, 26.
- Baird, J. et al. (2017). Assessment and Learning: State of the Field Review. Oxford University Centre for Educational Assessment.
- Denny, P. et al. (2024). Computing Education in the Era of Generative AI. Communications of the ACM, 67(2), 56-67.
