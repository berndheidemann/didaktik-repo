---
title: Interactive Fiction / Twine für Lernszenarien
type: methode
tags: [interactive-fiction, twine, branching-narrative, szenario, entscheidung, it-security, dsgvo, storytelling]
related:
  - "[[anchored-instruction]]"
  - "[[immersive-simulationen]]"
  - "[[gamification-it-unterricht]]"
  - "[[engagement-theory]]"
  - "[[fehlerkultur-im-unterricht]]"
  - "[[datenschutz-lernumgebungen]]"
  - "[[lernsituationen-gestalten]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[productive-failure]]"
  - "[[intrinsic-integration]]"
  - "[[computational-action]]"
  - "[[self-determination-theory]]"
  - "[[kursarchitektur-lernumgebungen]]"
  - "[[affektive-dimensionen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
sozialform: [einzelarbeit, partner, gruppe]
created: 2026-04-11
updated: 2026-04-11
summary: >
  Choice-based Branching Narratives mit Twine, Ink oder Inklewriter als
  didaktisches Format: Schüler erleben Entscheidungen in Phishing-,
  DSGVO-, Incident-Response- und Eskalationsszenarien statt sie abzufragen.
  Konsequenzen werden spürbar, Fehlerpfade lehrreich. Twine publiziert eine
  einzelne HTML-Datei — DSGVO-konform und offline lauffähig.
---

## Kernidee

Statt Wissen über Datenschutz, Security oder Berufsethik abzufragen, lässt man Schüler in einem Text-Spiel *erleben*, wie sich Entscheidungen auswirken. Eine Mail kommt rein — *klicken oder nicht?* Ein Kunde fordert, alle Kundendaten auf einen USB-Stick zu exportieren — *ausführen oder nachhaken?* Ein Kollege bittet um das Admin-Passwort "nur kurz" — *geben, verweigern, eskalieren?*

Interactive Fiction (IF) stellt genau solche Entscheidungssituationen als verzweigte Erzählung dar. Jede Wahl führt in einen anderen Abschnitt, Konsequenzen werden sichtbar, und Schüler können denselben Fall mehrmals durchspielen, um Alternativen zu vergleichen. Das Format verbindet [[anchored-instruction]] (Problem steckt im Narrativ), consequential Feedback (Entscheidung → Folge) und [[productive-failure]] (Fehlpfade führen zu Reflexion).

## Beschreibung

**Was ist Twine.** Twine ist ein Open-Source-Werkzeug für choice-based Interactive Fiction, 2009 von Chris Klimas entwickelt. Der Editor läuft im Browser (twinery.org) oder als Desktop-App. Man schreibt Passagen (Text-Blöcke) und verknüpft sie über Links `[[Antwort->nächstePassage]]`. Fertig exportiert Twine das Spiel als **eine einzelne HTML-Datei**, die offline im Browser läuft — kein Server, keine Installation, keine Registrierung. Für deutsche Berufsschulen ist das der entscheidende Vorteil: keine Datenübertragung, keine DSGVO-Hürden, keine Schul-IT-Diskussionen. Die HTML-Datei liegt auf einer Schulweb-Seite, im Moodle oder auf einem USB-Stick.

**Story Formats.** Twine bietet mehrere "Story Formats" (Runtime-Engines mit eigener Makro-Syntax):

- **Harlowe** (Default) — anfängerfreundlich, gut lesbare Syntax, ideal für Einstieg und Lehrkräfte ohne Programmierhintergrund.
- **SugarCube** — mächtiger, vieles möglich (Variablen, Speicherstände, komplexe Logik), aber mehr Einarbeitung nötig. Empfohlen ab mittlerer Komplexität.
- **Chapbook** — neueres Format mit eingebauten Inserts/Modifiers für häufige Autorenaufgaben.

**Alternativen zu Twine.** Für eher programmierorientierte Klassen ist **Ink** von Inkle Studios (Macher von *80 Days*) interessant — eine Markup-Sprache für Branching-Narrative, die sich gut in JavaScript/Unity einbinden lässt (Inkle Studios, 2016). **Inklewriter** ist ein einfaches Webtool zum Skizzieren von Baumstrukturen.

**Warum das Format wirkt.**

- **Serious Games Meta-Analyse.** Wouters et al. (2013) fanden über 77 Studien (N = 5.547) *d* = 0.29 für Lernen und *d* = 0.36 für Retention gegenüber konventionellem Unterricht — besonders stark, wenn das Spiel mit Instruktion kombiniert und in Gruppen gespielt wird.
- **Simulation-based Learning.** Chernikova et al. (2020, *RER*) zeigen "large positive overall effects" von Simulationen auf komplexe Kompetenzen — Wirkung steigt durch Reflexionsphasen und Scaffolding.
- **Consequential Feedback.** Bransford & Schwartz (1999) argumentieren: Lernumgebungen sollen "preparation for future learning" fördern — genau das leistet eine Entscheidung, deren Konsequenz man spürt und mit Alternativen vergleicht.
- **Phishing-Training.** Ho et al. (2025, IEEE S&P) finden in einer 8-monatigen RCT-Studie mit ~19.500 Mitarbeitenden, dass anti-phishing training in der gängigen Form weitgehend wirkungslos ist — 75 % der Trainingsinhalte werden < 60 s aufgerufen. Die Schlussfolgerung der Autoren ist breit: *embedded training* in seiner aktuellen Praxis liefert keinen praktisch relevanten Schutz. Dass *Debrief und Reflexion* der entscheidende fehlende Wirkfaktor sind, ist eine plausible didaktische Eigeninterpretation, aber kein Paper-Befund.

## Durchführung

Ein einsatzfähiges Szenario lässt sich in **2 Zeitstunden** bauen. Ablauf:

**1. Ziel & Kernentscheidung festlegen (15 Min).**
Welche Handlungskompetenz soll trainiert werden? Eine Lernsituation im Sinne von [[lernsituationen-gestalten]] braucht einen konkreten Auftrag, eine Rolle und ein Dilemma. Formuliere *eine* Leitfrage: *"Was tue ich, wenn …?"*

**2. Story-Map skizzieren (20 Min).**
Auf Papier oder in draw.io: Start-Knoten, 2–4 Entscheidungspunkte, pro Entscheidung 2–3 Optionen, Konsequenz-Knoten. Faustregel nach Cathy Moore: *nicht breit, sondern tief* — lieber drei realistische Optionen mit tiefer Konsequenz als zehn oberflächliche. Moore (2017) empfiehlt zudem, die "falsche" Wahl nicht nur als Sackgasse zu zeigen, sondern als lernreichen Umweg: man sieht, was passiert, und bekommt eine zweite Chance.

**3. In Twine bauen (45 Min).**
- twinery.org öffnen → "Neue Story" → Story Format Harlowe wählen.
- Start-Passage schreiben (150–250 Wörter, Szene setzen, Rolle klarmachen).
- Entscheidungslinks setzen: `[[Mail öffnen->passage-mail-geoeffnet]]`.
- Konsequenz-Passagen schreiben. Jede Konsequenz endet mit `[[Weiter->naechste-entscheidung]]` oder `[[Zurück zur Entscheidung->passage-id]]`.
- Variable für "Score" oder "Vertrauen" optional (in Harlowe: `(set: $trust to it - 1)`).
- "Publish to File" → einzelne `.html` wird lokal gespeichert.

**4. Unterrichtseinsatz (20 Min Spiel + 20 Min Debrief).**
Schüler spielen einzeln oder zu zweit (10–15 Min). Danach *zwingend* ein Debrief — ohne Reflexion bleibt IF Infotainment. Moore (2017) und Wouters et al. (2013) betonen beide: *Serious Games brauchen Reflexion, um zu wirken.* Strukturierter Debrief:
- Welche Pfade habt ihr gewählt? Welche Konsequenzen traten ein?
- Welche Option wäre DSGVO-konform/betriebsüblich gewesen? Warum?
- Was würdet ihr in der realen Firma tun? Wo ist das Szenario realitätsfern?

## Voraussetzungen

- **Technisch:** ein aktueller Browser pro Schüler. Kein Login, kein Account. Twine-HTML kann aus Moodle, Schul-Nextcloud, USB oder E-Mail geladen werden.
- **Lehrkraft:** etwa 30–60 Minuten Twine-Einarbeitung (Harlowe-Tutorial auf twinery.org/cookbook). Keine Programmierkenntnisse nötig — Link-Syntax ist Markdown-ähnlich.
- **Zeitlich:** 2h für erste Version, +1h für Variablen/Verzweigungen zweiter Stufe.
- **Didaktisch:** Szenario sollte auf einer realen Lernsituation aus [[lernsituationen-gestalten]] basieren, nicht auf Fantasie.

## Varianten

- **Mini-Szenario statt Branching.** Cathy Moore unterscheidet "branching scenario" (mehrere Entscheidungen aufeinander) und "mini scenario" (eine Entscheidung, eine Konsequenz, Ende). Für den Einstieg reicht oft das Mini-Format — in 30 Min gebaut.
- **Schüler bauen selbst.** Nach [[computational-action]] ist das wertvoller als Konsum: Schüler schreiben eigene DSGVO- oder Security-Szenarien in Zweierteams. Artefakt-orientiert, hoher Behaltenseffekt — die Programming-Historian-Lektion zu Twine im Unterricht (Kirilloff, 2021) zitiert u. a. Jeremiah McCalls Praxis als Referenz.
- **Gruppen-Entscheidung.** Ein Szenario wird per Beamer gespielt, die Klasse entscheidet per Handzeichen — eignet sich für Einstiegsphase und [[kooperatives-lernen]].
- **Kombination mit echten Tools.** Ein Twine-Szenario verweist an Schlüsselstellen auf ein echtes Tool (KeePass, EmailHeader-Analyzer, Linux-Shell) — [[intrinsic-integration]] von Spiel- und Lernziel.
- **Variante mit LLM-Branching.** Zunehmend gibt es Ansätze, Branching dynamisch durch ein LLM zu erzeugen (vgl. WHAT-IF, Arxiv 2412.10582, 2024). Didaktisch riskanter: weniger Kontrolle über die Pfade, aber höhere Varianz.

## Zeitbedarf

- Szenario-Konzept: 30–60 Min
- Bauen in Twine (erste Version): 60–90 Min
- Unterrichtseinsatz: 45–90 Min (inkl. Debrief)
- Iteration nach erstem Einsatz: 30 Min

## Bezug zur IT-Ausbildung

Twine-Szenarien schlagen die Brücke zwischen abstrakter Normenkunde (DSGVO, BSI-Grundschutz, ITIL) und konkreter Handlung. Drei einsatzreife Templates:

**LF3 / LF6 — Phishing-Entscheidung ("Die dringende Mail vom CEO").**
Rolle: FIAE im 2. Lehrjahr, Support-Team. Start: Um 16:47 Uhr kommt eine Mail "vom CEO" mit der Bitte, sofort 1.200 EUR Gutscheine zu kaufen. Drei Optionen: *(a) Direkt erledigen, CEO wartet*, *(b) Mail-Header prüfen*, *(c) Telefonisch nachfragen*. Pfad (a) → Vorfall, Datenschutzbeauftragte, 600 EUR Schaden. Pfad (b) → Header zeigt Spoofing, Schüler lernen SPF/DKIM-Kern, Eskalation. Pfad (c) → CEO bestätigt: Fake. Debrief: Welche Red Flags waren erkennbar? Realdaten: Nur 1,82 % klickten auf den "Outlook-Passwort"-Lockvogel, aber 30,8 % auf "Urlaubsrichtlinie" — Social Context schlägt Technik (Ho et al., 2025).

**LF4 — DSGVO-Dilemma ("Der Ex-Mitarbeiter-Account").**
Rolle: FIAE, Admin. Ein Kunde ruft an, braucht "sofort" die Mailarchive eines gestern gekündigten Mitarbeiters. Optionen: *(a) Export liefern*, *(b) Schriftliche Anweisung verlangen*, *(c) Datenschutzbeauftragten einbinden*, *(d) Verweis auf Art. 6 DSGVO, Rechtsgrundlage prüfen*. Jeder Pfad bringt rechtliche und betriebliche Konsequenzen — inkl. möglicher Anhörung durch die Landesdatenschutzbehörde. Kopplung zu [[datenschutz-lernumgebungen]]: Nach dem Spiel die korrekte Vorgehensweise im echten Recht nachlesen.

**LF8 — Incident Response ("Die Ransomware am Freitagabend").**
Rolle: IT-Dienstleister, Rufbereitschaft. 19:30 Uhr, Kunde meldet verschlüsselte Dateien. Entscheidungen: Netzwerk sofort trennen? Backup prüfen? Polizei/BSI melden? Lösegeld-Dialog öffnen? Geschäftsführer anrufen? Jeder Pfad führt durch IR-Phasen (Contain → Eradicate → Recover) und zeigt Folgekosten. Entspricht einem CISA Tabletop Exercise Package (CTEP) in Miniatur. Debrief: BSI-IT-Grundschutz-Bausteine DER.2.1 / DER.2.3 zuordnen.

**Zusatz LF3 — Ticket-Eskalation & Social Engineering.**
"Kollege Meier ruft am Helpdesk an und braucht 'nur kurz' das lokale Admin-Passwort, sonst geht die Präsentation für den Vorstand um 14 Uhr baden." Lernziel: Eskalationswege, Schutz vor Pretexting, ITIL-Major-Incident-Prozess. Passt zu [[fehlerkultur-im-unterricht]] — falsch reagieren ist Teil des Lernweges.

**DSGVO-Hinweis Berufsschule.** Twine publiziert reines HTML/JavaScript ohne Tracking, Telemetrie oder Cloud-Anbindung (twinery.org/cookbook). Die Datei kann lokal gespeichert, im Schulnetz ausgeliefert oder per Moodle verteilt werden. Keine personenbezogenen Daten verlassen den Client. Das ist für deutsche Schulen praktisch unschlagbar — vergleichbare kommerzielle Tools (Articulate Rise, H5P-Cloud, Storyline) werfen regelmäßig Datenschutz-Diskussionen auf.

## Praktische Anwendung

Bernds 2-Stunden-Plan für ein erstes eigenes Szenario:

1. **30 Min.** Lernziel-Satz aufschreiben ("Nach dem Szenario können Schüler drei Red Flags einer Spear-Phishing-Mail identifizieren und den Eskalationsweg beschreiben"). Story-Map auf Papier: Start → 3 Entscheidungen → 3–5 Konsequenz-Knoten → 2 Endings (gut/schlecht).
2. **60 Min.** twinery.org öffnen, Harlowe-Story anlegen, Passagen schreiben. Texte möglichst in authentischer Sprache ("Hi, kannst Du mal schnell …") — [[affektive-dimensionen]] wirken stärker als Fachjargon.
3. **15 Min.** Test-Spielen auf eigenem Rechner, Sackgassen & Tippfehler fixen, "Publish to File" → `phishing-freitag.html`.
4. **15 Min.** Datei in Moodle hochladen, kurzen Arbeitsauftrag + Debrief-Fragen daruntersetzen. Fertig.

Für den Einsatz als wiederkehrendes Format lohnt sich ein kleines Szenario-Archiv auf dem Schulserver — passt zur [[kursarchitektur-lernumgebungen]] und lässt sich jedes Jahr erweitern. Nach [[self-determination-theory]] gewinnt das Format, wenn Schüler zwischen mehreren Szenarien wählen dürfen (Autonomie) und am Ende sehen, wie viele Pfade sie noch nicht erkundet haben (Kompetenzgefühl).

## Verwandte Konzepte

- [[anchored-instruction]] — Wissen an eine konkrete Problemsituation verankern; IF ist die leichtgewichtige Umsetzung.
- [[immersive-simulationen]] — Oberbegriff; Twine-IF ist die Low-Fidelity-Variante, CTF/Sandboxes sind High-Fidelity.
- [[productive-failure]] — Fehlpfade sind didaktisch wertvoll, wenn der Debrief sie aufgreift.
- [[intrinsic-integration]] — Lerninhalt und Mechanik verschmelzen: Die Entscheidung *ist* der Lerninhalt.
- [[computational-action]] — Schüler bauen selbst Szenarien und tragen zum Schul-Archiv bei.
- [[handlungsorientierter-unterricht]], [[lernsituationen-gestalten]] — entspricht dem Handlungsprinzip der Lernfelder.
- [[datenschutz-lernumgebungen]], [[fehlerkultur-im-unterricht]], [[engagement-theory]], [[gamification-it-unterricht]] — weitere Verbindungen.

## Quellen

- Bransford, J. D., & Schwartz, D. L. (1999). Rethinking transfer: A simple proposal with multiple implications. *Review of Research in Education, 24*, 61–100.
- Chernikova, O., Heitzmann, N., Stadler, M., Holzberger, D., Seidel, T., & Fischer, F. (2020). Simulation-based learning in higher education: A meta-analysis. *Review of Educational Research, 90*(4), 499–541.
- CISA — Cybersecurity and Infrastructure Security Agency. (o. J.). *CISA Tabletop Exercise Packages (CTEP)*. https://www.cisa.gov/resources-tools/services/cisa-tabletop-exercise-packages
- Desilets, B. (o. J.). *Interactive Fiction and Critical Thinking*. https://bdesilets.com/if/
- Farber, M. (2014). Interactive Fiction in the Classroom. *Edutopia*. https://www.edutopia.org/blog/interactive-fiction-in-the-classroom-matthew-farber
- Ho, G., et al. (2025). Understanding the Efficacy of Phishing Training in Practice. *IEEE Symposium on Security and Privacy*. https://people.cs.uchicago.edu/~grantho/papers/oakland2025_phishing-training.pdf
- Inkle Studios. (2016). *Ink — Inkle's narrative scripting language* (Open Source seit 03/2016). https://www.inklestudios.com/ink/
- ISTE. (2023). Students choose their own learning adventures with interactive fiction. https://iste.org/blog/students-choose-their-own-learning-adventures-with-interactive-fiction
- Kirilloff, G. (2021). Interactive Fiction in the Humanities Classroom: How to Create Interactive Text Games Using Twine. *Programming Historian*. https://programminghistorian.org/en/lessons/interactive-text-games-using-twine
- Moore, C. (2017). *Map It: The hands-on guide to strategic training design*. Montesa Press. Begleitend: blog.cathy-moore.com
- Twinery.org. (2024). *Twine Cookbook — Story Formats*. https://twinery.org/cookbook/
- Wouters, P., van Nimwegen, C., van Oostendorp, H., & van der Spek, E. D. (2013). A meta-analysis of the cognitive and motivational effects of serious games. *Journal of Educational Psychology, 105*(2), 249–265.
