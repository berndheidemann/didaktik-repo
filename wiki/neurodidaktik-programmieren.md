---
title: "Neurodidaktik des Programmierens"
type: theorie
tags: [neurodidaktik, fmri, code-verstehen, gehirnforschung, sprachverarbeitung, arbeitsgedaechtnis, kognitive-neurowissenschaft]
related:
  - "[[cognitive-load-theory]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[worked-examples]]"
  - "[[expertise-entwicklung]]"
  - "[[debugging-als-kompetenz]]"
  - "[[metakognition]]"
  - "[[threshold-concepts]]"
  - "[[scaffolding]]"
  - "[[primm-methode]]"
  - "[[affektive-dimensionen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, analysieren]
evidenzgrad: quasi-experimentell
created: 2026-04-10
updated: 2026-04-10
summary: >
  Neurowissenschaftliche fMRI-Befunde zu Code-Verstehen: Programmverstehen
  aktiviert ein fronto-parietales Netzwerk (Arbeitsgedächtnis, Aufmerksamkeit)
  sowie teils sprachnahe Areale — mit klaren Implikationen für
  Sequenzierung, Sprachsensibilität und Scaffolding im Programmierunterricht.
---

# Neurodidaktik des Programmierens

## Kernidee

Seit 2014 zeigen fMRI-Studien: Programmverstehen ist weder reines Sprachverstehen noch reines logisches Schlussfolgern, sondern rekrutiert ein verteiltes Netzwerk aus Arbeitsgedächtnis-, Aufmerksamkeits- und teils sprachnahen Regionen. Code-Lesen ist kognitiv anspruchsvoll auf mehreren Ebenen gleichzeitig — Unterricht muss diese Mehrfachbelastung gezielt adressieren.

## Beschreibung

### Die Pionierstudie: Siegmund et al. (2014)

Janet Siegmund, Sven Apel und Kollegen (Universität Passau) liessen 17 Teilnehmende im fMRI-Scanner kurze Java-Snippets verstehen (Ausgabe vorhersagen) oder Syntaxfehler finden (Kontrolle). Programmverstehen aktivierte fünf linkslateralisierte Hirnregionen: mittlerer Frontalgyrus (MFG), inferiorer Frontalgyrus (IFG, inkl. Broca-Areal BA 44/45), inferiorer Parietallobulus (IPL) und mittlerer Temporalgyrus (MTG). Besonders die Aktivierung des Broca-Areals — ein klassisches Sprachzentrum — sorgte für Aufsehen: Code wird teilweise wie natürliche Sprache verarbeitet (Siegmund et al., 2014).

### Sprache vs. Multiple-Demand-Netzwerk (2020)

**Ivanova et al. (MIT):** Zwei Experimente (Python, n = 24; ScratchJr, n = 19). Sprachareale zeigten kaum Reaktion auf Code. Stattdessen aktivierte Code-Verstehen primär das **Multiple-Demand-Netzwerk** — ein bilaterales fronto-parietales System für Logik und exekutive Funktionen. Code nutzt allerdings andere MD-Teile als reine Mathematik (Ivanova et al., 2020).

**Liu et al. (JHU):** Erfahrene Programmierende (M = 11 Jahre) bearbeiteten Code-, Logik-, Mathematik- und Sprachaufgaben. Code aktivierte ein linkslateralisiertes fronto-parietales Netzwerk mit starker Überlappung zu formaler Logik, aber niedriger zu Sprache. `for`-Schleifen und `if`-Bedingungen liessen sich anhand der Aktivierungsmuster unterscheiden (Liu et al., 2020).

### Synthese

| Hirnnetzwerk | Aktivierung bei Code | Quelle |
|---|---|---|
| Broca-Areal (BA 44/45) | Moderat, v.a. bei Novizen | Siegmund et al., 2014 |
| Multiple-Demand-Netzwerk | Stark bilateral | Ivanova et al., 2020 |
| Fronto-parietales Netzwerk | Stark linkslateralisiert | Liu et al., 2020 |
| MTG (mittlerer Temporalgyrus) | Konsistent aktiviert | Peitek et al., 2021 |

Die Widersprüchlichkeit löst sich auf: Einfache Snippets bei Novizen rekrutieren stärker Sprachareale, komplexe Programme bei Experten stärker das exekutive Netzwerk.

### Expertise verändert die neuronale Repräsentation

Peitek et al. (2021, eNeuro) zeigten per Multivoxel-Musteranalyse, dass erfahrene Programmierende **fein abgestimmte kortikale Repräsentationen** für Quellcode entwickeln. Sieben Hirnregionen kodierten Code-Kategorien, und die Dekodiergenauigkeit korrelierte mit der individuellen Programmierleistung. Expertise bedeutet nicht "weniger Aktivierung", sondern **differenziertere neuronale Muster** — analog zur [[expertise-entwicklung]] nach Dreyfus.

### Komplexitätsmetriken und Gehirnaktivierung

Peitek et al. (2021, ICSE, ACM SIGSOFT Distinguished Paper Award) untersuchten 41 Code-Komplexitätsmetriken und ihre neuronalen Korrelate (n = 19). Die Textlänge trieb Aufmerksamkeitsprozesse an, die Vokabulargrösse (Anzahl verschiedener Bezeichner) belastete gezielt das Arbeitsgedächtnis. Die Befunde liefern neurowissenschaftliche Argumente für saubere Benennung und kurze Funktionen.

### Neuronales Recycling beim Programmierenlernen

Eine JHU-Studie (2025) begleitete Studierende per fMRI vor und nach einem Python-Kurs. Dieselben fronto-parietalen Neuronengruppen, die vor dem Kurs beim Lesen natürlichsprachlicher Algorithmus-Beschreibungen feuerten, aktivierten nach dem Kurs auch beim Lesen von Python-Code. Das Gehirn "recycelt" vorhandene Logik-Repräsentationen — ein Beleg für die Neural-Recycling-Hypothese (Dehaene & Cohen, 2007).

## Bezug zur IT-Ausbildung

Die neurowissenschaftlichen Befunde haben direkte Konsequenzen für den Programmierunterricht bei Fachinformatiker:innen:

**Doppelte kognitive Last:** Code beansprucht sowohl sprachnahe Areale (Bezeichner, Schlüsselwörter) als auch exekutive Netzwerke (Kontrollfluss, Zustandsverfolgung) — eine doppelte Last (vgl. [[cognitive-load-theory]]), die besonders in LF5-6 adressiert werden muss.

**Sprachsensibilität neurowissenschaftlich begründet:** Sprachareale beim Code-Lesen erklären, warum [[sprachsensibler-it-unterricht]] wirkt. Unklare Bezeichner oder kryptische Fehlermeldungen erhöhen die Last auf genau die Areale, die für Code-Verstehen gebraucht werden. Für DaZ-Lernende entsteht ein zusätzlicher Engpass.

**Expertise als neuronale Spezialisierung:** Der Novize-Experte-Übergang zeigt sich im fMRI als zunehmende Differenzierung kortikaler Muster. Das stützt die Subskill-Progression (Tracing → Explaining → Writing → Designing, vgl. [[expertise-entwicklung]]).

**Threshold Concepts als neuronale Reorganisation:** Schwellenkonzepte wie Rekursion (vgl. [[threshold-concepts]]) erfordern vermutlich eine Reorganisation bestehender neuronaler Muster — was den typischen "stuck"-Zustand erklärt.

## Praktische Anwendung

### Sequenzierung nach neurokognitiver Belastung

| Phase | Strategie | Neurowissenschaftliche Begründung |
|---|---|---|
| Einstieg | Code **laut vorlesen** lassen, Bezeichner besprechen | Sprachareale aktivieren, semantischen Zugang schaffen |
| Aufbau | [[worked-examples]] mit Trace-Tabellen | Arbeitsgedächtnis durch externe Repräsentation entlasten |
| Vertiefung | [[primm-methode]]: Predict → Run → Investigate | Schrittweise Aktivierung von Sprach- und Exekutivnetzwerk |
| Transfer | Eigenen Code schreiben und erklären | Beide Netzwerke integrieren, [[metakognition]] fördern |

### Konkrete Unterrichtsimplikationen

1. **Sprechende Bezeichner einfordern:** Die Vokabulargrösse belastet das Arbeitsgedächtnis messbar (Peitek et al., 2021). `kundenListe` statt `kl` reduziert neuronale Last — ein empirisches Argument für Clean Code in der Ausbildung.

2. **Code-Lesen vor Code-Schreiben:** Das Gehirn recycelt vorhandene Sprachverarbeitungsmuster. [[primm-methode]] und [[worked-examples]] nutzen das gezielt: Erst lesen, dann verstehen, dann modifizieren, dann produzieren.

3. **Multimodale Darstellung:** Da Code sprachliche und räumlich-logische Verarbeitung erfordert, helfen [[multimedia-gestaltungsprinzipien]]: Flussdiagramme neben Code (Dual Coding), mündliche Erklärung zu visuellem Code (Modalitätsprinzip).

4. **Debugging als Metakognitions-Training:** Beim [[debugging-als-kompetenz]] wechseln Lernende zwischen sprachlicher Oberfläche und logischer Tiefenstruktur — die Integration, die im fMRI als Expertise-Marker sichtbar wird.

5. **Affektive Dimension beachten:** Hohe neuronale Beanspruchung erklärt Frustration bei Novizen (vgl. [[affektive-dimensionen]]). [[scaffolding]] reduziert kognitive und emotionale Überlastung.

6. **Differenzierung neurologisch begründen:** Der Expertise-Reversal-Effect (vgl. [[cognitive-load-theory]]) hat ein neuronales Korrelat: Experten brauchen andere Aufgaben als Novizen mit generischen Verarbeitungswegen.

## Verwandte Konzepte

- [[cognitive-load-theory]] — fMRI-Befunde liefern neuronale Evidenz für Arbeitsgedächtnisbelastung
- [[sprachsensibler-it-unterricht]] — Sprachareale beim Code-Lesen begründen Sprachsensibilität
- [[multimedia-gestaltungsprinzipien]] — Dual Coding nutzt die verteilte neuronale Verarbeitung
- [[worked-examples]] — Entlasten das beim Code-Verstehen stark beanspruchte Arbeitsgedächtnis
- [[expertise-entwicklung]] — Dreyfus-Stufen spiegeln sich in differenzierteren kortikalen Mustern
- [[debugging-als-kompetenz]] — Erfordert Integration sprachlicher und logischer Verarbeitung
- [[metakognition]] — Wechsel zwischen Code-Oberfläche und Tiefenstruktur
- [[threshold-concepts]] — Schwellenkonzepte erfordern neuronale Reorganisation
- [[scaffolding]] — Reduziert neuronale Überlastung bei Novizen
- [[primm-methode]] — Folgt der neurokognitiven Logik: Sprachzugang vor Exekutivzugang
- [[affektive-dimensionen]] — Hohe neuronale Beanspruchung erklärt Frustration bei Novizen

## Quellen

- Siegmund, J., Kästner, C., Apel, S., Parnin, C., Bethmann, A., Leich, T., Saake, G. & Brechmann, A. (2014). Understanding Understanding Source Code with Functional Magnetic Resonance Imaging. *ICSE '14*, 378-389.
- Ivanova, A. A., Srikant, S., Sueoka, Y., Kean, H. H., Dyer, R., Allen, S., Fedorenko, E. & Levy, R. P. (2020). Comprehension of Computer Code Relies Primarily on Domain-General Executive Brain Regions. *eLife*, 9, e58906.
- Liu, Y., Kim, J., Wilson, C. & Bedny, M. (2020). Computer Code Comprehension Shares Neural Resources with Formal Logical Inference in the Fronto-Parietal Network. *eLife*, 9, e59340.
- Peitek, N. et al. (2021). Expert Programmers Have Fine-Tuned Cortical Representations of Source Code. *eNeuro*, 8(1), ENEURO.0405-20.2020.
- Peitek, N., Apel, S., Parnin, C., Brechmann, A. & Siegmund, J. (2021). Program Comprehension and Code Complexity Metrics: An fMRI Study. *ICSE '21*, 524-536. (ACM SIGSOFT Distinguished Paper Award)
- Dehaene, S. & Cohen, L. (2007). Cultural Recycling of Cortical Maps. *Neuron*, 56(2), 209-217.
