#!/bin/bash
PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
  echo "$PACKAGE is installed"
  git --version
else
  echo "$PACKAGE not installed"
fi

case $PACKAGE in
 git) echo "Git: version control system built for open source collaboration";;
esac

