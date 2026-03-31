#!/bin/bash
LOGFILE="/var/log/syslog"
KEYWORD="error"
COUNT=0

if [ ! -f "$LOGFILE" ]; then
  echo "Log file not found"
  exit 1
fi

while read LINE; do
  echo "$LINE" | grep -i "$KEYWORD" >/dev/null
  if [ $? -eq 0 ]; then
    COUNT=$((COUNT+1))
  fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

