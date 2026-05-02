---
title: Parsons Problems
type: methode
tags: [code-puzzle, scaffolding, fading, distraktoren, cognitive-load, ericson-2022, programmierung, kompositionsaufgabe, heterogenitaet, referenz]
related:
  - "[[worked-examples]]"
  - "[[scaffolding]]"
  - "[[primm-methode]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[cognitive-load-theory]]"
  - "[[retrieval-practice]]"
  - "[[low-floor-high-ceiling]]"
  - "[[differenzierung-inklusion]]"
  - "[[use-modify-create]]"
  - "[[productive-failure]]"
  - "[[misconception-analyse]]"
  - "[[spaced-repetition-algorithmen]]"
  - "[[spaced-repetition-scheduler-bauen]]"
  - "[[notional-machines]]"
  - "[[subgoal-labeling]]"
  - "[[testitem-konstruktion-digital]]"
  - "[[self-explanation]]"
  - "[[vier-komponenten-instruktionsdesign]]"
  - "[[icap-framework]]"
  - "[[mastery-learning]]"
evidenzgrad: meta-analyse
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, analysieren]
sozialform: [einzelarbeit, partner]
created: 2026-04-09
updated: 2026-04-09
summary: >
  Lernende sortieren vorgegebene Code-Snippets in die richtige Reihenfolge,
  statt Code von Grund auf zu schreiben. Parsons & Haden (2006) entwickelten
  das Format; Ericson et al. (2022) bestätigen in der Meta-Review: gleiche
  Lernergebnisse bei halbem Zeitaufwand und geringerer kognitiver Last.
  Struktureller Differenzierungs-Hebel für heterogene Klassen.
---

# Parsons Problems

## Kernidee

Bei einem Parsons Problem bekommen Lernende die korrekten Codezeilen eines Programms — allerdings in falscher Reihenfolge und oft vermischt mit **Distraktoren** (falschen oder überflüssigen Zeilen). Aufgabe ist es, die richtigen Zeilen auszuwählen und in die richtige Reihenfolge zu bringen. Das Format trennt das *strukturelle* Verständnis (Was gehört wohin?) vom *produktiven* Syntaxwissen (Wie tippe ich es?) und senkt damit die kognitive Last bei gleichem Lerneffekt.

## Beschreibung

### Ursprung und Evidenz

Dale Parsons und Patricia Haden (Otago Polytechnic) stellten das Format 2006 auf der ACE-Konferenz vor. Die empirische Aufarbeitung liegt auf Meta-Analyse-Niveau:

- **Denny, Luxton-Reilly & Simon (2008):** Parsons-Aufgaben erzeugen vergleichbare Lernergebnisse wie freies Schreiben, benötigen aber **signifikant weniger Zeit** und frustrieren weniger.
- **Ericson, Denny, Prather et al. (2022):** Systematische Literaturrecherche über 47 Studien. Befund: Parsons Problems sind für Lernende *effizienter* — gleiche Lernwirkung bei ≈ halbem Zeitaufwand und niedrigerer cognitive load (gemessen per NASA-TLX und selbstberichteter Belastung).
- **Morrison, Margulieux, Ericson & Guzdial (2016):** Subgoal-Labels (vorgegeben oder selbst generiert) verbessern das Lösen von Parsons-Aufgaben deutlich. Zusätzlich zeigt die Studie, dass Parsons-Probleme als *Assessment* sensitiver sind als reines Code-Schreiben — sie machen Teilwissen sichtbar, das beim Schreiben verborgen bleibt.

### Warum das funktioniert (Cognitive Load-Erklärung)

Freies Schreiben lädt gleichzeitig zwei kognitive Anforderungen aufs Arbeitsgedächtnis: **Was ist die Lösung?** (Struktur) und **Wie schreibe ich sie korrekt?** (Syntax, Semikolon, Einrückung, Tippfehler). Für Novizen ist die Summe beider oft größer als die verfügbare Kapazität — sie scheitern nicht am Verständnis, sondern an der Doppellast. Parsons Problems entfernen die Syntax-Produktionslast und geben dadurch Kapazität für den Struktur-Aufbau frei. Vgl. [[cognitive-load-theory]] und den Worked-Example-Effekt in [[worked-examples]].

### Varianten mit wachsendem Schwierigkeitsgrad

| Stufe | Variante | Was wird verlangt | Typische Lernphase |
|-------|----------|-------------------|--------------------|
| 1 | **Basis-Parsons** | Richtige Zeilen in richtige Reihenfolge | Nach Worked Example, vor freiem Schreiben |
| 2 | **Mit Distraktoren** | Richtige auswählen *und* ordnen (falsche Zeilen liegen dabei) | Konsolidierung — zwingt zur Unterscheidung |
| 3 | **2D-Parsons** | Zusätzlich richtige Einrückung setzen (Python, YAML) | Wenn Scope/Block-Struktur das Lernziel ist |
| 4 | **Faded Parsons** | Einige Zeilen sortieren, andere selbst schreiben (Lücken) | Übergang zum freien Schreiben |
| 5 | **Adaptive Parsons** | Distraktoren werden je nach Erfolgsquote ein-/ausgeblendet | In adaptiven Lernsystemen |

### Das Prinzip "Strategische Distraktoren"

Gute Distraktoren sind *nicht zufällig* — sie kodieren typische Misconceptions:

- `=` statt `==` im Vergleich
- `i < len(list)` vs. `i <= len(list)` (Off-by-one)
- `return` innerhalb vs. außerhalb der Schleife
- `SELECT ... WHERE x = NULL` statt `IS NULL`
- `POST` vs. `PUT` für idempotente Updates

Das Parsons-Problem wird dadurch zu einer diagnostischen Aufgabe: Die Wahl des Distraktors verrät die zugrundeliegende Fehlvorstellung. Verbindung zu [[misconception-analyse]].

## Durchführung

### Im Unterricht

1. **Worked Example vorschalten** — die gleiche Struktur in vollständiger Form einmal zeigen (Tracing, Erklärung der Sub-Goals). Ohne Vorwissen scheitert Parsons.
2. **Parsons-Aufgabe einsetzen** — zunächst ohne Distraktoren, dann mit. Lernende begründen bei Unsicherheit ihre Entscheidungen laut im Pair.
3. **Diskussion der Distraktoren** — nach der Lösung kurz besprechen, *warum* die falschen Zeilen plausibel wirkten. Das macht Misconceptions explizit.
4. **Completion Problem als nächster Schritt** — eine ähnliche Aufgabe, bei der jetzt Lücken in einer sonst vollständigen Lösung gefüllt werden.
5. **Schließlich: freies Schreiben** — erst wenn Parsons sicher gelöst wird.

### Als Widget in interaktiven Lernumgebungen

Parsons-Puzzles lassen sich gut als Drag-and-Drop-Komponente bauen (Browser: `@dnd-kit`, React). Ein Parsons-Widget braucht:

- **Snippet-Pool** (verfügbare Zeilen, gemischt)
- **Ziel-Bereich** (sortierte Sequenz)
- **Validierung** (Reihenfolge + optional Einrückung prüfen)
- **Feedback** pro Zeile oder erst nach vollständiger Lösung
- **Distraktoren-Toggle** für Schwierigkeitsgrade

## Voraussetzungen

- Ein Worked Example oder vergleichbare Einführung muss vorausgehen — Parsons ersetzt keine Instruktion, es ersetzt Schreibübung.
- Das Lernziel muss *Struktur* sein, nicht Produktion. Wenn Tippgeschwindigkeit oder Fehlermeldungs-Deutung das Ziel ist, ist Parsons die falsche Methode.
- Für anspruchsvolle Varianten: Gewöhnung an das Format (erste Begegnung ohne Distraktoren).

## Varianten

- **Rückwärts-Parsons:** Code zum vorgegebenen Output suchen ("welche Snippets in welcher Reihenfolge erzeugen dieses Ergebnis?"). Fördert Tracing-Kompetenz.
- **Multi-Solution:** Mehrere gültige Reihenfolgen akzeptiert — Lernende erkennen, welche Reihenfolgebeziehungen zwingend sind und welche nicht.
- **Pair-Parsons:** Einer sortiert, der andere begründet laut; Rollentausch. Verbindet sich mit der Investigate-Phase in [[primm-methode]].
- **Nicht-Code-Parsons:** Funktioniert auch für SQL-Statements, Regex-Bausteine, YAML-Konfigurationen, Shell-Pipelines, Git-Command-Sequenzen, Dockerfile-Zeilen, Makefile-Regeln.

## Zeitbedarf

- **Vorbereitung:** Gering, wenn aus vorhandenem Worked Example generiert. Der Lösungscode wird in Zeilen oder logische Blöcke zerschnitten, optional mit 2–4 Distraktoren angereichert.
- **Durchführung:** 5–15 Min pro Aufgabe, deutlich weniger als freies Schreiben gleicher Komplexität.
- **Nachbereitung:** Gering — automatische Validierung.

## Bezug zur IT-Ausbildung

Parsons Problems sind für die Berufsschulsituation besonders wertvoll, weil sie **strukturelle Differenzierung** über ein einziges Format erlauben:

| Lernfeld | Parsons-Anwendung |
|----------|-------------------|
| **LF5 (SQL)** | Query-Zeilen sortieren (SELECT, FROM, JOIN, WHERE, GROUP BY, HAVING, ORDER BY); Distraktoren für `= NULL`, fehlendes GROUP BY, HAVING ohne Aggregat |
| **LF5 (Python/Pandas)** | Pipeline-Schritte ordnen (`read_csv` → `dropna` → `groupby` → `agg` → `sort_values`); Distraktoren mit `SettingWithCopy`-Fallen |
| **LF6 (Bash/PowerShell)** | Shell-Pipeline aus `find`, `grep`, `awk`, `sort`, `uniq` bauen |
| **LF8 (REST)** | Handler-Code (Input validieren → Auth prüfen → DB-Zugriff → Response bauen); Distraktoren für fehlende Auth-Prüfung |
| **LF11a (OOP)** | Konstruktor, Methodenaufrufe, Rückgabe ordnen |
| **LF4 (Security)** | Passwort-Hashing-Pipeline (Salt generieren → Hash → speichern); Distraktoren für `md5`, fehlendes Salt |
| **LF10-12 (Projekte)** | Git-Workflow-Befehle, Docker-Build-Stufen, CI-Pipeline-Schritte |

### Warum gerade für heterogene Klassen

Die Heterogenität deutscher Berufsschulklassen — vom Hauptschulabschluss bis zum Abiturienten mit Hobby-Programmier-Erfahrung — macht freies Schreiben zum Differenzierungs-Alptraum: die Starken sind unterfordert, die Schwachen frustriert. Parsons Problems lösen das strukturell:

- **Niedriger Einstieg** (Hauptschulabschluss): Sortierung ohne Distraktoren ist schaffbar.
- **Offene Decke** (Abitur): Mit vielen Distraktoren, 2D-Einrückung und Multi-Solution wird es anspruchsvoll.

Gleiches Aufgabenmaterial, verschiedene Schwierigkeitsstufen — kein sichtbares Niveau-Label. Vgl. [[low-floor-high-ceiling]] und [[differenzierung-inklusion]].

## Praktische Anwendung

Ein Agent kann Parsons-Aufgaben automatisch generieren und adaptiv steuern:

1. **Generierung aus Lösungscode** — aus jedem Worked Example lässt sich ein Parsons-Problem algorithmisch ableiten: Zeilen extrahieren, mischen, optional Blöcke bilden, Distraktoren anhängen.
2. **Distraktoren aus Misconception-Katalog** — statt zufällige falsche Zeilen: gezielt Distraktoren, die die 2–3 häufigsten Misconceptions des Themas abbilden. Liste aus [[misconception-analyse]]. Die Wahl des Distraktors wird damit zum diagnostischen Signal.
3. **Adaptive Schwierigkeit** — Erfolgsquote > 80% → Distraktoren hinzufügen; < 50% → Distraktoren reduzieren, Hinweise einblenden.
4. **Parsons als Retrieval** — nach 1–2 Wochen dieselbe Struktur als Parsons wiederholen, statt klassischer Wiederholungsfrage. Vgl. [[retrieval-practice]]. Niedrige Hürde, hohe Aktivierung.
5. **Parsons im Fading-Pfad** — im Sequenzdesign: Worked Example → Parsons ohne Distraktoren → Parsons mit Distraktoren → Completion Problem → freies Schreiben. Siehe [[worked-examples]] und [[scaffolding]].
6. **Begründungs-Pflicht** — bei kniffligen Distraktoren-Paaren den Lernenden eine kurze Begründung ihrer Wahl abverlangen („Warum nicht die andere Zeile?"). Metakognitive Aktivierung.
7. **Anti-Pattern** — Parsons ohne vorgängiges Worked Example. Und: zufällige Distraktoren. Beides macht die Methode didaktisch wertlos.

## Verwandte Konzepte

- [[worked-examples]] — Parsons ist die etablierte Zwischenstufe zwischen Worked Example und freiem Schreiben
- [[scaffolding]] — Parsons ist Scaffolding auf der *Produktions*-Dimension (Struktur gegeben, Syntax entfällt)
- [[primm-methode]] — Parsons passt in die Investigate-Phase; in der Modify-Phase als Bausatz einsetzbar
- [[aufgabentypen-interaktive-lernumgebungen]] — Parsons als Widget-Typ im Aufgaben-Katalog
- [[cognitive-load-theory]] — Theoretische Begründung: Reduktion der Produktions-Last
- [[low-floor-high-ceiling]] — Distraktor-Dichte liefert die Höhenverstellung
- [[misconception-analyse]] — Distraktoren als Misconception-Sensoren
- [[differenzierung-inklusion]] — Strukturelle Differenzierung ohne sichtbares Niveau-Label

## Quellen

- Parsons, D. & Haden, P. (2006). Parsons' Programming Puzzles: A Fun and Effective Learning Tool for First Programming Courses. *Australasian Computing Education Conference (ACE)*, 157-163.
- Denny, P., Luxton-Reilly, A. & Simon, B. (2008). Evaluating a New Exam Question: Parsons Problems. *ICER '08*, 113-124.
- Morrison, B. B., Margulieux, L. E., Ericson, B. & Guzdial, M. (2016). Subgoals Help Students Solve Parsons Problems. *SIGCSE '16*, 42-47.
- Ericson, B. J., Denny, P., Prather, J., Duran, R., Hellas, A., Leinonen, J., Miller, C. S., Morrison, B. B., Pearce, J. L. & Rodger, S. H. (2022). Parsons Problems and Beyond: Systematic Literature Review and Empirical Study Designs. *ITiCSE-WGR '22*, 191-234. https://doi.org/10.1145/3571785.3574127
- Weinman, N., Fox, A. & Hearst, M. A. (2021). Improving Instruction of Programming Patterns with Faded Parsons Problems. *CHI '21*.
