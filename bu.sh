package/base-files/files/bin/config_generate
M       package/base-files/files/etc/banner
M       package/kernel/mac80211/files/lib/wifi/mac80211.sh
M       package/network/services/dnsmasq/files/dhcp.conf
M       target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh



rm /home/user/openwrt/package/base-files/files/etc/banner
cd /home/user/openwrt/package/base-files/files/etc/
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/banner


rm /home/user/openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
cd /home/user/openwrt/package/kernel/mac80211/files/lib/wifi/
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mac80211.sh

rm /home/user/openwrt/package/network/services/dnsmasq/files/dhcp.conf
cd /home/user/openwrt/package/network/services/dnsmasq/files/
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/dhcp.conf

rm /home/user/openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
cd  /home/user/openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/platform.sh

rm /home/user/openwrt/target/linux/ramips/mt7621/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
cd /home/user/openwrt/target/linux/ramips/mt7621/base-files/etc/hotplug.d/ieee80211/
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/10_fix_wifi_mac

