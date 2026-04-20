---
title: Testitem-Konstruktion für digitale Prüfungen
type: methode
tags: [assessment, testkonstruktion, multiple-choice, item-quality, digitale-pruefung, qti, referenz]
related:
  - "[[blooms-taxonomie]]"
  - "[[constructive-alignment]]"
  - "[[formatives-assessment]]"
  - "[[misconception-analyse]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[peer-instruction]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[parsons-problems]]"
  - "[[retrieval-practice]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[cognitive-load-theory]]"
  - "[[evaluation-lernumgebungen]]"
  - "[[llm-as-grader]]"
  - "[[rubric-design]]"
  - "[[ihk-pruefungskatalog-2025]]"
  - "[[ki-integritaet-pruefungsleistung]]"
  - "[[kritische-ki-bewertungskompetenz]]"
audience: [FIAE, FIDP]
taxonomiestufe: [erinnern, verstehen, anwenden, analysieren]
evidenzgrad: meta-analyse
created: 2026-04-14
updated: 2026-04-14
summary: >
  Evidenzbasierte Regeln zur Konstruktion automatisch auswertbarer Testitems (MC, MR, Fill-in, Matching, Ordering, T/F) mit Fokus auf digitale LMS/QTI-Plattformen — Itemformat-Wahl nach Bloom-Stufe, Distraktor-Qualität aus Misconceptions, Vermeidung von Cueing-Artefakten.
---

# Testitem-Konstruktion für digitale Prüfungen

## Kernidee

Gute Testitems messen Wissen, nicht Testwise-ness. Evidenzbasierte Konstruktionsregeln — prominent die 31 Guidelines von Haladyna, Downing & Rodriguez (2002) — reduzieren construct-irrelevant variance, erhöhen Trennschärfe und Reliabilität. Für digitale Prüfungen kommen zwei Rahmenbedingungen hinzu: automatische Auswertung limitiert Itemformate, und die Wahl des QTI-Interaktionstyps muss zur Bloom-Stufe des Lernziels passen.

## Beschreibung

### Die Haladyna-Guidelines (gekürzt)

Haladyna et al. (2002) synthetisierten 27 Lehrbücher und 27 empirische Studien zu 31 Regeln. Die operativ wichtigsten:

**Stem (Fragestamm)**
- Vollständige Frage oder Satz — keine Lücke mitten im Satz.
- Zentrale Idee in den Stem, nicht in die Optionen ("Cover-the-options-Test": Ist die Frage auch ohne Antwortoptionen verstehbar?).
- Negationen ("NICHT", "AUSSER") vermeiden; wenn unvermeidbar, typografisch hervorheben.

**Choices (Antwortoptionen)**
- Nur **eine** eindeutig richtige Antwort; Optionen homogen in Inhalt und Grammatik.
- Optionen **gleich lang** — der häufigste Cue ist die längere korrekte Antwort.
- Position der richtigen Antwort zufällig verteilen (Mitte-Bias vermeiden).
- Plausible Distraktoren aus bekannten Schülerfehlern ableiten.
- "All of the above" vermeiden; "None of the above" nur bei echt möglichem "keine Lösung".
- Absolute Wörter ("immer", "nie", "alle") vermeiden — werden reflexhaft als falsch erkannt.

**Inhaltlich & stilistisch**
- Jedes Item prüft **ein** klares Lernziel; keine Trivia, keine Trickfragen.
- Keine wörtlichen Formulierungen aus dem Lehrmaterial (prüft sonst nur Wiedererkennen).
- Konventionelles MC-Format statt Komplex-Formaten ("K-Typ": "1 und 3 sind richtig").

### Wie viele Optionen? — Die Drei-Optionen-Regel

Rodriguez (2005) — Meta-Analyse von 80 Jahren Forschung über 27 Studien: **drei Optionen sind für die meisten Items optimal**. Der dritte Distraktor zieht oft schon unter 5 % der Antworten; ein vierter ist fast immer "tot". Die Zeit für fiktive Distraktoren produziert keinen psychometrischen Gewinn — besser: mehr Items, breitere Inhaltsabdeckung bei gleicher Reliabilität. Die Vier-Optionen-Konvention ist Tradition, kein Standard.

### Cueing — die unsichtbaren Hinweise

Test-wise students erkennen korrekte Antworten an strukturellen Artefakten. Millman, Bishop & Ebel (1965) sowie Rogers & Bateson (1991): Test-wiseness erklärt 5–15 % Score-Varianz — construct-irrelevant variance im Sinne Messicks. Typische Cues:

- **Längen-Cue:** korrekte Option ist im Mittel länger (präzisere Qualifikation).
- **Grammatik-Cue:** "Ein _____ ist..." → nur Optionen mit konsonantischem Anlaut passen. Lösung: Artikel in die Optionen verschieben.
- **Wortwiederholung (clang association):** Ein Begriff aus dem Stem taucht nur in der korrekten Option wieder auf.
- **Konvergenz-Cue:** Die korrekte Antwort enthält "alle wichtigen Elemente" — Studierende wählen die umfassendste Option.
- **Absolute Quantoren:** Optionen mit "immer"/"nie" werden als Distraktoren erkannt.

Diese Artefakte entstehen beim Schreiben unbewusst. **Peer-Review gegen Checkliste** ist die wirksamste Gegenmaßnahme.

### Distraktor-Qualität und Misconceptions

Ein Distraktor "funktioniert", wenn er von mindestens 5 % der Testpersonen gewählt wird **und** negativ mit dem Gesamtscore korreliert. Haladyna & Downing (1993): Typisch sind pro Item nur 1–2 funktionierende Distraktoren — der Rest ist psychometrisch wertlos.

**Die Goldquelle für starke Distraktoren sind dokumentierte Misconceptions.** Sadler (1998) entwickelte den *Physics In Pedagogy Survey*: Distraktoren basieren systematisch auf empirisch dokumentierten Fehlvorstellungen. Ergebnis — ein Item wird **diagnostisch**: Die gewählte Falschantwort verrät, *welche* Misconception aktiv ist. Mazurs ConcepTests folgen dem gleichen Prinzip.

Für die IT-Ausbildung relevante CS-Misconceptions (siehe [[misconception-analyse]]):
- Variablen-Zuweisung als symmetrische Gleichung statt gerichteter Speicherung (`a = b` ≠ `b = a`).
- Referenz-vs.-Wert-Verwirrung (`list2 = list1` → Aliasing).
- Off-by-one-Fehler bei Schleifengrenzen.
- Rekursion ohne mentales Modell des Call Stacks.
- Scope-Konfusion zwischen globalen und lokalen Variablen.

Praktisch: Distraktoren nicht erfinden, sondern aus Hausaufgaben-Fehlern, Klausur-Freitextantworten, Forenbeiträgen oder Concept Inventories (SCS1, BDSI) extrahieren.

### Bloom-Stufen und Itemformat

MC prüft primär die unteren Bloom-Stufen. Crowe, Dirks & Wenderoth (2008) klassifizierten real eingesetzte Biologie-MC-Items: **über 80 % lagen auf *Remember/Understand***, obwohl die Lehrenden glaubten, höhere Stufen zu testen. Lehrende überschätzen die kognitive Tiefe ihrer Items systematisch.

Mit Szenario-Items (Vignetten, Code-Snippets) sind Apply/Analyze möglich; Evaluate/Create lassen sich mit MC nicht sinnvoll prüfen.

| Bloom-Stufe | Geeignetes QTI-Format | Bemerkung |
|---|---|---|
| Erinnern | True/False, Single Choice, Texteingabe (Begriff) | T/F nur bei klaren Fakten (50 % Rate-Basis) |
| Verstehen | Single Choice, Multiple Response, Inline Choice | Distraktoren aus Misconceptions |
| Anwenden | Szenario-MC, Fill-in (numerisch/Code-Trace), Ordering | "Was passiert, wenn…?" |
| Analysieren | Matching, Vignetten-MC, Fill-in-Multi über Code-Trace | Parsons Problems, Strukturen erkennen |
| Bewerten | Mit MC kaum sinnvoll | Freitext oder Performance Task |
| Erschaffen | Mit MC nicht möglich | Projekt, betrieblicher Auftrag |

### Code-spezifische Formate

- **Code-Reading (Tracing):** Lister et al. (2004) zeigten, dass ~25 % der CS1-Studierenden einfache Programme nicht tracen können. Tracing ist psychometrisch valider Vorläufer von Schreibkompetenz. In QTI: `fill_in_blank_multi` mit Lücken im erwarteten Output.
- **Parsons Problems:** Code-Zeilen in korrekte Reihenfolge bringen (Denny, Luxton-Reilly & Simon, 2008). Ähnliche Lerneffekte wie Code-Schreiben bei kürzerer Bearbeitungszeit und besserer Diagnostik. In QTI: `orderInteraction`. Siehe [[parsons-problems]].
- **Concept Inventories:** SCS1 (Parker et al., 2016) und BDSI sind psychometrisch validierte Itempools — übertragbare Vorlagen für eigene Items.

### Item-Qualitätskennzahlen

Orientierung an den AERA/APA/NCME-*Standards* (2014):

- **Cronbachs α ≥ 0.70** für Klassentests; ≥ 0.80 für summative High-Stakes-Prüfungen.
- **Item-Schwierigkeit (p-Wert):** optimal 0.30–0.80, Zielwert ~0.60.
- **Trennschärfe (point-biserial):** ≥ 0.20 akzeptabel, ≥ 0.30 gut. **Negative Trennschärfe** = Item ist defekt (bessere Lernende antworten falsch — meist Schlüsselfehler oder Mehrdeutigkeit).
- **Distraktor-Analyse:** jeder Distraktor sollte von mindestens 5 % gewählt werden und negativ mit Score korrelieren.

Diese Kennzahlen lassen sich aus jedem LMS-Testexport berechnen; itsLearning liefert sie nicht automatisch, aber die Rohdaten ja.

### Was schlechte Items anrichten

Downing (2005) analysierte vier medizinische Examina: **35–65 % aller Items verletzten mindestens eine Haladyna-Regel** — selbst in professionell konstruierten High-Stakes-Tests. Flawed items sind schwieriger, aber nicht weil sie anspruchsvoller sind — sondern weil Cueing fehlt oder Mehrdeutigkeit verwirrt; Trennschärfe und Reliabilität sinken. Tarrant & Ware (2008) replizierten den Effekt an Nursing-Examen: flawed items benachteiligen vor allem **leistungsstarke** Studierende, weil diese Mehrdeutigkeit erkennen und ins Grübeln kommen, während schwächere raten. Schlechte Itemkonstruktion ist damit eine Fairness-Frage.

## Durchführung

Operativer Prozess zum Erstellen eines guten Items:

1. **Lernziel formulieren** (mit Bloom-Stufe) — siehe [[blooms-taxonomie]] und [[constructive-alignment]].
2. **Itemformat wählen** nach Bloom-Stufe und verfügbarem QTI-Typ (Tabelle oben).
3. **Stem schreiben** als vollständige Frage, die den Cover-the-options-Test besteht.
4. **Korrekte Antwort** formulieren — präzise, aber nicht übermäßig qualifiziert.
5. **Distraktoren aus Misconceptions** ableiten. Quellen: Freitextantworten vergangener Klausuren, Forenbeiträge, KI-Tutoring-Logs, Concept Inventories.
6. **Längen-Check:** Alle Optionen auf ±20 % Zeichenzahl bringen.
7. **Cue-Check:** Artikel in Optionen verschieben, keine Wortwiederholungen Stem→korrekte Option, keine absoluten Quantoren nur in Distraktoren.
8. **Peer-Review** (4-Augen-Prinzip) gegen Checkliste. Jozefowicz et al. (2002): strukturierte Peer-Reviews reduzieren flawed-item-Rate von ~50 % auf <20 %.
9. **Pilotieren** (formativer Einsatz vor der Klausur) und Itemanalytik prüfen — Items mit negativer Trennschärfe überarbeiten oder verwerfen.

### Review-Checkliste

1. Prüft das Item **ein** klares Lernziel?
2. Ist die zentrale Idee im Stem (Cover-the-options-Test bestanden)?
3. Sind die Optionen **gleich lang**, grammatikalisch konsistent, homogen?
4. Keine "All/None of the above"?
5. Korrekte Antwort grammatikalisch nicht ausgezeichnet (Artikel, Genus)?
6. Distraktoren basieren auf bekannten Fehlern/Misconceptions (jeder begründbar)?
7. Keine Cues durch Wortwiederholung aus dem Stem?
8. Keine absoluten Quantoren nur in Distraktoren?
9. Bei Negation: hervorgehoben?
10. Lesbarkeit auf Zielgruppenniveau?

## Voraussetzungen

- Klare, operationalisierte Lernziele ("Die Lernenden können…") als Basis für constructive alignment.
- Zugang zu empirischen Misconception-Daten (alte Klausuren, Forendaten, KI-Logs, Concept Inventories).
- Itemanalytik-Fähigkeit im LMS oder Export → eigene Auswertung (p-Wert, point-biserial).
- Peer-Reviewer: zweite fachkundige Person, die Items vor dem Einsatz prüft.

## Varianten

- **Szenario-/Vignetten-Items** (Case & Swanson, 2002, NBME): längere Fallbeschreibung + mehrere Items dazu. Ermöglicht Apply/Analyze-Stufen.
- **Testlet-Design:** Gruppen zusammenhängender Items zu einem Szenario — psychometrisch ein Item, da Antworten nicht unabhängig.
- **Two-Tier-Items:** MC + Begründungs-Folge-Item ("Warum?"). In QTI 2.1 umständlich, aber diagnostisch mächtig.
- **Adaptive Testing (CAT):** Itempool mit Schwierigkeitsgraden; Algorithmus wählt nächstes Item. Setzt IRT-Kalibrierung voraus, in itsLearning nicht nativ.

## Zeitbedarf

Für einen 20-Item-Klausurtest mit gepflegter Qualität: Erstautor ~15–30 min pro Item inkl. Misconception-Recherche (5–10 h pro Klausur); Peer-Review 3–5 min pro Item (1–2 h); Pilotierung + Itemanalytik 1–2 h; Überarbeitung ~2–3 h. In Summe **~10–15 Stunden pro neuer Klausur**. Aufwand amortisiert sich, wenn Items wiederverwendet und itemanalytisch gepflegt werden.

## Bezug zur IT-Ausbildung

Die IT-Berufsausbildung verlangt **Handlungskompetenz** (KMK-Rahmenlehrplan, siehe [[handlungsorientierter-unterricht]]). MC-Tests können diese nur indirekt prüfen — Bridgeman (1992) und Lukhele/Thissen/Wainer (1994) zeigen aber: bei sauberer Konstruktion korrelieren MC und Constructed-Response hoch (r > 0.80) für die unteren Bloom-Stufen. MC ist also kein Notbehelf, sondern **format-blind für höhere Stufen**.

Pragmatische Punkteverteilung in einem itsLearning-Test:
- **~40 %** MC/MR/T/F — Faktenwissen, Begriffsverständnis.
- **~30 %** Fill-in-Multi über Code-Trace — Analyse.
- **~20 %** Parsons via `orderInteraction` — angewandtes Strukturwissen.
- **~10 %** Matching — Konzept-Anwendungs-Verknüpfung.

Echte Programmier-/Handlungskompetenz **außerhalb** des QTI-Tests prüfen (Projektarbeit, betriebliche Aufträge, Code-Review — siehe [[kompetenzfeststellung-programmierung]]).

**itsLearning-spezifisch:** `<modalFeedback>` wird ignoriert — elaboriertes formatives Feedback (Shute, 2008) muss außerhalb der Items vermittelt werden (Musterlösung, Review-Sitzung). Das limitiert den formativen Wert automatisch ausgewerteter Tests; summative Abbildung von Faktenwissen bleibt legitim.

## Praktische Anwendung

Ein Agent, der itsLearning-Tests erzeugt, kann diese Regeln operationalisieren:

1. **Format-Wahl automatisieren** anhand der Bloom-Stufe des Lernziels — nicht durchgehend Single Choice, sondern passend zur kognitiven Anforderung.
2. **Distraktor-Generierung** aus einer gepflegten Misconception-Datenbank (nicht aus LLM-Fantasie) — liefert diagnostische Items.
3. **Cue-Check vor Ausgabe:** Längen-Normalisierung, Grammatik-Check, Wortwiederholungs-Detektor.
4. **Item-Pool-Pflege:** nach Klausureinsatz Trennschärfe und p-Wert aus dem LMS-Export berechnen; Items taggen und bei Bedarf überarbeiten.
5. **Checklisten-Pass** als letzter Schritt vor dem ZIP-Export.

Eine operative Kurzfassung dieser Regeln (z.B. als Skill im Testtool-Projekt) kann auf diesen Artikel referenzieren, muss ihn aber nicht duplizieren — dieses Wiki bleibt Single Source of Truth.

## Verwandte Konzepte

- [[blooms-taxonomie]] — Taxonomie der Lernziele; Bloom-Stufe bestimmt Itemformat.
- [[constructive-alignment]] — Grundprinzip: Lernziel ↔ Aktivität ↔ Prüfung; Items sind die Prüfungsseite.
- [[formatives-assessment]] — formative Funktion von Items; summative Grenzen.
- [[misconception-analyse]] — Quelle für diagnostische Distraktoren.
- [[kompetenzfeststellung-programmierung]] — Handlungskompetenz-Prüfung jenseits von MC als Ergänzung.
- [[peer-instruction]] — ConcepTests als formative Schwester der summativen Items; gleiche Distraktor-Logik.
- [[aufgabentypen-interaktive-lernumgebungen]] — Aufgabenformate im Lernprozess (Abgrenzung zu summativen Items).
- [[parsons-problems]] — Ordering-Items als valide Alternative zu Code-Writing-Prüfungen.
- [[retrieval-practice]] — MC ist schwächer als freier Abruf für Transfer; Konsequenz für Einsatzhäufigkeit.
- [[pruefungsvorbereitung-lernstrategie]] — Lernendensicht auf Testformate.

## Quellen

- Haladyna, T. M., Downing, S. M., & Rodriguez, M. C. (2002). A review of multiple-choice item-writing guidelines for classroom assessment. *Applied Measurement in Education*, 15(3), 309–333. https://doi.org/10.1207/S15324818AME1503_5
- Haladyna, T. M. (2004). *Developing and validating multiple-choice test items* (3rd ed.). Lawrence Erlbaum.
- Downing, S. M. (2005). The effects of violating standard item writing principles on tests and students. *Advances in Health Sciences Education*, 10(2), 133–143. https://doi.org/10.1007/s10459-004-4019-5
- Tarrant, M., & Ware, J. (2008). Impact of item-writing flaws in multiple-choice questions on student achievement in high-stakes nursing assessments. *Medical Education*, 42(2), 198–206. https://doi.org/10.1111/j.1365-2923.2007.02957.x
- Rodriguez, M. C. (2005). Three options are optimal for multiple-choice items: A meta-analysis of 80 years of research. *Educational Measurement: Issues and Practice*, 24(2), 3–13. https://doi.org/10.1111/j.1745-3992.2005.00006.x
- Sadler, P. M. (1998). Psychometric models of student conceptions in science. *Journal of Research in Science Teaching*, 35(3), 265–296.
- Crowe, A., Dirks, C., & Wenderoth, M. P. (2008). Biology in Bloom: Implementing Bloom's taxonomy to enhance student learning in biology. *CBE—Life Sciences Education*, 7(4), 368–381. https://doi.org/10.1187/cbe.08-05-0024
- Lister, R., Adams, E. S., Fitzgerald, S., et al. (2004). A multi-national study of reading and tracing skills in novice programmers. *ACM SIGCSE Bulletin*, 36(4), 119–150. https://doi.org/10.1145/1041624.1041673
- Parker, M. C., Guzdial, M., & Engleman, S. (2016). Replication, validation, and use of a language independent CS1 knowledge assessment. *Proceedings ICER '16*, 93–101.
- Denny, P., Luxton-Reilly, A., & Simon, B. (2008). Evaluating a new exam question: Parsons problems. *Proceedings ICER '08*, 113–124.
- Case, S. M., & Swanson, D. B. (2002). *Constructing written test questions for the basic and clinical sciences* (3rd ed.). NBME.
- Shute, V. J. (2008). Focus on formative feedback. *Review of Educational Research*, 78(1), 153–189.
- Millman, J., Bishop, C. H., & Ebel, R. (1965). An analysis of test-wiseness. *Educational and Psychological Measurement*, 25(3), 707–726.
- Haladyna, T. M., & Downing, S. M. (1993). How many options is enough for a multiple-choice test item? *Educational and Psychological Measurement*, 53(4), 999–1010.
- Jozefowicz, R. F., Koeppen, B. M., Case, S., Galbraith, R., Swanson, D., & Glew, R. H. (2002). The quality of in-house medical school examinations. *Academic Medicine*, 77(2), 156–161.
- AERA, APA, & NCME. (2014). *Standards for educational and psychological testing*.
