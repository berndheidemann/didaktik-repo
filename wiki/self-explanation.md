---
title: "Self-Explanation Effect — Generative Verarbeitung als Gegenmittel gegen Cognitive Offloading"
type: theorie
tags: [self-explanation, generative-lernstrategie, chi, cognitive-offloading, ki]
related:
  - "[[worked-examples]]"
  - "[[generative-learning-aktivitaeten]]"
  - "[[metakognition]]"
  - "[[deskilling-ki-codegenerierung]]"
  - "[[subgoal-labeling]]"
  - "[[parsons-problems]]"
  - "[[ki-gestuetztes-tutoring]]"
  - "[[ki-tutoring-evidenzlage]]"
  - "[[productive-failure]]"
  - "[[cognitive-load-theory]]"
audience: [FIAE, FIDP]
taxonomiestufe: [verstehen, anwenden, analysieren]
created: 2026-04-18
updated: 2026-04-18
summary: >
  Chi et al. (1989) zeigten, dass gute Lerner spontan Erklärungen zu Beispielen generieren, die zu "example-independent knowledge" führen. Bisra et al. (2018) bestätigen in 64 Studien g=0.55. Prompted Self-Explanation ist eines der wenigen empirisch gestützten Gegenmittel gegen den Cognitive-Offloading-Effekt durch KI-Tools — erzwingt generative Verarbeitung, die direktes LLM-Antwortkopieren umgeht. Menu-basierte Prompts funktionieren für Novizen zuverlässiger als offene.
---

# Self-Explanation Effect — Generative Verarbeitung als Gegenmittel gegen Cognitive Offloading

## Kernidee

Wer während des Lernens **sich selbst erklärt**, warum ein Schritt stimmt oder ein Konzept funktioniert, lernt deutlich tiefer als wer nur passiv konsumiert — Bisra et al. (2018) berichten in einer Meta-Analyse über 64 Studien einen moderaten bis starken Effekt g = 0.55. Self-Explanation ist **die** generative Lernstrategie, die sich gezielt gegen Cognitive Offloading durch KI-Tools einsetzen lässt: Sie zwingt zu Eigenproduktion und macht "Antwort von ChatGPT kopieren" pädagogisch wirkungslos.

## Beschreibung

### Chi et al. (1989) — Der Klassiker

In der Original-Studie ("Self-explanations: How students study and use examples in learning to solve problems", *Cognitive Science* 13(2)) ließen Chi, Bassok, Lewis, Reimann und Glaser Physik-Studierende laut denken, während sie ausgearbeitete Mechanik-Beispiele studierten. Der Vergleich zwischen *good* und *poor solvers* in anschließenden Problemlöse-Tests ergab:

- Gute Lerner produzierten **spontan** deutlich mehr Selbsterklärungen — sie verfeinerten und erweiterten die Handlungsschritte des Beispiels, verknüpften sie mit Prinzipien aus dem Lehrtext und monitorten ihr Verständnis akkurat.
- Schwache Lerner erklärten wenig, überschätzten systematisch ihr Verständnis ("illusion of understanding") und blieben bei Folgeproblemen auf das Beispiel angewiesen.
- Lernen **mit** Selbsterklärung erzeugt "example-independent knowledge" — abstraktere Schemas, die auf neue Probleme transferieren.

### Bisra et al. (2018) — Die Meta-Analyse

"Inducing Self-Explanation: A Meta-Analysis" (*Educational Psychology Review*, 30, 703–725) synthetisierte 69 Effektstärken aus 64 Studien:

- **Gesamteffekt g = 0.55** — moderat bis stark
- Wirksam über Klassenstufen, Domänen, Medien und Outcome-Typen hinweg
- **Prompted Self-Explanation ist zuverlässig wirksam** — man muss sie nicht dem Zufall der Lernenden überlassen
- 20 Moderatoren geprüft; kein einzelner "kill moderator"

Follow-up-Literatur (Berthold & Renkl, Atkinson/Renkl/Merrill) zeigt: **Menu-basierte oder scaffolded Prompts** schlagen bei Novizen offene "Warum?"-Prompts — geringerer Cognitive Load, klarere Struktur, automatisch auswertbar.

### Fiorella & Mayer — SOI-Einbettung

In "Learning as a Generative Activity" (2015) und "Eight Ways to Promote Generative Learning" (*Educational Psychology Review* 28, 2016) ordnen Fiorella und Mayer Self-Explanation als eine von acht generativen Strategien ein (siehe [[generative-learning-aktivitaeten]]). Im SOI-Framework (Select–Organize–Integrate) adressiert Self-Explanation primär das **Integrate**: bestehendes Wissen aus dem Langzeitgedächtnis mit neu selektierten/organisierten Informationen verknüpfen. Einzeleffekte in Fiorellas Review liegen im Bereich d ≈ 0.6, konsistent mit Bisras g = 0.55.

### Integration mit Worked Examples

Renkl (2014, "Toward an Instructionally Oriented Theory of Example-Based Learning", *Cognitive Science* 38) und Atkinson, Renkl & Merrill (2003) zeigen: Worked Examples plus Self-Explanation-Prompts liefern additive/multiplikative Gewinne gegenüber reinen Worked Examples — **wenn** die Prompts gut designed sind. Barbieri et al. (2023) berichten für reine Worked Examples g ≈ 0.48 in Mathematik; gut gescaffoldete Self-Explanation bewegt diese Studien in den Bereich g ≈ 0.7–0.9.

**Wichtige Einschränkung** (Berthold, Eysink, Renkl 2011): Schlecht designte Self-Explanation-Prompts können den Worked-Example-Effekt *reduzieren*. Instructional fit zum Expertisegrad ist entscheidend.

### Der Cognitive-Offloading-Gegenpol (2023–2025)

Seit LLM-Assistenten zum Alltag gehören, ist ein neues Risiko empirisch belegt: **Cognitive Offloading** — Lernende delegieren geistige Arbeit an die KI und verfehlen dadurch den generativen Verarbeitungs-Effekt, den Lernen braucht.

- **Gerlich (2025, *Societies* 15(1), 6):** N = 666, signifikant negative Korrelation zwischen AI-Tool-Nutzungsfrequenz und kritischem Denken, **vermittelt über Cognitive Offloading**.
- **RCT in *Computers & Education: AI* (2025):** Unbeschränkter AI-Zugang → +48 % korrekte Antworten in Aufgaben, aber **−17 % Konzeptverständnis** im Post-Test. Vorangestelltes Pretesting mildert den Effekt.
- **Singh et al. (2025, *CHI* Tools for Thought Workshop, arXiv:2502.12447):** Empfehlen explizit *metacognitive provocations* — Prompts, die Nutzer zwingen, LLM-Outputs zu hinterfragen, Alternativen zu prüfen.
- **"From Offloading to Engagement" (*Data* 2025, 10(11), 172):** Strukturiertes Prompting, das Selbsterklärungen einfordert, reduziert Offloading signifikant. Ungeleiteter AI-Gebrauch nicht.
- **OpenAI ChatGPT Study Mode (2025):** Produktseitig setzt Khan-Academy-Style sokratische Fragen + Selbstreflexions-Prompts statt Direktantworten — das Prinzip wird zum Feature.

**Fazit:** Self-Explanation ist eines der wenigen empirisch gestützten Gegenmittel gegen Offloading, weil sie **generative Eigenproduktion verlangt**, die ein Copy-Paste aus dem KI-Output nicht abkürzen kann.

### Vier Prompt-Designs

| Design | Beispiel | Stärke | Schwäche |
|---|---|---|---|
| **Open** | "Warum funktioniert dieser Schritt?" | Tiefe Verarbeitung möglich | Hoher Cognitive Load, unzuverlässig bei Novizen |
| **Menu-based / MC** | "Dieser Schritt funktioniert, weil … (a) … (b) … (c) …" | Auswertbar, geringer Load, strukturiert | Decke gedeckelt — keine unerwarteten Erklärungen |
| **Gap-filling** | "Die Variable wird hier zurückgegeben, weil ___" | Aktiv, gescaffolded | Muster-Antwort-Risiko |
| **Scripted** | Strukturierte Sub-Fragen-Sequenz | Lenkt Aufmerksamkeit gezielt | Vorbereitungsaufwand |

Ericson, Morrison et al. (*IJAIED* 2020, "Evaluation of Parsons Problems with Menu-Based Self-Explanation Prompts in a Mobile Python Tutor") zeigen für CS: Parsons-Problems plus menu-basierte Self-Explanation-Prompts liefern bessere Transfer-Leistung als Parsons allein.

## Bezug zur IT-Ausbildung

### Warum das für FIAE/FIDP gerade jetzt zentral ist

Copilot, ChatGPT und Cursor sind im Alltag angekommen. Ohne gezielte didaktische Gegenmaßnahme landen Azubis in genau dem Offloading-Muster, das Gerlich 2025 misst: schnelle richtige Antwort, keine Tiefe, Illusion des Verstehens, Einbruch bei Transfer- und AP-Aufgaben.

Self-Explanation ist die einfachste und best-belegte Gegenmaßnahme. Sie passt in jede Code-orientierte Lernumgebung und kostet kaum Entwicklungsaufwand.

### Konkrete Einsatzorte

- **LF5 (Datenbanken):** Nach Zeigen einer Query Schüler wählen aus 3–4 Erklärungen die richtige ("Dieses JOIN behält alle Zeilen der linken Tabelle, weil…"). Menu-Design.
- **LF6 (Entwickeln):** Nach PRIMM-Predict-Phase (siehe [[primm-methode]]): Gap-Filling zur Begründung der Vorhersage.
- **LF9/LF10 (Testen, KI, Prozesse):** Nach Worked Example Gap-Filling zu Teilzielen (verbindet gut mit [[subgoal-labeling]]).
- **Gegen Copilot-Reflex:** Pflicht-Widget **nach** jeder KI-generierten Lösung. Schüler beschreibt in eigenen Worten, was der Code tut und warum. Ohne dieses Widget ist die Aufgabe nicht abgeschlossen. Das entspricht einer didaktisch operationalisierten "Explain in Plain English"-Aufgabe (siehe [[llm-as-grader]] für Auto-Bewertung).

### Warnsignale

- Wenn Schüler *sofort* nach dem Zeigen der Lösung die "korrekte" Erklärung anklicken, ohne sie wirklich zu lesen, ist das Menu-Design zu gut geraten. Distraktoren stärker differenzieren oder auf Open-Prompts umsteigen.
- Wenn Self-Explanation den Lernenden überfordert (alle Distraktoren wirken gleich plausibel), Worked Example zuerst, Self-Explanation danach oder Prompts simpler.

## Praktische Anwendung

### Widget-Muster: "Pflicht-Selbsterklärung nach KI-Antwort"

```
1. Schüler bekommt KI-Antwort oder Worked Example
2. Vor "Weiter"-Button: Self-Explanation-Widget
3. Widget-Varianten:
   a) Menu (3–4 Erklärungen, 1 richtig, 2–3 Misconception-Distraktoren)
   b) Gap-Fill ("Die Query liefert _____, weil _____")
   c) EiPE-Feld (freier Text, LLM-gegraded, siehe llm-as-grader)
4. Bei falscher Wahl: ein zweiter Versuch mit Hint
5. Bei korrekter Wahl: Weiter
```

### Timing

Chi und Renkl sind klar: **Self-Explanation wirkt am Schritt-Niveau**, nicht erst am Ende des Lernens. Also *während* des Worked-Example-Durchgangs oder *unmittelbar nach* dem Code-Prediction, nicht erst in einer Ende-Reflexion.

### Kombination mit Fading

Als Teil eines Worked-Example-Fading-Regimes:
1. Vollständig ausgearbeitetes Beispiel + Self-Explanation-Menu zu jedem Schritt
2. Teilweise ausgearbeitetes Beispiel + Gap-Fill-Self-Explanation nur zu ungelösten Schritten
3. Eigenständige Lösung + Open Self-Explanation am Ende

### Grenze

Self-Explanation ersetzt weder Feedback (siehe [[feedback-lernumgebungen]]) noch Retrieval Practice (siehe [[retrieval-practice]]). Sie ist eine generative Verarbeitungs-Strategie, keine Retention-Strategie. Plane sie parallel zu anderen Strategien, nicht als Ersatz.

## Verwandte Konzepte

- [[worked-examples]] — die klassische Kontext-Struktur, in der Self-Explanation maximale Wirkung entfaltet (Renkl, Atkinson)
- [[generative-learning-aktivitaeten]] — Fiorella & Mayers SOI-Rahmen, in dem Self-Explanation als generative Strategie 1 von 8 ist
- [[metakognition]] — Self-Explanation als metakognitive Aktivität (Verständnis-Monitoring gegen "Illusion of Understanding")
- [[deskilling-ki-codegenerierung]] — der Anlass, warum Self-Explanation 2025 mehr denn je nötig ist
- [[subgoal-labeling]] — komplementäre Technik: Labels als Anker für Erklärungen
- [[parsons-problems]] — CS-spezifischer Einsatzort (Ericson et al. 2020, Menu-SE)
- [[productive-failure]] — verwandte "Anstrengungs-Erzwingung" vor Instruktion
- [[ki-gestuetztes-tutoring]] / [[ki-tutoring-evidenzlage]] — operationalisierbarer Kontext
- [[cognitive-load-theory]] — theoretischer Rahmen: Prompts müssen CLT-konform sein
- [[feedback-lernumgebungen]] — komplementär: wenn Schüler falsch erklärt, gutes Feedback auffangen
- [[llm-as-grader]] — Auto-Bewertung freier Erklärungen (EiPE) via LLM

## Quellen

- Chi, M. T. H., Bassok, M., Lewis, M. W., Reimann, P., & Glaser, R. (1989). Self-explanations: How students study and use examples in learning to solve problems. *Cognitive Science*, 13(2), 145–182.
- Bisra, K., Liu, Q., Nesbit, J. C., Salimi, F., & Winne, P. H. (2018). Inducing Self-Explanation: A Meta-Analysis. *Educational Psychology Review*, 30, 703–725.
- Fiorella, L., & Mayer, R. E. (2016). Eight Ways to Promote Generative Learning. *Educational Psychology Review*, 28, 717–741.
- Renkl, A. (2014). Toward an Instructionally Oriented Theory of Example-Based Learning. *Cognitive Science*, 38(1), 1–37.
- Atkinson, R. K., Renkl, A., & Merrill, M. M. (2003). Transitioning from studying examples to solving problems: Effects of self-explanation prompts and fading worked-out steps. *Journal of Educational Psychology*, 95(4), 774–783.
- Ericson, B. J., Morrison, B., et al. (2020). Evaluation of Parsons Problems with Menu-Based Self-Explanation Prompts in a Mobile Python Tutor. *International Journal of AI in Education*.
- Singh, A., Taneja, K., Guan, Z., & Ghosh, A. (2025). Protecting Human Cognition in the Age of AI. *CHI'25 Tools for Thought Workshop*. arXiv:2502.12447.
- Gerlich, M. (2025). AI Tools in Society: Cognitive Offloading and Critical Thinking. *Societies*, 15(1), 6.
- Barbieri, C. A. et al. (2023). The Worked Example and Expertise Reversal Effect in Math Learning: A Meta-Analysis. *Educational Psychology Review*.
- Denny, P. et al. (2024). Explaining Code with a Purpose. *ITiCSE 2024*. arXiv:2403.06050.
