#!/bin/bash
#
declare -a distros
distros[0]="Amazon Linux"
distros[1]="Ubuntu"
distros[2]="RedHat"
distros[3]="Debian"
distros[5]="Arch"
distros[6]="Kali"
echo "${distros[@]}"
unset distros[3]
echo "-------------------"
echo "${distros[@]}"


declare -A commands
commands["ls"]="/bin"
commands["cat"]="/bin"

echo "The cat command is located in the ${commands[cat]} directory"
