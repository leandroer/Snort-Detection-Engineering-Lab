#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <pcap-file>"
  exit 1
fi

PCAP="$1"
SNORT_CONF="${SNORT_CONF:-/usr/local/etc/snort/snort.lua}"
RULES="${RULES:-/etc/snort/rules/local.rules}"

sudo snort -c "$SNORT_CONF" -R "$RULES" -r "$PCAP" -A alert_fast
