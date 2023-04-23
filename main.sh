# Define color variables

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
PURPLE=$(tput setaf 25)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
RESET=$(tput sgr0)

# Echo everything
#
# Echo username and hostname like this: username@hostname
echo "${RED}${USER}${RESET}@${YELLOW}${HOSTNAME}${RESET}"
# Echo username
echo "${RED}Username: ${RESET}$(whoami)"
# Echo hostname
echo "${YELLOW}Hostname: ${RESET}$(hostname)"
# Echo distro
echo "${PURPLE}Distro: ${RESET}$(cat /etc/*release | grep PRETTY_NAME | cut -d '"' -f 2)"
# Echo shell
echo "${CYAN}Shell: ${RESET}$(which $SHELL)"
# Echo uptime
echo "${GREEN}Uptime: ${RESET}$(uptime -p | sed "s/up //")"
