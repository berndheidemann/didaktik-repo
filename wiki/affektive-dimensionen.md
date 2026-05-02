---
title: Affektive Dimensionen des Programmierenlernens
type: theorie
tags: [motivation, selbstwirksamkeit, growth-mindset, angst, dropout, inklusion, mastery-goals, flow, challenge-skill-balance]
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
  - "[[self-determination-theory]]"
  - "[[computational-action]]"
  - "[[sprachsensibler-it-unterricht]]"
  - "[[kooperatives-lernen]]"
  - "[[metakognition]]"
  - "[[zeitmanagement-selbstorganisation]]"
  - "[[fehlerkultur-im-unterricht]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[multimedia-gestaltungsprinzipien]]"
  - "[[differenzierung-inklusion]]"
  - "[[code-review-unterricht]]"
  - "[[debugging-als-kompetenz]]"
  - "[[lerntagebuch]]"
  - "[[low-floor-high-ceiling]]"
  - "[[peer-instruction]]"
  - "[[worked-examples]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[neurodidaktik-programmieren]]"
  - "[[interactive-fiction-twine]]"
  - "[[fachgespraech-didaktik]]"
  - "[[imposter-phaenomen-it-azubis]]"
  - "[[belonging-interventionen]]"
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

Selbstwirksamkeit ist die Überzeugung "Ich kann das schaffen." Ramalingam & Wiedenbeck (1998) zeigten: Sie ist der stärkste nicht-kognitive Prädiktor für Programmiererfolg — stärker als Mathe-Noten.

Vier Quellen: (1) **Mastery Experience** — eigene Erfolgserlebnisse, die wichtigste Quelle; (2) **Vicarious Experience** — Beobachten ähnlicher Personen ([[pair-programming-unterricht]], Peer-Modeling); (3) **Verbal Persuasion** — Ermutigung, wirkt nur kombiniert mit echten Erfahrungen; (4) **Physiological State** — Angst und Stress senken Selbstwirksamkeit.

### Growth Mindset (Dweck, 2006)

**Fixed Mindset:** "Programmieren ist Talent — entweder man kann es oder nicht." **Growth Mindset:** "Programmieren ist eine erlernbare Fähigkeit — Anstrengung und Fehler sind der Weg." Cutts et al. (2010) zeigten: Growth-Mindset-Interventionen in CS1 reduzierten Durchfallquoten. Schlüssel: Fehler als *normal und notwendig* rahmen. Direkte Verbindung zu [[productive-failure]]: PF funktioniert nur in Growth-Mindset-Kultur — sonst erzeugt Scheitern Scham statt Lernen.

### Programmier-Angst

Connolly et al. (2009): Bis zu 40% der CS1-Studierenden erleben signifikante Angst. Auslöser sind kryptische Compiler-Fehlermeldungen, Zeitdruck, Peer-Vergleiche und die binäre Sichtbarkeit von Fehlern (Code läuft oder nicht). Becker et al. (2019) zeigten: Allein klarere Fehlermeldungen reduzieren Anfänger-Frustration signifikant.

### Zugehörigkeit (Belonging Uncertainty)

Walton & Cohen (2011): Eine einstündige Intervention (Lesen/Schreiben über "Zugehörigkeitszweifel sind normal und gehen vorbei") brachte +0,24 GPA-Punkte über 3 Jahre bei unterrepräsentierten Studierenden und halbierte den Achievement Gap. Besonders akut in IT, wo Stereotype Ausgrenzung verstärken.

### Self-Determination Theory (Deci & Ryan)

Drei Grundbedürfnisse für intrinsische Motivation: **Autonomie** (Wahlmöglichkeiten), **Kompetenzerleben** (Aufgaben in der ZPD, vgl. [[scaffolding]]) und **soziale Eingebundenheit** (Lerngemeinschaft, vgl. [[pair-programming-unterricht]]). Sind alle drei erfüllt, entsteht intrinsische Motivation — die nachhaltigste Form. [[gamification-it-unterricht]] wirkt nur, wenn es diese Bedürfnisse anspricht, nicht durch reine Punktevergabe.

### Flow und Challenge-Skill-Balance (Csíkszentmihályi, 1990)

Flow ist der Zustand völliger Versenkung — die Tätigkeit fühlt sich an, als würde sie sich von selbst tun. Er entsteht im schmalen Korridor zwischen *Langeweile* (Aufgabe zu leicht) und *Angst* (Aufgabe zu schwer) — die Herausforderung muss das wahrgenommene Können knapp übersteigen. Programmieren ist neben Sport und Musik einer der häufigsten Flow-Auslöser im Alltag, weil Compiler und Tests sofortiges, eindeutiges Feedback liefern. Fong, Zaleski & Leach (2015) bestätigen in einer Meta-Analyse über 28 Studien den Effekt der Challenge-Skill-Balance auf Flow-Erleben mit mittlerer Effektstärke.

**Kernkomponenten im Programmierunterricht:** Klare Microgoals ("Funktion X soll für Input Y den Wert Z liefern"), Feedback unter 3 Sekunden (REPL, Test-Watcher, Hot Reload), ungestörte Blöcke ≥ 25 Minuten, Kontrollgefühl durch IDE-Geläufigkeit, autotelisches Framing ("weil es ein cooles Werkzeug ergibt" statt "weil es in der Prüfung kommt").

**Flow-Killer im Berufsschulunterricht:** Unterbrechungen alle 10 Minuten (Klassengespräch, Tafelbild), niveaufalsche Einheitsaufgaben, verzögertes Feedback bis zur nächsten Stunde, Performance-Druck statt Mastery-Framing. **Flow-Verstärker:** [[low-floor-high-ceiling]]-Aufgaben (jede:r findet eigenen Channel), Test-driven Lernen, Doppelstunden-Blöcke, adaptive Schwierigkeit in interaktiven Lernumgebungen.

Flow steht nicht im Widerspruch zu [[cognitive-load-theory]]: Bei Novizen ist das Können niedrig — also auch die Herausforderung niedrig. Flow ist nicht "schwer", sondern "passend schwer". Challenge-Skill-Balance wächst diagonal mit Expertise.

### Achievement Goals: Mastery vs. Performance

Dweck (1986) und Elliot & McGregor (2001) unterscheiden zwei Zielorientierungen, die Lernende verfolgen können: **Mastery Goals** zielen auf Verständnis und Kompetenzzuwachs ("Ich will das wirklich kapieren"), **Performance Goals** auf Vergleich und Anerkennung ("Ich will besser sein als die anderen").

Die Forschung ist konsistent: Mastery Goals korrelieren mit tieferem Lernen, höherer Persistenz und Growth Mindset. Performance Goals bringen gemischte Ergebnisse — sie können kurzfristig motivieren, wirken aber oft negativ bei Rückschlägen, weil ein Misserfolg dann das Selbstbild bedroht.

**Klassenklima-Konsequenz:** Kein öffentlicher Leistungsvergleich, kein "Bester der Klasse"-Framing, keine Bestenlisten. Stattdessen individuellen Fortschritt sichtbar machen ("Vor zwei Wochen hast du noch X gebraucht — heute machst du Y").

**Für den Agent:** Feedback-Sprache bewusst mastery-orientiert formulieren. Statt "Du bist besser als 60% der Klasse" → "Du hast diese Struktur jetzt verstanden — was kommt als Nächstes?" Vermeidung von Vergleichssprache, Fokus auf den Lernweg der einzelnen Person. Mastery Goals stärken zudem intrinsische Motivation (vgl. [[self-determination-theory]]).

## Bezug zur IT-Ausbildung

In Fachinformatiker-Klassen ist Heterogenität das Normalbild: Manche programmieren seit Jahren, andere noch nie. Die affektive Dimension ist hier besonders relevant:

- **Hobby-Programmierer:innen** riskieren Langeweile (Autonomie unerfüllt) → Differenzierung nach oben, Exploration ermöglichen
- **Absolute Anfänger:innen** riskieren Angst und Impostor Syndrome → Mastery Experiences, Growth Mindset, klare Fehlermeldungen
- **Berichtsheft-Problem:** Azubis, die im Betrieb "nur zuarbeiten", zweifeln an ihrer Kompetenz → [[lerntagebuch]] zur Sichtbarmachung

## Praktische Anwendung

Ein Agent kann die affektive Dimension aktiv gestalten:

1. **Growth Mindset rahmen:** Fehler als "das Gehirn wächst gerade" kommunizieren. Fehlermeldungen mit "Das ist ein häufiger Fehler..." einleiten statt rotem "ERROR".
2. **Mastery Experiences sicherstellen:** Aufgabensequenz mit regelmäßigen Erfolgserlebnissen, nicht nur am Ende (vgl. [[scaffolding]]).
3. **Frustrationsdetektion:** Aus Antwortmustern (wiederholte Fehler, Pausen) Frustration erkennen und [[worked-examples]] oder Ermutigung anbieten.
4. **Autonomie ermöglichen:** Wahlfreiheit bei Projekt, Sprache, Lösungsweg (vgl. [[gamification-it-unterricht]]).
5. **Soziale Eingebundenheit fördern:** [[pair-programming-unterricht]], [[code-review-unterricht]], [[peer-instruction]] — Isolation ist der Feind des Lernens.
6. **Normalisierung:** "Auch Senior-Entwickler:innen googeln ständig" — Expert Blind Spot aufbrechen (vgl. [[cognitive-apprenticeship]]).

## Verwandte Konzepte

- [[selbstgesteuertes-lernen]] — Selbstwirksamkeit treibt Selbstregulation
- [[productive-failure]] — Funktioniert nur in Growth-Mindset-Kultur
- [[self-determination-theory]] — Mastery-Goals stärken intrinsische Motivation
- [[pair-programming-unterricht]] — Vicarious Experience und Eingebundenheit
- [[cognitive-apprenticeship]] — Sichtbares Experten-Denken normalisiert Fehler

## Quellen

- Bandura, A. (1997). Self-Efficacy: The Exercise of Control. W. H. Freeman.
- Dweck, C. S. (2006). Mindset: The New Psychology of Success. Random House.
- Ramalingam, V. & Wiedenbeck, S. (1998). Development and Validation of Scores on a Computer Programming Self-Efficacy Scale. Journal of Educational Computing Research, 19(4), 367-381.
- Walton, G. M. & Cohen, G. L. (2011). A Brief Social-Belonging Intervention Improves Academic and Health Outcomes of Minority Students. Science, 331(6023), 1447-1451.
- Cutts, Q. et al. (2010). An Exploration of the Role of "Mindset" in CS1. Proceedings of ACM SIGCSE 2010.
- Connolly, C. et al. (2009). An Exploration of Programming Anxiety amongst CS Students. Proceedings of PPIG 2009.
- Dweck, C. S. (1986). Motivational processes affecting learning. American Psychologist, 41(10), 1040-1048.
- Elliot, A. J. & McGregor, H. A. (2001). A 2 × 2 achievement goal framework. Journal of Personality and Social Psychology, 80(3), 501-519.
- Csíkszentmihályi, M. (1990). Flow: The Psychology of Optimal Experience. Harper & Row.
- Fong, C. J., Zaleski, D. J. & Leach, J. K. (2015). The challenge-skill balance and antecedents of flow: A meta-analytic investigation. Journal of Positive Psychology, 10(5), 425-446.
- Becker, B. A., Denny, P., Pettit, R., Bouchard, D., Bouvier, D. J., Harrington, B., ... & Prather, J. (2019). Compiler Error Messages Considered Unhelpful: The Landscape of Text-Based Programming Error Message Research. *ITiCSE-WGR 2019: Proceedings of the Working Group Reports on Innovation and Technology in Computer Science Education*, 177–210.
