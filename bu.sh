#   ________________________   Change Ip-Addresse ____________________
sed -i "s/192.168.1/192.168.10/" /home/user/openwrt/package/base-files/files/bin/config_generate

rm /home/user/openwrt/package/base-files/files/etc/banner
cd /home/user/openwrt/package/base-files/files/etc/
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/banner

#   ________________________   Change SSID ____________________

sed -i "s/.ssid=OpenWrt/.ssid=JM-WIFI/" /home/user/openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh


#   ________________________   DHCP Enable /Disable  ____________________

#sed -i "s/.ssid=OpenWrt/.ssid=JM-WIFI/" /home/user/openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i '$a	option interface	wan/	option interface	wan \
#   option ignore	1' /home/user/openwrt/package/network/services/dnsmasq/files/dhcp.conf

rm /home/user/openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
cd  /home/user/openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/platform.sh

rm /home/user/openwrt/target/linux/ramips/mt7621/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
cd /home/user/openwrt/target/linux/ramips/mt7621/base-files/etc/hotplug.d/ieee80211/
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/10_fix_wifi_mac

