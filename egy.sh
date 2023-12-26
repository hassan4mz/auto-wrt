#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color


clear

echo -e "${YELLOW}    ___    __  ___________  __  ______  __________ ___________   __                                                                                                                                                       
#    ______                               _   
#   |  ____|                             | |  
#   | |__    __ _  _   _ __      __ _ __ | |_ 
#   |  __|  / _- || | | |\ \ /\ / /| -__|| __|
#   | |____| (_| || |_| | \ V  V / | |   | |_ 
#   |______|\__- | \__/ |  \_/\_/  |_|    \__|
#            __/ |  __/ |                     
#           |___/  |___/                                                                                                                                         

  Auto update openwrt from github"
echo " "
echo -e "${YELLOW} 1.${NC} ${CYAN} update DTS&MK ${NC}"
echo -e "${YELLOW} 2.${NC} ${CYAN} update IP-Dhcp-Banner ${NC}"
echo -e "${YELLOW} 3.${NC} ${CYAN} Restore Oregnal All File ${NC}"
echo -e "${YELLOW} 4.${NC} ${RED} EXIT ${NC}"
echo ""
echo -e "${YELLOW} >${NC} ${MAGENTA} Email : Egywrt.eg@gmail.com ${NC}"

echo " "
 read -p " -Enter option number: " choice

    case $choice in

1)

	rm /home/user/openwrt/target/linux/ramips/dts/mt7621_mercury_KM06-704H-v1.dts
	rm /home/user/openwrt/target/linux/ramips/dts/mt7621_mercury_KM06-704H-v2.dts
	rm /home/user/openwrt/target/linux/ramips/dts/mt7621_mercury_KM08-708H-v1.dts
	rm /home/user/openwrt/target/linux/ramips/dts/mt7621_mercury_KM08-708H-v2.dts
	cd /home/user/openwrt/target/linux/ramips/dts/
	sleep 3
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621_mercury_KM06-704H-v1.dts
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621_mercury_KM08-708H-v1.dts
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621_mercury_KM06-704H-v2.dts
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621_mercury_KM08-708H-v2.dts

	sleep 3

	rm /home/user/openwrt/target/linux/ramips/image/mt7621.mk
	cd /home/user/openwrt/target/linux/ramips/image
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621.mk


        sleep 3
        sh egy.sh	   
        read -s -n 1
        ;;



2)
        
	rm /home/user/openwrt/package/base-files/files/bin/config_generate
	cd /home/user/openwrt/package/base-files/files/bin/
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/config_generate

	sleep 3
 	
	rm /home/user/openwrt/package/base-files/files/etc/banner
	cd /home/user/openwrt/package/base-files/files/etc/
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/banner
	sleep 3

	rm /home/user/openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
	cd /home/user/openwrt/package/kernel/mac80211/files/lib/wifi/
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mac80211.sh
	sleep 3
	rm /home/user/openwrt/package/network/services/dnsmasq/files/dhcp.conf
	cd /home/user/openwrt/package/network/services/dnsmasq/files/
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/dhcp.conf
	sleep 3
	rm /home/user/openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
	cd  /home/user/openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/platform.sh
 	sleep 3
	rm /home/user/openwrt/target/linux/ramips/mt7621/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
	cd /home/user/openwrt/target/linux/ramips/mt7621/base-files/etc/hotplug.d/ieee80211/
	wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/10_fix_wifi_mac
   
   sleep 3
   sh egy.sh
   
   read -s -n 1
   ;;

3)
	cd  openwrt
	git restore package/base-files/files/bin/config_generate
	git restore package/base-files/files/etc/banner 
	git restore package/kernel/mac80211/files/lib/wifi/mac80211.sh 
	git restore package/network/services/dnsmasq/files/dhcp.conf 
	git restore target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
	git restore target/linux/ramips/mt7621/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
	git restore /home/user/openwrt/target/linux/ramips/image/mt7621.mk

   sleep 3
   sh egy.sh
   read -s -n 1
    ;;


4)
            echo ""
            echo -e "${GREEN}Exiting...${NC}"
            exit 0

           read -s -n 1
           ;;



 *)
           echo "  Invalid option !"
           echo ""
           echo -e "  Press ${RED}ENTER${NC} to continue"
           read -s -n 1
           ;;
      esac

sh egy.sh
