---
title: Cognitive Apprenticeship
type: theorie
tags: [expertenwissen, modellierung, think-aloud, live-coding, wissenstransfer]
related:
  - "[[scaffolding]]"
  - "[[pair-programming-unterricht]]"
  - "[[code-review-unterricht]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[worked-examples]]"
  - "[[lerntagebuch]]"
  - "[[lernsituationen-gestalten]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten]
created: 2026-04-07
updated: 2026-04-07
summary: >
  Collins, Brown & Newman (1989): Expertenwissen wird sichtbar gemacht und
  systematisch übertragen durch sechs Methoden — Modeling, Coaching, Scaffolding,
  Articulation, Reflection, Exploration. Das Dach-Framework, das erklärt,
  warum Live Coding, Pair Programming und KI-Tutoring funktionieren.
---

# Cognitive Apprenticeship

## Kernidee

Beim traditionellen Handwerk ist die Arbeit des Meisters sichtbar — der Lehrling schaut zu und übernimmt schrittweise. Beim Programmieren passiert die entscheidende Arbeit unsichtbar im Kopf. Cognitive Apprenticeship macht dieses unsichtbare Expertenwissen sichtbar und überträgt es systematisch. Es ist das Dach-Framework, das erklärt, warum [[pair-programming-unterricht]], [[code-review-unterricht]], [[ki-gestuetztes-tutoring]] und [[worked-examples]] funktionieren.

## Beschreibung

### Die sechs Methoden

| Methode | Beschreibung | IT-Umsetzung |
|---------|-------------|-------------|
| **Modeling** | Expert:in führt vor und denkt dabei laut | **Live Coding:** Lehrkraft programmiert vor der Klasse und verbalisiert Entscheidungen |
| **Coaching** | Beobachten, Hinweise geben, Feedback | **[[ki-gestuetztes-tutoring]]:** Abgestufte Hints statt Lösungen |
| **Scaffolding** | Temporäre Unterstützung mit Fading | **[[scaffolding]]:** Lückencode → offene Aufgaben |
| **Articulation** | Lernende verbalisieren ihr Wissen | **Rubber-Duck-Debugging**, [[pair-programming-unterricht]] (Navigator erklärt), [[lerntagebuch]] |
| **Reflection** | Eigene Prozesse mit Expert:innen vergleichen | **[[code-review-unterricht]]:** Peers Code vergleichen, Debugging-Journal |
| **Exploration** | Eigene Ziele setzen, neue Probleme lösen | **Offene Projekte** in [[lernsituationen-gestalten]], LF10-12 |

### Expert Blind Spot

Nathan & Petrosino (2003) zeigen: Expert:innen haben so viel automatisiert, dass sie Schritte überspringen, die Novizen dringend sehen müssten. Live Coding wirkt dem direkt entgegen — die Lehrkraft *muss* jeden Schritt ausführen und kann verbalisieren: "Ich wähle hier ein Dictionary, weil ich O(1)-Lookup brauche... moment, das könnte None sein, ich fange das ab..."

### Progression

Die sechs Methoden bilden eine natürliche Progression: Anfangs dominieren Modeling und Coaching (Lehrkraft zeigt und hilft), dann Scaffolding und Articulation (Lernende übernehmen mit Unterstützung und erklären), am Ende Reflection und Exploration (Lernende arbeiten selbstständig und reflektieren). Das entspricht dem Fading-Prinzip aus [[scaffolding]].

## Bezug zur IT-Ausbildung

Cognitive Apprenticeship ist direkt relevant, weil professionelle Softwareentwicklung bereits nach diesem Muster funktioniert: Junior-Entwickler:innen lernen durch Code-Reviews (Reflection), Pair Programming (Articulation + Coaching), und schrittweise eigenständigere Aufgaben (Scaffolding → Exploration).

| Methode | Lernfeld-Beispiel |
|---------|-------------------|
| **Modeling** | Lehrkraft zeigt live, wie sie einen Bug in LF6 diagnostiziert — denkt laut dabei |
| **Coaching** | KI-Tutor gibt Hints beim API-Design in LF8: "Welchen HTTP-Status für 'nicht gefunden'?" |
| **Scaffolding** | LF5: Erst SQL-Lückencode, dann eigene Queries, dann eigenes Schema-Design |
| **Articulation** | LF11a: Navigator im Pair Programming erklärt Design-Entscheidung |
| **Reflection** | Code Review in LF10-12: Eigene Lösung mit Peer-Lösung vergleichen |
| **Exploration** | LF12a: Eigenes Kundenprojekt mit voller Autonomie |

## Praktische Anwendung

Ein Agent kann alle sechs Methoden umsetzen:

1. **Modeling:** Think-Aloud-Walkthroughs generieren — nicht nur die Lösung zeigen, sondern den Denkprozess verbalisieren: "Zuerst überlege ich, welche Datenstruktur..." Vgl. [[worked-examples]] mit Sub-Goal Labels.
2. **Coaching:** Abgestufte Hints geben, nicht direkt lösen. Beobachten und erst eingreifen, wenn Frustration überwiegt (vgl. [[scaffolding]]: Frustrationskontrolle).
3. **Articulation erzwingen:** "Erkläre mir deinen Code, bevor ich dir beim Debugging helfe" — der "Explain-before-use"-Ansatz aus [[ki-gestuetztes-tutoring]].
4. **Reflection anleiten:** Studentenlösung mit Expertenlösung vergleichen und *Prozess*-Unterschiede hervorheben, nicht nur Korrektheit.
5. **Exploration ermöglichen:** Bei fortgeschrittenen Lernenden zurücktreten und nur als Ressource bereitstehen — nicht proaktiv helfen.

## Verwandte Konzepte

- [[scaffolding]] — Scaffolding ist eine der sechs CA-Methoden
- [[pair-programming-unterricht]] — Navigator-Rolle ist Articulation; Driver+Navigator ist Coaching
- [[code-review-unterricht]] — Code Reviews implementieren Reflection
- [[ki-gestuetztes-tutoring]] — KI als Coach und Articulation-Partner
- [[worked-examples]] — Annotierte Lösungen als Modeling
- [[lerntagebuch]] — Schriftliche Reflection und Articulation
- [[lernsituationen-gestalten]] — Exploration in offenen Lernsituationen

## Quellen

- Collins, A., Brown, J. S. & Newman, S. E. (1989). Cognitive Apprenticeship: Teaching the Crafts of Reading, Writing, and Mathematics. In L. B. Resnick (Hrsg.), Knowing, Learning, and Instruction (S. 453-494). Erlbaum.
- Collins, A. (2006). Cognitive Apprenticeship. In R. K. Sawyer (Hrsg.), Cambridge Handbook of the Learning Sciences (S. 47-60). Cambridge University Press.
- Nathan, M. J. & Petrosino, A. (2003). Expert Blind Spot Among Preservice Teachers. American Educational Research Journal, 40(4), 905-928.
