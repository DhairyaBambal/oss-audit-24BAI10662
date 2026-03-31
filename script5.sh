#!/bin/bash
echo "Answer three questions to generate your manifesto."

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto.txt"

echo "On $DATE, I reflect on open source. I use $TOOL in my daily life. For me, freedom means $FREEDOM. If given the chance, I would build and freely share $BUILD with others. Open source encourages collaboration, learning, and innovation." > "$OUTPUT"

echo "Manifesto saved in $OUTPUT"
cat "$OUTPUT"

