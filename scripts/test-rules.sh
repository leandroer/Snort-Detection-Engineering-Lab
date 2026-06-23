#!/usr/bin/env bash
set -euo pipefail

SNORT_CONF="${SNORT_CONF:-/usr/local/etc/snort/snort.lua}"
RULES="${RULES:-/etc/snort/rules/local.rules}"

echo "[*] Testing Snort configuration:"
echo "    Config: $SNORT_CONF"
echo "    Rules : $RULES"

sudo snort -c "$SNORT_CONF" -R "$RULES" --warn-all -T
