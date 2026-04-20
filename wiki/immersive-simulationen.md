---
title: Immersive IT-Simulationen
type: methode
tags: [simulation, ctf, sandbox, authentisches-lernen, praxisnah]
related:
  - "[[interaktive-lernumgebungen]]"
  - "[[handlungsorientierter-unterricht]]"
  - "[[productive-failure]]"
  - "[[scaffolding]]"
  - "[[gamification-it-unterricht]]"
  - "[[intrinsic-integration]]"
  - "[[computational-action]]"
  - "[[engagement-theory]]"
  - "[[cognitive-load-theory]]"
  - "[[anchored-instruction]]"
  - "[[direct-manipulation-lernumgebungen]]"
  - "[[explorable-explanations-im-unterricht]]"
  - "[[browser-ide-gestuetzte-tutorials]]"
  - "[[interactive-fiction-twine]]"
  - "[[vier-komponenten-instruktionsdesign]]"
audience: [FIAE, FIDP]
taxonomiestufe: [anwenden, analysieren, bewerten, erschaffen]
sozialform: [einzelarbeit, partner, gruppe]
created: 2026-04-07
updated: 2026-04-09
summary: >
  Authentische IT-Übungsumgebungen (CTF-Plattformen, Cloud-Sandboxes,
  Netzwerk-Labs, Incident-Response-Simulatoren), in denen Entscheidungen
  realistische Konsequenzen haben — Lernen durch consequential Feedback
  statt durch Korrektur.
---

# Immersive IT-Simulationen

## Kernidee

Immersive Simulationen unterscheiden sich von normalen Übungen durch **consequential Feedback in authentischen Kontexten**: Lernende treffen Entscheidungen und erleben realistische Konsequenzen — ein fehlkonfigurierter Server fällt aus, eine unsichere API wird gehackt, ein schlechtes Datenbankdesign wird unter Last langsam. Das erzeugt lernförderliche kognitive Belastung (vgl. [[cognitive-load-theory]]), weil der Stress authentisch ist und nicht künstlich.

## Beschreibung

Drei Eigenschaften machen eine Simulation wirklich immersiv: **(1)** Authentisches Tooling (echte Werkzeuge, keine vereinfachten Modelle), **(2)** Consequential Feedback (Entscheidungen haben sichtbare, realistische Folgen), **(3)** Abgestuftes [[scaffolding]] (von Walkthrough zu offenem Sandbox).

### Kategorien

**Cybersecurity CTF (Capture the Flag):**
HackTheBox, TryHackMe, PicoCTF bieten das reifste Ökosystem. Progressive Schwierigkeit, echte Hacker-Tools (nmap, Burp Suite), Community-Writeups als Peer-Teaching. Svabensky et al. (2021) zeigten signifikant bessere praktische Skills und Transfer auf neue Probleme gegenüber traditioneller Instruktion.

**Cloud-Sandboxes:**
AWS Academy, Azure for Education, Google Cloud Skills Boost: Zeitlich begrenzte Cloud-Umgebungen für Zero-Consequence-Experimentation. Lernende deployen, fehlkonfigurieren und zerstören Infrastruktur, die real Tausende kosten würde.

**Virtuelle Netzwerk-Labs:**
GNS3 und EVE-NG laufen mit echtem Router-/Switch-Firmware — keine vereinfachten Modelle. Lernende erleben echtes Protokollverhalten, echte Failure Modes, echte Timing-Probleme.

**Incident-Response-Simulatoren:**
Berkeley EECS (2025) baut LLM-gestützte Szenarien, in denen ein KI-System ein degradierendes Produktionssystem simuliert. Lernende müssen unter Zeitdruck diagnostizieren und fixen — wie ein Flugsimulator für SREs.

## Durchführung

1. **Szenario wählen** — Passend zum Lernfeld und Kompetenzniveau. CTF für Security (LF4), Cloud-Sandbox für Infrastruktur (LF9), Netzwerk-Lab für Networking (LF3/LF9).
2. **Scaffolding-Stufe festlegen** — Walkthrough (geführt mit Hinweisen) → Guided Challenge (Ziel vorgegeben, Weg offen) → Open Sandbox (nur das Szenario, keine Hilfe).
3. **Durchführen** — Lernende arbeiten allein oder im Team. Timer optional für Zeitdruck-Szenarien.
4. **Debrief/Reflexion** — Entscheidend: Was war die Hypothese? Was wurde versucht? Warum hat es (nicht) funktioniert? Vgl. [[productive-failure]]: das Scheitern ist der Lernmoment.
5. **Varianten steigern** — Szenarien mit zunehmender Komplexität, cascading Failures, mehrstufige Angriffe.

## Voraussetzungen

- Technische Infrastruktur (Virtualisierung, Internetzugang für Cloud-Plattformen)
- Für CTFs: Separate Übungsnetze (keine Angriffe auf Produktionssysteme!)
- Für Cloud-Sandboxes: Edu-Accounts (AWS Academy, Google Cloud Skills Boost sind kostenlos)
- Grundlegendes Vorwissen im jeweiligen Bereich
- DSGVO-Konformität bei US-Plattformen prüfen (Alternative: selbst gehostete Lösungen)

## Varianten

- **SQL Murder Mystery:** Kriminalfall durch SQL-Abfragen lösen — niedrigschwellig, gamifiziert (vgl. [[gamification-it-unterricht]])
- **Architecture Decision Simulator (CMU SEI):** LLM generiert realistische Kundenbriefings, Lernende entwerfen Architektur, KI bewertet Trade-offs
- **Red Team / Blue Team:** Teams greifen an und verteidigen gleichzeitig — fördert Perspektivwechsel
- **Digital Twins:** Simulierte IT-Infrastruktur, die reale Systeme spiegelt — Lernende üben am Duplikat

## Zeitbedarf

- **CTF Challenge (einzeln):** 30-120 Min. je nach Schwierigkeit
- **Cloud-Lab-Session:** 60-180 Min. (inkl. Setup und Cleanup)
- **Netzwerk-Lab:** 90-180 Min. für eine Konfigurationsaufgabe
- **Incident-Response-Szenario:** 45-90 Min. unter Zeitdruck

## Bezug zur IT-Ausbildung

| Lernfeld | Simulationstyp | Plattform |
|----------|---------------|-----------|
| **LF3** | Netzwerk-Konfiguration und Troubleshooting | GNS3, EVE-NG |
| **LF4** | Penetration Testing, Schutzbedarfsanalyse | TryHackMe, PicoCTF |
| **LF6** | Incident Response, Ticketsystem-Simulation | Immersive Labs, eigene Szenarien |
| **LF8** | API-Entwicklung in realistischer Umgebung | Cloud-Sandboxes, Docker |
| **LF9** | Server-/Dienst-Deployment und -Management | AWS Academy, Azure Labs |
| **LF10-12** | Komplexe Projektszenarien mit realistischer Infrastruktur | Kombination aller Tools |

## Praktische Anwendung

Ein Agent kann immersive Szenarien orchestrieren:

1. **Szenario generieren:** Realistische Incident-Beschreibungen, Kundenbriefings oder CTF-Challenges erzeugen, die zum Lernfeld passen.
2. **Adaptive Schwierigkeit:** Cascading Failures nur einführen, wenn Lernende die Basissituation beherrschen. Einfachere Szenarien bei Schwierigkeiten.
3. **Debrief moderieren:** Nach dem Szenario systematisch durch die Entscheidungen führen — was war die Hypothese, was wurde gelernt?
4. **Tool-Empfehlung:** Basierend auf Lernfeld und verfügbarer Infrastruktur die passende Plattform vorschlagen.

## Verwandte Konzepte

- [[interaktive-lernumgebungen]] — Immersive Simulationen als höchste Stufe interaktiver Umgebungen
- [[handlungsorientierter-unterricht]] — Simulationen bilden die vollständige Handlung in authentischem Kontext ab
- [[productive-failure]] — Scheitern im Szenario ist der zentrale Lernmoment
- [[scaffolding]] — Von Walkthrough über Guided Challenge zu Open Sandbox
- [[gamification-it-unterricht]] — CTFs und Escape Rooms als gamifizierte Simulationsformate
- [[anchored-instruction]] — Simulationen werden erst durch einen durchgehenden Anker didaktisch verbunden
- [[direct-manipulation-lernumgebungen]] — Simulationen leben von direkter Manipulation; eine Simulation ohne DM ist ein animiertes Video

## Quellen

- Svabensky, V. et al. (2021). Cybersecurity Knowledge and Skills Taught in Capture the Flag Challenges. Computers & Security, 102, 102154.
- Kolb, D. A. (1984). Experiential Learning: Experience as the Source of Learning and Development. Prentice-Hall.
- Lave, J. & Wenger, E. (1991). Situated Learning: Legitimate Peripheral Participation. Cambridge University Press.
