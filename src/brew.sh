#!/bin/bash

YELLOW='\033[0;33m'
GREEN='\033[1;32m'
MAGENTA='\033[1;35m'
NO_COLOR='\033[0m'

# Installing brew (if not already installed)
if test ! $(which brew); then
    printf "${YELLOW}Installing homebrew...${NO_COLOR}\n"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Updating brew (if out of date)
printf "${YELLOW}Updating homebrew...${NO_COLOR}\n"
brew update
printf "${GREEN}Homewbrew installed and up-to-date!${NO_COLOR}\n"

# Installing packages from brew
printf "${YELLOW}Installing packages...${NO_COLOR}\n"
PACKAGES=(
    git
    imagemagick
    node
    postgresql
    python
    python3
    wget
)
brew install ${PACKAGES[@]}
printf "${GREEN}Packages installed!${NO_COLOR}\n"

# Cleaning it all up
printf "${YELLOW}Cleaning up...${NO_COLOR}\n"
brew cleanup