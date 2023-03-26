#!/usr/bin/bash
#color values
LIGHT_GRAY='\033[0;37m'
LIGHT_RED='\033[1;31m'

#setting up things
echo -e ${LIGHT_RED}
str="Setting up for you, Please wait..."
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; sleep 2 ; echo -e ${LIGHT_GRAY}

#Downloading Requirements....
apt-get install lolcat -y
apt-get install figlet -y 
apt-get install aircrack-ng -y
apt-get install hashcat -y
apt-get install xterm -y
apt-get install python3 -y

#Giving necessary permissions
chmod +x Brute-All.sh
chmod +x custom/generate.py
chmod +x setup.sh

clear ; echo "
             █████████
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
               ███  " | lolcat ; echo -e ${LIGHT_RED}

str="Setup Completed, Now you can use the tool..."
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; sleep 2
