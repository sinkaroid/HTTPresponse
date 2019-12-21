#!/bin/bash
#sin

GREEN=$(tput setaf 2)
RED=$(tput setaf 1) 
CYAN=$(tput setaf 6) 

echo -e "${RED}

  _    _ _______ _______ _____                                          
 | |  | |__   __|__   __|  __ \                                         
 | |__| |  | |     | |  | |__) | __ ___  ___ _ __   ___  _ __  ___  ___ 
 |  __  |  | |     | |  |  ___/ '__/ _ \/ __| '_ \ / _ \| '_ \/ __|/ _ |
 | |  | |  | |     | |  | |   | | |  __/\__ \ |_) | (_) | | | \__ \  __/
 |_|  |_|  |_|     |_|  |_|   |_|  \___||___/ .__/ \___/|_| |_|___/\___|
                                            | |                         
                                            |_|mass http checker // webshells checker"
read -p "${WHITE}raw list: " raw 
echo -e "\n"


#do here
wget -q -nv -O bajing.txt ${raw};
cat bajing.txt | sed 's/htt/curl -LI htt/' | sed "s/$/ -o \/dev\/null -w '${CYAN}%{http_code} => '${GREEN}'%{url_effective}${RED}\n' -s/" > mek.sh

./mek.sh;rm bajing.txt
