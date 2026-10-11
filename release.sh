#!/bin/sh
# Erzeugt eine neue Version mit eigenem Link: ./release.sh 6  ->  …/Emo-Go-Home/v6/
# Die großen Dateien (voice/, listen/) bleiben im Hauptordner und werden mitbenutzt.
set -e
cd "$(dirname "$0")"
[ -n "$1" ] || { echo "Nutzung: ./release.sh <nummer>"; exit 1; }
for d in v[0-9]*/; do [ -d "$d" ] && rm -rf "$d"; done
mkdir -p "v$1"
sed 's|<head>|<head>\n<base href="../">|' index.html > "v$1/index.html"
echo "Neuer Link: https://wolfiebu-ship-it.github.io/Emo-Go-Home/v$1/"
