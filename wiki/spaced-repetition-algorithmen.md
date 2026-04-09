---
title: Spaced-Repetition-Algorithmen
type: methode
tags: [spaced-repetition, sm-2, fsrs, leitner, half-life-regression, scheduling, anki, retention-mathe, referenz]
related:
  - "[[retrieval-practice]]"
  - "[[wissensretention-programmierung]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[learning-engineering]]"
  - "[[cognitive-load-theory]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[parsons-problems]]"
  - "[[primm-methode]]"
  - "[[worked-examples]]"
  - "[[spaced-repetition-scheduler-bauen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten, erschaffen]
created: 2026-04-09
updated: 2026-04-09
summary: >
  Vier Algorithmen-Familien für Spaced-Repetition-Scheduler — Leitner-Box,
  SM-2 (Anki Legacy), FSRS (Anki seit 23.10) und Half-Life Regression
  (Duolingo) — mit Pseudocode und Trade-offs. Algorithmen-Katalog;
  Implementierungs-Praxis und IT-Bezug in [[spaced-repetition-scheduler-bauen]].
---

# Spaced-Repetition-Algorithmen

## Kernidee

[[retrieval-practice]] erklärt *warum* verteiltes Wiederholen wirkt; dieser Artikel beantwortet *welcher Algorithmus*. Ein Spaced-Repetition-Scheduler entscheidet für jede Lerneinheit, *wann* sie als nächstes erscheinen soll, damit die Wiederholung knapp vor dem Vergessen liegt — der Punkt, an dem aktives Abrufen den größten Retention-Effekt produziert. Vier Algorithmen-Familien dominieren das Feld, von 20 Codezeilen (Leitner) bis zum trainierten ML-Modell (FSRS, HLR). Der richtige Algorithmus ist fast nie der state-of-the-art, sondern der einfachste, der die didaktische Anforderung trifft. Die Implementierungs-Praxis (Cold Start, Bulk Reviews, Leech, Item-Klassen, AP1-Trainer-Designbeispiel) ist in [[spaced-repetition-scheduler-bauen]] behandelt.

## Beschreibung

### Was ein Scheduler tatsächlich entscheidet

Ein Spaced-Repetition-Scheduler hat eine einzige Aufgabe: Für jede Karte zu jedem Zeitpunkt das nächste **Fälligkeitsdatum** zu berechnen. Eingabe ist die Review-Historie (Versuche, Erfolge, Antwortzeiten, optional Confidence-Rating). Ausgabe ist `nextDueAt: timestamp`. Drumherum hängt eine Queue, die Karten in Reihenfolge von Fälligkeit liefert. Der Erfolgsmaßstab ist nicht „wie schnell wird etwas gelernt", sondern **Retention bei minimalem Review-Aufwand**.

### Der theoretische Rahmen: DSR-Modell

Modernes Spaced-Repetition-Denken beruht auf dem **Difficulty-Stability-Retrievability-Modell**, das FSRS explizit operationalisiert:

- **Difficulty (D)** — Wie inhärent schwer ist die Karte? Konstant pro Karte, ggf. durch Reviews leicht justiert.
- **Stability (S)** — Aktueller Speicherzeitraum, in dem das Item zuverlässig erinnerbar ist. Wächst durch erfolgreiche Reviews.
- **Retrievability (R)** — Aktuelle Wahrscheinlichkeit, dass die Karte *jetzt* erinnert wird. Fällt exponentiell mit der Zeit.

Der Zusammenhang nach Bjork's „New Theory of Disuse" (Bjork & Bjork 1992): Eine Wiederholung steigert *Stability* am stärksten, wenn *Retrievability* niedrig (aber nicht null) ist. Designziel: Reviews nicht zu früh (geringer Stabilitätszuwachs), nicht zu spät (Karte schon vergessen).

### Familie 1: Leitner-Box (1972)

Der einfachste Scheduler — fünf physische oder logische Boxen mit unterschiedlichen Intervallen.

```
Box 1: täglich           Box 2: alle 2 Tage        Box 3: alle 4 Tage
Box 4: alle 8 Tage       Box 5: alle 16 Tage
```

**Regel:** Korrekt → eine Box weiter. Falsch → zurück in Box 1.

```typescript
type LeitnerCard = { id: string; box: 1|2|3|4|5; lastReview: number };
const INTERVALS = [1, 2, 4, 8, 16]; // Tage

function review(card: LeitnerCard, correct: boolean): LeitnerCard {
  const newBox = correct ? Math.min(card.box + 1, 5) : 1;
  return { ...card, box: newBox as 1|2|3|4|5, lastReview: Date.now() };
}

function isDue(card: LeitnerCard): boolean {
  const days = (Date.now() - card.lastReview) / 86_400_000;
  return days >= INTERVALS[card.box - 1];
}
```

**Stärken:** ~20 Zeilen Code, vollständig transparent („Du bist in Box 3 — gut!"), keine Parameter zu tunen, deterministisch debuggbar.
**Schwächen:** Keine Personalisierung, alle Karten haben dieselbe Schwierigkeit, kein Decay zwischen Reviews, harte Box-1-Regel ist frustrierend bei Slip-Fehlern.

**Wann einsetzen:** Erste Iteration, kleine Decks (<200 Items), Lernende, denen Transparenz wichtiger ist als Effizienz.

### Familie 2: SM-2 (Anki Legacy, 1987)

Piotr Wozniak entwickelte SM-2 für SuperMemo; Anki nutzte ihn bis Version 23.10. Drei Größen pro Karte: aktuelles Intervall in Tagen, Anzahl Wiederholungen, **Ease Factor** (EF, Multiplikator für das nächste Intervall).

**Wozniak-EF-Formel:**
```
EF' = max(1.3, EF + (0.1 - (5 - q) * (0.08 + (5 - q) * 0.02)))
```
mit `q` = Quality 0-5 (0=blackout, 3=knapp richtig, 5=perfekt). Bei q=5 wächst EF um 0.1, bei q=3 schrumpft er um ~0.14. Über viele Reviews stabilisiert sich der EF auf einem karten-spezifischen Wert zwischen 1.3 (sehr schwer) und ~3 (sehr leicht).

**Intervall-Logik:** Erster Review → 1 Tag, zweiter → 6 Tage, ab drittem → `previous_interval * EF`. Bei Fehler (q<3): Intervall zurück auf 1 Tag, EF leicht reduziert.

**Stärken:** Karten-individuelle Anpassung über EF, etabliert, viele Open-Source-Implementierungen, deterministisch.
**Schwächen:** Hardcodierte Heuristiken (warum 0.08? warum 6 als zweites Intervall?), kein Forgetting-Modell, „ease hell" — schwere Karten sammeln EF=1.3 und kommen täglich, Frust-Spirale.

**Wann einsetzen:** Heute selten erste Wahl — entweder Leitner (einfacher) oder FSRS (besser). Als Brückenlösung vertretbar.

### Familie 3: FSRS (2022+, Anki-Default seit 23.10)

Jarrett Ye entwickelte FSRS als ML-basierten Nachfolger von SM-2. Kern: Statt heuristischer Intervalle wird das DSR-Modell direkt parametrisiert und auf Reviewlog-Daten trainiert.

**Zentrale Formel — Retrievability als Funktion der Stability:**
```
R(t, S) = (1 + t / (9 * S))^(-1)
```
mit `t` = Tage seit letztem Review, `S` = aktuelle Stability. Bei `t = S` ist `R ≈ 0.9` — also: **Stability ist das Intervall, nach dem die Karte mit ~90% Wahrscheinlichkeit noch erinnert wird**. Diese Konvention macht das Tuning intuitiv.

Die Update-Regel berechnet die neue Stability als Funktion der alten, der Difficulty und der aktuellen Retrievability, mit ~17 Modellparametern, die per Backpropagation auf der historischen Reviewlog-Datei optimiert werden. Details siehe das [FSRS-Repo](https://github.com/open-spaced-repetition/fsrs4anki).

**Praktisch für Solo-Devs:** Volles FSRS selbst implementieren ist aufwändig. Pragmatisch:
1. **Phase 1 (kein Reviewlog):** Default-Parameter aus dem FSRS-Repo verwenden — sind schon ohne Tuning besser als SM-2.
2. **Phase 2 (>1000 Reviews):** Trainings-Skript laufen lassen, optimierte Parameter pro Lernenden speichern.

**Stärken:** State-of-the-art, datengetrieben, korrektes Forgetting-Modell, transparente „Desired Retention"-Einstellung, löst „ease hell" über die Difficulty-Komponente.
**Schwächen:** Komplex, Trainingsdaten erforderlich für volles Potenzial, schwer zu debuggen.

**Wann einsetzen:** Wenn die Anwendung > 1000 Reviews pro Lernenden generieren wird und Retention die Kernmetrik ist. Für eine Berufsschul-Lernumgebung mit < 6 Monaten Nutzung pro Schüler oft over-engineered.

### Familie 4: Half-Life Regression (Duolingo, 2016)

Settles & Meeder veröffentlichten den Algorithmus, mit dem Duolingo seine Reviews schedulet. Kern: Modelliere die **Halbwertszeit** `h` jeder Karte (Tage, nach denen P(recall) = 0.5) als logistische Regression über Lerner- und Item-Features:

```
P(recall | t, h) = 2^(-t / h)
log_2(h) = θ · x
```

`x` ist ein Feature-Vektor (Anzahl korrekter/falscher Reviews, Item-Schwierigkeit, Lerner-Stärke, optional Tageszeit). Modellgewichte `θ` werden via Logistic Regression über alle Reviews aller Lernenden gelernt.

**Stärken:** Nutzt Features über Reviews hinaus, skaliert linear, erklärbarer als FSRS (lineare Gewichte).
**Schwächen:** Braucht zentrale Trainingspipeline, sinnvoll nur ab vielen tausend Lernenden, im direkten Vergleich oft schwächer als FSRS.

**Wann einsetzen:** Plattform-Skala mit eigenem Data-Team. Für Solo-Devs nicht sinnvoll.

### Algorithmen-Vergleich auf einen Blick

| Eigenschaft | Leitner | SM-2 | FSRS | HLR |
|---|---|---|---|---|
| **Codezeilen** | ~20 | ~50 | ~300 | Trainingspipeline |
| **Parameter** | 0 | 0 (Defaults) | 17 (lernbar) | dutzende Features |
| **Trainingsdaten nötig** | nein | nein | optional | ja |
| **Personalisierung** | keine | per Karte (EF) | per Karte + global | per Lerner + Karte |
| **Forgetting-Modell** | nein | implizit | explizit (DSR) | explizit (HLR) |
| **Erklärbarkeit** | sehr hoch | mittel | niedrig | mittel |
| **Erste Wahl für Solo-Devs** | **ja** | nein | nur bei >1000 Reviews | nein |
| **Plattform-Skala** | nein | manchmal | **ja** | ja |

## Bezug zur IT-Ausbildung

Für die meisten Berufsschul-Lernumgebungen ist **Leitner die richtige Wahl** — einfach, transparent, sofort lieferbar. FSRS lohnt sich nur bei Long-Form-Anwendungen mit vielen Reviews pro Lernenden (z.B. Vokabel-Trainer über mehrere Monate). Für die konkrete Anwendung in einem AP1-Trainer, inklusive Code und Designbeispiel, siehe [[spaced-repetition-scheduler-bauen]].

## Verwandte Konzepte

- [[spaced-repetition-scheduler-bauen]] — Implementierungs-Praxis, Querschnittsthemen, IT-Designbeispiel
- [[retrieval-practice]] — Theorie des Testing Effects und Spacings
- [[wissensretention-programmierung]] — Skill-Decay-Forschung, die das Decay-Modell empirisch begründet
- [[lerner-modell-mastery-tracking]] — Knowledge Components als Granularitätsebene für mastery-gestütztes SR
- [[learning-engineering]] — Knowledge Tracing als Plattform-Kontext
- [[cognitive-load-theory]] — Daily Cap und Confidence-Rating sind CLT-Entscheidungen

## Quellen

- Wozniak, P. A., & Gorzelanczyk, E. J. (1994). Optimization of repetition spacing in the practice of learning. *Acta Neurobiologiae Experimentalis*, 54, 59-62.
- Leitner, S. (1972). *So lernt man lernen: Der Weg zum Erfolg*. Herder.
- Settles, B., & Meeder, B. (2016). A trainable spaced repetition model for language learning. *Proceedings of ACL 2016*, 1848-1858.
- Ye, J. (2022). *Free Spaced Repetition Scheduler (FSRS)*. https://github.com/open-spaced-repetition/fsrs4anki
- Bjork, R. A., & Bjork, E. L. (1992). A new theory of disuse and an old theory of stimulus fluctuation. In A. F. Healy et al. (Eds.), *From learning processes to cognitive processes* (Vol. 2, pp. 35-67). Erlbaum.
- Cepeda, N. J., Pashler, H., Vul, E., Wixted, J. T., & Rohrer, D. (2006). Distributed practice in verbal recall tasks: A review and quantitative synthesis. *Psychological Bulletin*, 132(3), 354-380.
