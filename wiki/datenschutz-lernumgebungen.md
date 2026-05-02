---
title: Datenschutz beim Bau von Lernumgebungen
type: praxis
tags: [datenschutz, dsgvo, privacy-by-design, schulrecht, llm-datenschutz, lernumgebungs-entwicklung, referenz]
related:
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[learning-engineering]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[evaluation-lernumgebungen]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[ki-kompetenzrahmen-schule]]"
  - "[[ki-erfahrungsberichte-berufliche-bildung]]"
  - "[[browser-ide-gestuetzte-tutorials]]"
  - "[[ki-tool-auswahl-berufsschule]]"
  - "[[rag-tutoring-systeme]]"
  - "[[interactive-fiction-twine]]"
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[ki-integritaet-pruefungsleistung]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
created: 2026-04-07
updated: 2026-04-09
summary: >
  Was Lehrer-Entwickler datenschutzrechtlich beachten müssen, wenn sie
  Lernumgebungen für den Schulbetrieb bauen — Verantwortlichkeit, Rechtsgrundlagen,
  LLM-Auftragsverarbeitung, Einwilligungsmanagement, technische Maßnahmen und
  pragmatischer Fahrplan. Client-only als datensparsamer Königsweg.
---

# Datenschutz beim Bau von Lernumgebungen

## Kernidee

Wer als Lehrkraft eine Lernumgebung baut, die Schüler nutzen sollen, ist in der Regel nicht selbst rechtlich Verantwortlicher im Sinne der DSGVO — das ist die Schule bzw. der Schulträger — trägt aber faktisch die technische Designverantwortung. Datenschutzkonformität ist in diesem Setting keine Compliance-Hürde, sondern ein didaktischer Hebel: Eine Umgebung, die nichts speichert, was sie nicht braucht, ist auch eine bessere Lernumgebung. Der pragmatische Königsweg ist eine Client-only-Architektur (localStorage, Pseudonyme, optional lokale LLMs) plus saubere Einbindung des schulischen Datenschutzbeauftragten.

## Kontext

### Rechtliche Einordnung

**Verantwortlicher (Art. 4 Nr. 7 DSGVO):** Bei einer im dienstlichen Kontext eingesetzten Lernumgebung ist die Schule bzw. der Schulträger Verantwortlicher, nicht die einzelne Lehrkraft. Die Lehrkraft handelt jedoch in Eigenverantwortung, wenn sie eigene Tools entwickelt — die Tool-Einführung muss formal über die Schulleitung laufen, und der schulische Datenschutzbeauftragte (DSB) ist einzubinden.

**Anwendbarkeit der DSGVO:** Sie greift, sobald personenbezogene Daten verarbeitet werden. Pseudonyme + localStorage bedeuten nicht automatisch Anonymität — re-identifizierbare Pseudonyme bleiben personenbezogen (vgl. EuGH Breyer 2016). Erst echte Anonymisierung (kein Rückbezug möglich, auch nicht durch Kombination) führt aus dem Anwendungsbereich. K-Anonymity (k ≥ 5) ist ein nützliches Prüfraster.

**Rechtsgrundlage (Art. 6):** In Schulen typischerweise Art. 6 Abs. 1 lit. e i.V.m. Landesschulgesetz und Schul-DatenschutzVO — *nicht* Einwilligung, weil die Freiwilligkeit im Schul-Machtverhältnis problematisch ist (Kopplungsverbot, Art. 7 Abs. 4). Einwilligung ist *zusätzlich* nötig für alles, was über den Bildungsauftrag hinausgeht: Drittlandstransfer in Cloud-LLMs, optionale Profile, freiwillige Nutzung außerhalb des Unterrichts.

**Besondere Kategorien (Art. 9):** Sobald Lernende in Freitexten Antworten zu Politik, Religion, Gesundheit oder Weltanschauung *geben können* (z.B. in offenen DSGVO-Fällen oder Ethik-Dilemmas), ist das Risiko da. Konsequenz: Freitexte nicht serverseitig speichern, explizit instruieren keine persönlichen Daten einzugeben, und Prompt-Filter implementieren.

## Durchführung

### Datenschutz-Prinzipien operationalisiert

1. **Datenminimierung (Art. 5 Abs. 1 lit. c):** Wenn die Lernumgebung ohne Login funktioniert, dann ohne Login. Wenn sie ohne Server funktioniert, dann ohne Server. Default: kein Tracking.
2. **Zweckbindung (Art. 5 Abs. 1 lit. b):** Daten nur für den Lernzweck. Keine stille Sekundärnutzung für "wir messen mal Engagement für ein Paper".
3. **Speicherbegrenzung (Art. 5 Abs. 1 lit. e):** Lernstände am Schuljahres-/Kursende automatisch löschen. Bei localStorage: TTL einbauen oder Reset-Button prominent platzieren.
4. **Integrität (Art. 5 Abs. 1 lit. f):** TLS überall, keine PII im URL-Querystring, keine Klarnamen in localStorage-Keys.
5. **Transparenz (Art. 12-14):** Kurze, verständliche Datenschutz-Info direkt in der App — beim ersten Aufruf, nicht versteckt.
6. **Privacy by Design (Art. 25):** Datensparsamkeit ist Architekturentscheidung, keine nachträgliche Einstellung.
7. **Pseudonymisierung als Pflichtmaßnahme (Art. 32 Abs. 1 lit. a):** Technisches Pseudonym (UUID) statt Name + Klasse.
8. **Privacy by Default (Art. 25 Abs. 2):** Optionale Features (Cloud-Sync, KI-Tutor) sind Opt-in, nicht Opt-out.

### LLM-Integration datenschutzkonform

| Variante | Risiko | Praktikabilität | Empfohlen für |
|---|---|---|---|
| **US-Cloud-LLM** mit Schüler-Inputs | Hoch (Drittland, AVV, DPF-Abhängigkeit) | Sehr hoch | Nur mit AVV + EU-US DPF + Einwilligung + Prompt-Filter |
| **EU-gehostetes LLM** (Azure OpenAI EU, Mistral, Aleph Alpha) | Mittel (AVV trotzdem nötig) | Hoch | Sinnvoller Default für Schul-Settings |
| **Lokales LLM** (Ollama, llama.cpp, WebLLM) | Sehr niedrig | Mittel (Latenz, Modellgröße) | Wenn Aufgabe es erlaubt — der ehrliche Königsweg |
| **Hybrid** (lokal für User-Input, Cloud für anonyme Templates) | Niedrig | Mittel | Best Practice für die meisten Fälle |

**Schrems II + EU-US Data Privacy Framework (2023):** Seit Juli 2023 gilt das DPF als angemessener Schutz — zertifizierte US-Anbieter (OpenAI, Anthropic, Google sind gelistet) sind damit rechtlich zulässig, sofern ein AVV besteht. Die Rechtslage bleibt fragil; Schul-DSBs verlangen oft zusätzlich Standardvertragsklauseln. Im Zweifel: EU-Region wählen.

**Auftragsverarbeitung (Art. 28):** Wer als Lehrkraft einen API-Account bei OpenAI eröffnet und Schülerdaten verarbeitet, schließt persönlich den AVV — was rechtlich unsauber ist, weil eigentlich der Schulträger Vertragspartner sein müsste. Sauberer Weg: über die Schule, oder solange keine personenbezogenen Schülerdaten den Browser verlassen, ist die Lage entspannter.

**Prompt-Hygiene** (das wichtigste praktische LLM-Thema):
- Keine Schülernamen, Klassen, IDs in Prompts
- System-Prompts so bauen, dass User-Inputs als Daten, nicht als Code interpretiert werden (siehe [[prompt-engineering-didaktisch]], Pattern 7)
- Regex-Filter auf typische PII-Muster (E-Mail, Namen, Telefonnummern) vor dem API-Call
- Logging auf Lehrer-Seite nur pseudonym, idealerweise gar nicht
- Lernende vor dem ersten Input explizit instruieren: "Gib hier keine persönlichen Daten ein."

### Einwilligungsmanagement (Checkliste)

- **Schriftform:** Nicht zwingend, aber Nachweispflicht (Art. 7 Abs. 1) → de facto Schriftform oder dokumentiertes digitales Opt-in.
- **Mindestinhalte (Art. 13):** Verantwortlicher, Zweck, Rechtsgrundlage, Empfänger (auch LLM-Anbieter), Speicherdauer, Betroffenenrechte, Beschwerderecht, Drittlandstransfer mit Garantien.
- **Widerruflichkeit:** Muss so einfach sein wie die Erteilung (Art. 7 Abs. 3) → Reset-Button in der App.
- **Alter (Art. 8):** Bei Art. 6 lit. e-Grundlage nicht relevant. Bei Einwilligung: 16 Jahre Schwelle in Deutschland. Jüngere: Erziehungsberechtigte einbeziehen.
- **Granularität:** Getrennte Einwilligungen für Pflichtnutzung, optionale Cloud-Features, Auswertung durch Lehrkraft.

### Technische und organisatorische Maßnahmen

- TLS überall, HSTS-Header
- Content Security Policy strikt
- Keine Third-Party-Tracker (kein Google Fonts vom CDN, keine Analytics, YouTube-Embed nur mit nocookie)
- localStorage statt Cookies (kein Server-Roundtrip, nicht trackingrelevant)
- Hosting bei EU-Anbieter für PII-haltige Teile (GitHub Pages ist US — für rein statische anonyme Inhalte unkritisch)
- Subresource Integrity für externe JS-Bibliotheken
- Keine Source Maps in Production, wenn sie API-Endpunkte verraten
- **Recht auf Auskunft (Art. 15) / Löschung (Art. 17) ohne Backend:** Export-Button ("Lade alle Daten als JSON") + Reset-Button — die Client-only-Lösung für diese Rechte
- **Verzeichnis von Verarbeitungstätigkeiten (Art. 30):** auch für eigenentwickelte Tools eintragen; der schulische DSB führt das
- **Datenschutz-Folgenabschätzung (Art. 35):** bei systematischer Auswertung von Lerndaten Minderjähriger tendenziell Pflicht. Bei reiner Pseudonym-localStorage-Lösung ohne Server meist entbehrlich.

## Voraussetzungen

- Kontakt zum schulischen Datenschutzbeauftragten
- Informierte Schulleitung (formale Zustimmung vor Einsatz)
- Für LLM-Features: Klarheit über genutzten Anbieter und AVV-Lage
- Bereitschaft, Datensparsamkeit als Design-Prinzip zu behandeln, nicht als nachträgliches Compliance-Ritual

## Varianten

- **Minimal (Client-only, kein LLM):** Statische Site + localStorage. Weitgehend datenschutzneutral. Einwilligung via informeller Hinweis.
- **Mit EU-Cloud-LLM:** Prompt-Filter + AVV + EU-Region + explizite Einwilligung für die LLM-Nutzung.
- **Mit US-Cloud-LLM:** Plus DPF-Zertifizierung prüfen, SCCs ergänzend, DSFA meist nötig.
- **Mit lokalem LLM (WebLLM/Ollama):** Maximaler Datenschutz, minimale externe Abhängigkeiten. Trade-off: Latenz und Modellqualität.

## Zeitbedarf

Erstes Datenschutz-Setup für eine neue App: 4-8h (DSB-Gespräch, Datenschutz-Info-Seite, Einwilligungsformular, Reset-/Export-Buttons). Laufende Pflege pro Iteration: ~1h für Auswirkungsprüfung neuer Features. DSFA bei LLM-Integration: 8-16h inkl. Abstimmung mit DSB.

## Sonderfall Berufsschule

Berufsschulklassen sind die unbequemste Konstellation: 16-jährige Azubis sitzen neben 28-jährigen Umschülern. Konsequenzen:

- **Default auf Minderjährigen-Niveau ausrichten** — keine altersabhängigen "Erleichterungen" bauen, das skaliert nicht.
- **Einwilligungen pauschal über Eltern bei U18**, bei Volljährigen direkt — gleicher Wortlaut, unterschiedlicher Adressat.
- **Ausbildungsbetrieb beachten:** Bei dualen Azubis kann der Betrieb Datenschutz-Interessen haben, wenn betriebliche Inhalte (Tickets, Code) in die Lernumgebung wandern. Im Zweifel: nur synthetische Daten.
- **Keine Notenrelevanz koppeln:** Sobald die Nutzung benotet wird, ist die Freiwilligkeit der Einwilligung dahin (Kopplungsverbot). Lieber Pflichtnutzung auf Art. 6 lit. e + alternative Lernwege für Verweigerer.

## Häufige Fehler und Antipattern

- **Pseudonym = anonym setzen** — Re-Identifizierung über Klassengröße, Antwortmuster, Zeitstempel ist oft trivial.
- **Cloud-LLM ohne Prompt-Filter** — der erste Schüler, der seinen Namen tippt, erzeugt einen Datenschutzvorfall.
- **Lehrer-eigene API-Keys** statt Schul-Account — verlagert die Verantwortung auf die Lehrkraft persönlich.
- **Vorrats-Logging** ("wir loggen mal alles, vielleicht brauchen wir es") verletzt Datenminimierung und Zweckbindung gleichzeitig.
- **Einwilligung als Rechtsgrundlage im Pflichtunterricht** — wegen fehlender Freiwilligkeit unwirksam.
- **Third-Party-Requests "nur kurz für Tests"** — jeder externe Request ist ein potenzieller IP-/PII-Leak.
- **DSFA-Pflicht ignorieren, weil "nur Schule"** — gerade bei Profilbildung Minderjähriger ist die Schwelle niedrig.

## Pragmatischer Fahrplan für Einzelentwickler-Lehrer

1. **Architektur-Entscheidung vorab:** Client-only mit localStorage als Default. Server nur bei explizitem Use-Case.
2. **Schulischen DSB früh kontaktieren** (nicht am Ende). 30-Minuten-Vorabklärung erspart nachträgliche Re-Architektur.
3. **Datenschutz-Info-Seite in die App** — eine Markdown-Seite reicht, Mindestinhalte aus Art. 13, in Schülersprache.
4. **LLM-Strategie wählen** nach Tabelle oben — im Zweifel lokales Modell oder EU-Region.
5. **Reset-/Export-Buttons + automatische Löschung zum Schuljahresende** — erfüllen Art. 15/17 ohne Backend.
6. **Optional: Dokumentation deiner Datenschutz-Entscheidungen veröffentlichen**, damit Kolleg:innen die Hürde für eigene Entwicklungen senken können.

## Bezug zur IT-Ausbildung

Dieser Artikel schließt den ironischen Kreis: Wer eine DSGVO-Lernumgebung baut, muss DSGVO auch selbst umsetzen. Der Prozess selbst ist lehrreich und kann in LF4 oder LF10-12 als authentische Handlungssituation genutzt werden — Azubis evaluieren die Datenschutz-Architektur einer existierenden Lernumgebung, identifizieren Schwachstellen, schlagen Verbesserungen vor. Praktisch wertvoller als jedes Lehrbuch-Fallbeispiel, weil die "Verantwortliche" im Raum sitzt.

## Praktische Anwendung

1. **Client-only als Default annehmen**, Ausnahmen begründen.
2. **DSB kontaktieren**, bevor geschrieben wird — nicht nachdem die App steht.
3. **Prompt-Hygiene-Filter implementieren** für jeden LLM-Call, der User-Input verarbeitet.
4. **Einwilligung nur wo wirklich nötig** — meist reicht Art. 6 lit. e für schulische Pflichtnutzung.
5. **Export + Reset als Pflicht-Features**, nicht als optionale Extras.
6. **DSGVO-Reflexion dokumentieren** — im Git-Repo, als DSFA-Light. Schafft Vertrauen und überlebt Lehrkraft-Wechsel.

## Verwandte Konzepte

- [[llm-integrationsmuster-lernumgebungen]] — die vier Muster müssen alle prompt-hygienisch implementiert werden
- [[prompt-engineering-didaktisch]] — Pattern 7 (Injection-Sandbox) ist direkt datenschutzrelevant
- [[ki-gestuetztes-tutoring]] — Stufenmodell "erst ohne, dann mit KI" ist auch eine Datenschutz-Stufung
- [[interaktive-lernumgebungen]] — Privacy by Design ist ein zusätzliches Gestaltungsprinzip
- [[learning-engineering]] — Knowledge Tracing erzeugt Profile, die DSFA-relevant sind, sobald persistiert
- [[ki-native-lernumgebungen]] — die Frontier-Landschaft verschiebt sich Richtung On-Device-Modelle, datenschutzrechtlich der Königsweg
- [[evaluation-lernumgebungen]] — Evaluationsdaten sind selbst datenschutzrelevant, Ethik-Minimum dort diskutiert

## Quellen

- Verordnung (EU) 2016/679 (Datenschutz-Grundverordnung). Insbesondere Art. 4, 5, 6, 8, 9, 13, 15, 17, 25, 28, 30, 32, 35.
- Konferenz der unabhängigen Datenschutzaufsichtsbehörden des Bundes und der Länder (DSK) (2024). *Orientierungshilfe: Künstliche Intelligenz und Datenschutz*.
- EuGH (2020). Urteil C-311/18 (Schrems II).
- EU-Kommission (2023). Durchführungsbeschluss (EU) 2023/1795 zum EU-US Data Privacy Framework.
- Bayerischer Landesbeauftragter für den Datenschutz (BayLfD). *Datenschutz an bayerischen öffentlichen Schulen — Fragen und Antworten* (FAQ, fortlaufend gepflegt). https://www.datenschutz-bayern.de/datenschutzreform2018/FAQ_Schulen.pdf
- Bundesbeauftragte für den Datenschutz und die Informationsfreiheit (BfDI) (2024). *32. Tätigkeitsbericht 2023*. https://www.bfdi.bund.de/SharedDocs/Downloads/DE/Taetigkeitsberichte/32TB_23.html
- Hoofnagle, C. J., van der Sloot, B., & Borgesius, F. Z. (2019). The European Union General Data Protection Regulation: What it is and what it means. *Information & Communications Technology Law*, 28(1), 65-98.
