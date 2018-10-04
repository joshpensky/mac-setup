#!/bin/bash
YELLOW='\033[1;33m'
NO_COLOR='\033[0m'

filename="./extensions.txt"
while read -r line;
do
  printf "${YELLOW}Installing VS Code extension %s...${NO_COLOR}\n" "$line"
  code --install-extension $line
done < "$filename"
printf "${YELLOW}*** Don't forget to restart VS Code to load the extensions! ***\n"