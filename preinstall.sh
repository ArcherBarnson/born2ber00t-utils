#!/bin/sh
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0;37m'
WH='\033[1;37m'
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		WELCOME TO AUTOINSTALL - THE WIZARD WILL LAUNCH NOW\n" && \
printf "\n----------------------------------------------------------------------------------------------${NC}\n\n\n" && \
sleep 3 && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		UFW\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
apt install ufw -y && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		UFW READY\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		LIBPAM-PWQUALITY\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
apt install libpam-pwquality -y && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		LIBPAM-PWQUALITY WAS INSTALLED\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		PHP\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
apt install php -y && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		PHP READY\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		LIGHTTPD\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
apt install lighttpd -y && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		LIGHTTPD INSTALLED\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		MARIA-DB\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
apt install mariadb-server -y && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		MARIA-DB INSTALLED\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		SUDO\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
apt install sudo -y && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		SUDO READY\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		GETTING WGET (lol)\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
apt install wget -y && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		WGET GOT (mdr)\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		FETCHING CERTIFICATES...\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
apt install ca-certificates -y && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		CERTIFICATES READY TO USE\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		INSTALLING WORDPRESS...\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar -xvzf latest.tar.gz && \
cd wordpress && mv wp-config-sample.php wp-config.php && cd ~ && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		WORDPRESS INSTALLATION COMPLETE\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		UPDATING...\n" && \
printf "\n----------------------------------------------------------------------------------------------\n" && \
apt-get update && \
printf "${GREEN}\n----------------------------------------------------------------------------------------------\n" && \
printf "		ALL TOOLS WERE INSTALLED\n" && \
printf "		AUTOINSTALL COMPLETE !\n" && \
printf "\n----------------------------------------------------------------------------------------------\n\n\n" && \
printf "${WH}\n----------------------------------------------------------------------------------------------\n" && \
printf "		BEGINING AUTOCONFIG...\n" && \
printf "\n----------------------------------------------------------------------------------------------${NC}\n\n\n" && \
sleep 5 && \
sh autoconfig.sh