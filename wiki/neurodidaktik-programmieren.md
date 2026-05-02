---
title: "Neurodidaktik des Programmierens"
type: theorie
tags: [neurodidaktik, fmri, code-verstehen, arbeitsgedaechtnis, kognitive-neurowissenschaft]
related:
  - "[[cognitive-load-theory]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[expertise-entwicklung]]"
  - "[[worked-examples]]"
  - "[[primm-methode]]"
  - "[[affektive-dimensionen]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen]
evidenzgrad: quasi-experimentell
created: 2026-04-10
updated: 2026-04-20
summary: >
  fMRI-Befunde zu Code-Verstehen: Das fronto-parietale Multiple-Demand-Netzwerk
  trägt die Hauptlast, Sprachareale sind nur randständig beteiligt. Expertise
  zeigt sich als differenziertere neuronale Muster, nicht als geringere
  Aktivierung. Liefert neurowissenschaftliche Evidenz für bekannte
  CLT-Empfehlungen — kein eigenständiges Didaktik-Framework.
---

# Neurodidaktik des Programmierens

## Kernidee

fMRI-Studien seit 2014 zeigen: Code-Verstehen rekrutiert primär das **Multiple-Demand-Netzwerk** (bilaterales fronto-parietales System für Logik und exekutive Funktionen), ergänzt um fokale Aktivität in sprachnahen Arealen bei Novizen. Es gibt **kein eigenständiges "Programmier-Areal"** — das Gehirn wiederverwendet Logik- und Arbeitsgedächtnis-Ressourcen. Die Befunde liefern Evidenz für das, was Cognitive Load Theory und Expertise-Forschung bereits empfehlen — sie sind Untermauerung, nicht neue Didaktik.

## Beschreibung

### Kernbefunde

- **Siegmund et al. (2014, ICSE):** Code-Verstehen aktiviert fünf linkslateralisierte Regionen inkl. Broca-Areal — wurde zunächst als "Code ist Sprache" gedeutet.
- **Ivanova et al. (2020, eLife) und Liu et al. (2020, eLife):** Revidieren das. Sprachareale reagieren schwach oder gar nicht; das **Multiple-Demand-Netzwerk** trägt die Last. **Liu et al.** zeigen zusätzlich: `for`-Schleifen und `if`-Bedingungen sind in MD-Regionen (PFC, IPS, pMTG) über Multivariate Pattern Analysis unterscheidbar (~64-68% Klassifikations-Genauigkeit) — bei **Ivanova et al.** ist die MD-Antwort hingegen *strukturunabhängig* (sequenziell/for/if produzieren keine bedeutsam unterschiedlichen Signaturen).
- **Ikutani et al. (2021, eNeuro):** Expertise = **differenziertere** kortikale Muster, nicht geringere Aktivierung — Expert:innen zeigen feiner abgestimmte Repräsentationen für Code-Strukturen. **Peitek et al. (2021, ICSE):** **Textlänge** trainiert Aufmerksamkeit, **Vokabulargröße** (Anzahl unterschiedlicher Bezeichner) belastet das Arbeitsgedächtnis messbar.
- **JHU 2025:** Neural-Recycling-Hypothese — Dieselben fronto-parietalen Neurone, die vor dem Kurs Algorithmus-Beschreibungen verarbeiteten, aktivieren danach auch beim Python-Lesen. Das Gehirn recycelt vorhandene Logik-Repräsentationen.

## Bezug zur IT-Ausbildung

**Was die Befunde für den Unterricht bedeuten — drei Aussagen, die direkt wirken:**

1. **Saubere Bezeichner sind neurowissenschaftlich nicht nur Stil, sondern messbare Entlastung** (Peitek 2021). `kundenListe` statt `kl` reduziert Arbeitsgedächtnisbelastung — konkreter Hebel für Clean-Code-Disziplin in der Ausbildung.
2. **Code-Lesen vor Code-Schreiben** nutzt Neural Recycling direkt: vorhandene Logik-Verarbeitung wird auf Code umgelenkt. Stützt [[primm-methode]] und [[worked-examples]] als Einstiegsformate.
3. **Expertise-Reversal hat ein neuronales Korrelat** — Novizen und Fortgeschrittene brauchen unterschiedliche Aufgabenformen (vgl. [[cognitive-load-theory]], [[expertise-entwicklung]]).

Für [[sprachsensibler-it-unterricht]] liefern die Befunde eine zusätzliche Begründung: Obwohl Sprachareale nicht dominant sind, erhöht unklare Terminologie die Last auf genau die Ressourcen (Arbeitsgedächtnis, Aufmerksamkeit), die für Code-Verstehen gebraucht werden — für DaZ-Lernende kumuliert das.

## Praktische Anwendung

Die neurowissenschaftlichen Befunde fügen keine neuen Methoden hinzu, sie **legitimieren vorhandene**:

- **Scaffolding** reduziert Last auf das MD-Netzwerk — bei Novizen besonders wichtig.
- **Worked Examples** entlasten Arbeitsgedächtnis durch externe Repräsentation.
- **PRIMM** sequenziert von sprachlich-rezeptiv (Predict, Run) zu exekutiv-produktiv (Modify, Make) — passt zur neurokognitiven Progression.
- **Multimodale Darstellung** (Code + Flussdiagramm + mündliche Erklärung) nutzt die verteilte Verarbeitung.

Wenn eine Lehrkraft bereits mit CLT, Scaffolding und Subskill-Progression arbeitet, sind die neurodidaktischen Befunde primär ein **Argumentations-Reservoir** gegenüber Skeptikern — nicht ein neuer Methodenkatalog.

## Verwandte Konzepte

- [[cognitive-load-theory]] — das didaktische Framework, das die fMRI-Befunde stützen
- [[sprachsensibler-it-unterricht]] — zusätzliche neurowissenschaftliche Begründung
- [[expertise-entwicklung]] — Dreyfus-Stufen mit neuronalem Korrelat (differenzierte Muster)
- [[worked-examples]] — entlasten Arbeitsgedächtnis, auch neuronal belegt
- [[primm-methode]] — Sequenzierung passt zur neurokognitiven Progression
- [[affektive-dimensionen]] — hohe neuronale Last erklärt Novizen-Frustration

## Quellen

- Ivanova, A. A. et al. (2020). Comprehension of Computer Code Relies Primarily on Domain-General Executive Brain Regions. *eLife*, 9, e58906.
- Liu, Y. et al. (2020). Computer Code Comprehension Shares Neural Resources with Formal Logical Inference in the Fronto-Parietal Network. *eLife*, 9, e59340.
- Ikutani, Y., Kubo, T., Nishida, S., Hata, H., Matsumoto, K., Ikeda, K. & Nishimoto, S. (2021). Expert Programmers Have Fine-Tuned Cortical Representations of Source Code. *eNeuro*, 8(1), ENEURO.0405-20.2020. https://doi.org/10.1523/ENEURO.0405-20.2020
- Peitek, N. et al. (2021). Program Comprehension and Code Complexity Metrics: An fMRI Study. *ICSE '21*, 524–536.
- Siegmund, J. et al. (2014). Understanding Understanding Source Code with Functional Magnetic Resonance Imaging. *ICSE '14*, 378–389.
- Dehaene, S. & Cohen, L. (2007). Cultural Recycling of Cortical Maps. *Neuron*, 56(2), 209–217.
