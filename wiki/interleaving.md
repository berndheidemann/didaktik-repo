---
title: "Interleaving — Gemischte statt geblockte Übung"
type: evidenz
tags: [interleaving, desirable-difficulties, contextual-interference, brunmair-richter, scheduler, discrimination]
related:
  - "[[desirable-difficulties]]"
  - "[[retrieval-practice]]"
  - "[[spaced-repetition-algorithmen]]"
  - "[[spaced-repetition-scheduler-bauen]]"
  - "[[cognitive-load-theory]]"
  - "[[worked-examples]]"
  - "[[productive-failure]]"
  - "[[contrasting-cases]]"
  - "[[metakognition]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren]
created: 2026-04-20
updated: 2026-04-20
summary: >
  Aufgaben verschiedener Kategorien gemischt statt blockweise üben.
  Brunmair & Richter 2019: g = 0,42 im Mittel, stark konditional — wirksam bei
  ähnlichen, verwechselbaren Kategorien und ausreichendem Vorwissen; kontra-
  produktiv bei Novizen. Hybrid-Strategie (erst blocked, dann interleaved) ist
  der robuste Kompromiss.
---

# Interleaving — Gemischte statt geblockte Übung

## Kernidee

**Interleaved Practice** mischt Aufgaben verschiedener Kategorien (A B C A C B …) statt sie blockweise zu üben (A A A B B B C C C). Meta-analytisch verbessert Interleaving Retention und Transfer moderat (g ≈ 0,42; Brunmair & Richter 2019) — aber **konditional**: nur bei ähnlichen, verwechselbaren Kategorien und ausreichendem Vorwissen. Bei Novizen oder stark unterschiedlichen Inhalten kann Interleaving schaden ("undesirable difficulty"; Hwang 2025).

## Beschreibung

### Historische Wurzel — Motorik

Shea und Morgan (1979) zeigten in einer klassischen Motorik-Studie: Random Practice verschlechterte die Acquisition-Phase, verbesserte aber **Retention und Transfer** nach 10 Minuten und 10 Tagen deutlich. Dieser "contextual interference effect" bildet die theoretische Wurzel des kognitiven Interleaving.

### Übertragung auf kognitives Lernen

Rohrer und Taylor (2007, *Instructional Science*) übertrugen das Prinzip auf Volumenformeln. College-Studierende, die blockweise übten (erst alle Pyramiden, dann alle Kegel …), erreichten bessere Scores in der Übungsphase — am Folgetag war ihre Transferleistung um **d ≈ 1,34** schlechter als bei interleaved Übung. Der Effekt verdreifachte die Prüfungs-Performance.

### Warum funktioniert es?

Drei sich ergänzende Mechanismen:

1. **Discriminative Contrast Hypothesis** (Kang & Pashler 2012; Birnbaum et al. 2013): Wechsel zwischen Kategorien erzwingt *Zwischen-Kategorien-Vergleich*. Lernende müssen erst erkennen, *welche* Kategorie vorliegt, dann *wie* sie zu lösen ist. Blocked Practice macht alle Items einer Runde "gleich" — distinguishing features verschwimmen.
2. **Elaborative Encoding**: Unter Interleaving werden gemeinsame und trennende Merkmale aktiv verarbeitet.
3. **Retrieval-Komponente**: Jede Aufgabe erzwingt frische Methoden-Selektion und Abruf. Kein "Auto-pilot" wie bei Blocked, wo die Methode ab Aufgabe 2 bereits im Arbeitsgedächtnis steht (siehe [[retrieval-practice]]).

**Interleaving ist nicht dasselbe wie Mixing.** Echtes Interleaving setzt *ähnliche, verwechselbare* Kategorien voraus; Diskriminierung ist Teil des Lernziels. Willkürliches Mischen unzusammenhängender Inhalte produziert Störung, keinen Diskriminationsgewinn.

### Meta-Analysen 2019–2026

- **Brunmair & Richter (2019)**, *Psychological Bulletin*. 59 Studien, 238 Effektstärken, multilevel: **g = 0,42**. Moderatoren sind entscheidend:
  - Paintings: g = 0,67
  - Mathematik: g = 0,34
  - Wörter: **g = −0,39** (Blocked besser!)
  - Stärkere Effekte bei hoher *Zwischen*-Kategorie-Ähnlichkeit und geringer *Innen*-Kategorie-Ähnlichkeit.
- **Firth, Rivers & Boyle (2021)**, *Review of Education*: 26 Studien, systematic review. Memory g bis 0,65; Transfer g bis 0,66. Stärkster Effekt bei subtilen, leicht verwechselbaren Unterschieden.
- **Carvalho & Goldstone (2014, 2015)** — Versöhnungsmodell: Interleaving hilft bei High-Similarity-Kategorien (Between-Comparison nötig); Blocking bei Low-Similarity (Within-Pattern-Extraktion nötig).
- **Hwang (2025)**, *Language Learning*: 107 low-achieving koreanische Berufsschüler, L2-Vokabeln. Rein-interleaved = undesirable difficulty; **Hybrid (blocked → interleaved)** schlug beide Reinformen in Retention.

### Wann schadet Interleaving?

- **Novizen ohne Diskriminationsbasis** — Kategorie-Schemata noch nicht stabil.
- **Low-Similarity-Kategorien** — nichts zu diskriminieren.
- **Kurze Lernphasen** — Fluency-Aufbau wird verhindert.
- **Cognitive-Load-Überschreitung** (siehe [[cognitive-load-theory]]).
- **Motivation**: Frustration in Selbstlern-Settings → Session-Abbruch.

Praktikable Regel: **Blocked start, interleaved follow-up.** Erst Blocked Worked Examples für die Kategorie-Grundlage, dann Interleaving für Diskrimination und Transfer.

### Interleaving versus Spacing

Häufig verwechselt:

| Dimension | Spacing | Interleaving |
|---|---|---|
| Was variiert? | Zeit | Inhalt |
| Inhalt gleich? | Ja | Nein, mehrere Kategorien |
| Evidenz | robust über viele Domänen | konditional (Ähnlichkeit, Expertise) |
| Mechanismus | Retrieval + Rekonsolidierung | Discrimination + Methodenwahl |

Interleaving erzeugt automatisch auch Spacing für ein Item, aber das ist Nebeneffekt, nicht die Wirkursache. Carvalho & Goldstone zeigen: Der Interleaving-Effekt bleibt, wenn Spacing kontrolliert wird.

## Bezug zur IT-Ausbildung

Typische Anwendungen in FIAE/FIDP:

| Lernfeld | Blocked (Default) | Interleaved (empfohlen nach Grundlagen) |
|---|---|---|
| **SQL** (LF6/LF8) | Stunde 1: nur SELECT, Stunde 2: nur JOIN | Mix aus SELECT/JOIN/GROUP BY/UPDATE in 10-Aufgaben-Set, Diskrimination "welches Konstrukt passt?" |
| **Netzwerk** (LF7) | OSI-Schichten nacheinander | Aufgaben, die Layer-Zuordnung erfordern (Mischung) |
| **Programmieren** (LF4/LF5) | Schleifen, dann Bedingungen, dann Funktionen | Mix nach Grundlagenphase |
| **Security** | XSS-Block, dann SQLi-Block | CTF-Aufgaben mit gemischten Angriffsvektoren |
| **AP-Vorbereitung** | Lernfeld-weise Wiederholung | Gemischte Prüfungsfragen aus allen Lernfeldern |

**Wichtig:** Die erste Stunde zu einem komplett neuen Konzept bleibt blocked. Erst wenn Grundschemata stehen, startet Interleaving.

**Fluency-Illusion-Problem:** Kornell & Bjork (2008) — 78 % der Studierenden hielten Blocked für besser, obwohl Interleaved objektiv gewann. Azubis haben denselben Bias. Ohne explizite Meta-Kommunikation lehnen sie Interleaving ab: "Das ergibt keinen Sinn, ich kann das nicht sauber üben." Deshalb: Lernende müssen verstehen, *warum* sich das Üben schwer anfühlt (siehe [[metakognition]]).

## Praktische Anwendung

### Scheduler-Design für Selbstlernplattformen

**Anzahl Kategorien:** 3–5 pro Session. Mehr überfordert; weniger erzeugt kaum Diskriminationsdruck.

**Zwei Wechsel-Strategien:**
- **Criterion-based**: Wechsel erst nach *X* korrekten Antworten pro Kategorie. Robuster für Novizen, weil Grundlagen erst stabilisiert werden.
- **Fixed**: stur A B C A B C. Stärkerer Contextual-Interference-Effekt für Fortgeschrittene.

**Kombination mit Spacing:** Zweistufig. SM-2/FSRS (siehe [[spaced-repetition-algorithmen]]) wählt *welches Item innerhalb einer Kategorie*. Darüber liegt ein Interleaver-Layer, der *welche Kategorie* wählt.

**Pseudocode:**

```python
def pick_next_item(learner):
    eligible_cats = [c for c in categories
                     if learner.mastery[c] >= DISCRIM_THRESHOLD]
    if len(eligible_cats) < 2:
        return blocked_pick(weakest_cat)        # Novizen-Fallback
    cat = weighted_random(eligible_cats,
                          weight=1/recency[c])  # Interleave-Druck
    item = spaced_rep_pick(cat, learner)        # Spacing innen
    return item
```

Regel: **Mastery < Threshold → Blocked; ≥ Threshold → Interleaved.**

### Für den Präsenzunterricht

1. **Grundlagenphase blocked** — Worked Examples, Parsons Problems einer Kategorie.
2. **Ab Übungsphase 2 interleaved** — gemischte Aufgabenblätter, 3–5 Konstrukte.
3. **Meta-Kommunikation explizit:** "Das Blatt mischt absichtlich. Wenn du merkst, dass du erst kurz überlegen musst, welche Methode du brauchst — das ist genau der Lerneffekt."
4. **Dashboard zeigt Fortschritt** nicht pro Kapitel, sondern pro Prüfungsfrage-Typ.

### Grenzen und Stolperfallen

- Nicht zwei sehr unähnliche Inhalte mischen (Netzwerk-Protokolle und Datenbankschemata in einer Übung macht keinen Discrimination-Sinn).
- Nicht vor Grundverständnis einsetzen — Azubis brauchen erst stabile Kategorien.
- Bei Motivations-Kollaps: zurück zu Blocked, dann wieder interleaven.
- Sprachen/Vokabeln: Evidenz ist durchmischt (Brunmair & Richter: g = −0,39 für Wörter). Vorsicht bei DaZ-/Fachsprache-Training.

## Verwandte Konzepte

- [[desirable-difficulties]] — Dachkonzept, das Interleaving einbettet
- [[retrieval-practice]] — komplementär; Interleaving zwingt frischen Retrieval pro Aufgabe
- [[spaced-repetition-algorithmen]] — Spacing ist der andere zentrale DD
- [[cognitive-load-theory]] — setzt die Novizen-Grenze für Interleaving
- [[worked-examples]] — Blocked-Phase vor Interleaving-Phase im Fading-Pfad
- [[contrasting-cases]] — verwandtes, aber distinktes Prinzip (parallele Fälle vergleichen)
- [[metakognition]] — Voraussetzung, damit Lernende Interleaving akzeptieren
- [[pruefungsvorbereitung-lernstrategie]] — AP-Anwendung von Mixed-Practice über Lernfelder

## Quellen

- Brunmair, M. & Richter, T. (2019). Similarity matters: A meta-analysis of interleaved learning and its moderators. *Psychological Bulletin, 145*(11), 1029–1052. https://doi.org/10.1037/bul0000209
- Shea, J. B. & Morgan, R. L. (1979). Contextual interference effects on the acquisition, retention, and transfer of a motor skill. *Journal of Experimental Psychology: Human Learning and Memory, 5*(2), 179–187.
- Rohrer, D. & Taylor, K. (2007). The shuffling of mathematics problems improves learning. *Instructional Science, 35*, 481–498.
- Rohrer, D., Dedrick, R. F. & Stershic, S. (2015). Interleaved practice improves mathematics learning. *Journal of Educational Psychology, 107*(3), 900–908.
- Carvalho, P. F. & Goldstone, R. L. (2014). Putting category learning in order: Category structure and temporal arrangement affect the benefit of interleaved over blocked study. *Memory & Cognition, 42*(3), 481–495.
- Firth, J., Rivers, I. & Boyle, J. (2021). A systematic review of interleaving as a concept learning strategy. *Review of Education, 9*(2), 642–684. https://doi.org/10.1002/rev3.3266
- Kornell, N. & Bjork, R. A. (2008). Learning concepts and categories: Is spacing the "enemy of induction"? *Psychological Science, 19*(6), 585–592.
- Hwang, H. (2025). Undesirable difficulty of interleaved practice: The importance of initial blocked practice for declarative knowledge development in low-achieving adolescents. *Language Learning, 75*(1), 5–41. https://doi.org/10.1111/lang.12659
- Dunlosky, J., Rawson, K. A., Marsh, E. J., Nathan, M. J. & Willingham, D. T. (2013). Improving students' learning with effective learning techniques. *Psychological Science in the Public Interest, 14*(1), 4–58.
- Roelle, J. & Berthold, K. (2017). Effects of incorporating retrieval into learning tasks. *Learning and Instruction, 49*, 62–73.
