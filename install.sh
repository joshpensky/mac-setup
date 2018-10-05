#!/bin/bash

# COLORS
YELLOW='\033[0;33m'
GREEN='\033[1;32m'
MAGENTA='\033[1;35m'
NO_COLOR='\033[0m'

printf "${MAGENTA}Starting settings installation..${NO_COLOR}\n"

# Enter source folder
cd ./src

# Installing homebrew and its packages
sh ./brew.sh

# Enter bash and vim folder
cd ./bash_vim
# Copy bash and vim configs
printf "${YELLOW}Copying Bash and Vim configs...${NO_COLOR}\n"
CONFIGS=(
  "./.bash_profile"
  "./.bashrc"
  "./.vimrc"
)
for f in ${CONFIGS[@]}; do cp -R "$f" ~; done
printf "${GREEN}Bash and Vim configs copied!${NO_COLOR}\n"

# Enter VS Code folder
cd ../vscode
# Install extensions
sh ./install-extensions.sh
printf "${GREEN}All VS Code extensions installed!${NO_COLOR}\n"
# Copy user settings
printf "${YELLOW}Copying VS Code user settings...${NO_COLOR}\n"
cp -R ./settings.json ~/Library/Application\ Support/Code/User
printf "${GREEN}VS Code user settings copied!${NO_COLOR}\n"

printf "${MAGENTA}All settings installed!\n"