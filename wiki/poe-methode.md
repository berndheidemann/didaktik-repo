---
title: Predict-Observe-Explain (POE)
type: methode
tags: [predict-observe-explain, misconception, konzeptwechsel, white-gunstone, fidp-infrastruktur, diagnose]
related:
  - "[[primm-methode]]"
  - "[[misconception-analyse]]"
  - "[[productive-failure]]"
  - "[[debugging-als-kompetenz]]"
  - "[[threshold-concepts]]"
  - "[[formatives-assessment]]"
  - "[[anchored-instruction]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[fehlerkultur-im-unterricht]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, analysieren, bewerten]
sozialform: [einzelarbeit, partner, plenum]
created: 2026-04-09
updated: 2026-04-09
summary: >
  Generische Drei-Phasen-Methode von White & Gunstone (1992) aus der
  Physikdidaktik: Lernende sagen das Verhalten eines Systems vorher,
  beobachten das tatsächliche Ergebnis und erklären die Diskrepanz.
  Deckt Misconceptions auf und löst Conceptual Change aus —
  funktioniert für jede IT-Domäne, in der Systeme beobachtbar reagieren.
---

# Predict-Observe-Explain (POE)

## Kernidee

POE ist eine einfache, aber harte methodische Drei-Schritt-Sequenz: Lernende formulieren eine **schriftliche Vorhersage** zu einem Systemverhalten, beobachten dann das tatsächliche Ergebnis und müssen die Diskrepanz erklären. Der didaktische Hebel ist die *verpflichtende* Prediction — sie erzwingt Commitment und macht eine Diskrepanz zum persönlichen kognitiven Konflikt, nicht zu einer abstrakten Korrektur. White & Gunstone (1992) entwickelten das Format in der Physikdidaktik, um Misconceptions zuverlässig aufzudecken und Conceptual Change auszulösen. [[primm-methode]] ist eine Code-spezialisierte Variante; POE selbst funktioniert für jede Domäne, in der ein System beobachtbar reagiert.

## Beschreibung

### Die drei Phasen

1. **Predict** — Lernende formulieren *schriftlich* eine Vorhersage und begründen sie. Ohne Schriftlichkeit wandert die Prediction und niemand erkennt hinterher die Diskrepanz. Reichen als Medium: Klebezettel, Textfeld im Widget, Whiteboard-Spalte, Stimmkarte.
2. **Observe** — Die Situation wird ausgeführt. Die Beobachtung muss direkt sein (Live-Demo, Live-Tool, Wireshark-Capture, `curl`-Output), nicht erzählt. Video geht nur als Notlösung.
3. **Explain** — Die Lernenden erklären, *warum* ihre Vorhersage nicht gestimmt hat (oder warum sie gestimmt hat). Die Erklärung ist der eigentliche Lernmoment — ohne sie bleibt POE ein Überraschungs-Effekt ohne Verankerung.

### Der didaktische Wirkmechanismus

Eine falsche Vorhersage, die vor Zeug:innen schriftlich fixiert wurde, ist keine abstrakte Information mehr — sie ist die eigene Aussage, die jetzt revidiert werden muss. Das macht Conceptual Change *persönlich bedeutsam*. Vosniadou (2013) und Chi (2008) zeigen (vgl. [[misconception-analyse]]), dass robuste Misconceptions nicht durch Wiederholung der korrekten Information aufgelöst werden — es braucht einen Auslöser, der das falsche Modell selbst in Frage stellt. POE ist genau dieser Auslöser.

### Abgrenzung zu PRIMM

[[primm-methode]] (Sentance et al. 2019) übernimmt die Predict-Idee aus POE, erweitert sie aber um Investigate/Modify/Make und ist auf *Code* optimiert. POE bleibt die generische Form — Kurzzyklus, ohne Modify/Make, einsetzbar auch dort, wo kein Quelltext im Spiel ist. Für FIDP-Themen (Infrastruktur, Security, Datenbank-Verhalten, Netzwerk) ist POE oft das passendere Format, weil die Kernaufgabe analytisch-beobachtend ist, nicht produktiv-schreibend.

## Durchführung

### Als 20-Minuten-Einstieg

POE eignet sich als Hook am Anfang jeder neuen Einheit:

- **5 Min Predict** — Frage an die Klasse, schriftliche Vorhersage mit einer kurzen Begründung
- **5 Min Observe** — Die Situation ausführen, mit allen gleichzeitig
- **10 Min Explain** — Diskussion der Diskrepanzen, erst im Paar, dann im Plenum

Zyklus kurz, Einstiegshürde niedrig, diagnostischer Ertrag hoch: die Lehrkraft sieht unmittelbar, welche Misconceptions in der Klasse dominieren, und kann den Rest der Einheit darauf ausrichten.

### Als Widget in Lernumgebungen

POE lässt sich gut als Widget bauen: ein **Predict-Lock** — der Run/Observe-Button ist erst freigeschaltet, nachdem die Vorhersage in ein Textfeld getippt wurde. Nach dem Observe-Event werden Vorhersage und Ergebnis nebeneinander angezeigt, und ein Erklärungsfeld verlangt die Begründung. Das Predict-Lock ist der entscheidende Mechanismus — ohne ihn klicken Lernende einfach auf „Run" und überspringen die eigentliche Lehre.

## Voraussetzungen

- Das System muss reproduzierbar beobachtbar sein (Live-Tool, sandbox, REPL, Wireshark)
- Schriftlichkeit der Prediction ist nicht optional
- Lehrkraft muss Misconception-bereit sein — falsche Vorhersagen sind das *Lernmaterial*, nicht das Problem
- Fehlerkultur in der Klasse ([[fehlerkultur-im-unterricht]]): Wer Angst vor falschen Antworten hat, prognostiziert vorsichtig und verfehlt den Zweck

## Varianten

- **Peer-POE:** Im Paar vorhersagen, dann beobachten, dann gegenseitig erklären. Die Artikulation gegenüber einem Peer ist oft schärfer als die vor sich selbst.
- **Group Predict-Vote:** Vor der Beobachtung stimmt die Klasse über die Vorhersage ab (Stimmkarten, Mentimeter). Sichtbare Verteilung macht die Dominanz einer Misconception klasseweit sichtbar.
- **POE als Concept Inventory:** Eine Serie von 5-10 POE-Aufgaben am Anfang einer Einheit diagnostiziert Misconception-Muster der ganzen Klasse. Verbindet sich mit [[misconception-analyse]].

## Zeitbedarf

- **Einzelner POE-Zyklus:** 15-25 Min, abhängig von der Erklärungs-Tiefe
- **Als diagnostisches Inventory mit 5 Aufgaben:** 45-60 Min (eine Doppelstunde)

## Bezug zur IT-Ausbildung

POE ist in der IT-Berufsausbildung keineswegs auf Code beschränkt. Überall, wo ein System beobachtbar reagiert und Lernende vorhersagbare Modelle haben (oder sollten), funktioniert es:

| Kontext | Predict-Frage | Observe | Typische Misconception, die aufbricht |
|---|---|---|---|
| **Netzwerk** | „Ich ziehe dieses Kabel — welche Geräte verlieren Konnektivität?" | Ping/Traceroute live | Flache Topologie-Annahme, STP/VLAN übersehen |
| **DNS** | „Welche IP liefert `dig example.com` zurück, wenn ich im selben Netz einen lokalen Override setze?" | Auflösung beobachten | Cache-Modell fehlt, Resolver-Reihenfolge unklar |
| **HTTP** | „Welchen Status liefert der Server, wenn ich POST auf eine Read-only-Route sende?" | curl-Output | Unterschied 4xx vs. 5xx, Client-/Server-Verantwortung |
| **Security** | „Was sieht Wireshark, wenn ich mich über HTTP vs. HTTPS einlogge?" | Paket-Capture | „Passwort ist doch verschlüsselt" — Transport vs. At-Rest |
| **DB-Transaktionen** | „Was passiert bei zwei parallelen Updates derselben Zeile ohne Lock?" | Parallel ausführen | Synchronitäts-Annahme, Race Conditions unsichtbar |
| **Dateisystem** | „Ich lösche eine geöffnete Datei — können Prozesse noch lesen?" | Live-Test in zwei Shells | Unix-Inode vs. Windows-Lock-Modell |
| **Prozess-Scheduling** | „Was passiert mit meinen CPU-bound-Prozessen, wenn I/O-Last dazukommt?" | `top` / `htop` beobachten | Round-Robin vs. Multilevel-Feedback |

### Warum gerade für FIDP

FIDP (Daten- und Prozessanalyse) ist kein Greenfield-Programmierberuf — die Kernaufgaben sind analytisch-beobachtend: Datenverhalten verstehen, Query-Performance einschätzen, Pipeline-Fehler diagnostizieren. POE ist für diese Aufgabenart das natürliche Format. Für FIAE (Anwendungsentwicklung) bleibt [[primm-methode]] oft passender, weil dort Code-Arbeit im Mittelpunkt steht.

## Praktische Anwendung

1. **POE als Hook** — 20-Minuten-Einstieg zu Beginn jeder neuen Einheit. Kostet wenig, diagnostiziert viel.
2. **Predict-Lock im Widget** — Run-Button erst nach schriftlicher Prediction freischalten. Verhindert das „ich klick einfach"-Verhalten.
3. **Misconception-Katalog pro Lernfeld** — welche Vorhersagen sind vorhersehbar falsch? Aus wiederholten POE-Zyklen entsteht eine Liste, die beim Aufgaben-Design zentral ist.
4. **POE mit [[anchored-instruction]] verbinden** — die Fiktivfirma liefert den Kontext, POE liefert die Eingangsfrage pro neuer Facette.
5. **Keine Moralpredigt bei falschen Vorhersagen** — „Interessant, das ist ein häufiger Denkweg" statt „Falsch". Die falsche Prediction *ist* das Lernmaterial, nicht das Problem.
6. **Explain-Phase nicht überspringen** — das ist der Kern. Ohne Erklärung bleibt POE ein Überraschungs-Effekt ohne Lerngewinn.

## Verwandte Konzepte

- [[primm-methode]] — Code-spezialisierte Variante mit zusätzlichen Investigate/Modify/Make-Phasen
- [[misconception-analyse]] — POE ist ein Kerninstrument der dort beschriebenen Diagnose-Methodik
- [[productive-failure]] — Falsche Vorhersage vor Erklärung = Productive Failure im Kleinstformat
- [[debugging-als-kompetenz]] — POE ist die methodische Keimform des hypothesengetriebenen Debuggings
- [[threshold-concepts]] — POE deckt häufig genau die Schwellenkonzepte auf, an denen Novizen scheitern
- [[formatives-assessment]] — POE liefert formatives Signal ohne zusätzlichen Assessment-Aufwand
- [[anchored-instruction]] — POE als Eingangsfrage pro neuer Facette des narrativen Ankers
- [[interaktive-lernumgebungen]] — Predict-Lock als wiederverwendbares Widget-Pattern

## Quellen

- White, R. & Gunstone, R. (1992). *Probing Understanding*. Falmer Press.
- Kearney, M. (2004). Classroom Use of Multimedia-Supported Predict-Observe-Explain Tasks in a Social Constructivist Learning Environment. *Research in Science Education*, 34(4), 427-453.
- Liew, C. W. & Treagust, D. F. (1998). The Effectiveness of Predict-Observe-Explain Tasks in Diagnosing Students' Understanding of Science. *Research in Science Education Conference (AARE)*.
- Sentance, S., Waite, J. & Kallia, M. (2019). Teaching computer programming with PRIMM: a sociocultural perspective. *Computer Science Education*, 29(2-3), 136-176.
