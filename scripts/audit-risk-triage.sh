#!/usr/bin/env bash
# Risk-Triage für Quellen-Audit über alle Wiki-Artikel.
# Erzeugt einen Score pro Artikel, sortiert nach Audit-Priorität.
#
# Score-Logik:
#   +3 pro Effektstärken-Notation (g=, d=, r=, β=)
#   +2 pro Stichproben-Notation (n=, k=, N=)
#   +1 pro RCT/Meta-Analyse/Survey-Mention
#   +1 pro neuer Studienjahr (2023-2026)
#   +3 für Effektstärken-Tabelle (Markdown-Tabelle mit | im Body)
#   +5 für type:evidenz im Frontmatter, +3 für type:praxis
#   +5 wenn explizit "Hattie" erwähnt (Hot-Spot aus Stichprobe)
#   -3 wenn ausschließlich kanonische Theorie (Vygotsky, Bloom 1956, Piaget) ohne neue Zahlen

set -euo pipefail

WIKI_DIR="${1:-/home/bernd/projects/didaktik-repo/wiki}"

declare -A ALREADY_AUDITED
ALREADY_AUDITED[ki-tutoring-evidenzlage.md]=1
ALREADY_AUDITED[deskilling-ki-codegenerierung.md]=1
ALREADY_AUDITED[llm-as-grader.md]=1
ALREADY_AUDITED[effektstaerken-unterricht.md]=1
ALREADY_AUDITED[meta-analysen-cs-education.md]=1
ALREADY_AUDITED[wissensretention-programmierung.md]=1

# Header
printf "%-50s %5s  %s\n" "Artikel" "Score" "Top-Indikatoren"
printf "%-50s %5s  %s\n" "$(printf '%.0s-' {1..50})" "-----" "$(printf '%.0s-' {1..40})"

declare -a RESULTS

for file in "$WIKI_DIR"/*.md; do
  name="$(basename "$file")"
  score=0
  reasons=""

  # Effektstärken-Notation (g=, d=, r=, β=, η²=)
  effect_count=$(grep -ciE '\b(g|d|r)\s*[=≈]\s*[-+]?0?[.,][0-9]' "$file" || true)
  if [[ $effect_count -gt 0 ]]; then
    score=$((score + 3 * effect_count))
    reasons="${reasons}effekt:${effect_count} "
  fi

  # Stichproben-Notation (n=, k=, N=)
  n_count=$(grep -ciE '\b[nNk]\s*[=≈]\s*[0-9]' "$file" || true)
  if [[ $n_count -gt 0 ]]; then
    score=$((score + 2 * n_count))
    reasons="${reasons}n=:${n_count} "
  fi

  # RCT/Meta-Analyse-Mentions
  rct_count=$(grep -ciE '\b(RCT|Meta-Analyse|Meta.Analysis|Systematic Review|Feldexperiment)\b' "$file" || true)
  if [[ $rct_count -gt 0 ]]; then
    score=$((score + rct_count))
    reasons="${reasons}rct:${rct_count} "
  fi

  # Neue Studienjahre 2023-2026
  recent_count=$(grep -coE '\b(2023|2024|2025|2026)\b' "$file" || true)
  if [[ $recent_count -gt 0 ]]; then
    score=$((score + recent_count))
    reasons="${reasons}neu:${recent_count} "
  fi

  # Markdown-Tabellen (Effektstärken-Tabellen)
  table_lines=$(grep -cE '^\|.+\|.+\|' "$file" || true)
  if [[ $table_lines -gt 5 ]]; then
    score=$((score + 3))
    reasons="${reasons}tab:${table_lines} "
  fi

  # type aus Frontmatter
  type_field=$(awk '/^type:/ {print $2; exit}' "$file" || true)
  case "$type_field" in
    evidenz) score=$((score + 5)); reasons="${reasons}T=evi " ;;
    praxis)  score=$((score + 3)); reasons="${reasons}T=prx " ;;
    methode) score=$((score + 1)); reasons="${reasons}T=met " ;;
    theorie) score=$((score + 0)); reasons="${reasons}T=the " ;;
  esac

  # Hattie-Hot-Spot
  if grep -qiE '\bHattie\b' "$file"; then
    score=$((score + 5))
    reasons="${reasons}Hattie "
  fi

  # Bereits auditiert?
  audited_marker=""
  if [[ -n "${ALREADY_AUDITED[$name]+x}" ]]; then
    audited_marker="[DONE] "
  fi

  RESULTS+=("$(printf '%05d|%s|%s%s' "$score" "$name" "$audited_marker" "$reasons")")
done

# Sortiert ausgeben (höchster Score oben)
printf '%s\n' "${RESULTS[@]}" \
  | sort -t'|' -k1 -nr \
  | while IFS='|' read -r score name reasons; do
      printf "%-50s %5d  %s\n" "$name" "$((10#$score))" "$reasons"
    done
