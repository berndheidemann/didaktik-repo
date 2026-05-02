#!/bin/bash
# Body-Inline-vs-Quellenliste-Sweep (Welle 10, Phase B)
#
# Findet Pattern #4 Variante A: Body-Inline-Cites, deren Erstautor nicht in der
# Quellenliste-Sektion auftaucht. Real und korrekt attribuierte Citations, die
# aber in der Bibliographie am Artikelende fehlen.
#
# Output: filename: Autor JJJJ (im Body, fehlt in Quellenliste)
#
# Limitierungen / False Positives:
#   - Token-Fragmente bei zusammengesetzten Nachnamen ("Ruiz de Miras" → "Miras")
#   - Allgemeine Wörter, die einem Jahr vorausgehen ("Synthese 1998", "Modell 2007")
#     → gefiltert über Stop-Word-Liste
#   - Geburts-/Sterbedaten und Veröffentlichungsdaten ohne Cite-Charakter
#
# Empfohlener Folge-Workflow:
#   1. Skript laufen lassen, Roh-Treffer sortieren/uniquen
#   2. Stop-Word-Filter erweitern (siehe case-Statement unten)
#   3. Verbleibende Treffer manuell verifizieren via grep im Body-Kontext
#   4. Bei verdächtigen generischen Cites (Yang 2024, Becker 2023): CrossRef-Lookup
#      prüfen, ob Citation real ist oder Pattern #5 (fabriziert)
#
# Validiert in Welle 10 (2026-05-02): ~52 Roh-Treffer → ~25 echte Pattern-#4-A
# + 4 Pattern-#5-CRITs (fabrizierte Cites).
#
# Usage: ./scripts/body-inline-sweep.sh [WIKI_DIR]
#        Default WIKI_DIR: $REPO_ROOT/wiki

set -u
WIKI="${1:-$(git rev-parse --show-toplevel 2>/dev/null)/wiki}"

if [ ! -d "$WIKI" ]; then
  echo "FEHLER: Wiki-Verzeichnis '$WIKI' nicht gefunden." >&2
  echo "Usage: $0 [WIKI_DIR]" >&2
  exit 1
fi

for f in "$WIKI"/*.md; do
  fname=$(basename "$f")

  # Body = alles VOR "## Quellen"
  body=$(awk '/^## Quellen?$/{exit} {print}' "$f")
  # Quellenliste = alles AB "## Quellen"
  quellen=$(awk '/^## Quellen?$/,0' "$f")

  # Wenn keine Quellen-Sektion existiert, skippen (z.B. Index-Dateien)
  [ -z "$quellen" ] && continue

  # Inline-Cite-Tokens extrahieren:
  # Pattern: Autor (& Autor)? (et al.)? (Klammer-Auf | Komma+Leer) Jahr (19|20)JJ
  echo "$body" | grep -oE '[A-ZÄÖÜ][a-zäöüß-]+(\s*&\s*[A-ZÄÖÜ][a-zäöüß-]+)?\s*(et al\.?\s*)?(\(\s*|, ?\s*)(19|20)[0-9]{2}' 2>/dev/null \
    | sed -E 's/^([A-ZÄÖÜ][a-zäöüß-]+).*((19|20)[0-9]{2})$/\1|\2/' \
    | sort -u \
    | while IFS='|' read -r autor jahr; do
        # Skip wenn Autor zu kurz
        [ ${#autor} -lt 3 ] && continue

        # Stop-Word-Liste — allgemeine deutsche Wörter, die fälschlich als
        # "Erstautor" matchen, weil sie mit Großbuchstabe beginnen und vor
        # einer Jahreszahl stehen. Bei Bedarf erweitern.
        case "$autor" in
          # Beschreibende Substantive
          Diagramme|Modell|Synthese|Ära|Mode|Box|Position|Ergänzung|Merkmale|Vorarbeit|Verhaltensmuster|Lehrplan|Reviews|Hochschulen|Lernprogramme|Analyse|Studie|Studien|Praxis|Ergebnis|Befunde|Daten|Methode|Liste|Tabelle|Beispiel|Theorie|Pattern|Diagramm|Form|Konzept|Idee|Schema|Stil|Gegenpol|Legacy|Duolingo|Grundrhythmus|Schule|Hochschule|Schulen|Bildung|Lernende|Lehrkraft|Lehrkräfte|Schüler|Lernsituation|Aktivität|Software|Lehre|Phase|Phasen|Stufe|Stufen|Sicht|Anteil|Folge|Folgen|Folgende|Ergebnisse|Anwendung|Faktoren|System|Cognitive|Visual|Total|Lernziel|Lernziele|Schritte|Reihe|Risiken|Vergleich|Schwerpunkt|Schwerpunkte|Lehrer|Welt|Beispiele|Themen|Wirkung|Fragen|Kontext|Begriffe|Vorwissen|Übung|Übungen|Eindruck|Tutoring|Systeme|Block|Personen|Lernfeld|Lernfelder|Tabellen|Studium|Praktikum|Hilfsmittel|Wege|Aktuell|Frühe|Späte|Letzte|Erste|Instruktion|Illinois|Dachkonzept|Lernziel) continue;;
          # Pronomen / Adjektive / Demonstrativa
          Bisher|Damit|Dort|Hier|Beim|Diese|Dieser|Dieses|Diesen|Wenn|Wann|Was|Wer|Wie|Wo|Welche|Welcher|Welches|Welchen|Mit|Eine|Einen|Eines|Einer|Auf|Aus|Bei|Per|Pro|Vom|Vor|Von|Zur|Zum|All|Auch|Weil|Statt|Jeder|Jede|Jedes|Über|Unter|Ihre|Ihres|Ihrer|Ihrem|Ihren|Ihr|Sein|Seine|Seines|Seiner|Seinem|Seinen|Sondern|Aber|Doch|Trotz|Daher|Direkt|Gerade|Schon|Bereits|Soll|Sollte|Will|Wollen|Kann|Kannst|Können|Konnte|Kommt|Kommen|Geht|Gehen|Lass|Lassen|Macht|Machen|Mehr|Weniger|Erst|Sehr|Ganz|Sogar|Selbst|Bevor|Nachdem|Wirklich|Vorausgehende|Tatsächliche|Allgemein) continue;;
          # Verbformen / sonstige
          Bist|Hast|Hat|Hatten|Haben|Bleibt|Bleiben|Werden|Wurde|Wurden|Reines|Reine|Reiner|Aktiv|Active|Constructive|Interactive|Passive|Bewerten|Anwenden|Verstehen|Erinnern|Analysieren|Erschaffen|Berufs|Schulung|Schulungen) continue;;
          # Zahlwörter
          Vier|Fünf|Acht|Neun|Zehn|Plus|Minus) continue;;
        esac

        # Erstautor in Quellenliste prüfen (case-insensitive substring match)
        if ! echo "$quellen" | grep -qiF "$autor"; then
          echo "${fname}: ${autor} ${jahr} (im Body, fehlt in Quellenliste)"
        fi
      done
done
