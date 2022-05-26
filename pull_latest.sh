#!/bin/bash

function update_all() {
  for dir in *; do 
    if [ -d $dir ]
    then
      echo
      printf $dir
      echo
      cd "$dir" && git pull
      cd ..
    fi
  done
}

update_all
