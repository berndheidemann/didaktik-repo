---
title: Evaluation eigener Lernumgebungen
type: methode
tags: [evaluation, design-based-research, learning-analytics, playtest, think-aloud, lernumgebungs-entwicklung, metriken, referenz]
related:
  - "[[learning-engineering]]"
  - "[[formatives-assessment]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[effektstaerken-unterricht]]"
  - "[[meta-analysen-cs-education]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[productive-failure]]"
  - "[[datenschutz-lernumgebungen]]"
  - "[[blooms-taxonomie]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[ki-tool-auswahl-berufsschule]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
created: 2026-04-07
updated: 2026-04-09
summary: >
  Pragmatischer Leitfaden für Lehrer-Entwickler: Woher weißt du, ob deine selbst
  gebaute Lernumgebung wirkt? Metrik-Auswahl ohne Vanity Metrics, Playtest-Protokoll,
  Pre-/Post-Design, Design-Based Research als Iterations-Rahmen — ohne Ethics
  Board, mit einer Klasse.
---

# Evaluation eigener Lernumgebungen

## Kernidee

Wer als Einzelentwickler-Lehrer eine Lernumgebung baut, braucht keine akademische Studie — aber strukturierte Evidenz darüber, ob das Ding tatsächlich Lernen erzeugt und nicht nur Zeit verbraucht. Pragmatische Evaluation kombiniert wenige aussagekräftige Metriken (Lernziel-Erreichung statt Klickzahlen), drei bis fünf strukturierte Playtests mit Think-Aloud und einen einfachen Pre-/Post-Test pro Iteration. Das Ganze passt in den Design-Based-Research-Zyklus (Barab & Squire 2004): bauen, einsetzen, beobachten, gezielt nachschärfen — und nach 2-3 Iterationen stabilisiert sich, was wirklich wirkt.

Dieser Artikel ist das pragmatische Gegenstück zu [[learning-engineering]] — dort die Theorie datengetriebener Lernsysteme, hier der Werkzeugkasten für den bauenden Lehrer mit genau einer Klasse.

## Beschreibung

### Welche Metriken sind didaktisch aussagekräftig?

Die wichtigste Unterscheidung ist die zwischen **Vanity Metrics** (fühlen sich nach Daten an, sagen nichts über Lernen) und **Lernmetriken** (direkt an Lernzielen verankert):

| Metrik | Was sie aussagt | Was sie NICHT aussagt |
|---|---|---|
| **Completion Rate** | Technische Zumutbarkeit, UX-Schmerz | Ob jemand etwas gelernt hat (Durchklicken möglich) |
| **Pre-/Post-Score-Differenz** | Konzeptueller Zugewinn (Kernindikator) | Nachhaltigkeit — dafür braucht es Delayed Post-Test |
| **Misconception-Kipppunkt** | Wo genau Verstehen umschlägt (didaktisches Gold) | Warum es kippt — braucht qualitative Ergänzung |
| **Drop-off-Stelle** | Reibungspunkte im Flow, fehlendes Scaffolding | Ob Inhalt oder UX schuld ist — beides möglich |
| **Time-to-First-Correct** | Wie gut Scaffolding trägt; Ceiling-/Floor-Effekte | Tiefe des Verständnisses |
| **Hint-Nutzungsrate** | Selbstregulation, Gaming-the-System | Ob Hinweise tatsächlich genutzt oder weggeklickt wurden |
| **Fehlermuster-Cluster** | Stabile, curriculum-relevante Misconceptions | Einzelfallhäufungen vs. Systemproblem — n muss reichen |
| **Transfer-Item** (neuartige Anwendung) | Ob gelernt wurde, nicht ob memoriert | Ob Wissen auch in echtem Code funktioniert |
| **Self-Confidence vs. Korrektheit** | Metakognitive Kalibrierung — Dunning-Kruger-Lücken | Tatsächliche Kompetenz isoliert |

Faustregel: Für jede getrackte Metrik muss eine Design-Entscheidung benannt werden können, die davon abhängt. Alles andere ist Beschäftigungstherapie.

### Evaluationsmethoden-Tabelle

| Methode | Aufwand | Was du erfährst |
|---|---|---|
| **Event-Logging / Telemetrie** | 4-8h Setup, dann 0 | Drop-offs, Fehlermuster, Zeitverteilung |
| **Pre-/Post-Test (5-8 Items)** | 2-3h / Iteration | Lernzuwachs, Misconception-Verschiebung |
| **Think-Aloud-Playtest (1 Schüler, 30 Min)** | 1h + 30 Min Auswertung | Mentale Modelle, UI-Stolperer |
| **Strukturierter Playtest (3-5 Schüler)** | 2-3h | Konvergierende Probleme — n=5 deckt ~85% aller Usability-Probleme (Nielsen 2000) |
| **Exit-Ticket / Mini-Survey** | 15 Min | Affektives Erleben, "Was war unklar?" |
| **Delayed Post-Test (nach 2-4 Wochen)** | 1h | Retention — der einzige Wert, der echtes Lernen misst |

## Durchführung

### Playtest-Protokoll Schritt für Schritt

**Vorbereitung (60 Min, einmalig pro Iteration):**
1. Lernziel und 3 Erfolgskriterien aufschreiben ("Schüler kann X erklären / Y modifizieren / Z bauen").
2. 5-8 Pre-/Post-Items formulieren, gemischt: 2x Faktenwissen, 2x Anwendung, 1x Transfer.
3. 3 fokussierte Beobachtungsfragen festlegen.
4. 4-6 konkrete Mini-Tasks für den Tester.

**Durchführung (45 Min pro Schüler, 3-5 Schüler reichen):**
1. **Briefing (3 Min):** "Du testest die App, nicht ich teste dich. Fehler sind hier wertvoll."
2. **Pre-Test (5 Min):** Items beantworten lassen.
3. **Think-Aloud-Aufwärmung (2 Min):** "Sag laut, was du siehst, denkst, als nächstes versuchst." Beispiel vormachen.
4. **Hauptaufgabe (25 Min):** Schüler arbeitet Tasks ab. Lehrer schweigt — nur "Was denkst du gerade?" wenn Stille. Notizen mit Zeitstempeln.
5. **Post-Test (5 Min):** Items wiederholen, plus 2 Transfer-Items.
6. **Debrief (5 Min):** "Was war frustrierend? Was cool? Was würdest du ändern?"

**Auswertung (30 Min pro Session):** Notizen in 3 Spalten clustern — Bug / Verstehensproblem / Wunsch. Gemeinsame Stolperpunkte in ≥3 Sessions = "must fix".

### Design-Based Research als Iterationsrahmen

DBR (Barab & Squire 2004; Wang & Hannafin 2005) ist der wissenschaftliche Rahmen für das, was ein bauender Lehrer ohnehin tun will: systematisch iterieren, um verallgemeinerbares Wissen zu gewinnen — nicht nur ein Produkt.

**Zyklus (jeweils 2-4 Wochen):**
1. **Design** — Hypothese formulieren: "Wenn ich Misconception X durch Worked Example Y konfrontiere, steigt Post-Score-Item Z." Klein und falsifizierbar.
2. **Implement** — Eine Klasse, dokumentierte Bedingungen (Vorwissen, Zeit, Setting).
3. **Analyze** — Telemetrie + Playtest + Pre-/Post. Was bestätigt, was überrascht?
4. **Refine** — Genau eine Designentscheidung pro Zyklus ändern. Sonst ist Kausalität futsch.
5. **Re-deploy** in der nächsten Klasse.

Nach 3-4 Zyklen kristallisieren sich stabile Designprinzipien ("Sokratische Fragen vor Lösungspräsentation funktionieren bei unserer Zielgruppe"). Die sind das eigentliche Forschungsergebnis — wertvoller als die App selbst.

## Voraussetzungen

- Lernziel ist operationalisiert (nicht "Schüler sollen DSGVO verstehen", sondern "Schüler kann für 4/5 Szenarien die korrekte Rechtsgrundlage benennen")
- Zugriff auf 5-15 Lernende für Playtests
- Einwilligung minimaler Art (siehe [[datenschutz-lernumgebungen]])
- Bereitschaft, negative Befunde zu akzeptieren — eigenes Werk evaluiert zu bestätigen ist der häufigste Fehler

## Varianten

- **Kurze Evaluation (1 Iteration, 4-6h):** 3 Think-Aloud-Sessions + Pre-/Post mit einer Klasse. Ausreichend für die erste Version.
- **Mittlere Evaluation (3-4 Iterationen):** Plus Exit-Tickets, Event-Logging, Delayed Post-Test. Für Versionen, die regelmäßig eingesetzt werden.
- **Forschungsnahe Evaluation:** Plus Kontrollgruppe, größere n, publizierbare Effektgrößen. Jenseits des Einzelentwickler-Budgets.

## Zeitbedarf

Pro Iteration max. 4-6 Stunden Evaluations-Aufwand. Wer mehr investiert, baut weniger — und Bauen ist beim Einzelentwickler die wertvollste Aktivität. Der DBR-Zyklus muss schneller drehen als der Perfektionsanspruch.

## Häufige Fallstricke

- **Vanity Metrics** — Completion Rates und Verweildauer fühlen sich nach Daten an, sagen aber nichts über Lernen, wenn nicht mit Lernzielitems verknüpft.
- **Testing Effect** — Identische Pre-/Post-Items bedeuten teilweise Wiedererkennen. Lösung: 60-70% identisch + 30-40% paraphrasiert/Transfer.
- **Ceiling/Floor Effect** — Zu leichte/schwere Items lassen Lernzuwachs unsichtbar. Vorab mit 2 Pilotpersonen prüfen.
- **Hawthorne-Effekt** — Schüler strengen sich mehr an, weil beobachtet. Realistisches Setting bevorzugen.
- **n=12 ist keine Statistik** — Eine Klasse erlaubt keine Inferenzstatistik. Konvergente Evidenz aus mehreren Quellen statt p-Werte.
- **Sich in Dashboards verlieben** — Wenn das Dashboard keine Designentscheidung auslöst, ist es Deko.
- **Bestätigungsfehler** — Vor dem Test aufschreiben, was als Misserfolg gelten würde.
- **Think-Aloud-Kontamination** — Der häufigste Reflex ist, helfend einzuspringen. Schweigen ist die schwerste Disziplin.

## Bezug zur IT-Ausbildung

Evaluation ist selbst ein Lerninhalt: In LF10a-12a können Azubis ihre eigenen Softwareprojekte evaluieren — Pre-/Post, Telemetrie, A/B-Tests. Der Artikel hier dient dem *Lehrer als Entwickler*, aber dasselbe Framework lässt sich als Lerngegenstand nutzen, wenn Azubis z.B. eine Onboarding-Strecke für ihren Ausbildungsbetrieb bauen.

## Praktische Anwendung

1. **Lernziel operationalisieren**, bevor die erste Zeile Code geschrieben wird. Ein Satz mit messbarem Verb aus [[blooms-taxonomie]].
2. **Event-Logging früh einbauen** (localStorage oder simples Backend) — einmal investiert, zahlt sich endlos aus.
3. **5 Think-Aloud-Sessions** als Standardritual nach jeder größeren Änderung. Nielsens "n=5 reicht" ist hier operativ.
4. **Pre-/Post-Test** in jeder Iteration, selbst wenn die Klasse klein ist. Effektrichtung ist auch bei n=12 sichtbar.
5. **Ethik-Minimum einhalten** (siehe [[datenschutz-lernumgebungen]]): Pseudonyme, freiwillige Teilnahme, keine Notenrelevanz der Evaluationsdaten, Schulleitung informiert.
6. **Delayed Post-Test nach 3 Wochen** — der einzige Test, der echtes Lernen statt Tagesperformance misst. Mit Abstand die beste Evaluations-Investition.
7. **Eine Iteration pro 2-4 Wochen** — langsamer wird zu träge, schneller produziert Datenmüll.

## Verwandte Konzepte

- [[learning-engineering]] — theoretischer Überbau zur Datengetriebenheit; dieser Artikel ist die pragmatische Operationalisierung für Einzelentwickler
- [[formatives-assessment]] — Pre-/Post-Tests, Exit-Tickets und Telemetrie sind angewandtes formatives Assessment
- [[interaktive-lernumgebungen]] — Evaluation prüft, ob die Gestaltungsprinzipien tatsächlich Wirkung erzeugen
- [[effektstaerken-unterricht]] — liefert die Vergleichs-Größenordnungen (Cohen's d > 0.4 als Hattie-Schwelle)
- [[meta-analysen-cs-education]] — Bezugsrahmen für die Frage "ist mein Effekt im erwartbaren Bereich?"
- [[productive-failure]] — Misconception-Kipppunkte sind dort theoretisch fundiert
- [[selbstgesteuertes-lernen]] — Self-Regulation-Metriken (Confidence, Hint-Nutzung) als Evaluationsgegenstand

## Quellen

- Barab, S., & Squire, K. (2004). Design-Based Research: Putting a stake in the ground. *Journal of the Learning Sciences*, 13(1), 1-14.
- Wang, F., & Hannafin, M. J. (2005). Design-based research and technology-enhanced learning environments. *Educational Technology Research and Development*, 53(4), 5-23.
- Reeves, T. C. (2006). Design research from a technology perspective. In J. van den Akker et al. (Eds.), *Educational Design Research* (pp. 52-66). Routledge.
- Nielsen, J. (2000). *Why you only need to test with 5 users.* Nielsen Norman Group.
- Ericsson, K. A., & Simon, H. A. (1993). *Protocol Analysis: Verbal Reports as Data* (rev. ed.). MIT Press.
- Siemens, G., & Long, P. (2011). Penetrating the fog: Analytics in learning and education. *EDUCAUSE Review*, 46(5), 30-40.
- Shute, V. J. (2011). Stealth assessment in computer-based games to support learning. In S. Tobias & J. D. Fletcher (Eds.), *Computer Games and Instruction* (pp. 503-524). IAP.
