---
title: Constructive Alignment
type: theorie
tags: [lernziele, assessment, unterrichtsplanung, kompetenzorientierung]
related:
  - "[[blooms-taxonomie]]"
  - "[[pair-programming-unterricht]]"
  - "[[selbstgesteuertes-lernen]]"
  - "[[interaktive-lernumgebungen]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[formatives-assessment]]"
  - "[[code-review-unterricht]]"
  - "[[gamification-it-unterricht]]"
  - "[[kompetenzfeststellung-programmierung]]"
  - "[[lernsituationen-gestalten]]"
  - "[[effektstaerken-unterricht]]"
  - "[[pruefungsvorbereitung-lernstrategie]]"
  - "[[kooperatives-lernen]]"
  - "[[computational-action]]"
  - "[[engagement-theory]]"
  - "[[aufgabentypen-interaktive-lernumgebungen]]"
  - "[[intrinsic-integration]]"
  - "[[ki-kompetenzrahmen-schule]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Didaktisches Prinzip nach Biggs (1996): Lernziele, Lehr-/Lernaktivitäten
  und Prüfungsformen müssen aufeinander abgestimmt sein, um
  kompetenzorientierten IT-Unterricht wirksam zu gestalten.
---

# Constructive Alignment

## Kernidee

Constructive Alignment beschreibt die systematische Abstimmung von drei Elementen: Was sollen Lernende können (Lernziele), wie erreichen sie das (Lehr-/Lernaktivitäten) und wie wird es geprüft (Assessment). Wenn alle drei Elemente konsistent aufeinander ausgerichtet sind, steigt die Qualität des Lernens nachweislich.

## Beschreibung

John Biggs formulierte Constructive Alignment 1996 als Rahmenmodell für die Hochschullehre. Der "constructive" Teil bezieht sich auf den Konstruktivismus: Lernende konstruieren Bedeutung durch eigene Aktivität. Der "alignment" Teil fordert, dass Lehrende die Lernumgebung so gestalten, dass Aktivitäten und Prüfungen direkt auf die intendierten Lernergebnisse (Intended Learning Outcomes, ILOs) ausgerichtet sind.

Das Modell besteht aus drei Komponenten:

1. **Intended Learning Outcomes (ILOs):** Was sollen Lernende am Ende können? Formuliert mit aktiven Verben, idealerweise nach [[blooms-taxonomie]].
2. **Teaching and Learning Activities (TLAs):** Welche Aktivitäten führen dazu, dass Lernende die ILOs erreichen?
3. **Assessment Tasks (ATs):** Wie wird gemessen, ob die ILOs erreicht wurden?

Misalignment entsteht, wenn z.B. Lernziele auf "Analysieren" abzielen, aber die Prüfung nur "Erinnern" testet — oder wenn der Unterricht Frontalvortrag ist, das Lernziel aber "Anwenden" lautet.

## Bezug zur IT-Ausbildung

In der Fachinformatiker-Ausbildung ist Constructive Alignment besonders relevant, weil die Lernfelder des Rahmenlehrplans kompetenzorientiert formuliert sind. Die häufigsten Misalignments: kompetenzorientiertes Lernziel ("analysieren", "bewerten", "erschaffen") wird mit Multiple-Choice-Klausur auf Bloom-Stufe 1-2 geprüft.

**LF4 (FIAE/FIDP) — Schutzbedürftige Daten:**
- **ILO:** Lernende können für ein gegebenes Verarbeitungsszenario die passende Rechtsgrundlage nach Art. 6 DSGVO **auswählen und begründen**.
- **TLA (aligned):** Branching-Szenario mit 6 realistischen Kundenfällen; jede Entscheidung mit Begründungspflicht. Peer-Diskussion über Grenzfälle (vgl. [[kooperatives-lernen]]).
- **TLA (misaligned):** Frontalvortrag zu Art. 6, danach Lückentext mit Rechtsgrundlagen-Liste.
- **AT (aligned):** Ein neuer, unbekannter Fall — Lernende schreiben einen 1-seitigen Begründungstext. Rubric prüft: richtige Grundlage + Begründungsqualität.

**LF5 (FIAE) — Datenverwaltung mit SQL:**
- **ILO:** Lernende können für eine gegebene Anforderung ein normalisiertes ER-Modell **entwerfen** und in ausführbarem SQL implementieren.
- **TLA (aligned):** Projektbasiertes Arbeiten an einem echten oder quasi-echten Datensatz (Kundenbriefing), Pair Programming, inkrementelle Code Reviews.
- **TLA (misaligned):** Lehrer erklärt Normalformen an der Tafel; Schüler füllen ein Arbeitsblatt aus.
- **AT (aligned):** Lernende erhalten ein neues Briefing und müssen innerhalb von 60 Min ein ER-Modell liefern, das lauffähiges SQL erzeugt — mit mündlicher Begründung ihrer Normalisierungs-Entscheidungen.

**LF6 (FIAE/FIDP) — Serviceanfragen bearbeiten:**
- **ILO:** Lernende können systematisch Fehler in IT-Systemen diagnostizieren und beheben.
- **TLA (aligned):** Lernende bearbeiten simulierte Trouble-Tickets in einer realitätsnahen Umgebung.
- **TLA (misaligned):** Lernende lesen ein Kapitel über Fehlerbehebung und machen Multiple-Choice-Test.
- **AT (aligned):** Lernende lösen ein unbekanntes Problem live und dokumentieren ihren Lösungsweg.

**LF10a (FIAE) — Benutzerschnittstellen gestalten:**
- **ILO:** Lernende können eine Benutzeroberfläche nach UX- und Barrierefreiheits-Kriterien **gestalten und bewerten**.
- **TLA (aligned):** Gallery Walk mit Prototypen, strukturiertes Peer-Feedback nach Rubric, iterative Verbesserung; siehe [[kooperatives-lernen]].
- **TLA (misaligned):** Theoretische Einführung in UX-Prinzipien, danach eine fertige Musterlösung zum Nachbauen.
- **AT (aligned):** Eigener Prototyp + Selbstevaluation gegen WCAG-Checkliste + Live-Usability-Test mit 3 Peers.

**LF11a/LF12 (FIAE) — Funktionalität realisieren / Anwendungsentwicklung:**
- **ILO:** Lernende können eine Anforderung selbstständig in lauffähige Software übersetzen, testen und dokumentieren (Bloom: erschaffen).
- **TLA (aligned):** Projektbasiertes Arbeiten mit echten Stakeholder:innen (vgl. [[computational-action]], [[engagement-theory]]); Code Reviews als Routine.
- **TLA (misaligned):** Schrittweise vorgegebene Aufgaben mit eng geführten Zwischenlösungen — "Erschaffen" wird faktisch zu "Anwenden" reduziert.
- **AT (aligned):** Betrieblicher Projektauftrag AP2 + Projektdokumentation + Fachgespräch. Das ist der IHK-Standard und **ist** Constructive Alignment in Reinform (vgl. [[pruefungsvorbereitung-lernstrategie]]).

## Praktische Anwendung

Ein Agent kann Constructive Alignment nutzen, um Lernsituationen zu validieren und zu verbessern:

1. **Prüfung auf Alignment:** Gegeben ein Lernziel — passen die vorgeschlagenen Aktivitäten und Prüfungen dazu? Nutze [[blooms-taxonomie]] um die Kompetenzstufe abzugleichen.
2. **Aktivitäten-Design:** Wenn das Lernziel "Anwenden" ist, generiere Aktivitäten, bei denen Lernende tatsächlich etwas tun (Code schreiben, Systeme konfigurieren), nicht nur lesen oder zuschauen.
3. **Assessment-Design:** Prüfungsformen vorschlagen, die die gleiche Kompetenzstufe testen wie das Lernziel.

## Verwandte Konzepte

- [[blooms-taxonomie]] — liefert die Verben zur Formulierung von Lernzielen und ermöglicht den Abgleich der Kompetenzstufen
- [[pair-programming-unterricht]] — Beispiel für eine aligned TLA bei Programmier-Lernzielen
- [[selbstgesteuertes-lernen]] — SGL erfordert explizites Alignment: Lernziele müssen Selbstregulation einschließen
- [[interaktive-lernumgebungen]] — Interaktionsform und Feedbackdesign müssen zum Lernziel aligned sein
- [[handlungsorientierter-unterricht]] — Lernsituationen erfordern Alignment zwischen Lernfeld-Zielen und Aktivitäten
- [[formatives-assessment]] — liefert die Evidenz, ob das Alignment zwischen Zielen, Aktivitäten und Prüfung funktioniert

## Quellen

- Biggs, J. (1996). Enhancing Teaching Through Constructive Alignment. Higher Education, 32(3), 347-364.
- Biggs, J. & Tang, C. (2011). Teaching for Quality Learning at University (4th ed.). Open University Press.
