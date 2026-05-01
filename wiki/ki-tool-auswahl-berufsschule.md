---
title: "KI-Tool-Auswahl für die Berufsschule — Entscheidungsrubrics"
type: praxis
tags: [ki-tools, tool-auswahl, dsgvo, berufsschule, fobizz, telli, codespaces, entscheidungshilfe, referenz]
related:
  - "[[datenschutz-lernumgebungen]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[ki-kompetenzrahmen-schule]]"
  - "[[ki-erfahrungsberichte-berufliche-bildung]]"
  - "[[browser-ide-gestuetzte-tutorials]]"
  - "[[evaluation-lernumgebungen]]"
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[kritische-ki-bewertungskompetenz]]"
  - "[[ki-prompt-handwerk]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
sozialform: [einzelarbeit]
created: 2026-04-09
updated: 2026-05-01
summary: >
  Entscheidungs-Rubrics für die Tool-Wahl beim Bau KI-gestützter Lernumgebungen
  an deutschen Berufsschulen. Wann selbst bauen (client-only), wann Schul-Chatbot
  (telli/fobizz), wann kommerzielle APIs? Kriterien: DSGVO, pädagogische
  Kontrolle, Wartungsaufwand, Berufsschul-Besonderheiten. Tools als
  austauschbare Momentaufnahme, das Entscheidungsraster ist der Mehrwert.
---

# KI-Tool-Auswahl für die Berufsschule — Entscheidungsrubrics

## Kernidee

Die Frage "Welches KI-Tool soll ich im Unterricht einsetzen?" hat keine einzige richtige Antwort — sie hat eine strukturierte, die von **wenigen Entscheidungskriterien** abhängt: DSGVO-Verantwortlichkeit, pädagogische Kontrolle, Alter der Lerner:innen, Betriebs-Sensibilität der Ausbildungspartner und Wartungsaufwand. Dieser Artikel liefert das Entscheidungsraster, nicht die Tool-Liste — Produkte kommen und gehen (Replit Teams for Education wurde 2024 eingestellt, telli ging Ende 2025 live, Landeslizenzen ändern sich halbjährlich), aber die Kriterien bleiben. Wer die Rubrics kennt, kann auch 2028 oder 2030 eine belastbare Tool-Entscheidung treffen.

Dieser Artikel **ergänzt und doppelt nicht** [[datenschutz-lernumgebungen]] — dort liegt die rechtliche Grundlage, hier die Werkzeugauswahl auf Basis dieser Grundlage.

## Kontext

### Die drei Haupt-Entscheidungspfade

Wer als Berufsschul-Lehrkraft KI in eine Lernumgebung einbauen will, steht strukturell vor einer von drei Optionen:

1. **Client-only-Eigenbau.** Eine selbst entwickelte Web-App oder Lernumgebung, die rein im Browser der Lernenden läuft. LLM-Zugriff (falls nötig) über einen vom Lerner selbst eingegebenen API-Schlüssel oder ganz ohne Cloud-LLM (etwa mit WebLLM, lokalen Ollama-Instanzen oder Client-seitigen kleinen Modellen). **Maximum an Kontrolle, Minimum an Reichweite für Nicht-Technik-Lehrkräfte.**
2. **Landes- oder Schul-Chatbot.** Nutzung der vom Land bereitgestellten KI-Infrastruktur: **telli** (FWU, sukzessiver Rollout in 16 Ländern seit Juni 2025; Bremen war erstes Bundesland, Stand April 2026 in den meisten Ländern produktiv), **fobizz** (in RLP, Sachsen, MV, Sachsen-Anhalt via Landeslizenz), **schulKI**, **ByCS-KI** (Bayern), **fAIrChat** (BW-Pilot). **Mittlere Kontrolle, maximale DSGVO-Sicherheit in Kombination mit Schulträger-Rückendeckung, geringster pädagogischer Konfigurationsspielraum.**
3. **Kommerzielle API oder Plattform.** Direkte Einbindung von OpenAI, Anthropic, Google Gemini APIs; oder kommerzielle EdTech-Plattformen wie Perusall, Khanmigo, Duolingo Max. **Maximum an Features, Minimum an DSGVO-Sicherheit ohne sorgfältige Prüfung.**

Jeder dieser drei Pfade ist in bestimmten Szenarien der richtige — die Frage ist: welches Szenario liegt vor?

### Was dieser Artikel nicht leistet

Er ist **keine verbindliche Tool-Empfehlung**. Die konkrete Entscheidung hängt von Faktoren ab, die nur die einzelne Schule kennt: Welches Landes-Tool ist verfügbar? Welchen Datenschutzbeauftragten hat die Schule? Gibt es BYOD oder schulische Hardware? Welche Kolleg:innen sind bereits mit welchen Tools vertraut? Der Artikel liefert die Fragen — die Antworten müssen am konkreten Kontext entstehen.

## Durchführung

### Entscheidungs-Kriterien

Die folgenden sieben Kriterien sind die Achsen, an denen sich eine Tool-Entscheidung ausrichten sollte:

**1. DSGVO-Verantwortlichkeit und Hosting**

Ist Auftragsverarbeitung geregelt? Liegt der Server in der EU, und wenn nicht: gibt es eine tragfähige Rechtsgrundlage nach Schrems II? Für deutsche Schulen ist US-Hosting ohne explizite Schul-DSB-Freigabe und ohne DPIA in der Regel ein Blocker, keine Formalie.

- **Client-only**: Keine personenbezogenen Daten verlassen den Browser → unkompliziert.
- **Landes-Chatbot**: DSGVO vom Land vor-geprüft, AVV steht — der einfachste Pfad.
- **Kommerziell**: Im Einzelfall möglich, aber Schul-DSB-Prüfung Pflicht.

**2. Alter und Rechtsfähigkeit der Lernenden**

Berufsschul-Klassen sind häufig **altersgemischt** und enthalten Volljährige *und* Minderjährige. Das ist ein Unterschied zur allgemeinbildenden Schule, der in der Tool-Diskussion häufig übersehen wird. Tools, die eine persönliche Account-Erstellung und Einwilligung verlangen, sind für Minderjährige nur mit Elterneinwilligung rechtssicher nutzbar — und selbst dann fragwürdig, wenn Nutzungsdaten Drittstaaten-Transfer implizieren.

- **Alle Volljährig**: Größerer Spielraum, Einwilligung kann direkt eingeholt werden.
- **Gemischt oder alle minderjährig**: Tools ohne individuelle Schüler:innen-Konten oder mit anonymer Nutzung (telli-Sharing-Token, fobizz-Klassenräume, client-only) sind deutlich unkomplizierter.

**3. Pädagogische Konfigurierbarkeit**

Kann die Lehrkraft das System-Prompt-Verhalten kontrollieren? Ground-Truth-Injection? Turn-Limits? Output-Format? Je stärker die pädagogische Kontrolle sein muss, desto eher braucht es Eigenbau oder konfigurierbare Plattformen.

- **Client-only-Eigenbau**: Volle Kontrolle, hoher Aufwand. Geeignet, wenn Muster aus [[llm-integrationsmuster-lernumgebungen]] umgesetzt werden sollen.
- **Landes-Chatbots (telli, fobizz)**: Bieten inzwischen "Assistenten"-Funktionen mit eigenem System-Prompt und Szenario-Definition — mittlere Kontrolle. fobizz hat den Reifegrad früher erreicht, telli holt auf.
- **Kommerzielle EdTech-Produkte**: Feste Didaktik, wenig bis keine Konfiguration. Gut als Standard-Werkzeug, schwach als Baustein für eigene Lernumgebung.

**4. Berufsschul-Besonderheiten: Betriebs-Sensibilität**

Duale Ausbildungsbetriebe haben unterschiedliche Sensibilität gegenüber KI-Nutzung durch ihre Azubis. Ein Bankbetrieb mit strenger Compliance-Kultur hat andere Anforderungen als ein Startup. Wenn Lernende in der Schule mit einem Tool arbeiten, das im Betrieb explizit verboten ist, entstehen Reibungen — die Schule ist dann in der unangenehmen Lage, pädagogisch zu legitimieren, was der Betrieb untersagt.

- **Beratung im Kollegium einholen**: Was ist bei den Ausbildungspartnern üblich? Welche Tools sind in welchen Branchen akzeptiert?
- **Tendenziell breit akzeptiert 2026**: Microsoft Copilot, GitHub Copilot (beides im Enterprise-Kontext), Landes-Tools.
- **Häufig betrieblich untersagt**: Nicht-enterprise ChatGPT, öffentliche Claude-Chats, Gemini Standard.

**5. Wartungs- und Betriebsaufwand**

Wer betreut das Tool nach dem ersten Einsatz? Eigenbau braucht laufende Pflege — Abhängigkeiten, API-Brüche, Browser-Updates. Landes-Tools werden vom Land betreut. Kommerzielle Produkte haben Herstellersupport, aber auch Geschäftsmodell-Risiken (Einstellung, Preisänderung, Feature-Entfall).

- **Als einzelner Lehrer**: Je mehr Eigenbau, desto mehr laufende Arbeit. Realistisch für ein Kern-Projekt, nicht für zehn nebenbei.
- **Im Kollegium mit Austausch**: Eigenbau kann gemeinsam getragen werden — setzt aber Koordination und gemeinsame Codebase voraus.

**6. Kosten**

- **Client-only mit User-API-Key**: Kosten liegen beim Nutzer (manche Lernende haben bereits eigene Accounts, manche nicht — das schafft Ungleichheit).
- **Landes-Chatbots**: In der Regel kostenfrei für die Schule, wenn Landeslizenz existiert.
- **fobizz ohne Landeslizenz**: Schul- oder Lehrkraft-Abo, Preise pro Nutzer.
- **Kommerzielle APIs**: Pay-per-Use; für eine einzelne Klasse über ein Semester oft unter 50 Euro, für Klassen-übergreifende Projekte schnell darüber.
- **GitHub Codespaces**: 180 Core-Hours pro Student/Monat kostenfrei, aber nur mit verifiziertem Student Developer Pack. Für Lehrkraft-Nutzung separate Regelung (Education-Kontingent, Public Preview).

**7. Pädagogische Passung zum Lernziel**

Das wichtigste und am häufigsten vergessene Kriterium: **Welches Lernziel wird eigentlich bedient?** Ein Sokratischer Tutor zu DSGVO braucht andere Werkzeugeigenschaften als ein Code-Review-Unterstützer oder ein Rollenspiel-Gegenüber für LF6-Kundengespräche. Wer dieses Kriterium überspringt und mit der Tool-Frage beginnt, baut eine Lösung auf der Suche nach einem Problem.

### Entscheidungsbaum

Ein kompakter Flow für die meisten Fälle:

```
Lernziel: Was soll der/die Lerner:in können, das er/sie ohne KI nicht kann/lernt?
       ↓
1. Ist das Tool didaktisch überhaupt nötig? (Prüfe Alternativen: non-KI-Methode, Retrieval, Peer Instruction.)
       ↓ ja
2. Sind alle Lernenden volljährig UND DSGVO-Situation geklärt?
       ↓ nein                               ↓ ja
   Landes-Chatbot (telli/fobizz)      3. Braucht es pädagogische Feinkontrolle?
   oder client-only                          ↓ ja                ↓ nein
                                        Eigenbau            Landes-Chatbot oder
                                        client-only         kommerzielles Standard-Tool
```

### Rubric: Szenario → Empfehlung

| Szenario | Empfehlung (Stand April 2026) | Begründung |
|---|---|---|
| **Einstiegsmodul "KI-Führerschein" für 1. Lehrjahr** | Landes-Chatbot (telli oder fobizz) | Einheitliche Erfahrung, DSGVO vor-geprüft, niedrige Eintrittshürde. Pädagogische Feinkontrolle nicht nötig. |
| **Sokratischer DSGVO-Tutor für LF4** | Client-only Eigenbau mit Muster aus `llm-integrationsmuster-lernumgebungen` | Braucht Ground-Truth-Injection und Guardrails — nur in Eigenbau kontrollierbar. Wiederverwendbar über Jahre. |
| **AP2-Fachgespräch-Simulator** | Eigenbau (Conversational Roleplay) + Rubric-Evaluator | Prüfungsnähe verlangt kontrollierte Persona und Bewertung. |
| **Einfache Recherche-Unterstützung in LF5/LF8** | Landes-Chatbot oder Betriebs-Tool (Copilot) | Generisch, Lerner sollen Recherche lernen — spezifische Didaktik nicht nötig. |
| **Programmier-Tutorial-Serie (LF10a)** | GitHub Codespaces + devcontainer oder TutorialKit | Siehe [[browser-ide-gestuetzte-tutorials]]. KI-Einbettung sekundär. |
| **Lehrer-Material-Produktion (Arbeitsblätter, Rubrics)** | Beliebiges Tool mit dem man vertraut ist | Lehrkraft-facing, Schüler-Datenschutz nicht berührt. Der einfachste Einsatz mit dem größten Produktivitäts-Hebel. |
| **Projektarbeit in LF11/12 mit echten Betriebsdaten** | Nur Betriebs-Tools oder client-only; **nie** externe KI mit Betriebsdaten | Compliance-Risiko für Ausbildungspartner — nicht die Schule entscheidet hier. |
| **Differenzierung in heterogener Klasse** | Landes-Chatbot mit konfigurierten Assistenten | Erlaubt Lerner-spezifische Unterstützung ohne Eigenbau. |

Die Tabelle ist ausdrücklich **kein Dogma**. Sie ist ein Ausgangspunkt, der in einem Beratungsgespräch mit Kolleg:innen und Schul-DSB angepasst werden sollte.

## Voraussetzungen

- **Grundverständnis DSGVO** — insbesondere Auftragsverarbeitung, Drittlandübermittlung, Einwilligung. Siehe [[datenschutz-lernumgebungen]].
- **Kontakt zum Schul-Datenschutzbeauftragten** — viele Tool-Entscheidungen lassen sich nicht ohne DSB treffen. Der DSB ist Verbündeter, nicht Bremser.
- **Überblick über Landes-Infrastruktur** — Welche Landeslizenzen gibt es in deinem Bundesland? Ist telli bei euch schon live? Gibt es eine fobizz-Lizenz? Für Berufsschulen gelten teilweise andere Regelungen als für allgemeinbildende Schulen — die konkrete Lage variiert pro Land und Schulträger.
- **Klare Lernziel-Formulierung** — ohne explizites Lernziel ist jede Tool-Entscheidung willkürlich.

## Varianten

- **"Pilot-Ansatz"**: Mit einer einzelnen Klasse und einem einzelnen Tool starten, 4-8 Wochen laufen lassen, evaluieren (vgl. [[evaluation-lernumgebungen]]), dann ausrollen oder verwerfen. Niedriges Risiko, hoher Lerneffekt für die Lehrkraft.
- **"Kollegiale Tool-Auswahl"**: Als Fachschaft gemeinsam ein Tool für eine Einheit festlegen, um Vergleichbarkeit und gemeinsamen Support zu ermöglichen. Reduziert Wartungsaufwand für den Einzelnen, erhöht Koordinationsaufwand.
- **"Hybrid-Strategie"**: Landes-Chatbot für Routine-Unterstützung, Eigenbau für das eine Kern-Projekt mit hoher pädagogischer Dichte. Das ist für die meisten Lehrkräfte das realistische Zielbild — nicht alles selbst, aber das Entscheidende bewusst gebaut.

## Zeitbedarf

- **Entscheidungs-Workshop** mit dem Rubric: 1-2 Stunden, idealerweise zusammen mit Fachschaft und DSB.
- **Pilotphase mit einem neuen Tool**: 4-8 Wochen Unterricht, 2-4 Stunden Vor- und Nachbereitung pro Woche.
- **Client-only-Eigenbau** für einen spezifischen Anwendungsfall: Je nach Komplexität 8-40 Stunden für den ersten Prototypen. Wiederverwendbar über Jahre.
- **Wartung eines produktiven Eigenbau-Tools**: 2-4 Stunden pro Quartal plus ad-hoc bei API-Änderungen.

## Bezug zur IT-Ausbildung

Die Tool-Auswahl ist für FIAE/FIDP-Lehrkräfte **doppelt relevant**: Einmal als didaktisches Hilfsmittel für die eigene Unterrichtsgestaltung — und einmal als Inhalt für die Lernenden selbst. FIAE/FIDP-Azubis werden im Berufsleben genau diese Entscheidungen treffen müssen: Welches Tool, welche API, welche Compliance-Bedingungen? Wenn die Lehrkraft die Entscheidung **transparent macht** und die Kriterien offenlegt, wird der Tool-Auswahl-Prozess selbst zum Lerninhalt — sogar in Lernfeldern, die nichts explizit mit KI zu tun haben.

- **LF2 Arbeitsplatz einrichten**: Tool-Evaluation als Praxisaufgabe (inkl. DSGVO-Check). Ein laufender Vergleich zwischen mehreren Landes-Chatbots ist auch für die Lerner aufschlussreich.
- **LF4 Schutzbedarf**: Die DSGVO-Überlegungen dieses Artikels sind unmittelbar Lerninhalt von LF4. Lernende können die Rubric selbst anwenden und dokumentieren.
- **LF6 Serviceanfragen**: KI-Tool-Empfehlung als typischer Servicefall — "Kunde will KI einsetzen, welche Optionen empfehlen Sie?".
- **LF10-12 Projekte**: Tool-Entscheidungen werden Projekt-Bestandteil, mit dokumentierter Begründung.

Damit wird die Tool-Auswahl-Kompetenz Teil der **KI-Kompetenz**, die in [[ki-kompetenzrahmen-schule]] als "Managing AI" beschrieben wird — und der Unterricht modelliert dieses Verhalten, statt es nur abstrakt zu lehren.

## Praktische Anwendung

Für einen Agent oder eine Lehrkraft, die vor einer Tool-Entscheidung steht:

1. **Lernziel zuerst.** Nie mit der Tool-Frage beginnen. Welche Kompetenz soll entstehen, die ohne KI schwerer zu erzeugen wäre?
2. **Sieben-Kriterien-Check.** Geh die Liste aus dem Abschnitt "Entscheidungs-Kriterien" durch. Für jedes Kriterium: Was ist der Ist-Zustand bei uns? Welche Tools passen? Welche sind ausgeschlossen?
3. **Schul-DSB konsultieren, bevor du erzählst, was du machen willst.** Der DSB soll beraten, nicht blockieren — und er wird kooperativer, wenn er früh eingebunden ist.
4. **Pilotphase statt Rollout.** Ein neues Tool immer erst mit einer Klasse, einem Lernziel, einer Zeitbegrenzung testen. Dann evaluieren. Dann entscheiden, ob es bleibt.
5. **Exit-Strategie planen.** Was passiert, wenn das Tool verschwindet, teurer wird, geändert wird? Kann das Lernszenario ohne dieses spezifische Tool überleben? Wenn nein, ist die Abhängigkeit zu hoch.
6. **Für Eigenbau**: Muster aus [[llm-integrationsmuster-lernumgebungen]] als Baukasten nutzen, nicht bei Null anfangen.
7. **Tool-Entscheidung dokumentieren.** Wer wie entschieden hat und auf welcher Grundlage — das ist für Kolleg:innen nachvollziehbar und für dich selbst in 12 Monaten nützlich, wenn du die Entscheidung überprüfen willst.

### Landes-Tool-Landschaft (Momentaufnahme April 2026)

Diese Landschaft ist volatil. Die folgende Übersicht ist ein Schnappschuss und wird veralten.

| Bundesland | Landes-Tool | Status | Anmerkung |
|---|---|---|---|
| Bayern | **telli** + **ByCS-KI** | seit 15.12.2025 für alle Schularten | fobizz wird kommunal über Medien-/KI-Budget finanziert (z.B. München, Nürnberg) — keine Schulart-Reservierung |
| NRW | **telli** + **LOGINEO NRW LMS** | seit 05.12.2025 (3-stufig: Berufskollegs, allgemeinbildende, Grundschulen) | inkl. Berufskollegs |
| RLP | **fobizz** | Lizenz verlängert bis Juli 2026 | schulübergreifend |
| Sachsen, MV, Sachsen-Anhalt | **fobizz** | Landeslizenz | schulübergreifend |
| Schleswig-Holstein | **telli** | seit November 2025 produktiv | schulübergreifend |
| Hessen + BW | **telli** | seit 01.10.2025 produktiv | schulübergreifend |
| Bremen | **telli** | seit Juni 2025 produktiv (erstes Bundesland) | schulübergreifend |
| Niedersachsen | **telli** | landesweit eingeführt | schulübergreifend |
| Brandenburg | **telli** (vorher bbb_KI) | seit Oktober 2025 | schulübergreifend |
| Saarland | **telli** | seit 02.12.2025 produktiv | schulübergreifend |
| BW (zusätzlich) | **fAIrChat** (Moodle-KI) | Pilot seit Februar 2024 | parallel zu telli, kein Ersatz |

**Zuverlässige Fixpunkte**:
- **telli** und **fobizz** sind die beiden dominanten, DSGVO-konformen Schul-KI-Lösungen 2026 in Deutschland.
- Die konkrete Verfügbarkeit und das Kostenmodell ändern sich pro Bundesland und pro Jahr.
- **Für Berufsschulen** kann die Rechtslage komplexer sein (Schulträger sind oft Landkreise/kreisfreie Städte mit eigenem Datenschutz-Setup) — konkrete Lage pro Standort prüfen.

**Aktuelle Informationen immer über die zuständigen Landesinstitute und die Schulträger einholen** — dieser Artikel ist kein Ersatz für die aktuelle Landesvorgabe.

## Verwandte Konzepte

- [[datenschutz-lernumgebungen]] — Rechtliche Grundlage, auf der diese Tool-Auswahl aufbaut
- [[ki-gestuetztes-tutoring]] — Didaktische Voraussetzung, aus der die Tool-Anforderungen abgeleitet werden
- [[ki-native-lernumgebungen]] — Frontier-Ansätze, die häufig Eigenbau erfordern
- [[llm-integrationsmuster-lernumgebungen]] — Muster, die im Eigenbau konkret implementiert werden
- [[prompt-engineering-didaktisch]] — Technische Umsetzung der pädagogischen Kontrolle
- [[ki-tutoring-evidenzlage]] — Warum Tool-Wahl nicht beliebig ist: der Bastani-Effekt spricht für Guardrails-Kontrolle
- [[ki-kompetenzrahmen-schule]] — Tool-Auswahl-Kompetenz als Teil der KI-Kompetenz (Managing AI)
- [[ki-erfahrungsberichte-berufliche-bildung]] — Beispiele, welche Tools/Ansätze in der Praxis ausgezeichnet wurden
- [[browser-ide-gestuetzte-tutorials]] — Schwester-Artikel für die Code-seitige Tool-Auswahl
- [[evaluation-lernumgebungen]] — Methodik zur Pilotphase und Wirksamkeitsprüfung

## Quellen

- Bundesbeauftragte für den Datenschutz und die Informationsfreiheit (BfDI) (2024/2025). *Orientierungshilfen zu KI und Datenschutz*.
- KMK (2024). *Handlungsempfehlung für die Bildungsverwaltung zum Umgang mit KI in schulischen Bildungsprozessen*. Beschluss vom 10.10.2024.
- FWU (2025). *telli.schule — Bundesweiter Rollout*. https://telli.schule/
- Bayerisches Staatsministerium für Unterricht und Kultus (2025). *KI für alle: Bayern stellt neue KI-Systeme für alle Schulen bereit*. https://www.km.bayern.de/
- Deutsches Schulportal (2025). *fobizz, schulKI und Co — Welche KI-Tools können Schulen nutzen?*. https://deutsches-schulportal.de/
- fobizz (ongoing). *Angebote für Bundesländer*. https://fobizz.com/angebote-fuer-bundeslaender/
- GitHub (ongoing). *Codespaces for Education*. https://docs.github.com/en/education
- Digitaldaily (2025). *Zwölf Bundesländer stellen KI an Schulen zur Verfügung*. https://digitaldaily.de/2025/09/17/
