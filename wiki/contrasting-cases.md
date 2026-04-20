---
title: Contrasting Cases und Preparation for Future Learning
type: theorie
tags: [preparation-for-future-learning, transfer, schwartz-bransford, strukturerkennung, vergleichende-didaktik, desirable-difficulty, a-time-for-telling]
related:
  - "[[productive-failure]]"
  - "[[worked-examples]]"
  - "[[misconception-analyse]]"
  - "[[threshold-concepts]]"
  - "[[cognitive-load-theory]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[scaffolding]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[formatives-assessment]]"
  - "[[anchored-instruction]]"
  - "[[desirable-difficulties]]"
  - "[[interleaving]]"
evidenzgrad: quasi-experimentell
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, analysieren, bewerten]
created: 2026-04-09
updated: 2026-04-09
summary: >
  Zwei (oder mehr) bewusst unterschiedliche Fälle nebeneinander stellen zwingt
  Lernende zum Strukturvergleich — Schwartz & Bransford (1998) zeigen, dass
  dieses "A Time for Telling"-Design tieferen Transfer erzeugt als ein einzelner
  Fall mit anschließender Erklärung. Kern der Preparation for Future Learning.
---

# Contrasting Cases und Preparation for Future Learning

## Kernidee

Ein einzelner Fall mit anschließender Erklärung ist die übliche Didaktik — Lernende sehen *eine* Lösung und versuchen sie zu übertragen. Schwartz & Bransford (1998) zeigen: Zwei bewusst unterschiedliche Fälle nebeneinander sind deutlich wirksamer. Die Lernenden werden gezwungen, zu vergleichen, Unterschiede zu benennen und selbst *Unterscheidungsmerkmale* zu entdecken — *bevor* die Erklärung folgt. Diese "Preparation for Future Learning" (PFL) macht die folgende Instruktion bedeutsam statt redundant.

## Beschreibung

### Das Schwartz-Bransford-Experiment ("A Time for Telling", 1998)

Studierende sollten Statistik lernen (Varianzanalyse). Drei Gruppen:
1. **Text lesen** — klassische Instruktion
2. **Ein Fall zusammenfassen** — aktivierend, aber einzeln
3. **Zwei kontrastierende Datensätze vergleichen** — ohne Erklärung, nur Vergleichen
Danach bekamen alle drei Gruppen die gleiche Vorlesung und einen Transfer-Test.

**Ergebnis:** Gruppe 3 schnitt beim Transfer signifikant besser ab — obwohl sie in der Vorbereitungsphase keine "richtige" Antwort bekommen hatte. Das reine Vergleichen hatte die Lernenden für die Erklärung *empfänglich* gemacht. Der Effekt ist mittlerweile mehrfach repliziert (Schwartz, Chase, Kapur, u.a.).

### Warum Vergleichen so stark ist

Einzelne Fälle laden zu **Oberflächenmerkmalen** ein — Lernende merken sich Namen, Zahlen, konkrete Umstände. Erst der Vergleich zwingt dazu, die *Struktur* zu abstrahieren: "Was macht den Unterschied aus? Was ist in beiden gleich?" Die abstrakten Dimensionen, die der Lehrer sonst vorgeben würde, entdeckt der Lernende selbst.

Gentner (1983) nennt das Prinzip **Structural Alignment**: Beim Vergleich zweier ähnlicher, aber nicht identischer Repräsentationen werden korrespondierende Relationen sichtbar, die bei isolierter Betrachtung verborgen bleiben.

### Abgrenzung zu verwandten Methoden

| Methode | Was zeigt sie? | Ziel |
|---------|---------------|------|
| [[worked-examples]] | Eine ausgearbeitete Lösung | Schema-Aufbau durch Studium |
| **Contrasting Cases** | Zwei/mehr Fälle parallel | Strukturerkennung durch Vergleich |
| [[productive-failure]] | Offenes Problem ohne Lösung | Wissensbedarf durch Scheitern |
| [[misconception-analyse]] | Richtig vs. typisch-falsch | Fehlvorstellung diagnostizieren |

Contrasting Cases sind das **Vehikel**, mit dem Productive Failure und Preparation for Future Learning oft operationalisiert werden — die Lernenden scheitern nicht an einem Einzelproblem, sondern produzieren beim *Vergleichen* diverse Merkmalsvorschläge, die die folgende Instruktion strukturieren.

### Designkriterien für Fall-Paare

Gute Contrasting Cases sind nicht zufällig ausgewählt:

1. **Kontrolliert variierend** — Fälle unterscheiden sich in *einer* zentralen Dimension, sind sonst möglichst ähnlich. Sonst bleibt der Vergleich diffus.
2. **Gleiche Oberfläche, andere Struktur** (oder umgekehrt) — z.B. identischer Use Case, unterschiedliche Architektur.
3. **Generativ** — die Lernenden sollen *Hypothesen* aufstellen, nicht nur Fakten aufzählen.
4. **Ohne frühe Auflösung** — die Erklärung kommt *nach* dem Vergleich, nicht davor.
5. **Drei statt zwei** — wenn möglich: eine dritte, bewusst "mittlere" Variante schärft die Dimensionen.

## Bezug zur IT-Ausbildung

IT-Inhalte sind voll von parallelen Konzepten, die Novizen regelmäßig verwechseln — genau die Situation, in der Contrasting Cases besonders wirksam sind:

| Lernfeld | Kontrast-Paar | Lerngewinn |
|----------|---------------|-----------|
| **LF5 (SQL)** | Identische Abfrage in SQL vs. MongoDB vs. Pandas-DataFrame | Mengenbasiertes Denken vs. prozedurales Lesen wird sichtbar |
| **LF5 (Datenformate)** | Gleiche Bestelldaten als JSON vs. XML vs. CSV | Schema-Strenge, Nesting, Tabellarität als Strukturmerkmale |
| **LF8 (REST)** | GET vs. POST für die gleiche Aktion; synchroner vs. asynchroner Fetch | Idempotenz, Nebenwirkungen, Zeitsemantik |
| **LF5 (Python)** | `list` vs. `tuple` vs. `set` vs. `dict` für denselben Anwendungsfall | Ordnung, Mutabilität, Zugriff als Dimensionen |
| **LF11a (OOP)** | Gleiche Funktionalität als Vererbung vs. Komposition | Kopplung, Austauschbarkeit |
| **LF4 (Security)** | Gleiches Passwortproblem mit vs. ohne Salting | Angriffsoberfläche als Strukturdimension |
| **LF10 (DSGVO)** | Gleicher Use Case unter berechtigtem Interesse vs. Einwilligung | Rechtsgrundlagen als Dimensionen statt als Auswahlliste |

### Das Rosetta-Stein-Muster

Ein durchgängig eingesetztes Format: dieselben Daten in mehreren Repräsentationen parallel zeigen. Die Lernenden sollen identifizieren, welche Eigenschaften sich in *allen* Darstellungen wiederfinden (invariante Struktur) und welche an eine *bestimmte* Darstellung gebunden sind (Oberflächenmerkmal). Das trainiert präzise das, was Transfer ausmacht.

## Praktische Anwendung

Ein Agent kann Contrasting Cases systematisch in Lernumgebungen einbauen:

1. **Parallel-Ansicht statt Einzelansicht** — zwei Editor-Panels nebeneinander mit Fall A und Fall B statt einem Beispiel. Die Lernenden können zwischen beiden wechseln, aber nicht ausweichen.
2. **Vergleichs-Prompt vor der Erklärung** — "Was ist in Fall B anders? Welche Konsequenz hat das?" muss beantwortet werden, bevor die Lerntheorie folgt.
3. **Tabellen selbst ausfüllen lassen** — leere Vergleichsmatrix (Dimensionen in Spalten, Fälle in Zeilen) — die Lernenden tragen selbst ein. Die Dimensionen, die sie finden, sind das eigentliche Lernprodukt.
4. **Minimale Paare erzeugen** — aus einem Lösungscode automatisch eine Variante ableiten, die sich in genau einer Dimension unterscheidet. Für LLM-basierte Generatoren: Prompt-Pattern "Gleiches Ziel, andere Architektur in einer Dimension".
5. **Dritter Fall als Kalibrierung** — wenn zwei Fälle zu weit auseinander liegen, bricht der Vergleich zusammen. Ein Zwischenfall macht die Dimensionen stabil.
6. **Kontrast vor Konzept** — Namen und Definitionen (z.B. "Idempotenz") *nach* dem Vergleich einführen, nicht davor. Der Begriff landet dann auf eine bereits erspürte Struktur.
7. **Misconception-Kontrast** — ein korrekter Fall neben einer plausibel-falschen Variante. Ergänzt [[misconception-analyse]] um eine proaktive Gegenseite: nicht erst diagnostizieren, sondern im Lernmaterial bereits den Kontrast als Differenzierungsauftrag einbauen.
8. **Anti-Pattern** — niemals Fälle, die in vielen Dimensionen gleichzeitig variieren. Lernende finden dann keine Struktur, nur Rauschen.

## Verwandte Konzepte

- [[productive-failure]] — Contrasting Cases sind das typische Material, mit dem PF/PFL operationalisiert werden
- [[worked-examples]] — Ein Worked Example zeigt *eine* Lösung; Contrasting Cases zeigen *Unterschiede*. Beide ergänzen sich im Fading-Pfad.
- [[misconception-analyse]] — Korrekter vs. typisch-falscher Fall macht Fehlvorstellungen im Lernmaterial selbst adressierbar
- [[threshold-concepts]] — Struktur-Dimensionen, die erst beim Vergleich sichtbar werden, sind oft genau die Schwellenkonzepte
- [[cognitive-load-theory]] — Vergleich erhöht intrinsische Last; funktioniert erst, wenn Lernende genug Vorwissen für beide Einzelfälle haben
- [[scaffolding]] — Vergleichsmatrix ist Scaffolding für den Abstraktionsprozess
- [[aufgabentypen-interaktive-lernumgebungen]] — Parallel-View, Vergleichsmatrix und "Finde den Unterschied" als Aufgabentypen
- [[interaktive-lernumgebungen]] — Side-by-Side-Darstellung als Widget-Pattern
- [[formatives-assessment]] — Die entdeckten Dimensionen sind diagnostisches Material über den Lernstand

## Quellen

- Schwartz, D. L. & Bransford, J. D. (1998). A Time for Telling. *Cognition and Instruction*, 16(4), 475-522.
- Bransford, J. D. & Schwartz, D. L. (1999). Rethinking Transfer: A Simple Proposal with Multiple Implications. *Review of Research in Education*, 24, 61-100.
- Gentner, D. (1983). Structure-Mapping: A Theoretical Framework for Analogy. *Cognitive Science*, 7(2), 155-170.
- Schwartz, D. L., Chase, C. C., Oppezzo, M. A. & Chin, D. B. (2011). Practicing versus Inventing with Contrasting Cases. *Journal of Educational Psychology*, 103(4), 759-775.
- Kapur, M. & Bielaczyc, K. (2012). Designing for Productive Failure. *Journal of the Learning Sciences*, 21(1), 45-83.
- Rittle-Johnson, B. & Star, J. R. (2007). Does Comparing Solution Methods Facilitate Conceptual and Procedural Knowledge? *Journal of Educational Psychology*, 99(3), 561-574.
