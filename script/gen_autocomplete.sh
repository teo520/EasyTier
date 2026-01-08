#!/bin/env sh

if [ -f ../target/release/easytier-cli ];then
  
  if [ -f ../target/release/easytier-core ];then

  for terminal in bash zsh fish; do
    ../target/release/easytier-cli gen-autocomplete $terminal > ../target/release/easytier-cli.$terminal
    ../target/release/easytier-core --gen-autocomplete $terminal > ../target/release/easytier-core.$terminal
    
    echo "$terminal complete"
  done

  fi
fi
