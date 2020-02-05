#!/bin/bash
#sin

GREEN=$(tput setaf 2)
RED=$(tput setaf 1) 
CYAN=$(tput setaf 6) 

echo "raw list:"
read -r raw
#do here
wget -q -nv -O bajing.txt ${raw};
cat bajing.txt | sed 's/htt/curl -LI htt/' | sed "s/$/ -o \/dev\/null -w '%{http_code} => %{url_effective}\n' -s/" > mek.sh

./mek.sh > dog.txt;python kanna.py | rm bajing.txt mek.sh dog.txt;
#i create this args send output through hook instead, change with ./basename(__FILE__) if only on your console, not discord