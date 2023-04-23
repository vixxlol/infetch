# Define color variables
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
PURPLE=$(tput setaf 25)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
RESET=$(tput sgr0)

echo "${RED}${USER}${RESET}@${YELLOW}${HOSTNAME}${RESET}"
echo "${RED}Username: ${RESET}$(whoami)"
echo "${YELLOW}Hostname: ${RESET}$(hostname)"
echo "${PURPLE}Distro: ${RESET}$(cat /etc/*release | grep PRETTY_NAME | cut -d '"' -f 2)"
echo "${CYAN}Shell: ${RESET}$(which $SHELL)"
