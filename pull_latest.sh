#!/bin/bash

function update_all() {
  for dir in *; do
    echo
    printf $dir
    echo
    cd "$dir" && git pull
    cd ..
  done
}

update_all
