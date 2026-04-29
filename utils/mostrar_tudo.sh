#!/bin/bash

for dir in devops_ex1 devops_ex2 devops_ex3 devops_ex4; do
  echo "==================== $dir ===================="
  for f in "$dir"/*; do
    echo "----- $f -----"
    cat "$f"
    echo
  done
done
