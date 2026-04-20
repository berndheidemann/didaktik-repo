---
title: Spaced-Repetition-Scheduler bauen — Praxis
type: praxis
tags: [spaced-repetition, scheduler-design, implementierung, ap1-trainer, lernumgebung-bauen, item-klasse]
related:
  - "[[spaced-repetition-algorithmen]]"
  - "[[retrieval-practice]]"
  - "[[wissensretention-programmierung]]"
  - "[[lerner-modell-mastery-tracking]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[learning-engineering]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[misconception-analyse]]"
  - "[[parsons-problems]]"
  - "[[primm-methode]]"
  - "[[worked-examples]]"
  - "[[desirable-difficulties]]"
  - "[[interleaving]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, erschaffen]
created: 2026-04-09
updated: 2026-04-09
summary: >
  Implementierungs-Praxis für Spaced-Repetition-Scheduler in interaktiven
  Lernumgebungen — Querschnittsthemen (Cold Start, Bulk Reviews, Leech,
  Item-Klassen), Implementierungs-Sequenz, Migration zwischen Algorithmen
  und ein konkretes Designbeispiel für den AP1-Trainer. Komplement zu
  spaced-repetition-algorithmen.
---

# Spaced-Repetition-Scheduler bauen — Praxis

## Kernidee

[[spaced-repetition-algorithmen]] beantwortet die Frage *„Welcher Scheduler?"* — dieser Artikel beantwortet *„Wie baue ich ihn in meine Lernumgebung?"*. Die Wahl des Algorithmus (Leitner, SM-2, FSRS, HLR) ist meist weniger entscheidend als die Querschnittsthemen drumherum: Cold Start, tägliche Caps, Leech-Erkennung, Item-Klassen statt statischer Karten. Diese Schicht trägt das Lernerlebnis; der Scheduler-Algorithmus darunter ist austauschbar.

## Beschreibung

### Querschnittsthemen jenseits des Algorithmus

**Cold Start.** Neue Karte ohne Historie. Pragmatisch: Erste Wiederholung nach 1 Tag, danach an den Algorithmus übergeben. Alternative: Initial-Quiz zur Schwierigkeitseinschätzung.

**Bulk Reviews ("ich war im Urlaub").** Ohne Schutzmechanismus stürzen 200 fällige Karten auf einmal auf den Lernenden — Frust und Ablehnung. Lösungen: (a) tägliches Cap (Anki: max. neue Karten pro Tag), (b) „Vacation Mode" mit linearer Verteilung der überfälligen Karten über mehrere Tage, (c) Priorisierung nach Stability — die instabilsten zuerst.

**Leech-Karten.** Karten, die immer wieder durchfallen. Erkennung: ≥ 8 Lapses in Folge oder Lapse-Rate > 50% nach > 10 Reviews. Reaktion: Karte automatisch ausblenden + Hinweis „Diese Karte solltest du anders lernen — vielleicht in kleinere Teile zerlegen oder visualisieren". Vgl. Misconception-Logik in [[lerner-modell-mastery-tracking]] und [[misconception-analyse]].

**Confidence Rating einholen.** Statt nur richtig/falsch eine 4-stufige Skala (Again/Hard/Good/Easy, wie in Anki) verbessert die Schedule-Qualität deutlich, kostet aber zusätzliche UI-Last. Faustregel: bei > 100 Karten lohnt es sich, bei < 50 nicht.

**Item-Generation vs. Item-Pool.** Für IT-Lernumgebungen oft besser als statische Karten: Pro Konzept eine **Aufgaben-Klasse** definieren, aus der bei jeder Wiederholung eine neue konkrete Variante generiert wird (z.B. SQL-Query mit anderem Filter, Subnetting mit anderer Maske). Verhindert Auswendiglernen einzelner Lösungen, fördert Transfer.

**Time-of-Day-Bias.** Reviews am Morgen sind robuster als spätabends — bei Plattform-Skala lernbar als HLR-Feature, bei Solo-Devs ignorierbar.

### Implementierungs-Sequenz

1. **Lernziel-Inventar** — welche atomaren Einheiten sollen gespacet werden? Karteikarten, Übungsklassen, ganze Aufgaben, Knowledge Components? Je gröber die Einheit, desto unschärfer die Algorithmen.
2. **Persistenz-Schicht** — `localStorage` reicht für eine Single-Device-App, IndexedDB für größere Decks, Backend für Multi-Device. Reviewlog **nie** überschreiben; jeder Review ist append-only.
3. **Algorithmus-Wahl** — meistens Leitner als V1, siehe [[spaced-repetition-algorithmen]].
4. **Queue-Logik** — `getDueCards(limit)` mit Sortierung nach Fälligkeit, daily cap respektieren.
5. **UI-Pattern** — Karte zeigen → Antwort eingeben → Validierung → Confidence-Rating (optional) → Update + Nächste. Latenz < 1 s zwischen den Schritten ist wichtig für Flow.
6. **Backup-Mechanismus** — Reviewlog regelmäßig exportieren. Ohne ihn ist ein algorithmischer Wechsel später unmöglich.
7. **Telemetrie** (optional) — durchschnittliche Retention bei „fälligen" Reviews, Lapses pro Woche, Karten-Durchlaufzeit. Diese Metriken zeigen, ob der Scheduler tut, was er soll.

### Migration zwischen Algorithmen

Wer mit Leitner startet und später auf FSRS migriert, braucht nur den Reviewlog — FSRS rekonstruiert Stability/Difficulty aus der Historie. Daher: **Reviewlog vom ersten Tag an speichern**, auch wenn er für Leitner nicht gebraucht wird.

### Varianten

**Item-Klasse statt Karteikarte.** Eine „Subnetting-Aufgabe" als Klasse, aus der per RNG eine neue konkrete Aufgabe generiert wird. Schedule läuft auf Klassen-Ebene, Variante wird zur Review-Zeit gewürfelt. Vermeidet „Ah, das ist die Karte mit der Antwort 192.168.1.0/24".

**Mastery-gestütztes SR.** Statt unabhängiger Karten-Schedules wird die Stability einer KC abgeleitet — wenn `mastery(KC) > 0.9`, steigt das Intervall aller Items dieser KC. Verbindet Spaced Repetition mit dem Lerner-Modell aus [[lerner-modell-mastery-tracking]].

**KI-gestützte Karten-Generation.** Bei jedem Fälligkeitsereignis generiert ein LLM eine neue Variante des Items, basierend auf Knowledge Component und Schwierigkeit. Vgl. Adaptive Case Generator in [[ki-native-lernumgebungen]] und [[learning-engineering]]. Failure Modes: LLM-Drift, Lösungs-Inkonsistenz — Mitigation über deterministische Validierung.

## Voraussetzungen

- Klare Definition der wiederholbaren Einheit (Karte / Aufgabe / KC)
- Persistenter Speicher mit append-only Reviewlog
- Daily-Cap-Logik, die „ich war eine Woche weg"-Szenarien abfedert
- Bereitschaft, mit dem einfachsten ausreichenden Algorithmus zu starten und nicht vorher zu optimieren

## Zeitbedarf

- **Leitner-Scheduler:** 1-2 Tage Implementierung inklusive UI und Persistenz.
- **SM-2:** 3-5 Tage, hauptsächlich UI für Quality-Rating und Edge Cases.
- **FSRS mit Default-Parametern:** 1-2 Wochen (Algorithmus + Persistenz + UI).
- **Daily-Cap, Vacation Mode, Leech-Detection, Telemetrie:** additiv 3-5 Tage — oft wichtiger für die Nutzbarkeit als der Algorithmus selbst.

## Bezug zur IT-Ausbildung — Designbeispiel AP1-Trainer

Viele Berufsschul-Trainer haben eine `streakDays`-Variable im State, die nie aktualisiert wird, weil keine Schedule-Logik dranhängt. Der folgende minimale Eingriff schließt die Lücke:

**Setup**
- Pro Übung Box-Zustand (Leitner, 5 Boxen, 1/2/4/8/16 Tage) im `localStorage`
- Reviewlog append-only: `{exerciseId, timestamp, correct}[]`
- Daily cap: 20 neue + 30 Reviews

**Core-Funktionen**
```typescript
function getDueExercises(limit: number): Exercise[] {
  const state = loadState();
  const due = state.exercises
    .filter(e => isDue(e))
    .sort((a, b) => a.nextDueAt - b.nextDueAt);
  return due.slice(0, limit);
}

function recordReview(exerciseId: string, correct: boolean): void {
  appendReviewLog({ exerciseId, timestamp: Date.now(), correct });
  const state = loadState();
  const ex = state.exercises.find(e => e.id === exerciseId);
  ex.box = correct ? Math.min(ex.box + 1, 5) : 1;
  ex.lastReview = Date.now();
  ex.nextDueAt = Date.now() + INTERVALS[ex.box - 1] * 86_400_000;
  saveState(state);
}
```

**Ergebnis:** ~150 Codezeilen, schließt eine Lücke, die zentral für Prüfungsvorbereitung ist (vgl. [[pruefungsvorbereitung-lernstrategie]]). `streakDays` wird zum Nebenprodukt, nicht zum Feature.

**Weitere Anwendungsfelder:** SQL-Syntax + HTTP-Statuscodes als Karteikarten mit Leitner; Code-Tracing und Subnetting als Item-Klassen mit RNG-Generation; lernfeldübergreifende Konzepte als Knowledge Components mit Mastery-gestütztem SR.

**Was Spaced Repetition NICHT leistet:** Konzeptverstehen, Problemlösung, Transfer. Ein SR-System ist ein **Fakten- und Wiedererkennungs-Verstärker** — die kreative Arbeit muss in anderen Formaten passieren ([[worked-examples]], [[parsons-problems]], [[primm-methode]]). Häufigster Designfehler: SR-Trainer als komplettes Lernsystem verkaufen.

## Praktische Anwendung

1. **Reviewlog vom ersten Tag append-only speichern** — die wertvollste Datenstruktur; ohne ihn ist jede Migration unmöglich.
2. **Daily Cap vor allem anderen** — ohne Cap brennt der erste Lernende, der eine Woche pausiert, das System ab.
3. **Item-Klassen statt statischer Karten** wo möglich — generiert Varianten, fördert Transfer, verhindert Auswendiglernen.
4. **Leech-Detection nach 4-6 Wochen Live-Betrieb nachrüsten** — Karten mit > 50% Lapse-Rate sind Symptom einer schlechten Karten-Qualität, nicht des Scheduler-Versagens.
5. **FSRS-Migration erst evaluieren ab > 1000 Reviews** — vorher ist der Mehrwert gegenüber Leitner messbar null.
6. **Telemetrie auf Retention-Rate bei fälligen Reviews** — die zentrale Sanity-Check-Metrik. Sollte nahe an der „Desired Retention" liegen (Default: 0.85-0.90). Liegt sie deutlich darunter, schedulen die Intervalle zu lang.
7. **Niemals als Standalone-System verkaufen** — SR ist ein Baustein in einer Lernumgebung, kein Ersatz für Verstehen, Konstruieren, Anwenden.
8. **Anti-Pattern: Streaks ohne Schedule-Logik** — eine `streakDays`-Variable, die täglich inkrementiert wird, ohne dass das Wiederholungsfälligkeit beeinflusst, ist Kosmetik und verbrennt Vertrauen, wenn Lernende merken, dass sie nichts auslöst.

## Verwandte Konzepte

- [[spaced-repetition-algorithmen]] — Katalog der Algorithmen-Familien mit Pseudocode; theoretisches Gegenstück
- [[retrieval-practice]] — Theorie des Testing Effects und Spacings
- [[wissensretention-programmierung]] — Skill-Decay-Forschung als empirische Grundlage
- [[lerner-modell-mastery-tracking]] — Knowledge Components als Granularitätsebene für mastery-gestütztes SR
- [[pruefungsvorbereitung-lernstrategie]] — 6-Wochen-Plan, in dem ein SR-Scheduler die tägliche Übungsdosis steuert
- [[learning-engineering]] — Knowledge Tracing und Item-Generation als Plattform-Kontext
- [[interaktive-lernumgebungen]] — SR-Scheduler als Architektur-Baustein
- [[ki-native-lernumgebungen]] — KI-Item-Generator als Variante über statische Karteikarten hinaus
- [[misconception-analyse]] — Leech-Karten sind oft Symptom falscher Karten-Qualität, nicht Faulheit

## Quellen

- Ye, J. (2022). *Free Spaced Repetition Scheduler (FSRS): A Memory Model for Spaced Repetition Algorithms*. https://github.com/open-spaced-repetition/fsrs4anki
- Lindsey, R. V., Shroyer, J. D., Pashler, H., & Mozer, M. C. (2014). Improving students' long-term knowledge retention through personalized review. *Psychological Science*, 25(3), 639-647.
- Settles, B., & Meeder, B. (2016). A trainable spaced repetition model for language learning. *Proceedings of ACL 2016*, 1848-1858.
