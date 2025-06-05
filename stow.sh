#!/bin/bash

# Add folders that you don't wish to copy here
dont_copy=(".git" "README.md" ".DS_Store" ".gitconfig" "oh-my-zsh")
dont_copy_length=(${#dont_copy[@]})

stow_script="sudo stow . "

if [[ "$(pwd)" =~ \.dotfiles$ ]]; then
  ignore_count=0
  for item in "${dont_copy[@]}"; do
    stow_script="$stow_script --ignore $item "
  done

  ignore_count=$(echo $stow_script | grep -o "\-\-ignore" | wc -l)

  if [[ "$ignore_count" -eq "$dont_copy_length" ]]; then
    echo running stow script: $stow_script
    $stow_script
    cp ./oh-my-zsh/lambda-hl.zsh-theme ../.oh-my-zsh/themes
  fi


fi
