#!/bin/bash

# Bash unofficial strict mode: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

BLK='\033[01;30m'
RED='\033[01;31m'
GRN='\033[01;32m'
YLW='\033[01;33m'
BLU='\033[01;34m'
PUR='\033[01;35m'
CYN='\033[01;36m'
WHT='\033[01;37m'
RST='\033[00m'

BASH_SRC=$(dirname "${BASH_SOURCE[0]}") 

shopt -s dotglob

for file in ${BASH_SRC}/.[^.]*; do
  fname=${file##*/};
  fullpath=$(realpath ${file});

  echo -en "${RST} Make symlink ${CYN}~/${fname} -> ${WHT}${file} ${YLW}(y/n/q)${RST}? "
  read -N 1 resp

  if [[ ${resp} == "y" ]]; then

    ln -s ${fullpath} ~/${fname};
    echo -e " ${GRN} Done!${RST}";
  elif [[ ${resp} == "q" ]]; then
    echo -e " ${PUR}Quit!${RST}";
    exit 0;
  else
    echo -e " ${RED} Skipped${RST}";
  fi

done

shopt -u dotglob
