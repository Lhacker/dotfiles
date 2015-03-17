#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

while read line; do
  if [ "$(echo $line | awk 'match($0, /^\s*#/) {print RSTART}')" = "" ]; then
    eval "brew $line"
  fi
done < $CURRENT_DIR/Brewfile
