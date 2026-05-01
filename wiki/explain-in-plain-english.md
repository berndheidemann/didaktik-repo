---
title: "Explain in Plain English (EiPE)"
type: methode
tags: [eipe, code-reading, solo-taxonomie, lister, zilles, assessment, ap2, fachgespraech, abstraktion]
related:
  - "[[self-explanation]]"
  - "[[code-review-unterricht]]"
  - "[[fachgespraech-didaktik]]"
  - "[[primm-methode]]"
  - "[[notional-machines]]"
  - "[[expertise-entwicklung]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[llm-as-grader]]"
  - "[[rubric-design]]"
  - "[[formatives-assessment]]"
  - "[[blooms-taxonomie]]"
  - "[[misconception-analyse]]"
  - "[[debugging-als-kompetenz]]"
  - "[[peer-instruction]]"
  - "[[ihk-pruefungskatalog-2025]]"
  - "[[abschlussprojekt-begleitung]]"
  - "[[ki-integritaet-pruefungsleistung]]"
  - "[[kritische-ki-bewertungskompetenz]]"
  - "[[ki-prompt-handwerk]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, analysieren, bewerten]
sozialform: [einzelarbeit, partner, plenum]
created: 2026-04-20
updated: 2026-05-01
summary: >
  Lister et al. (2004): Lernende lesen Code und erklären in einem Satz auf
  abstrakt-funktionaler Ebene, WAS er macht — nicht WIE, nicht Zeile-für-Zeile.
  SOLO-Taxonomie als Bewertungsraster. EiPE korreliert robust mit Programmier-
  kompetenz und ist das natürliche Trainingsformat für das IHK-Fachgespräch.
  LLM-Autograding erreicht TA-Niveau (Fowler 2021, Denny 2024).
---

# Explain in Plain English (EiPE)

## Kernidee

**Explain in Plain English** ist ein Assessment- und Lernformat, bei dem Lernende ein Code-Segment lesen und in *einem* natürlichsprachlichen Satz zusammenfassen, was der Code **tut** — auf abstrakt-funktionaler Ebene, nicht Zeile-für-Zeile. Der typische Prompt: "In plain English, explain what the following segment of code does." (Lister et al. 2004). Wer "Es findet das Maximum in der Liste" schreibt, hat das Ziel erreicht. Wer schreibt "Es gibt eine Schleife, ein `if`, ein `return`", hat den Wald vor Bäumen nicht gesehen.

## Beschreibung

### SOLO-Taxonomie als Bewertungsebene

Biggs' SOLO-Taxonomie (Structure of Observed Learning Outcomes) unterscheidet fünf Niveaus, die für EiPE operationalisiert wurden (Whalley et al. 2006; Chen et al. 2020):

| Level | Kern | EiPE-Beispiel (Maximum-Funktion) |
|---|---|---|
| **Prestructural** | Falsch oder leer | "Ich weiß nicht." |
| **Unistructural** | Ein Aspekt korrekt, kein Zusammenhang | "Es hat eine Schleife." |
| **Multistructural** | Mehrere Aspekte einzeln korrekt, kein Gesamtbild | "Es hat eine Schleife, einen Vergleich und ein Return." |
| **Relational** | Abstrakt, korrekt, funktionaler Zweck in einem Satz | "Es findet das Maximum in der Liste." |
| **Extended Abstract** | Relational + Einordnung/Generalisierung | "Es findet das Maximum — der gleiche Algorithmus, nur mit umgekehrter Vergleichsrichtung, findet das Minimum." |

**Relational** ist das primäre Lernziel. Viele Azubis bleiben auf Multistructural stecken — sie beschreiben Syntax, nicht Semantik.

### Listers Ladder

Lister et al. (2004, Multi-Country-Studie) zeigen, dass viele Studierende Code weder tracen noch erklären können, aber trotzdem Code schreiben sollen. Die didaktische Konsequenz ist eine Leiter:

```
Schreiben
   ↑
Erklären (EiPE)
   ↑
Tracen (Ausführung simulieren)
   ↑
Lesen
```

Jede Stufe baut auf der darunter liegenden auf. Wer Code nicht erklären kann, schreibt fragilen Code — "Copy-Paste mit Variation", keine gestalterische Kompetenz (siehe [[expertise-entwicklung]]).

### Abgrenzung zu verwandten Formaten

| Format | Wer erklärt? | Wann? | Was wird bewertet? |
|---|---|---|---|
| **EiPE** | Lernende | Nach dem Lernen, als Assessment | Mentales Modell fertiger Artefakte |
| **[[self-explanation\|Self-Explanation]]** | Lernende | Während des Lernens | Generative Verarbeitung im Lernprozess |
| **Code Tracing** | Lernende | Meist vor EiPE | Ausführungssimulation, nicht Abstraktion |
| **Code-Kommentar** | Lernende | Beim Schreiben | Zeile-für-Zeile-Syntax |
| **[[code-review-unterricht\|Code Review]]** | Peer | Nach Abgabe | Qualität, Konventionen, Bugs |

Wichtige Abgrenzung: [[self-explanation]] ist **generativ beim Lernen**, EiPE ist **Assessment fertiger Artefakte**.

### Evidenzlage

- **Murphy et al. (2012):** EiPE-Fähigkeit korreliert robust mit Programmierkompetenz. Über zwei Dekaden konsistent repliziert.
- **Chen, Azad, West & Zilles (2020):** Validiertes SOLO-basiertes EiPE-Rubric mit hoher Inter-Rater-Reliabilität — die erste industriell einsetzbare Bewertungsmatrix.
- **Fowler, Chen, Azad, West & Zilles (2021, SIGCSE):** NLP-basierter EiPE-Autograder erreicht ~88 % Accuracy gegenüber menschlichen TAs.
- **Fowler et al. (2022, ITiCSE):** EiPE korreliert stärker mit Code-Writing-Kompetenz als reine Syntax-Tests. EiPE ist Prädiktor, nicht nur Begleiterscheinung.
- **Denny et al. (2024, ITiCSE):** "Explaining Code with a Purpose" — integrierter Ansatz EiPE + Prompt Engineering für Code-Comprehension. Code-Generation-based Grading: Schüler-Erklärung → LLM generiert Code → Testsuite.
- **Kerslake, Denny et al. (2025, SIGCSE):** LLM-Feedback auf EiPE gemischt — manche Studierende "rückübersetzen" Zeile-für-Zeile statt abstrakt zu bleiben.
- **Pathak et al. (2025, ICER):** Question-specific Rubrics für LLM-EiPE-Grading deutlich besser als generische (siehe [[rubric-design]]).

### Warum EiPE funktioniert

EiPE erfordert ein **mentales Modell** des Codes ([[notional-machines]]). Der Lernende muss:

1. Die Ausführung simulieren (Tracing).
2. Das beobachtete Verhalten auf die Eingabe generalisieren (Abstraktion).
3. Den Zweck in Alltagssprache formulieren (Verbalisation).

Jede Stufe kann gezielt diagnostiziert werden — eine EiPE-Antwort auf Unistructural-Level deutet auf Tracing-Probleme, eine auf Multistructural-Level auf fehlende Abstraktion. Das macht EiPE zu einem **Diagnose-Goldstandard**, nicht nur einem Testformat.

## Bezug zur IT-Ausbildung

### IHK-Fachgespräch AP2

Im [[fachgespraech-didaktik|Fachgespräch]] ist "Erklären Sie Ihren Code" eine EiPE-Kernfrage. Azubis, die nie gezielt EiPE trainiert haben, antworten typischerweise auf Multistructural-Level — sie beschreiben Syntax, weil sie glauben, das sei "genau". Der Prüfungsausschuss hört das aber als Unsicherheit.

Trainingsformate:

- **Wöchentliche EiPE-Minutenaufgabe**: 5 Minuten, fremder Code, ein Satz Erklärung. Rubric-basiert.
- **Peer-EiPE-Paare** über eigene Projektbausteine. Eigener Code birgt *Illusion of Understanding* — Fremdcode ist ehrlicheres Diagnostikum.
- **EiPE in Code Reviews**: Vor der Zeile-für-Zeile-Kritik steht die Prosa-Erklärung des Autors.
- **EiPE über eigene Commits** als Vorbereitung auf das Fachgespräch über den Betrieblichen Auftrag.

### Als Fragetyp in schriftlichen Prüfungen

Ein EiPE-Item ersetzt oder ergänzt klassische "Was ist die Ausgabe?"-Fragen:

> Gegeben sei folgender Code. Beschreibe in einem Satz, was er tut.
>
> ```python
> def f(lst):
>     r = lst[0]
>     for x in lst[1:]:
>         if x < r: r = x
>     return r
> ```

Relational-Antwort: "Findet das Minimum der Liste." Multistructural: "Iteriert durch die Liste, vergleicht jedes Element mit r und aktualisiert r."

## Praktische Anwendung

### Bewertung mit SOLO-Rubric

| Level | Punkte | Entscheidungsregel |
|---|---|---|
| Relational | 4 | Korrekt, abstrakt, Gesamtzweck erkennbar |
| Multistructural | 2–3 | Operationen korrekt, aber keine Zusammenfassung |
| Unistructural | 1 | Nur ein Aspekt korrekt |
| Prestructural | 0 | Falsch oder leer |

Dieses Rubric lässt sich für [[llm-as-grader|LLM-Grading]] verwenden. Denny et al. (2024): QWK > 0,7 gegen menschliche Rater, mit frage-spezifischem Rubric deutlich besser als mit generischem.

### EiPE mit KI

**Drei Einsatzmuster:**

1. **LLM bewertet EiPE-Antworten** — mit frage-spezifischem SOLO-Rubric. Formativ sofort einsetzbar, summativ nur mit Human-Final-Sign-Off.
2. **LLM generiert EiPE-Fragen** — aus einem Code-Korpus automatisch Fragen erzeugen, abgestuft nach Komplexität.
3. **Code-Generation-based Grading** (Denny 2024): Schüler schreibt Erklärung → LLM generiert Code daraus → Testsuite prüft. Vorteil: kein Rubric nötig. Risiko: Schüler trainieren Prompt-Engineering statt Abstraktionsfähigkeit.

**Grenze:** LLMs bevorzugen wortreiche Antworten. Die Unterscheidung Unistructural versus Multistructural ist schwierig — Rater-Training oder Human-in-the-Loop bleibt nötig.

### Typische Fallstricke

- **Zeile-für-Zeile-Falle**: Azubi beschreibt Syntax statt Funktion. Training: Ein-Satz-Limit strikt durchsetzen.
- **Eigener-Code-Bias**: Azubi erklärt eigenen Code besser, weil er sich erinnert, nicht weil er versteht. Gegenmittel: Fremdcode in Trainingsformaten.
- **Sprach-Bias**: DaZ-Azubis haben Fachvokabular, aber keine abstrakten Alltagssätze. Wortspeicher und Paraphrase-Training (siehe [[sprachsensibler-it-unterricht]] in der Repo-Querverbindung).

## Verwandte Konzepte

- [[self-explanation]] — verwandter Effekt, aber generativ beim Lernen statt Assessment fertiger Artefakte
- [[fachgespraech-didaktik]] — AP2-Kern-Anwendungsfeld für EiPE
- [[primm-methode]] — "Investigate"-Phase enthält EiPE-artige Reflexion
- [[notional-machines]] — Voraussetzung: korrektes mentales Modell der Ausführung
- [[expertise-entwicklung]] — Listers Ladder (Lesen → Tracen → Erklären → Schreiben)
- [[code-review-unterricht]] — EiPE vor Zeile-für-Zeile-Kritik als Perspektivwechsel
- [[rubric-design]] — SOLO-Rubric als konkreter Bewertungsrahmen
- [[llm-as-grader]] — Autograding mit frage-spezifischem Rubric
- [[kompetenzfeststellung-programmierung]] — EiPE als authentische Kompetenzprüfung
- [[misconception-analyse]] — falsche EiPE-Antworten zeigen Notional-Machine-Fehlvorstellungen

## Quellen

- Lister, R., Adams, E. S., Fitzgerald, S., Fone, W., Hamer, J., Lindholm, M., … Thomas, L. (2004). A multi-national study of reading and tracing skills in novice programmers. *ACM SIGCSE Bulletin, 36*(4), 119–150.
- Whalley, J., Lister, R., Thompson, E., Clear, T., Robbins, P., Kumar, P. K. A. & Prasad, C. (2006). An Australasian study of reading and comprehension skills in novice programmers, using the Bloom and SOLO taxonomies. *Proceedings of ACE 2006.*
- Murphy, L., Fitzgerald, S., Lister, R. & McCauley, R. (2012). Ability to "explain in plain English" linked to proficiency in computer-based programming. *Proceedings of ICER 2012,* 111–118.
- Corney, M., Fitzgerald, S., Hanks, B., Lister, R., McCauley, R. & Murphy, L. (2014). "Explain in plain English" questions revisited: Data structures problems. *Proceedings of SIGCSE 2014,* 591–596.
- Chen, B., Azad, S., West, M. & Zilles, C. (2020). A validated scoring rubric for Explain-in-Plain-English questions. *Proceedings of SIGCSE 2020.*
- Fowler, M., Chen, B., Azad, S., West, M. & Zilles, C. (2021). Autograding "Explain in Plain English" questions using NLP. *Proceedings of SIGCSE 2021.*
- Fowler, M., Smith, D. H., Hassan, C., Poulsen, S., West, M. & Zilles, C. (2022). Reevaluating the relationship between explaining, tracing, and writing skills in CS1. *Proceedings of ITiCSE 2022.*
- Denny, P., Smith, D. H., Fowler, M., Prather, J., Becker, B. A., & Leinonen, J. (2024). Explaining Code with a Purpose: An Integrated Approach for Developing Code Comprehension and Prompting Skills. *Proceedings of ITiCSE 2024.* arXiv:2403.06050.
- Kerslake, E., Denny, P. et al. (2025). Exploring student reactions to LLM-generated feedback on Explain in Plain English problems. *Proceedings of SIGCSE TS 2025.*
- Pathak, A., Gandhi, R., Uttam, V., et al. (2025). Rubric Is All You Need: Improving LLM-based Code Evaluation With Question-Specific Rubrics. *Proceedings of ICER 2025.* arXiv:2503.23989.
- Sentance, S., Waite, J. & Kallia, M. (2019). Teachers' experiences of using PRIMM to teach programming in school. *Proceedings of SIGCSE 2019.*
