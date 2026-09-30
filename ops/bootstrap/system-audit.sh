#!/bin/bash
REPORT_DATE=$(date +%F)
REPORT_FILE="system-audit-${REPORT_DATE}.txt"

{
  echo "=== Audit système — $REPORT_DATE ==="
  uname -a
  echo
  uptime
  echo
  nproc
  echo
  free -h
  echo
  df -h
} > "$REPORT_FILE"

echo "Rapport généré : $REPORT_FILE"
