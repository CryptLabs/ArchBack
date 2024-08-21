#!/bin/bash
# Define ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
RESET='\033[0m'

# Test commit

# Print "Archive" in color
echo -e "${RED}A${GREEN}r${YELLOW}c${BLUE}h${MAGENTA}i${CYAN}v${RED}e${RESET}"

# Function for task 1
function task1() {
  echo "Backing up packages in the official repository ..."
  pacman -Qqen >pkglist-repo.txt
}

# Function for task 2
function task2() {
  echo "Backing up packages in the AUR ..."
  pacman -Qqem >pkglist-aur.txt
}
function task3() {
  echo "Restoring packages from the official repository ..."
  pacman -Qqem >pkglist-aur.txt
}
function task4() {
  echo "Restoring packages from the AUR ..."
  pacman -Qqem >pkglist-aur.txt
}

# Function to display menu
function show_menu() {
  echo "1) Backup the official repository packages"
  echo "2) Backup the AUR packages"
  echo "3) Restore packages from the official repository"
  echo "4) Restore packages from the AUR"

  echo "Q) Quit"
}

# Main execution
while true; do
  show_menu
  read -p "Enter your choice: " CHOICE
  case $CHOICE in
  1)
    task1
    ;;
  2)
    task2
    ;;
  q)
    echo "Exiting..."
    break
    ;;
  *)
    echo "Invalid choice, please try again."
    ;;
  esac
done
