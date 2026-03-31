#!/bin/bash
DIRS=("/etc" "/var/log" "/home")

echo "===== Disk and Permission Auditor ====="

for DIR in "${DIRS[@]}"; do
  if [ -d "$DIR" ]; then
    echo "Checking: $DIR"
    echo "Permissions: $(ls -ld "$DIR")"
    echo "Size: $(du -sh "$DIR" 2>/dev/null | cut -f1)"
    echo "-----------------------------"
  else
    echo "$DIR does not exist"
  fi
done

if [ -d "/usr/bin" ]; then
  echo "Git binary directory check:"
  ls -ld /usr/bin
fi

