#!/bin/bash

# COLORS
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NO_COLOR='\033[0m'

# Enter source folder
cd ./src

# Enter bash and vim folder
cd ./bash_vim
# Copy bash and vim configs
printf "${YELLOW}Copying bash and vim configs...${NO_COLOR}\n"
CONFIGS=("./.bash_profile" "./.bashrc" "./.vimrc")
for f in ${CONFIGS[@]}; do cp -R "$f" ~; done
printf "${GREEN}Copied bash and vim configs!${NO_COLOR}\n"

# Enter VS Code folder
cd ../vscode
# Copy user settings
printf "${YELLOW}Copying VS Code user settings...${NO_COLOR}\n"
cp -R ./settings.json ~/Library/Application\ Support/Code/User
# Install extensions
sh ./install-extensions.sh
printf "${GREEN}Installed all VS Code settings!${NO_COLOR}\n"