#!/bin/bash

#Color values
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
RESET='\033[0m'
LIGHT_YELLOW='\e[93m'
LIGHT_CYAN='\033[1;36m'
LIGHT_GRAY='\033[0;37m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
LIGHT_BLUE='\033[1;34m'
LIGHT_PURPLE='\033[1;35m'


#Clearing screen before opening
clear
#Function animated logo
function_animated_logo () {
str="            █████████
          ███║║║║║║║███
        █║║║║║║║║║║║║║█
        █║║║║███████║║║║█
       █║║║║██     ██║║║║█
      █║║║║██       ██║║║║█
     █║║║║██         ██║║║║█
     █║║║██           ██║║║█           ▄██▄▄██▄
     █║║║█             █║║║█           ██████████
     █║║║█             █║║║█           ▀████████▀
     █║║║█             █║║║█             ▀████▀
     █║║║█             █║║║█              ████
    ███████           ███████             ████
   ██║║║║║║██        ██║║║║║██            ████
  ██║║║║║║║║██      ██║║║║║║║██           ████
 ██║║║║║║║║║║██    ██║║║║║║║║║║██         ████
██║║║║║║║║║║║║█████║║║║║║║║║║║║██         ████
█║║║║║║║║║║║║║║║║║║║║║║║║║║║║║║║█         ████
█║║║║║║║║║║║║║█████║║║║║║║║║║║║║█         ████
█║║║║║║║║║║║║█     █║║║║║║║║║║║║█      ▀▀▀████
█║║║║║║║║║║║║█     █║║║║║║║║║║║║█      ▀▀▀████
█║║║║║║║║║║║║█     █║║║║║║║║║║║║█      ▀▀▀████
██║║║║║║║║║║║█     █║║║║║║║║║║║██      $▄█████▀
██║║║║║║║║║║║║█   █║║║║║║║║║║║║██
 ██║║║║║║║║║║║█   █║║║║║║║║║║║██  ▒█▀▀█ █▀▀█ █░░█ ▀▀█▀▀ █▀▀ ░░ ░█▀▀█ █░░ █░░
  ██║║║║║║║║║║█   █║║║║║║║║║║██   ▒█▀▀▄ █▄▄▀ █░░█ ░░█░░ █▀▀ ▀▀ ▒█▄▄█ █░░ █░░
   ██║║║║║║║║║█   █║║║║║║║║║██    ▒█▄▄█ ▀░▀▀ ░▀▀▀ ░░▀░░ ▀▀▀ ░░ ▒█░▒█ ▀▀▀ ▀▀▀
    ██║║║║║║║║█████║║║║║║║║██          Ａｎｉｌ Ｓｈｒｅｓｔｈａ （ E m p a t h ）
     ██║║║║║║║║███║║║║║║║║██
      ██║║║║║║║║║║║║║║║║║██
       ██║║║║║║║║║║║║║║║██
        ██║║║║║║║║║║║║║██
         ██║║║║║║║║║║║██
          ██║║║║║║║║║██
           ██║║║║║║║██
            ██║║║║║██
             ██║║║██
              ██║██
               ███  "
for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.001
    done | lolcat
}

#Main loop Start
while true
do
clear
function_animated_logo ; echo
echo -e "${LIGHT_CYAN}\n         Online Methods                              Offline Methods  \n     ^^^^^^^^^^^^^^^^^^^^^^^                      ^^^^^^^^^^^^^^^^^^^^^^^"
echo -e "${LIGHT_RED}( 1 ) >>> Brute-Force HTTP Login               ( 4 ) >>> [ MD4 ]  Hash Brute" ; echo
echo -e "${LIGHT_BLUE}( 2 ) >>> Brute-Force SSH Login                ( 5 ) >>> [ MD5 ] Hash Brute" ; echo        
echo -e "${LIGHT_PURPLE}( 3 ) >>> Brute-Force FTP Login                ( 6 ) >>> [ CAP ] Hash Brute" ; echo
echo -e "${LIGHT_RED}( 7 ) >>> Custom WordList Generate             ( 8 ) >>> About Us" ; echo
echo -e "${LIGHT_BLUE}( 99 ) >>> Exit" ; echo 
echo -e ${LIGHT_CYAN}
read -p "Cognizant-Empath >>> " choosing_attack


#Main If Start
#HTTP BRUTE
if [ $choosing_attack == 1 ]
then
echo -e ${LIGHT_GRAY} "
░█─░█ ▀▀█▀▀ ▀▀█▀▀ ░█▀▀█ ── ░█▀▀█ █▀▀█ █──█ ▀▀█▀▀ █▀▀ 
░█▀▀█ ─░█── ─░█── ░█▄▄█ ▀▀ ░█▀▀▄ █▄▄▀ █──█ ──█── █▀▀ 
░█─░█ ─░█── ─░█── ░█─── ── ░█▄▄█ ▀─▀▀ ─▀▀▀ ──▀── ▀▀▀
" ; echo "=====================================================" | lolcat ; echo ; echo -e ${LIGHT_GRAY} 
read -p "Enter the IPadress/Domain ( Remove http/https from there ) >>> " domain ; echo
read -p "Enter the Port number its runnning on >>> " port ; echo
read -p "Path to the User List with name of the wordlist ( /full-path/usernames.txt ) >>> " userdb ; echo
read -p "Path to the Password List with name of the wordlist ( /full-path/passwords.txt ) >>> " passdb ; echo -e ${LIGHT_RED} 

str="Starting HTTP Brute at https://$domain/" 
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; xterm -hold -title "Empath ( HTTP - Brute )" -e "nmap --script http-brute $domain -p $port --script-args userdb=$userdb,passdb=$passdb" ; echo ; echo
    str="Press Enter to exit..." 
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; read 

#SSH BRUTE
elif [ $choosing_attack == 2 ]
then
echo -e ${LIGHT_GRAY} "
▒█▀▀▀█ ▒█▀▀▀█ ▒█░▒█ ░░ ▒█▀▀█ █▀▀█ █░░█ ▀▀█▀▀ █▀▀ 
░▀▀▀▄▄ ░▀▀▀▄▄ ▒█▀▀█ ▀▀ ▒█▀▀▄ █▄▄▀ █░░█ ░░█░░ █▀▀ 
▒█▄▄▄█ ▒█▄▄▄█ ▒█░▒█ ░░ ▒█▄▄█ ▀░▀▀ ░▀▀▀ ░░▀░░ ▀▀▀
" ; echo "=====================================================" | lolcat ; echo ; echo -e ${LIGHT_GRAY} 
read -p "Enter the IPadress/Domain ( Remove http/https from there ) >>> " domain ; echo
read -p "Enter the Port number its runnning on >>> " port ; echo
read -p "Path to the User List with name of the wordlist ( /full-path/username.txt ) >>> " userdb ; echo
read -p "Path to the Password List with name of the wordlist ( /full-path/passwords.txt ) >>> " passdb ; echo -e ${LIGHT_RED} 

str="Starting SSH Brute at https://$domain/" 
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; xterm -hold -title "Empath ( SSH - Brute )" -e "clear ; nmap --script ssh-brute $domain -p $port --script-args userdb=$userdb,passdb=$passdb" ; echo ; echo
    str="Press Enter to exit..." 
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; read 

#FTP BRUTE
elif [ $choosing_attack == 3 ]
then
echo -e ${LIGHT_GRAY} "
▒█▀▀▀ ▀▀█▀▀ ▒█▀▀█ ░░ ▒█▀▀█ █▀▀█ █░░█ ▀▀█▀▀ █▀▀ 
▒█▀▀▀ ░▒█░░ ▒█▄▄█ ▀▀ ▒█▀▀▄ █▄▄▀ █░░█ ░░█░░ █▀▀ 
▒█░░░ ░▒█░░ ▒█░░░ ░░ ▒█▄▄█ ▀░▀▀ ░▀▀▀ ░░▀░░ ▀▀▀
" ; echo "=====================================================" | lolcat ; echo ; echo -e ${LIGHT_GRAY} 
read -p "Enter the IPadress/Domain ( Remove http/https from there ) >>> " domain ; echo
read -p "Enter the Port number its runnning on >>> " port ; echo 
read -p "Path to the User List with name of the wordlist ( /full-path/usernames.txt ) >>> " userdb ; echo
read -p "Path to the Password List with name of the wordlist ( /full-path/passwords.txt ) >>> " passdb ; echo -e ${LIGHT_RED} 

str="Starting FTP Brute at https://$domain/" 
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; xterm -hold -title "Empath ( FTP - Brute )" -e "nmap --script ftp-brute $domain -p $port --script-args userdb=$userdb,passdb=$passdb" ; echo ; echo
    str="Press Enter to exit..." 
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; read 


#MD4 Hash Brute
elif [ $choosing_attack == 4 ]
then
echo -e ${LIGHT_GRAY} "
▒█▀▄▀█ ▒█▀▀▄ ░█▀█░ ░░ ▒█▀▀█ █▀▀█ █░░█ ▀▀█▀▀ █▀▀ 
▒█▒█▒█ ▒█░▒█ █▄▄█▄ ▀▀ ▒█▀▀▄ █▄▄▀ █░░█ ░░█░░ █▀▀ 
▒█░░▒█ ▒█▄▄▀ ░░░█░ ░░ ▒█▄▄█ ▀░▀▀ ░▀▀▀ ░░▀░░ ▀▀▀
" ; echo "=====================================================" | lolcat ; echo ; echo -e ${LIGHT_GRAY} 
read -p "Enter the full path the of the MD4 Hash with full name  >>> " path_hash ; echo
read -p "Enter the full path of the Wordlist >>> " path_wordlist ; echo -e ${LIGHT_RED} 

str="Starting MD4 Brute at $path_hash" 
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; xterm -hold -title "Empath ( MD4 - Brute )" -e "hashcat -m900  $path_hash $path_wordlist " ; echo; echo
    str="Press Enter to exit..." 
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; read 

#MD5 Hash Brute
elif [ $choosing_attack == 5 ]
then
echo -e ${LIGHT_GRAY} "
░█▀▄▀█ ░█▀▀▄ █▀▀ ── ░█▀▀█ █▀▀█ █──█ ▀▀█▀▀ █▀▀ 
░█░█░█ ░█─░█ ▀▀▄ ▀▀ ░█▀▀▄ █▄▄▀ █──█ ──█── █▀▀ 
░█──░█ ░█▄▄▀ ▄▄▀ ── ░█▄▄█ ▀─▀▀ ─▀▀▀ ──▀── ▀▀▀
" ; echo "=====================================================" | lolcat ; echo ; echo -e ${LIGHT_GRAY} 
read -p "Enter the full path the of the MD5 Hash with full name  >>> " path_hash ; echo
read -p "Enter the full path of the Wordlist >>> " path_wordlist ; echo -e ${LIGHT_RED} 

str="Starting MD5 Brute at $path_hash" 
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; xterm -hold -title "Empath ( MD5 - Brute )" -e "hashcat -m00  $path_hash $path_wordlist " ; echo; echo
    str="Press Enter to exit..." 
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; read 

#CAP Hash Brute
elif [ $choosing_attack == 6 ]
then
echo -e ${LIGHT_GRAY} "
░█▀▀█ ─█▀▀█ ░█▀▀█ ── ░█▀▀█ █▀▀█ █──█ ▀▀█▀▀ █▀▀ 
░█─── ░█▄▄█ ░█▄▄█ ▀▀ ░█▀▀▄ █▄▄▀ █──█ ──█── █▀▀ 
░█▄▄█ ░█─░█ ░█─── ── ░█▄▄█ ▀─▀▀ ─▀▀▀ ──▀── ▀▀▀
" ; echo "=====================================================" | lolcat ; echo ; echo -e ${LIGHT_GRAY} 
read -p "Enter the full path the of the CAP Hash with full name  >>> " path_hash ; echo
read -p "Enter the full path of the Wordlist >>> " path_wordlist ; echo -e ${LIGHT_RED} 

str="Starting CAP Brute at $path_hash" 
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; xterm -hold -title "Empath ( CAP - Brute )" -e "aircrack-ng $path_hash -w $path_wordlist" ; echo; echo
    str="Press Enter to exit..." 
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; read 

#Custom wordlist generate
elif [ $choosing_attack == 7 ]
then
echo -e ${LIGHT_GRAY} "
░█▀▀█ █──█ █▀▀ ▀▀█▀▀ █▀▀█ █▀▄▀█ 　 █───█ █▀▀█ █▀▀█ █▀▀▄ █── ─▀─ █▀▀ ▀▀█▀▀ 
░█─── █──█ ▀▀█ ──█── █──█ █─▀─█ 　 █▄█▄█ █──█ █▄▄▀ █──█ █── ▀█▀ ▀▀█ ──█── 
░█▄▄█ ─▀▀▀ ▀▀▀ ──▀── ▀▀▀▀ ▀───▀ 　 ─▀─▀─ ▀▀▀▀ ▀─▀▀ ▀▀▀─ ▀▀▀ ▀▀▀ ▀▀▀ ──▀──
" ; echo "============================================================================" | lolcat ; echo ; echo -e ${LIGHT_GRAY} 
python custom/generate.py -i ; echo -e ${LIGHT_RED} 
    str="Press Enter to exit..." 
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; read 

#About Us
elif [ $choosing_attack == 8 ]
then
echo -e ${LIGHT_GRAY} "
─█▀▀█ █▀▀▄ █▀▀█ █──█ ▀▀█▀▀ 　 ░█─░█ █▀▀ 
░█▄▄█ █▀▀▄ █──█ █──█ ──█── 　 ░█─░█ ▀▀█ 
░█─░█ ▀▀▀─ ▀▀▀▀ ─▀▀▀ ──▀── 　 ─▀▄▄▀ ▀▀▀
" 
echo -e ${LIGHT_RED} 
    str="
Hi I am Anil Shrestha, You may know me as Cold Bones but I have recently changed it to Cognizant Empath or you can call
me as Empath. This tool is made for penertration testing of websites and wifi by brute forcing them. It is totally
made for my educational purpose so please don't misuse this tool. I have included some popular python tools like cupp
for custom worlist generation and that tool is not mine so a credit to the author of cupp. 

Author - Anil Shrestha
Github - https://github.com/empath1928
Facebook - https://www.facebook.com/secrets.1928
Email - anilshresthasecrets@gmail.com

Thanks for Using this tool...." 
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; read 

# Exiting
elif [ $choosing_attack == 99 ]
then
clear ; function_animated_logo ; echo ; echo -e ${LIGHT_RED}
echo  " Thanks for using it..." ; sleep 1 ; exit

#Invalid option
else
echo -e ${LIGHT_RED} 
    str="Invalid Option, Press enter to continue..." 
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; read 

#Main If End
fi
#Main loop end
done




