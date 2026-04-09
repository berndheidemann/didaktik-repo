---
title: Sprachsensibler IT-Unterricht
type: methode
tags: [sprachsensibilitaet, daz, fachsprache, bildungssprache, scaffolding-sprache, code-switching, leisen, clil, referenz]
related:
  - "[[scaffolding]]"
  - "[[cognitive-load-theory]]"
  - "[[low-floor-high-ceiling]]"
  - "[[affektive-dimensionen]]"
  - "[[worked-examples]]"
  - "[[debugging-als-kompetenz]]"
  - "[[lernsituationen-gestalten]]"
  - "[[blooms-taxonomie]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[formatives-assessment]]"
  - "[[differenzierung-inklusion]]"
  - "[[community-of-practice]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden]
created: 2026-04-08
updated: 2026-04-08
summary: >
  Sprachsensibler Fachunterricht (Leisen, Gibbons) im IT-Kontext — mit drei
  interagierenden Registern (deutsche Alltagssprache, deutsche Bildungssprache,
  englische Fachsprache). Techniken wie Wortspeicher, Mode Continuum,
  Sprachgerüste und Code-Switching-Rituale für heterogene Berufsschulklassen
  mit DaZ-Lernenden und Quereinsteigern.
---

# Sprachsensibler IT-Unterricht

## Kernidee

Sprachsensibler Fachunterricht (Leisen 2010) behandelt Sprache nicht als Voraussetzung des Fachlernens, sondern als integralen Teil — Fach und Sprache werden *gleichzeitig* unterrichtet, nicht nacheinander. Fachinformatik ist dafür ein Extremfall, weil drei Sprachregister kollidieren: deutsche Alltagssprache ("die Liste"), deutsche Bildungssprache ("iterieren über eine Datenstruktur") und englische Fachsprache ("iterate over a collection", `Connection Pool`, `Race Condition`) — wobei Fehlermeldungen, IDEs und Dokumentation fast durchgängig englisch sind. Für heterogene Berufsschulklassen mit DaZ-Schüler:innen, Quereinsteiger:innen und First-Generation-Azubis entscheidet die sprachliche Dimension oft stärker über Dropout als die fachliche.

## Beschreibung

### Bildungssprache vs. Alltagssprache explizit machen

Das Kernproblem: DaZ-Lernende und sprachschwache Muttersprachler:innen verstehen den Unterricht oft "irgendwie", können aber Prüfungsfragen mit fachsprachlichen Operatoren ("erläutern Sie", "begründen Sie") nicht verarbeiten. Die Kluft zwischen *Verstehen* und *Formulieren* ist der Hauptgrund für das "Er kann es doch eigentlich, aber in der Klausur…"-Phänomen.

**Operative Hebel:**
- **Drei-Spalten-Tafel** pro neuem Begriff: *Alltagssprache* / *deutsche Fachsprache* / *englische Fachsprache*. Beispiel: "die Liste durchgehen" / "iterieren" / "iterate / loop through".
- **Leisens Sprachstufenmodell** explizit durchlaufen: (1) nonverbal/Zeigen am Code → (2) Alltagssprache → (3) fachsprachliche Alltagssprache → (4) Bildungssprache → (5) Fachsprache. Die Lehrkraft moderiert den Aufstieg im Plenum.
- **IHK-Operatoren als Mini-Einheit** (nennen, beschreiben, erläutern, begründen, bewerten) explizit lehren — sie sind die Sprach-Brücke zur Prüfung. Verbindet mit [[blooms-taxonomie]].

### Mode Continuum und Message Abundancy (Gibbons 2002)

Ein einmal gesagter Fachbegriff reicht nicht — besonders nicht bei DaZ. Gibbons beschreibt das *Mode Continuum* als Weg von mündlich-situationsgebunden ("mach das mal so") zu schriftlich-dekontextualisiert ("Dokumentiere die Methode im JavaDoc-Format"). *Message Abundancy* bedeutet: dieselbe Information auf verschiedenen sprachlichen Kanälen und Registern wiederholt anbieten, ohne zu infantilisieren.

**Praxis-Mikroaufgabe**: "Erkläre deinem Banknachbarn mündlich, was ein Foreign Key ist (30 Sek.) → zeichne es als ER-Ausschnitt → schreibe zwei Sätze im Ticket-Stil für einen Support-Fall → formuliere es als JavaDoc-Kommentar." Gleiche Information, steigende Dekontextualisierung — eines der stärksten Scaffolding-Prinzipien für Zweitsprachlernende.

### Wortspeicher, Glossar, Concept Map

Fachbegriffe verlieren ihre Bedeutung, wenn sie nicht sichtbar bleiben.

- **Wortspeicher** als permanente Wand oder Shared Doc pro Lernfeld, Spalten: *Begriff DE | Begriff EN | Erklärung in 1 Satz | Verwechslungsgefahr | Code-Snippet*. Beispielzeile: *Klasse | class | Bauplan für Objekte | ≠ Schulklasse, ≠ CSS-Klasse | `class Car {}`*.
- **Glossar** von Lernenden selbst gepflegt — starker Retrieval-Practice-Effekt.
- **Concept Map** am Ende jeder Lernsituation: Begriffe mit Pfeilen verbinden ("erbt von", "enthält", "implementiert"). Zwingt zur relationalen Verwendung der Fachsprache.

### Code-Switching bewusst didaktisieren

Der IT-Unterricht *muss* zwischen Deutsch und Englisch wechseln — jedes Keyword, jeder Methodenname, jede Fehlermeldung ist englisch. Naiver Umgang: mal so, mal so. Folge: DaZ-Lernende entwickeln Sprachscham und wissen nie, welches Register "richtig" ist.

- **Meta-Regel explizit:** "Keywords (`if`, `while`, `public`) und Bezeichner bleiben englisch. Konzepte werden deutsch besprochen. Fehlermeldungen werden gemeinsam übersetzt — niemals überlesen."
- **Übersetzungs-Ritual für Fehlermeldungen:** Vor jeder Hilfe bei einem Bug wird die Fehlermeldung laut übersetzt (`"NullPointerException at line 42"` → "Null-Zeiger-Ausnahme in Zeile 42, also: etwas ist leer, wo es nicht leer sein dürfte"). Verbindet direkt mit [[debugging-als-kompetenz]].
- **Parallel auf dem Tafelbild:** Immer `class` **Klasse** — verhindert, dass Lernende sie als getrennte Dinge abspeichern.
- **False Friends markieren:** "String" ≠ deutsche String, "Klasse" ≠ Schulklasse, "Objekt" ≠ Alltagsgegenstand, "Referenz" ≠ Arbeitgeberbrief.

### Sprachgerüste für Formulierungsaufgaben

Lernende wissen *was* sie sagen wollen, finden aber keine Satzstruktur — besonders in Prüfungen. Beese et al. (2014) beschreiben *Sprachgerüste* (sentence frames) als wirksamste Einzelhilfe für schriftliche Leistungen.

**Gerüste für typische IT-Genres:**
- *Code erklären:* "Die Funktion `___` nimmt `___` entgegen und gibt `___` zurück. Zuerst wird `___`, anschließend `___`. Wenn `___`, dann `___`."
- *Bug beschreiben (Ticket):* "Erwartet wurde `___`. Tatsächlich geschah `___`. Der Fehler tritt auf, wenn `___`. Ich habe bereits `___` ausprobiert."
- *Entscheidung begründen:* "Ich habe mich für `___` entschieden, weil `___`. Eine Alternative wäre `___` gewesen, aber `___`."

Gerüste werden zunehmend **ausgedünnt** (Fading, parallel zu [[scaffolding]]): erst Vollgerüst, dann nur Satzanfänge, dann nur Konnektoren, dann frei. Besonders wirksam für IHK-Fachgespräch und Projektantrag.

### Sprachsensible Aufgabenformulierung

Viele Aufgaben scheitern nicht am Inhalt, sondern an der verschachtelten Formulierung.

**Regeln (Leisen, Beese et al.):**
- **Ein Operator pro Satz** — kein "Erläutern *und* bewerten Sie".
- **Hauptsätze statt Schachtelsätze** — Nebensätze zu eigenen Sätzen machen.
- **Passiv vermeiden**, Aktiv verwenden.
- **Fachbegriffe im Kontext wiederholen** statt durch Pronomen zu ersetzen.
- **Operatoren der IHK-Prüfung standardisieren** — auch im Unterricht immer dieselben.

### SIOP — 8 Komponenten als Planungsraster

Echevarria et al.'s Sheltered Instruction Observation Protocol liefert ein evaluiertes Planungsraster: Lesson Preparation, Building Background, Comprehensible Input, Strategies, Interaction, Practice & Application, Lesson Delivery, Review & Assessment. **Praktisch**: Jede Lernsituation bekommt *zwei* Zielzeilen — *Fachziel* ("SuS können einen INNER JOIN formulieren") und *Sprachziel* ("SuS können den Unterschied zwischen INNER JOIN und LEFT JOIN in zwei Sätzen mit den Konnektoren *während/im Gegensatz zu* erklären"). Das Sprachziel ist prüfbares Outcome, nicht Schönmalerei.

### Vier-Fertigkeiten-Balance

IT-Unterricht ist überproportional schriftlich-rezeptiv. Die mündlichen Fertigkeiten — *über Code reden* — kommen zu kurz, sind aber im IHK-Fachgespräch und späteren Berufsalltag (Stand-ups, Code Reviews) zentral.

- **Think-Pair-Share mit Code-Snippets**: erst einzeln lesen, dann mit Partner mündlich erklären, dann im Plenum vorstellen.
- **Rubber-Duck-Debugging als Sprachübung**: Lernende erklären ihren Code laut — gleichzeitig Debugging- und Verbalisierungstraining.
- **Explain-like-I'm-five vs. Fachgespräch**: Dasselbe Konzept einmal in Alltagssprache (an einen Kunden) und einmal fachsprachlich (an einen Kollegen). Trainiert Register-Wechsel.
- **Audio-Lerntagebuch** statt schriftlichem für DaZ-Lernende mit Schreibhemmung.

## Durchführung

1. **Zielstruktur** jeder Lernsituation: zwei Ziele festlegen — Fachziel *und* Sprachziel. Verbindet mit [[lernsituationen-gestalten]].
2. **Wortspeicher** vor dem Inhalt einrichten (Pre-training im Sinne der [[cognitive-load-theory]]).
3. **Mehrkanalige Einführung** jedes Kernbegriffs (Mode Continuum).
4. **Explizite Operatoren** bei Aufgabenstellungen; Operatoren-Liste der IHK im Raum aushängen.
5. **Übersetzungs-Ritual** für Fehlermeldungen als Standard-Routine.
6. **Sprachgerüste** für produktive Aufgaben bereitstellen, dann faden.
7. **Formatives Check**: Mündliche Kurzerklärung eines Konzepts als Diagnose — schneller als schriftliche Klausur, macht Verständnis sichtbar.

## Voraussetzungen

- Lehrkraft-Bewusstsein für die sprachliche Dimension (kein "Sprache ist Deutsch-Lehrer-Sache")
- Zeit für Wortspeicher-Pflege (5 Min pro Stunde, kumulativ)
- Mehrkanalige Materialien (Text + Code + Grafik zum selben Konzept)
- Bereitschaft, Aufgabenstellungen zu vereinfachen, *ohne* inhaltlich zu reduzieren

## Varianten

- **Minimal** (5 Min/Stunde): Drei-Spalten-Wortspeicher, Übersetzungs-Ritual für Fehlermeldungen.
- **Integriert**: Jede Lernsituation mit Sprachziel, Sprachgerüste für produktive Aufgaben.
- **Vollständig nach SIOP**: Zusätzlich Pre-Teaching, explizites Strategien-Training, Review am Stundenende.

## Zeitbedarf

Aufwand für Wortspeicher-Einrichtung: einmalig 30-60 Min pro Lernfeld. Pro Unterrichtsstunde: 5-10 Min für explizite Sprachphasen. Sprachgerüste für eine Aufgabe: 15-30 Min Vorbereitung. Der Mehraufwand amortisiert sich schnell über bessere Textverständlichkeit und geringere Rückfragen.

## Bezug zur IT-Ausbildung

- **LF3 (Netzwerke):** "Subnetz", "Maske", "Gateway" sind bildungssprachliche Metaphern, die für DaZ ohne Verankerung bleiben. Wortspeicher mit Grafik und Analogie ("Maske = Stempel, der sagt, welcher Teil der Adresse das Netz ist"), dazu englisch *subnet mask*. `Destination host unreachable` gemeinsam übersetzen.
- **LF5 (SQL):** Extremfall von englischer Fachsprache mit deutschen Erklärungen. Dreispalten-Wortspeicher ist Pflicht: `JOIN` / "Verbund" / "zusammenführen zweier Tabellen über gemeinsame Spalten". Satzgerüste für Query-Erklärung.
- **LF6 (Serviceanfragen/Tickets):** Die sprachintensivste Lernsituation — Tickets sind ein eigenes Textgenre. Satzgerüste für Ticket-Kommunikation sind hier didaktisches Kernmaterial.
- **LF8 (REST APIs):** Dokumentationssprache *ist* Englisch (OpenAPI, Stack Overflow, RFC). Lesend Englisch, schreibend oft Deutsch — beide Register explizit trainieren.
- **LF10-12 (Projekt/IHK):** Projektantrag und Fachgespräch sind **Sprachprüfungen mit fachlichem Inhalt**. Ohne sprachsensibles Training steigt die Durchfallquote für DaZ-Lernende massiv. "Ich habe mich für MVC entschieden, weil …" ist ein Sprachakt, der geübt werden muss. Verbindet mit [[kompetenzfeststellung-programmierung]].

## Praktische Anwendung

Ein Agent oder eine Lehrkraft kann diese Prinzipien umsetzen:

1. **Jede Aufgabenstellung vor dem Druck** durch einen sprachsensiblen Filter laufen lassen: ein Operator pro Satz, Hauptsätze, Aktiv, keine unnötigen Synonyme. Ein LLM-Prompt kann das automatisieren.
2. **Wortspeicher als lebendes Dokument** (Shared Doc, Wiki) — Lernende tragen bei und lernen dabei die "Sprache der Community" (vgl. [[community-of-practice]]).
3. **Sprachgerüste als Widget** in interaktiven Lernumgebungen — Textfelder mit vorgegebenen Satzanfängen, Fading über Kapitel hinweg.
4. **Fehlermeldungs-Übersetzer**: Widget, das bei Klick auf eine Fehlermeldung zuerst die wörtliche Übersetzung und eine Alltags-Erklärung anbietet, bevor Lösungshilfen erscheinen.
5. **Peer-Übersetzung** als feste Routine: Vor jeder Diskussion übersetzt ein Peer die Kernbegriffe der letzten Stunde mündlich.

## Verwandte Konzepte

- [[scaffolding]] — Sprachgerüste und Message Abundancy sind *sprachliches* Scaffolding mit identischer Fading-Logik
- [[cognitive-load-theory]] — Schachtelsätze und ungeklärte Fachbegriffe sind extrinsische Last linguistischer Natur
- [[low-floor-high-ceiling]] — Ein niedriger Floor ist immer auch ein sprachlich niedriger Floor
- [[affektive-dimensionen]] — Sprachscham und Belonging-Uncertainty hängen direkt zusammen; Sprachsensibilität ist Dropout-Prävention
- [[worked-examples]] — Worked Examples sollten sprachsensibel kommentiert sein (Inline-Kommentare, Glossar am Rand)
- [[debugging-als-kompetenz]] — Fehlermeldungs-Übersetzung verbindet beide Kompetenzen
- [[lernsituationen-gestalten]] — SIOP-Doppelziel-Struktur als Template-Ergänzung
- [[blooms-taxonomie]] — IHK-Operatoren sind Blooms-Taxonomie angewandt
- [[kompetenzfeststellung-programmierung]] — Fachgespräch und Projektantrag sind Sprachprüfungen
- [[formatives-assessment]] — mündliche Kurzerklärungen als formative Diagnose

## Quellen

- Leisen, J. (2010). *Handbuch Sprachförderung im Fach — Sprachsensibler Fachunterricht in der Praxis*. Varus.
- Gibbons, P. (2002). *Scaffolding Language, Scaffolding Learning: Teaching Second Language Learners in the Mainstream Classroom*. Heinemann.
- Echevarria, J., Vogt, M. E., & Short, D. J. (2017). *Making Content Comprehensible for English Learners: The SIOP Model* (5th ed.). Pearson.
- Coyle, D., Hood, P., & Marsh, D. (2010). *CLIL: Content and Language Integrated Learning*. Cambridge University Press.
- Beese, M., Benholz, C., Chlosta, C., Gürsoy, E., Hinrichs, B., Niederhaus, C., & Oleschko, S. (2014). *Sprachbildung in allen Fächern*. Klett-Langenscheidt.
- Thürmann, E., Vollmer, H., & Pieper, I. (2010). *Language(s) of Schooling: Focusing on vulnerable learners*. Council of Europe.
- Vollmer, H. J., & Thürmann, E. (2013). Sprachbildung und Bildungssprache als Aufgabe aller Fächer. In M. Becker-Mrotzek et al. (Hrsg.), *Sprache im Fach* (S. 41-57). Waxmann.
