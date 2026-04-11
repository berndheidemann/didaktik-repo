---
title: Fehlerkultur im Unterricht
type: methode
tags: [fehlerkultur, psychologische-sicherheit, klassenklima, error-climate, lehrerhandeln, modeling, blameless, referenz]
related:
  - "[[affektive-dimensionen]]"
  - "[[debugging-als-kompetenz]]"
  - "[[productive-failure]]"
  - "[[cognitive-apprenticeship]]"
  - "[[code-review-unterricht]]"
  - "[[pair-programming-unterricht]]"
  - "[[formatives-assessment]]"
  - "[[kooperatives-lernen]]"
  - "[[misconception-analyse]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[poe-methode]]"
  - "[[live-coding-lehrmethode]]"
  - "[[interactive-fiction-twine]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
created: 2026-04-08
updated: 2026-04-08
summary: >
  Fehlerkultur als soziale und kulturelle Ebene des Fehlerumgangs — Error
  Climate (Steuer et al.) und Psychological Safety (Edmondson) operationalisiert
  für den Klassenraum. Was die Lehrkraft aktiv tut, welche Normen gesetzt werden
  und warum IT-Unterricht besonders sensibel ist.
---

# Fehlerkultur im Unterricht

## Kernidee

Fehlerkultur ist nicht, was einzelne Lernende über ihre eigenen Fehler denken (das ist Growth Mindset, vgl. [[affektive-dimensionen]]), sondern was in einem Klassenraum als Gruppe **normal, sagbar und konsequenzlos** ist. Steuer, Rosentritt-Brunn & Dresel (2013) operationalisieren dieses Klima mit acht messbaren Dimensionen; Edmondsons "Psychological Safety" liefert die zugrundeliegende Gruppentheorie aus der Organisationsforschung. Eine Lehrkraft stellt dieses Klima aktiv her — durch eigenes Modellieren, explizite Normen und strukturelle Routinen. Der Unterschied ist im IT-Unterricht besonders scharf, weil Fehler dort binär sichtbar werden: der Code läuft oder nicht.

## Beschreibung

### Error Climate nach Steuer et al. — die 8 Dimensionen

Steuer, Rosentritt-Brunn & Dresel (2013) entwickelten den Perceived Error Climate-Fragebogen im Mathematikunterricht (9./10. Klasse, N=1.116). Fehlerklima ist keine Einzelvariable, sondern ein Bündel unterscheidbarer Dimensionen, die korrelieren, aber trennbar sind:

1. **Error Tolerance by the Teacher** — Werden Fehler sichtbar akzeptiert, nicht nur geduldet?
2. **Irrelevance of Errors for Assessment** — Ist formatives vom summativen Feedback getrennt? Werden Fehler in Lernphasen benotet?
3. **Teacher Support Following Errors** — Bekommt man nach einem Fehler echte Hilfe oder nur die richtige Antwort?
4. **Absence of Negative Teacher Reactions** — Kein Augenrollen, Seufzen, Sarkasmus, Ironie, Gruppenspott.
5. **Absence of Negative Classmate Reactions** — Lachen, Augenrollen, Tuscheln wird nicht toleriert.
6. **Taking the Error Risk** — Lernende trauen sich, sich auch bei Unsicherheit zu melden.
7. **Analysis of Errors** — Fehler werden als Denkprozess seziert, nicht als Pannen korrigiert.
8. **Functionality of Errors for Learning** — Fehler werden explizit als Lerngelegenheit gerahmt ("Das ist jetzt interessant, genau hier lernen wir was").

Die Dimensionen korrelieren positiv mit Mastery Goals, intrinsischer Motivation und Noten; **Dimension 8 (Functionality)** ist in Studien der stärkste Prädiktor für adaptives Error Handling (Tulis 2013).

**Wichtig:** Die Dimensionen sind *wahrgenommenes* Klima — was die Lehrkraft meint, zählt weniger als was bei den Lernenden ankommt.

### Psychological Safety (Edmondson)

Amy Edmondson (1999) definiert Psychological Safety als "shared belief held by members of a team that the team is safe for interpersonal risk-taking" — also die kollektive Überzeugung, dass man sich melden, widersprechen, eine dumme Frage stellen oder einen Fehler zugeben kann, **ohne sozial bestraft zu werden**.

Ihre ursprüngliche Krankenhaus-Studie zeigte eine kontraintuitive Pointe: **Bessere Teams meldeten mehr Medikationsfehler**, nicht weniger — nicht weil sie schlechter arbeiteten, sondern weil sie sich trauten, Fehler zu benennen.

**Google's Project Aristotle** (2012-2015, 180 Teams) identifizierte Psychological Safety als stärksten Einzelprädiktor für Teamperformance — stärker als Zusammensetzung, Seniorität oder individuelle Intelligenz (Duhigg 2016). Im Klassenraum: Eine Klasse mit hoher psychological safety meldet mehr Verständnisprobleme, stellt mehr "blöde" Fragen, zeigt mehr falsche Zwischenergebnisse — und lernt dadurch mehr. **Eine leise, höfliche Klasse ist in den meisten Fällen kein gutes Zeichen**, sondern eines für Risikovermeidung.

**Abgrenzung:** Psychological Safety ist nicht "nett sein" und nicht Abwesenheit von Standards. Die produktive "Learning Zone" entsteht erst, wenn Psychological Safety *und* High Standards hoch sind. Nur Safety ohne Standards = Comfort Zone; nur Standards ohne Safety = Anxiety Zone.

### Konkrete Lehrerhandlungen

1. **Eigene Fehler live zugeben und feiern** — Beim Live-Coding Tippfehler nicht heimlich korrigieren, sondern laut kommentieren: "Ah, Klassiker, ich hab hier `==` und `=` verwechselt." Modeling im Sinne von [[cognitive-apprenticeship]].
2. **"Favorite Mistake" als feste Routine** (Leah Alcala): Bei Aufgabenbesprechung einen *falschen* Lösungsweg anonymisiert zeigen und die Klasse rekonstruieren lassen, *welcher Gedanke* zu diesem Fehler geführt hat.
3. **Keine negative Reaktion** — auch nicht leise. Kein Seufzen, "Nein, das hatten wir doch gerade...", kein Augenrollen. Neutraler, neugieriger Tonfall: "Erzähl mir, wie du darauf gekommen bist."
4. **Warte-Zeit nach Fragen verlängern** — mindestens 5-7 Sekunden statt 1-2.
5. **Fehler explizit trennen von Benotung** — "In dieser Phase wird nichts bewertet" muss wahr sein und wiederholt ausgesprochen werden.
6. **Fehler öffentlich analysieren, nicht verstecken** — anonymisierte falsche Lösungen an die Wand werfen und sezieren (niemals mit Namen).
7. **Sprache umstellen** — Statt "Falsch" sagen: "Interessant — das ist ein häufiger Denkweg, schauen wir, wo er bricht." Statt "Versteht das jeder?" (fordert auf, kein Unverständnis zu zeigen): "Welche Stelle würdet ihr nochmal erklärt haben wollen?"
8. **Call-outs gezielt einsetzen** — Lernende, die einen produktiven Irrweg gegangen sind, als Beispiel würdigen: "Julia hat hier einen Weg probiert, den ich selbst beim ersten Mal gegangen bin — lass uns schauen, warum der nicht trägt."
9. **Peer-Spott strukturell unterbinden** — Ein einzelnes Lachen nach einer falschen Antwort ungeschlichtet durchgehen lassen, zerstört Dimension 5. Sofort, ruhig, einmalig ansprechen.
10. **Reflexionsroutine am Stundenende** — "Was war heute der produktivste Fehler?" als wiederkehrende Frage.

### Classroom Norms setzen

Explizite Normen wirken nur, wenn sie (a) in der ersten Woche etabliert, (b) mit der Klasse ausgehandelt statt dekretiert und (c) sichtbar gemacht werden. Bewährte Normen:

- "Fragen sind willkommen — besonders solche, bei denen wir unsicher sind."
- "Wir zeigen unseren Code und unsere Zwischenstände, auch wenn sie nicht laufen."
- "Wir lachen nicht über Fehler. Wir lachen *mit* Fehlern."
- "Jeder Fehler ist ein Datenpunkt — keiner ist ein Charakterurteil."
- "Wenn jemand etwas erklärt, was ich schon weiß, ist das keine verschwendete Zeit."

**Einführung:** Keine Moralpredigt. Stattdessen: in der zweiten Stunde eine eigene Fehlersequenz beim Live-Coding inszenieren, anschließend fragen "Was wäre passiert, wenn ich jetzt rot geworden wäre und 'vergesst das' gesagt hätte?" Die Klasse formuliert die Normen selbst. Das Plakat kommt danach, nicht vorher.

### Reasons Fehler-Taxonomie

Reason (1990) unterscheidet drei Fehler-Arten, die *unterschiedliche* Fixes brauchen:

- **Slip** (richtige Absicht, falsche Ausführung) — Tippfehler, vergessene Klammer. Braucht Aufmerksamkeit, nicht Umlernen.
- **Lapse** (Vergessen eines Schritts) — Braucht Checklisten, externe Struktur.
- **Mistake** (falsches mentales Modell, strukturell falsche Entscheidung) — Braucht Umlernen, Misconception-Arbeit (vgl. [[misconception-analyse]]).

Fehlerkultur heißt unter anderem, den Unterschied gemeinsam zu benennen. Ein Azubi, der einen Slip macht, braucht keine Grundsatz-Diskussion über OOP.

## Durchführung

1. **Selbst modellieren** — in der ersten Live-Coding-Sitzung absichtlich einen Fehler produzieren und laut den Debugging-Prozess verbalisieren.
2. **Klassennormen aushandeln** in den ersten zwei Wochen, Plakat sichtbar aufhängen.
3. **"Favorite Mistake" als wöchentliche Routine** bei Aufgabenbesprechungen etablieren.
4. **Peer-Spott einmalig ansprechen**, wenn er auftritt — ruhig, nicht moralisierend.
5. **Bewertungsphasen klar trennen** und ankündigen.
6. **Reason-Taxonomie gemeinsam erlernen** — nach ein paar Wochen "Slip/Lapse/Mistake" als gemeinsames Vokabular nutzen.
7. **Blameless Post-Mortems** am Ende gescheiterter Projekte (vgl. SRE-Praxis).

## Voraussetzungen

- Bereitschaft der Lehrkraft, eigene Fehler öffentlich zu machen
- Ehrliche Trennung von formativem und summativem Assessment
- Konsistenz über Wochen/Monate — Fehlerkultur ist keine Einmalmaßnahme
- Rückhalt durch Schulleitung, wenn Lernende sich über sarkastische Kollegen beschweren

## Varianten

- **Minimal:** "Favorite Mistake" und Sprach-Umstellung ("interessant" statt "falsch").
- **Mittel:** Plus explizite Klassennormen und Live-Coding mit bewussten Fehlern.
- **Voll:** Plus Blameless Post-Mortems nach Projekten, Reason-Taxonomie als Klassen-Vokabular, regelmäßige Reflexion.

## Zeitbedarf

Einführung in den ersten 2 Wochen: 3-4 kleine Aktivitäten à 10-15 Min. Laufend: 5 Min "Favorite Mistake" pro Woche, Reflexionsfrage am Stundenende. Der größte Aufwand ist nicht Zeit, sondern Konsistenz — einmaliges Sarkasmus-Ausrutschen reicht, um Wochen Arbeit zu zerstören.

## Bezug zur IT-Ausbildung

IT ist für Fehlerkultur ein Sonderfall, weil Fehler dort **binär und öffentlich sichtbar** sind: Code kompiliert oder nicht, Tests sind grün oder rot. Das verstärkt Scham, weil Fehler nicht verhandelbar sind — und macht eine bewusste Fehlerkultur besonders wichtig.

- **Live-Coding vor der Klasse** (vgl. [[cognitive-apprenticeship]], Modeling): Lehrkraft produziert absichtlich und versehentlich Fehler und verbalisiert den Debugging-Prozess. Wirkt nur, wenn die Lehrkraft nicht vorher den fertigen Code abschreibt.
- **Debugging-Routine** (vgl. [[debugging-als-kompetenz]]): Hypothesengetriebenes Debugging *ist* explizite Fehlerarbeit.
- **Pair Programming** (vgl. [[pair-programming-unterricht]]): Fehler werden im Paar sofort sichtbar und damit sozial normalisiert. Das Paar ist die kleinste funktionierende Peer-Safety-Zone.
- **Code Reviews** (vgl. [[code-review-unterricht]]): Reviewing-Kultur als direkte Übung von Psychological Safety. Rubrics verhindern, dass Reviews zu persönlichen Urteilen werden. Entscheidend: Review-of-Review mit Kriterium "war das Feedback konstruktiv?" — bestraft harsche Reviews systemisch.
- **Blameless Post-Mortems** (SRE/DevOps): Direkt aus der Berufspraxis (Google SRE Book, Etsy). Nach gescheiterten Projekten: *Was ist passiert? Warum wirkte es zum Zeitpunkt der Entscheidung sinnvoll? Was lernen wir?* Direkt berufsrelevant.
- **Van Dyck et al. (2005)** zeigen: Organisationen mit expliziter Error Management Culture haben signifikant höhere Profitabilität. Das ist ein direkter Ausbildungsinhalt, kein Nebenthema.

## Praktische Anwendung

1. **Eigene erste Lernsequenz inszenieren** — kein "perfekter Unterricht" am Anfang, sondern modellhaftes Fehler-Machen.
2. **Klassennormen mit der Klasse aushandeln**, nicht dekretieren.
3. **Wöchentliche "Favorite Mistake"-Routine** einführen — nicht optional.
4. **Anti-Pattern hart unterbinden**: Seufzen, Sarkasmus, "Das hatten wir doch" — eigene Disziplin.
5. **Nach 6-8 Wochen messen**: Fragen wie "Melde ich mich, wenn ich unsicher bin?" anonym abfragen — Proxy für Psychological Safety.

## Anti-Patterns

- **"Das hatten wir doch gerade erst"** — signalisiert, dass Vergessen ein Charakterfehler ist.
- **Öffentliche Rangordnung** — Leaderboards, "Wer ist fertig?", Bestenlisten.
- **Kalte rhetorische Fragen** — "Wer kann mir sagen, was *hier* schon wieder falsch ist?"
- **Mixed Signals bei Bewertung** — "Das ist nur zum Üben" und eine Woche später in der Klausur.
- **Nur starke Lernende aufrufen** — vermittelt, dass Fehler keinen Platz haben.
- **Eigene Fehler verbergen** — sendet das Signal, dass Expert:innen keine machen.
- **Sarkasmus / Ironie** — wird systematisch als Ablehnung dekodiert.
- **"Wir korrigieren das jetzt mal eben"** — wegwischen statt analysieren.

## Verwandte Konzepte

- [[affektive-dimensionen]] — individuelle Growth-Mindset-Ebene; Fehlerkultur ist die Klassen-/Gruppen-Ebene
- [[debugging-als-kompetenz]] — technisch-kognitive Ebene des Fehlerumgangs; Fehlerkultur als soziale Voraussetzung
- [[productive-failure]] — Kapur-Designentscheidung; funktioniert nur in einer Klasse, in der Scheitern nicht peinlich ist
- [[cognitive-apprenticeship]] — Modeling (Live-Coding mit Fehlern) als Umsetzung durch die Lehrkraft
- [[code-review-unterricht]] — Reviewing-Kultur als angewandte Psychological Safety
- [[pair-programming-unterricht]] — Paar als kleinste Safety-Zone
- [[formatives-assessment]] — die Trennung formatives/summatives Assessment ist Dimension 2
- [[kooperatives-lernen]] — soziale Grundkompetenzen als Voraussetzung
- [[misconception-analyse]] — Mistakes (Reason-Taxonomie) sind Misconceptions
- [[direct-manipulation-lernumgebungen]] — Reversibilität (Undo) ist praktizierte Fehlerkultur im Interface

## Quellen

- Steuer, G., Rosentritt-Brunn, G., & Dresel, M. (2013). Dealing with errors in mathematics classrooms: Structure and relevance of perceived error climate. *Contemporary Educational Psychology*, 38(3), 196-210.
- Edmondson, A. C. (1999). Psychological safety and learning behavior in work teams. *Administrative Science Quarterly*, 44(2), 350-383.
- Edmondson, A. C. (2018). *The Fearless Organization: Creating Psychological Safety in the Workplace for Learning, Innovation, and Growth*. Wiley.
- Tulis, M. (2013). Error management behavior in classrooms: Teachers' responses to student mistakes. *Learning and Instruction*, 27, 65-79.
- Van Dyck, C., Frese, M., Baer, M., & Sonnentag, S. (2005). Organizational error management culture and its impact on performance. *Journal of Applied Psychology*, 90(6), 1228-1240.
- Reason, J. (1990). *Human Error*. Cambridge University Press.
- Duhigg, C. (2016, February 25). What Google learned from its quest to build the perfect team. *The New York Times Magazine*.
