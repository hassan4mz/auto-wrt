rm /home/user/openwrt/target/linux/ramips/dts/mt7621_mercury_KM06-704H-v1.dts
rm /home/user/openwrt/target/linux/ramips/dts/mt7621_mercury_KM06-704H-v2.dts
rm /home/user/openwrt/target/linux/ramips/dts/mt7621_mercury_KM08-708H-v1.dts
rm /home/user/openwrt/target/linux/ramips/dts/mt7621_mercury_KM08-708H-v2.dts
cd /home/user/openwrt/target/linux/ramips/dts/

wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621_mercury_KM06-704H-v1.dts
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621_mercury_KM08-708H-v1.dts
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621_mercury_KM06-704H-v2.dts
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621_mercury_KM08-708H-v2.dts



rm /home/user/openwrt/target/linux/ramips/image/mt7621.mk
cd /home/user/openwrt/target/linux/ramips/image
wget https://raw.githubusercontent.com/hassan4mz/auto-wrt/main/mt7621.mk
cd\

.
.
.

