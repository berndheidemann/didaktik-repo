---
title: Lerner-Modell und Mastery Tracking — pragmatisch
type: methode
tags: [lerner-modell, mastery-tracking, knowledge-components, bayesian-knowledge-tracing, spaced-repetition, learning-engineering, adaptive-lernsysteme, referenz]
related:
  - "[[learning-engineering]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[retrieval-practice]]"
  - "[[wissensretention-programmierung]]"
  - "[[scaffolding]]"
  - "[[formatives-assessment]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[expertise-entwicklung]]"
  - "[[kursarchitektur-lernumgebungen]]"
  - "[[differenzierung-inklusion]]"
  - "[[spaced-repetition-algorithmen]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[spaced-repetition-scheduler-bauen]]"
  - "[[rag-tutoring-systeme]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten, erschaffen]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Fünfstufiges Komplexitätsmodell für Lerner-Modelle in Solo-Projekten
  (Completion → Score → Knowledge Components → BKT → DKT). Was tracken,
  welche Mastery-Kriterien, ELO- und IRT-light, Bayesian Knowledge Tracing
  für Einzelentwickler, Spaced-Repetition-Algorithmen-Wahl, TypeScript-
  Datenstrukturen.
---

# Lerner-Modell und Mastery Tracking — pragmatisch

## Kernidee

Ein Lerner-Modell ist die datenstrukturierte Schätzung "was kann diese Person schon" — und für Solo-Entwickler einer Lern-App lautet die zentrale Frage nicht "welches Modell ist state-of-the-art?", sondern "welche minimale Komplexität liefert maximalen pädagogischen Nutzen?". Die Erfahrung aus Carnegie Learning, Khan Academy und Duolingo zeigt: Die größten Sprünge kommen vom Wechsel "kein Modell → Score pro Konzept", nicht vom Wechsel "BKT → Deep Learning". Pragmatik schlägt Eleganz — Stufe 3 (Knowledge-Component-Mastery mit gleitendem Durchschnitt) ist für 90% der Solo-Lehrer-Apps der beste Trade-off.

Dieser Artikel ist das pragmatische Gegenstück zu [[learning-engineering]], das die Theorie von Knowledge Tracing auf CMU-LearnLab-Niveau beschreibt.

## Beschreibung

### Fünf Komplexitätsstufen des Lerner-Modells

| Stufe | Was getrackt wird | Wann lohnt es sich | Aufwand |
|---|---|---|---|
| **0 — Keins** | Nichts; alle sehen dasselbe | Lineares Tutorial, < 30 Min. Inhalt, Demo | 0 |
| **1 — Completion** | `completedChapters: Set<string>` | Erste Iteration, linearer Inhalt, kein Adaptionsbedarf | 1 Tag |
| **2 — Score-basiert (Widget)** | Fehlerrate / Versuche pro Übung | Adaptive Schwierigkeit für einzelne Widgets | 2-3 Tage |
| **3 — Knowledge Components** | `mastery: Map<KC_id, number>` | App > 2h Inhalt, mehrere Übungen pro Konzept | 1-2 Wochen |
| **4 — Bayesian Knowledge Tracing** | 4 BKT-Parameter + P(known) pro KC | Forschungssetting, große Kohorten, Daten zum Tunen | 3-4 Wochen |
| **5 — Deep Knowledge Tracing** | LSTM/Transformer auf Sequenzen | Plattform-Skala, eigenes Data-Team | Jenseits Solo-Dev |

**Faustregel:** Stufe N+1 lohnt nur, wenn Stufe N nachweislich konkrete didaktische Entscheidungen falsch trifft.

### Was tracken — aussagekräftige Signale

- **Korrektheit (binär oder gestuft)** — stärkstes Signal. Caveat: "richtig nach 3 Versuchen" ≠ "richtig im ersten Anlauf". Beides separat speichern.
- **First-Attempt Correctness** — weniger durch Trial-and-Error verzerrt; Carnegie Learnings primäres BKT-Signal.
- **Zeit pro Item** — bimodal interpretieren: zu kurz = Klick-durch, zu lang = Verstehen ODER Verlorensein. Nur mit Korrektheit kombiniert nutzbar.
- **Hint-Nutzung** — indirekter Schwäche-Indikator. Aber: Wer Hints aktiv nutzt, lernt oft besser als wer sie ignoriert. Als Mastery-Reduktor, nicht als Strafe.
- **Wiederholte Versuche bis Erfolg** — Persistenz-Signal. Kann auch Unterforderung anzeigen.
- **Self-Confidence-Rating** — billig zu erheben, extrem wertvoll für metakognitive Kalibrierung ([[selbstgesteuertes-lernen]]).
- **Abbruch-Rate** — starker Frustrations-Indikator, sollte Schwierigkeit reduzieren auslösen.
- **Spaced-Recall-Performance** — wie gut wird ein Konzept nach X Tagen erinnert? Das ist die ehrliche Mastery-Metrik.

### Mastery-Kriterien konkret

| Variante | Stärke | Schwäche |
|---|---|---|
| **N of M** (z.B. 4 von letzten 5 richtig) — Khan Academy | Einfach, robust | Keine Glättung, 1 Fehler kippt Mastery |
| **Gleitender Durchschnitt ≥ 0.8** | Glatter | 1 Fehler unter 10 richtigen "vergessen" |
| **Streak** (3 in Folge richtig) — Duolingo | Motivierend | Leicht zu cheaten, Glück möglich |
| **Bayesian P(known) > 0.95** | Theoretisch sauber | Überflüssig bei wenigen Items |
| **Mastery mit Decay** (exponentiell) | Spiegelt Vergessenskurve | Parameter-Tuning nötig |
| **Mastery + Transfer-Item** | Höchste Stufe — Konzept in neuem Kontext anwenden | Aufwendig in der Item-Produktion |

### ELO-light und IRT-light

**ELO für Lernen:** Jeder Lernende hat Rating L, jedes Item Rating I. Update:

```
L_neu = L + K * (Ergebnis - erwartet)
erwartet = 1 / (1 + 10^((I - L)/400))
```

K typischerweise 16-32. Verteilungsfrei, kein Cold-Start-Tuning, robust ab ~10 Items. Wann angemessen: gleiche Schwierigkeitsdimension (z.B. Code-Tracing-Aufgaben), adaptives Next-Item-Selection. Chess.com-Puzzles funktionieren so.

**IRT-light (Rasch-Modell):** `P(richtig) = sigmoid(Fähigkeit − Schwierigkeit)`. Schätzt Item-Schwierigkeit und Lerner-Fähigkeit simultan aus Gesamtdaten. Praktisch: alle paar Tage ein Fit über den Logs. Lohnt ab ~50 Items × ~30 Lernern.

### Bayesian Knowledge Tracing für Einzelentwickler

BKT modelliert pro Knowledge-Component vier Parameter:
- `P_init` — P(Lernender kennt KC bereits)
- `P_transit` — P(KC wird durch eine Übung gelernt)
- `P_slip` — P(weiß es, antwortet aber falsch)
- `P_guess` — P(weiß es nicht, rät richtig)

```typescript
function updateBKT(pKnown: number, correct: boolean, kc: BKTParams): number {
  const { pSlip, pGuess, pTransit } = kc;
  const posterior = correct
    ? (pKnown * (1 - pSlip)) / (pKnown * (1 - pSlip) + (1 - pKnown) * pGuess)
    : (pKnown * pSlip) / (pKnown * pSlip + (1 - pKnown) * (1 - pGuess));
  return posterior + (1 - posterior) * pTransit;
}
```

Standard-Startwerte (Corbett & Anderson 1995): `P_init=0.3, P_transit=0.1, P_slip=0.1, P_guess=0.2`. Tunen erst, wenn ≥ 50 Lerner historische Daten geliefert haben — sonst sind Defaults so gut wie geschätzte. Pelánek (2017) zeigt: BKT ist meist nur marginal besser als logistische Baselines. **Nicht erste Wahl für Solo-Devs.**

### Spaced Repetition Integration

| System | Komplexität | Stärke | Schwäche |
|---|---|---|---|
| **Leitner-Box** (5 Boxen, 1/2/4/8/16 Tage) | Trivial, 20 LoC | Sofort einsetzbar, transparent | Keine Personalisierung |
| **SM-2** (Anki-Algorithmus) | Mittel, ~50 LoC | Bewährt, gut dokumentiert | Hardcodierte Heuristiken |
| **FSRS** (Free Spaced Repetition Scheduler) | Hoch, ML-Modell | State-of-the-Art (Anki seit 23.10) | Nur sinnvoll mit echten Reviewlog-Daten |
| **Half-Life Regression** (Duolingo) | Hoch, Logistic Regression | Personalisiert, skaliert gut | Braucht Trainingsdaten |

**Empfehlung:** Leitner für den Start, FSRS nach > 1000 Reviews. SM-2 ist Legacy — überspringen.

### TypeScript-Datenstrukturen

**Stufe 2 (Score-basiert):**

```typescript
interface LearnerStateL2 {
  learnerId: string;
  completedChapters: Set<string>;
  exerciseResults: Record<string, {
    attempts: number;
    correct: number;
    lastAttemptAt: number;
    recentResults: boolean[];  // letzte 5 für getAdaptiveDifficulty
  }>;
}
```

**Stufe 3 (Knowledge Components — der empfohlene Sweet Spot):**

```typescript
type KCId = string;

interface KCMastery {
  kcId: KCId;
  mastery: number;             // 0.0 - 1.0
  attempts: number;
  correctStreak: number;
  lastReviewedAt: number;
  nextDueAt: number;           // für Spaced Repetition
}

interface LearnerStateL3 {
  learnerId: string;
  kcMastery: Map<KCId, KCMastery>;
  exerciseLog: Array<{
    exerciseId: string;
    kcIds: KCId[];             // jede Übung adressiert ≥ 1 KC
    correct: boolean;
    timeMs: number;
    hintsUsed: number;
    timestamp: number;
  }>;
}

interface Exercise {
  id: string;
  kcIds: KCId[];               // die eigentliche Designarbeit
  difficulty: number;          // 0-1, später via ELO/IRT updatebar
}
```

Der Schlüssel ist die `kcIds`-Annotation pro Übung — das ist die einmalige, wertvollste Designarbeit.

## Durchführung

### Entscheidungsheuristik

| App-Charakter | Empfohlene Stufe |
|---|---|
| Demo / Workshop / 1 Schulstunde | Stufe 0 oder 1 |
| Lineares Begleit-Tutorial, < 5 Themen | Stufe 1 |
| Adaptive Widget-Schwierigkeit, < 20 Übungen | Stufe 2 |
| Mehrere Themen, wiederkehrende Konzepte, Wochen-Zeitrahmen | **Stufe 3** (Sweet Spot) |
| Forschungsprojekt, > 100 Lerner | Stufe 4 (BKT) |
| Plattform-Skala mit Data-Team | Stufe 5 (DKT) |

### Cold-Start, Forgetting, Gaming-Mitigation

- **Cold-Start**: Start mit `P_init = 0.3` für alle KCs, oder kurzes Diagnostik-Quiz. Für Solo-Projekte reicht: erste Aufgabe ist immer die einfachste pro KC.
- **Forgetting**: Decay-Term pro KC: `mastery_t = mastery_0 * exp(-Δt / halflife)`. Halflife konservativ 14 Tage. Lindsey et al. (2014) zeigen signifikant bessere Retention bei personalisierten Halflives (+16,5% vs. Massed Study, +10% vs. generisches Spacing).
- **Gaming-Mitigation**: (a) Mastery nur bei First-Attempt-Korrektheit erhöhen. (b) Periodische "Audit"-Items, die früheres Wissen unangekündigt abprüfen. (c) Antworten unter 1.5 Sekunden halb zählen.

## Voraussetzungen

- Fachinhalt ist in Knowledge Components zerlegt (8-15 KCs sind für die meisten Themen ausreichend)
- Jede Übung ist mit `kcIds` annotiert (einmal beim Erstellen mitgedacht)
- Datenmodell ist persistenzfähig (localStorage, IndexedDB, Backend)
- Entscheidung, welche Metriken tatsächlich adaptive Reaktionen auslösen sollen

## Varianten

- **Leichtgewichtig**: Nur first-attempt Correctness + gleitender Durchschnitt. 2-3 Tage Implementierung.
- **Mittel**: Plus Knowledge Components + Decay + einfache Spaced Repetition (Leitner). 1-2 Wochen.
- **Ambitioniert**: Plus BKT + personalisierte Halflives + Transfer-Items. 3-4 Wochen, nur sinnvoll bei ≥ 50 aktiven Lernern.

## Zeitbedarf

Stufe 2 Basis: 2-3 Tage. Stufe 3 mit KC-Annotation aller Übungen: 1-2 Wochen. Stufe 4 mit BKT und Tuning: 3-4 Wochen + Datenerhebung. Wichtigster Zeitfaktor ist nicht der Code, sondern die **KC-Definition** — das saubere Zerlegen eines Fachthemas in lernbare Einheiten.

## Bezug zur IT-Ausbildung

KC-Zerlegung und Knowledge Tracing sind in sich Lerninhalte für LF10-12: Azubis, die Lernplattformen oder Onboarding-Tools für den Betrieb bauen, treffen exakt dieselben Designentscheidungen. Das gilt auch für datengetriebene Features generell — Recommender, Ratings, Skill Matching. Mastery-Tracking ist ein gutes Projektthema, weil es TypeScript-Typensystem, State-Management, Persistenz und einfache statistische Modelle in einem natürlichen Kontext integriert.

## Praktische Anwendung

1. **Aktuelle Stufe bestimmen** — ist deine App auf 0, 1, 2 oder 3?
2. **Knowledge Components definieren** — das ist wertvolle einmalige Designarbeit. 8-15 KCs für ein typisches Berufsschul-Thema.
3. **Jede Übung mit `kcIds` annotieren** — viele Übungen treffen mehrere KCs gleichzeitig.
4. **Mastery als gleitender Durchschnitt über first-attempt-Resultate**, clamped auf [0, 1], plus Decay.
5. **Adaptive Auswahl**: Wähle die Übung, deren KCs niedrigste Mastery haben (statt einfacher Fehlerraten-Schwelle).
6. **Self-Confidence-Slider** vor jeder Antwort als minimale UI-Investition mit großem Erkenntnisgewinn.
7. **BKT, ELO, FSRS zurückstellen**, bis ≥ 30 echte Schülerläufe vorliegen. Vorher ist das Premature Optimization.
8. **Heatmap-Dashboard pro Lernender** (KC × Mastery) als formativer Diagnose-Goldstandard — Stoff für Unterrichtsgespräche.

## Verwandte Konzepte

- [[learning-engineering]] — theoretischer Überbau zu Knowledge Tracing; dieser Artikel ist die Implementierungs-Ergänzung
- [[interaktive-lernumgebungen]] — Lerner-Modell ist zentrale Komponente
- [[retrieval-practice]] — Spaced-Repetition-Algorithmen sind hier theoretisch begründet
- [[wissensretention-programmierung]] — Forgetting Curve und Retention begründen den Decay
- [[scaffolding]] — adaptive Auswahl basierend auf Mastery ist operationalisiertes Fading
- [[formatives-assessment]] — jede Lerner-Modell-Aktualisierung ist formative Diagnostik
- [[ki-native-lernumgebungen]] — Lerner-Modell als Datenfundament für KI-Tutor-Personalisierung
- [[expertise-entwicklung]] — KCs sind operationalisierte Expertise-Bausteine
- [[spaced-repetition-algorithmen]] — Tieferer Methoden-Artikel zu Leitner, SM-2, FSRS und HLR mit Pseudocode

## Quellen

- Corbett, A. T., & Anderson, J. R. (1995). Knowledge tracing: Modeling the acquisition of procedural knowledge. *User Modeling and User-Adapted Interaction*, 4(4), 253-278.
- Pelánek, R. (2017). Bayesian knowledge tracing, logistic models, and beyond: An overview of learner modeling techniques. *User Modeling and User-Adapted Interaction*, 27, 313-350.
- Piech, C., Bassen, J., Huang, J., Ganguli, S., Sahami, M., Guibas, L., & Sohl-Dickstein, J. (2015). Deep knowledge tracing. *NeurIPS 2015*.
- Khajah, M., Lindsey, R. V., & Mozer, M. C. (2016). How deep is knowledge tracing? *Proceedings of EDM 2016*.
- Settles, B., & Meeder, B. (2016). A trainable spaced repetition model for language learning. *Proceedings of ACL 2016*, 1848-1858.
- Lindsey, R. V., Shroyer, J. D., Pashler, H., & Mozer, M. C. (2014). Improving students' long-term knowledge retention through personalized review. *Psychological Science*, 25(3), 639-647.
- Baker, R. S., Corbett, A. T., & Aleven, V. (2008). More accurate student modeling through contextual estimation of slip and guess probabilities in Bayesian knowledge tracing. *Proceedings of ITS 2008*, 406-415.
- Koedinger, K. R., Corbett, A. T., & Perfetti, C. (2012). The Knowledge-Learning-Instruction framework: Bridging the science-practice chasm. *Cognitive Science*, 36(5), 757-798.
