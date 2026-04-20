---
title: "KI-Kompetenzrahmen für Schule und Berufsausbildung"
type: theorie
tags: [ki-kompetenz, ai-literacy, curriculum, referenz, kmk, rahmenlehrplan, oecd, unesco, digcomp]
related:
  - "[[ki-gestuetztes-tutoring]]"
  - "[[ki-native-lernumgebungen]]"
  - "[[llm-integrationsmuster-lernumgebungen]]"
  - "[[prompt-engineering-didaktisch]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[datenschutz-lernumgebungen]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[lernsituationen-gestalten]]"
  - "[[constructive-alignment]]"
  - "[[blooms-taxonomie]]"
  - "[[ki-erfahrungsberichte-berufliche-bildung]]"
  - "[[ki-tool-auswahl-berufsschule]]"
  - "[[ki-nutzungsregeln-unterricht]]"
  - "[[kritische-ki-bewertungskompetenz]]"
  - "[[ki-prompt-handwerk]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, bewerten]
created: 2026-04-09
updated: 2026-04-09
summary: >
  Synopse der wichtigsten KI-Kompetenzrahmen (OECD/EC AILit 2025, UNESCO 2024,
  DigComp 2.2, KMK) und deren Mapping auf den Rahmenlehrplan Fachinformatiker.
  Referenzartikel für die Frage "Was sollen Schüler:innen über KI lernen?".
---

# KI-Kompetenzrahmen für Schule und Berufsausbildung

## Kernidee

Die Frage "Wie nutze ich KI im Unterricht?" ist gut bearbeitet — die komplementäre Frage "Was sollen Schüler:innen über KI lernen?" ist in der deutschen Berufsschulpraxis unterversorgt. Seit 2024 existieren mehrere internationale Rahmenwerke, die KI-Kompetenz systematisch beschreiben: OECD/EC **AILit** (Review-Draft 2025), **UNESCO AI Competency Frameworks** für Lehrkräfte und Schüler:innen (2024), **DigComp 2.2** als KI-angereicherter EU-Bürgerrahmen und die **KMK-Handlungsempfehlung KI** (2024) als deutsche Klammer. Keins dieser Rahmenwerke ist für sich genommen bindend oder vollständig — aber zusammen liefern sie die Sprache und Systematik, die im Rahmenlehrplan Fachinformatiker (2020) noch pre-LLM gedacht ist. Dieser Artikel ist der Übersetzer zwischen Rahmenwerken und Lernfeldern.

## Beschreibung

### Die vier relevanten Rahmenwerke im Überblick

**1. OECD/EC AILit Framework** (Review-Draft Mai 2025, Finalversion 2026)

Entwickelt gemeinsam von OECD, EU-Kommission und Code.org mit internationalen Expert:innen (u.a. aus Deutschland). Zielgruppe: Primar-/Sekundarschule plus Lehrkräfte und Curriculum-Designer. **Vier Domänen** mit insgesamt 22 Kompetenzen:

- **Engaging with AI** — KI-Systeme verstehen, kritisch bewerten, Ergebnisse einordnen
- **Creating with AI** — KI als Werkzeug produktiv einsetzen (Prompting, Workflow-Integration)
- **Managing AI** — Entscheidungen über KI-Einsatz treffen, Risiken managen, ethisch handeln
- **Designing AI** — Grundverständnis, wie KI-Systeme entworfen und trainiert werden

Öffentliche Konsultation lief bis Herbst 2025; die vier Domänen werden in der Finalversion erhalten bleiben, einzelne Kompetenzen können sich noch verschieben.

**2. UNESCO AI Competency Frameworks** (September 2024, final)

Zwei Rahmenwerke, eins für Lehrkräfte, eins für Schüler:innen:

- **Teachers:** 15 Kompetenzen in 5 Dimensionen (Human-centred mindset, Ethics, AI Foundations, Pedagogy, Professional Learning), 3 Progressionsstufen (Acquire → Deepen → Create)
- **Students:** 12 Kompetenzen in 4 Dimensionen (Human-centred mindset, Ethics of AI, AI techniques, AI system design)

Die beiden UNESCO-Rahmenwerke sind **die klarste Quelle zur Frage, was Lehrkräfte selbst können sollten** — nicht nur als didaktische Methode, sondern als eigene Kompetenz.

**3. DigComp 2.2** (März 2022, JRC/EU-Kommission)

Update des EU-Bürgerrahmens DigComp mit 250+ Beispielen zu KI, IoT und Data. **Kein eigener AI-Strang**, sondern KI als Anreicherung der 5 bestehenden Kompetenzbereiche (Information &amp; data literacy, Communication &amp; collaboration, Digital content creation, Safety, Problem solving). Deutschland bezieht sich in seiner KMK-Strategie implizit auf DigComp-Strukturen.

**4. KMK-Handlungsempfehlung KI** (Beschluss vom 10.10.2024)

"Handlungsempfehlung für die Bildungsverwaltung zum Umgang mit KI in schulischen Bildungsprozessen". Adressiert Schulträger und Bildungsverwaltung, weniger einzelne Lehrkräfte. Ergänzend: KMK-Jahresbericht "Bildung in der digitalen Welt 2024-2025" (Dezember 2025). Die übergeordnete Strategie **"Bildung in der digitalen Welt"** (2016, Ergänzung 2021) bleibt der deutsche Bezugsrahmen — darin wird KI überwiegend unter "Problemlösen und Handeln" sowie "Analysieren und Reflektieren" verortet, **ohne eigene KI-Achse**. Das ist der strukturelle Grund, warum die internationalen Rahmen für die deutsche Praxis Mehrwert liefern: Sie machen explizit, was in der KMK-Struktur nur implizit steckt.

### Synopse-Tabelle: Wo steht was?

| Kompetenzbereich | OECD AILit | UNESCO Students | DigComp 2.2 | KMK 6 Bereiche |
|---|---|---|---|---|
| **KI verstehen &amp; kritisch einordnen** | Engaging with AI | AI techniques + Ethics | Information &amp; data literacy (KI-Anreicherung) | Analysieren und Reflektieren |
| **Mit KI produktiv arbeiten** | Creating with AI | AI system design (schwach) | Digital content creation (KI-Anreicherung) | Produzieren und Präsentieren |
| **KI-Einsatz verantworten** | Managing AI | Human-centred mindset | Safety (KI-Anreicherung) | Schützen und sicher Agieren |
| **KI-Systeme grundlegend verstehen** | Designing AI | AI techniques + AI system design | Problem solving (KI-Anreicherung) | Problemlösen und Handeln |
| **Ethik, Fairness, Bias** | querschnittlich in allen | Ethics of AI | Safety + Communication | Schützen und sicher Agieren |

Kein Rahmen ist deckungsgleich — aber die vier Hauptachsen (Verstehen / Nutzen / Verantworten / Gestalten) sind in allen vorhanden. Das ist die Brücke für didaktische Planung.

### Reifegrad-Disclaimer

- **AILit ist Review-Draft**, nicht final. Die Domänenstruktur ist stabil, einzelne Kompetenz-Formulierungen können sich in der 2026er Finalversion noch ändern. Dieser Artikel sollte bei Final-Release nachgezogen werden.
- **UNESCO-Frameworks sind final** (September 2024) und beziehungsweise die stabilste Referenz.
- **DigComp 2.2 wird von EC aktiv weitergepflegt**, eine 2.3-Version ist in Vorbereitung.
- **KMK-Handlungsempfehlung 2024 ist final**, aber allgemein gehalten — sie verschiebt Detailarbeit auf die Länder.

## Bezug zur IT-Ausbildung

### Das Problem: Der Rahmenlehrplan Fachinformatiker (2020) ist pre-LLM

Der KMK-Rahmenlehrplan Fachinformatiker stammt von Dezember 2019/Januar 2020. ChatGPT erschien November 2022. Das bedeutet konkret:

- KI/ML taucht **nur in der Fachrichtung Daten- und Prozessanalyse** explizit auf, dort vor allem in Lernfeld 10c "Werkzeuge des maschinellen Lernens".
- Für **FIAE (Anwendungsentwicklung) und FIDP (Daten- und Prozessanalyse als separate Richtung) sowie Systemintegration** gibt es **kein eigenes KI-Lernfeld**.
- Die aktuell dominante LLM-basierte Arbeitsrealität (Copilot, ChatGPT im Arbeitsalltag) ist im Lehrplan nicht abgebildet.
- Das heißt **nicht**, dass KI-Kompetenz außen vor bleiben muss — aber sie muss in bestehende Lernfelder integriert werden, und diese Integration ist Eigenleistung der Lehrkraft.

### Das Mapping: Wo KI-Kompetenz im Rahmenlehrplan unterkommt

Die vier AILit-Domänen lassen sich pragmatisch auf bestehende Lernfelder abbilden:

| AILit-Domäne | Natürlicher Einbau in Lernfeld(er) FIAE | Konkrete Ankerpunkte |
|---|---|---|
| **Engaging with AI** (kritisch einordnen) | LF 2 (Arbeitsplatz), LF 6 (Serviceanfragen), LF 7 (Geschäftsprozesse) | Tool-Evaluation, KI-Output auf Halluzinationen prüfen, Bias in Support-Antworten |
| **Creating with AI** (produktiv nutzen) | LF 5 (SQL/Daten), LF 8 (APIs), LF 10a (Objektorientierung) | Prompting als Programmier-Hilfstechnik, Copilot-Einsatz mit "Explain before use" |
| **Managing AI** (verantworten) | LF 4 (Schutzbedarf), LF 6 (Kundenkommunikation), LF 11 (Projekt) | Datenschutz bei LLM-Prompts, Urheberrechts-Fragen, Kundenberatung "Wann KI, wann nicht" |
| **Designing AI** (Grundverständnis) | LF 10c (nur FR Daten), Projektarbeit LF 11/12 | ML-Grundlagen, Training vs. Inferenz, Prompt-Engineering als Systemdesign |

**Wichtig**: Das ist ein Vorschlag, kein Verbindliches Mapping. Er funktioniert, solange er **innerhalb der Lernziele des jeweiligen Lernfeldes bleibt** — KI-Kompetenz darf die eigentliche Lernzielverfolgung nicht verdrängen. Das ist der Grund, warum die OECD/UNESCO-Rahmenwerke hier **Ergänzung** sind, nicht **Ersatz**: Sie geben der Lehrkraft Sprache und Systematik, um vor Schulleitung/Kollegium zu legitimieren, warum KI-Kompetenz einen Platz in LF 5 braucht — ohne dass LF 5 zum KI-Kurs wird.

### Der unsichtbare Teil: Lehrer-Kompetenz

Der **UNESCO Teachers Framework** ist die einzige Quelle, die Lehrer-Kompetenz explizit strukturiert. Die fünf Dimensionen — Human-centred mindset, Ethics, AI Foundations, Pedagogy, Professional Learning — sind nicht nur inhaltlich wichtig, sondern auch politisch nützlich: Sie liefern Argumente für Fortbildung, für Arbeitsentlastung während Einarbeitungsphasen und für Vernetzung mit Kolleg:innen. Die vier Progressionsstufen (Acquire → Deepen → Create → Lead) entsprechen der Dreyfus-Progression (vgl. [[expertise-entwicklung]]) und sind als Selbsteinschätzungswerkzeug direkt einsetzbar.

## Praktische Anwendung

Für ein Agent oder eine Lehrkraft, die diesen Rahmen bei Unterrichtsplanung nutzen will:

1. **Lernsituation entwerfen** (vgl. [[lernsituationen-gestalten]]): Im üblichen 6-Schritt-Verfahren explizit fragen "Welche der vier AILit-Domänen lässt sich hier natürlich einbauen?" — nicht alle, nicht erzwungen, aber auch nicht übersehen.
2. **Lernziele formulieren** (vgl. [[blooms-taxonomie]]) mit expliziter KI-Dimension: Ein "Verstehen"-Ziel zu SQL kann "SQL-Abfragen schreiben" sein, eine KI-Erweiterung wäre "Copilot-generierte SQL-Queries auf Korrektheit prüfen und Schwachstellen erklären" (Engaging with AI + Creating with AI gemeinsam).
3. **Constructive Alignment prüfen** (vgl. [[constructive-alignment]]): Wenn ein Lernziel KI-Kompetenz enthält, muss auch die Prüfung diese Kompetenz messen können — und zwar in einer KI-freien oder guardrail-gesicherten Umgebung (vgl. [[ki-tutoring-evidenzlage]] zum Bastani-Mechanismus).
4. **Argumentation gegenüber Schulleitung**: Für Freiräume und Rechtfertigungen auf OECD AILit und KMK-Handlungsempfehlung 2024 als gemeinsame Referenz verweisen — das zeigt, dass KI-Integration nicht Hobby einzelner Lehrkräfte ist, sondern internationale Policy.
5. **Lehrer-Selbsteinschätzung** mit UNESCO Teachers Framework (3 Progressionsstufen). Nützlich als Ausgangspunkt für Fortbildungsplanung und Kollegiums-Workshops — nicht als formale Bewertung.

### Offene Fragen, die dieser Rahmen nicht beantwortet

- Wie viel KI-Kompetenz muss in einer 3-jährigen Ausbildung Platz finden? Die Rahmenwerke geben keine Stundenzahlen.
- Welche KI-Kompetenzen sind **berufsspezifisch** (z.B. Prompt-Engineering als Programmier-Subkompetenz für FIAE) vs. **allgemeinbildend** (KI-Ethik)? Die Rahmenwerke sind fachunspezifisch.
- Wie wird KI-Kompetenz **prüfungsrelevant**? IHK-Prüfungen (AP1/AP2) sind Rahmenlehrplan-gebunden, d.h. aktuell **nicht** prüfungsrelevant — das schränkt die Hebelwirkung ein.

Diese Fragen bleiben offen und werden voraussichtlich erst mit dem nächsten Rahmenlehrplan-Update (Zeithorizont offen) beantwortet.

## Verwandte Konzepte

- [[ki-gestuetztes-tutoring]] — Das "Wie nutze ich KI" — komplementär zu diesem "Was sollen sie über KI lernen"
- [[ki-native-lernumgebungen]] — Technische Konsequenzen, wenn Lernumgebungen KI-Kompetenz selbst vermitteln sollen
- [[prompt-engineering-didaktisch]] — Creating with AI in konkreter Umsetzung
- [[ki-tutoring-evidenzlage]] — Warum "KI nutzen" und "KI lernen" nicht dasselbe sind (Bastani-Mechanismus)
- [[datenschutz-lernumgebungen]] — Managing AI im rechtlichen Sinn
- [[handlungsorientierter-unterricht]] — Lernfeldkonzept als deutsche Integrationsstruktur
- [[lernsituationen-gestalten]] — Methodischer Einbau der KI-Dimension in Lernsituationen
- [[constructive-alignment]] — Alignment-Check, wenn KI-Kompetenz als Lernziel hinzukommt
- [[blooms-taxonomie]] — Operator-Formulierung für KI-bezogene Lernziele

## Quellen

- OECD, EC &amp; Code.org (2025). *AILit Framework: AI Literacy for Learners — Review Draft*. Mai 2025. https://ailiteracyframework.org/
- UNESCO (2024). *AI Competency Framework for Teachers*. Paris: UNESCO. https://www.unesco.org/en/articles/ai-competency-framework-teachers
- UNESCO (2024). *AI Competency Framework for Students*. Paris: UNESCO. https://www.unesco.org/en/articles/ai-competency-framework-students
- Vuorikari, R., Kluzer, S., &amp; Punie, Y. (2022). *DigComp 2.2: The Digital Competence Framework for Citizens*. EUR 31006 EN, Publications Office of the European Union, Luxembourg. JRC128415.
- Europäische Kommission (2022, aktualisiert 2024). *Ethical Guidelines on the Use of Artificial Intelligence and Data in Teaching and Learning for Educators*.
- KMK (2024). *Handlungsempfehlung für die Bildungsverwaltung zum Umgang mit KI in schulischen Bildungsprozessen*. Beschluss vom 10.10.2024.
- KMK (2016, Ergänzung 2021). *Bildung in der digitalen Welt — Strategie der Kultusministerkonferenz*.
- KMK (2025). *Jahresbericht Bildung in der digitalen Welt 2024-2025*. Dezember 2025.
- KMK (2020). *Rahmenlehrplan für die Ausbildungsberufe Fachinformatiker und Fachinformatikerin*. Beschluss vom 13.12.2019 / 13.01.2020.
- BIBB (2020). *Fachinformatiker/Fachinformatikerin — Ausbildung gestalten*. Bonn: BIBB-Publikation.
