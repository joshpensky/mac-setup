#!/bin/bash
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'

if test $(which code); then
  filename="./extensions.txt"
  while read -r line;
  do
    printf "${YELLOW}Installing VS Code extension %s...${NO_COLOR}\n" "$line"
    code --install-extension $line > /dev/null
  done < "$filename"
fi