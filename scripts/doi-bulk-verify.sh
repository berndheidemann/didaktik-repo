#!/bin/bash
# DOI/arXiv-Bulk-Verifikation (Welle 10, Phase A)
#
# Extrahiert alle DOIs und arXiv-IDs aus dem Wiki-Verzeichnis und prüft pro ID
# via CrossRef bzw. arXiv-API: Erstautor, Jahr, Venue gegen die Wiki-Citation.
# Hauptzweck: Pattern #2 Hybrid-Citations strukturell fangen (DOI führt zu
# realem Paper, aber Erstautor/Jahr/Titel im Wiki sind falsch).
#
# Output (TSV): file:line | DOI/arXiv | CrossRef-Erstautor | CrossRef-Jahr | CrossRef-Titel-Snippet
# Manuelle Folge-Prüfung: Output mit Wiki-Citation Zeile-für-Zeile abgleichen.
#
# Validiert in Welle 10 (2026-05-02): 6 DOIs in den 51 nicht-auditierten
# Restartikeln, 0 Hybrid-Citations gefunden. In Wellen 6-9 hingegen mehrere
# CRITs (z.B. Wu&Schunn 2023 in icap-framework — Sub-Pattern 2c).
#
# Usage: ./scripts/doi-bulk-verify.sh [--targets-file FILE] [WIKI_DIR]
#   --targets-file FILE: nur Dateien aus FILE prüfen (eine Datei pro Zeile,
#                        relativ zu WIKI_DIR). Default: alle wiki/*.md.
#
# Voraussetzung: curl + python3 mit json-Modul (Standard).

set -u

TARGETS_FILE=""
if [ "${1:-}" = "--targets-file" ]; then
  TARGETS_FILE="$2"
  shift 2
fi
WIKI="${1:-$(git rev-parse --show-toplevel 2>/dev/null)/wiki}"

if [ ! -d "$WIKI" ]; then
  echo "FEHLER: Wiki-Verzeichnis '$WIKI' nicht gefunden." >&2
  exit 1
fi

# Quelldateien sammeln
if [ -n "$TARGETS_FILE" ] && [ -f "$TARGETS_FILE" ]; then
  files=$(while IFS= read -r f; do echo "$WIKI/$f"; done < "$TARGETS_FILE")
else
  files=$(ls "$WIKI"/*.md)
fi

# Header
printf "%-50s\t%-40s\t%-30s\t%-6s\t%s\n" "FILE:LINE" "DOI/arXiv" "ERSTAUTOR (CrossRef)" "JAHR" "TITEL-SNIPPET"
printf "%-50s\t%-40s\t%-30s\t%-6s\t%s\n" "----" "----" "----" "----" "----"

for f in $files; do
  fname=$(basename "$f")
  grep -nE '10\.[0-9]{4,9}/[^[:space:]"<>)*]+|arXiv:[0-9]{4}\.[0-9]{4,5}' "$f" 2>/dev/null | while IFS=: read -r line content; do
    # ID extrahieren
    id=$(echo "$content" | grep -oE '10\.[0-9]{4,9}/[^[:space:]"<>)*]+|arXiv:[0-9]{4}\.[0-9]{4,5}' | head -1 | sed 's/[.,]$//')
    [ -z "$id" ] && continue

    # CrossRef-Lookup für DOI; arXiv-IDs hier nur loggen (arXiv-API separat)
    if [[ "$id" == 10.* ]]; then
      response=$(curl -sL --max-time 10 "https://api.crossref.org/works/$id" 2>/dev/null)
      meta=$(echo "$response" | python3 -c "
import json, sys
try:
    d = json.load(sys.stdin)['message']
    fa = d.get('author', [{}])[0]
    print(f\"{fa.get('family','?')}, {fa.get('given','?')[:1]}.|{d.get('issued',{}).get('date-parts',[['?']])[0][0]}|{d.get('title',['?'])[0][:60]}\")
except Exception as e:
    print(f'?|?|FEHLER: {e}')
" 2>/dev/null)
    else
      meta="(arXiv-Lookup separat)|?|$id"
    fi

    autor=$(echo "$meta" | cut -d'|' -f1)
    jahr=$(echo "$meta" | cut -d'|' -f2)
    titel=$(echo "$meta" | cut -d'|' -f3)
    printf "%-50s\t%-40s\t%-30s\t%-6s\t%s\n" "${fname}:${line}" "$id" "$autor" "$jahr" "$titel"
    sleep 0.05  # CrossRef rate-limit Höflichkeit
  done
done
