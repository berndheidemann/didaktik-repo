---
title: Affektive Dimensionen des Programmierenlernens
type: theorie
tags: [motivation, selbstwirksamkeit, growth-mindset, angst, dropout, inklusion]
related:
  - "[[selbstgesteuertes-lernen]]"
  - "[[scaffolding]]"
  - "[[productive-failure]]"
  - "[[gamification-it-unterricht]]"
  - "[[pair-programming-unterricht]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[cognitive-apprenticeship]]"
  - "[[community-of-practice]]"
  - "[[wissensretention-programmierung]]"
audience: [FIAE, FIDP]
taxonomiestufe: [analysieren, bewerten]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Dropout beim Programmierenlernen ist primär affektiv, nicht kognitiv —
  Selbstwirksamkeit (Bandura), Growth Mindset (Dweck) und Zugehörigkeitsgefühl
  sind stärkere Prädiktoren für Erfolg als Vorkenntnisse oder Intelligenz.
---

# Affektive Dimensionen des Programmierenlernens

## Kernidee

Die meisten CS1-Abbrecher:innen *könnten* den Stoff verstehen — sie hören auf, weil sie frustriert, ängstlich oder überzeugt sind, "nicht für Programmieren gemacht" zu sein. Selbstwirksamkeit, Growth Mindset und Zugehörigkeitsgefühl sind stärkere Prädiktoren für Erfolg als Mathe-Noten oder IQ. Ein Lernsystem, das nur die kognitive Seite adressiert, löst das Dropout-Problem nicht.

## Beschreibung

### Selbstwirksamkeit (Bandura, 1997)

Selbstwirksamkeit ist die Überzeugung "Ich kann das schaffen." Ramalingam & Wiedenbeck (1998) zeigten: Selbstwirksamkeit ist der stärkste nicht-kognitive Prädiktor für Programmiererfolg — stärker als Mathe-Noten.

Vier Quellen der Selbstwirksamkeit:
1. **Mastery Experience** — Eigene Erfolgserlebnisse (die wichtigste Quelle). Kleine, erreichbare Aufgaben, die Erfolg erlebbar machen.
2. **Vicarious Experience** — Beobachten, wie ähnliche Personen Erfolg haben. "Wenn die/der das kann, kann ich das auch." → [[pair-programming-unterricht]], Peer-Modeling.
3. **Verbal Persuasion** — Ermutigung durch Lehrkraft oder Peers. "Du kannst das" — wirkt nur in Kombination mit echten Erfahrungen.
4. **Physiological State** — Angst und Stress senken Selbstwirksamkeit. Entspannte Lernumgebung → höhere Überzeugung.

### Growth Mindset (Dweck, 2006)

**Fixed Mindset:** "Programmieren ist Talent — entweder man kann es oder nicht."
**Growth Mindset:** "Programmieren ist eine erlernbare Fähigkeit — Anstrengung und Fehler sind der Weg."

Cutts et al. (2010) zeigten: Growth-Mindset-Interventionen in CS1 ("Programmieren ist wie eine Sprache lernen — jede:r kann es, es braucht Übung") reduzierten Durchfallquoten. Der Schlüssel: Fehler und Struggle als *normal und notwendig* rahmen, nicht als Zeichen mangelnden Talents.

Direkte Verbindung zu [[productive-failure]]: Productive Failure funktioniert nur in einer Growth-Mindset-Kultur. In einer Fixed-Mindset-Umgebung erzeugt Scheitern Scham statt Lernen.

### Programmier-Angst

Connolly et al. (2009) berichten, dass bis zu 40% der CS1-Studierenden signifikante Angst erleben. Auslöser: Compiler-Fehlermeldungen (kryptisch, rot, "Error"), Zeitdruck bei Prüfungen, Vergleich mit erfahreneren Peers, die Sichtbarkeit von Fehlern (Code funktioniert oder nicht — kein "halb richtig").

Becker et al. (2019) zeigten: Allein die Verbesserung von Compiler-Fehlermeldungen (klarer, hilfreicher, weniger technisch) reduzierte Anfänger-Frustration signifikant. Emotionales Design matters.

### Zugehörigkeit (Belonging Uncertainty)

Walton & Cohen (2011) zeigten mit einer einzigen einstündigen Intervention (Lesen und Schreiben über "Zugehörigkeitszweifel sind normal und gehen vorbei"): +0,3 GPA-Punkte über 3 Jahre bei unterrepräsentierten Studierenden. Belonging Uncertainty ist besonders akut in IT, wo Stereotype ("Nerds", "Männerdomäne") Ausgrenzung verstärken.

### Self-Determination Theory (Deci & Ryan)

Drei Grundbedürfnisse für intrinsische Motivation:
- **Autonomie** — Wahlmöglichkeiten (Projektthema, Lösungsweg, Tools)
- **Kompetenzerleben** — Aufgaben in der Zone der nächsten Entwicklung (vgl. [[scaffolding]])
- **Soziale Eingebundenheit** — Teil einer Lerngemeinschaft sein (vgl. [[pair-programming-unterricht]])

Wenn alle drei Bedürfnisse erfüllt sind, entsteht intrinsische Motivation — die nachhaltigste Form. [[gamification-it-unterricht]] wirkt nur, wenn es diese Bedürfnisse anspricht, nicht wenn es nur extrinsische Punkte vergibt.

## Bezug zur IT-Ausbildung

In Berufsschulklassen für Fachinformatiker:innen ist Heterogenität das Normalbild: Manche Azubis programmieren seit Jahren als Hobby, andere haben noch nie eine Zeile Code geschrieben. Die affektive Dimension ist hier besonders relevant:

- **Hobby-Programmierer:innen** riskieren Langeweile (Autonomie-Bedürfnis nicht erfüllt) → Differenzierung nach oben, Exploration ermöglichen
- **Absolute Anfänger:innen** riskieren Angst und Impostor Syndrome → Mastery Experiences sicherstellen, Growth Mindset kultivieren, kryptische Fehlermeldungen entschärfen
- **Das Berichtsheft-Problem:** Azubis, die im Betrieb "nur zuarbeiten", zweifeln an ihrer Kompetenz → [[lerntagebuch]] als Sichtbarmachung von Lernfortschritt

## Praktische Anwendung

Ein Agent kann die affektive Dimension aktiv gestalten:

1. **Growth Mindset rahmen:** Fehler als "das Gehirn wächst gerade" kommunizieren. Fehlermeldungen mit "Das ist ein häufiger Fehler — hier ist, was er bedeutet..." einleiten statt mit rotem "ERROR".
2. **Mastery Experiences sicherstellen:** Aufgabensequenz so gestalten, dass regelmäßig Erfolgserlebnisse auftreten — nicht nur am Ende einer Einheit. Vgl. [[scaffolding]]: Teilschritte mit sichtbarem Zwischenerfolg.
3. **Frustrationsdetekion:** Aus Antwortmustern (wiederholte Fehler, lange Pausen, Hilfe-Anfragen) Frustration erkennen und automatisch leichtere [[worked-examples]] oder Ermutigung anbieten.
4. **Autonomie ermöglichen:** Wo möglich Wahlfreiheit geben — welches Projekt, welche Sprache, welcher Lösungsweg. Vgl. [[gamification-it-unterricht]]: Quest-basierte Kursstruktur.
5. **Soziale Eingebundenheit fördern:** [[pair-programming-unterricht]], [[code-review-unterricht]] und [[peer-instruction]] einsetzen — Isolation ist der Feind des Lernens.
6. **Normalisierung:** "Auch Senior-Entwickler:innen googeln ständig und machen Fehler" — Expert Blind Spot aufbrechen (vgl. [[cognitive-apprenticeship]]).

## Verwandte Konzepte

- [[selbstgesteuertes-lernen]] — Selbstwirksamkeit ist ein Kerntreiber der Selbstregulation
- [[scaffolding]] — Frustrationskontrolle ist eine der sechs Scaffolding-Funktionen
- [[productive-failure]] — Funktioniert nur in Growth-Mindset-Kultur
- [[gamification-it-unterricht]] — Wirkt nachhaltig nur, wenn SDT-Bedürfnisse adressiert werden
- [[pair-programming-unterricht]] — Vicarious Experience und soziale Eingebundenheit
- [[ki-gestuetztes-tutoring]] — Emotionales Design von KI-Feedback
- [[cognitive-apprenticeship]] — Normalisierung von Fehlern durch sichtbares Experten-Denken

## Quellen

- Bandura, A. (1997). Self-Efficacy: The Exercise of Control. W. H. Freeman.
- Dweck, C. S. (2006). Mindset: The New Psychology of Success. Random House.
- Ramalingam, V. & Wiedenbeck, S. (1998). Development and Validation of Scores on a Computer Programming Self-Efficacy Scale. Journal of Educational Computing Research, 19(4), 367-381.
- Walton, G. M. & Cohen, G. L. (2011). A Brief Social-Belonging Intervention Improves Academic and Health Outcomes of Minority Students. Science, 331(6023), 1447-1451.
- Cutts, Q. et al. (2010). An Exploration of the Role of "Mindset" in CS1. Proceedings of ACM SIGCSE 2010.
- Connolly, C. et al. (2009). An Exploration of Programming Anxiety amongst CS Students. Proceedings of PPIG 2009.
