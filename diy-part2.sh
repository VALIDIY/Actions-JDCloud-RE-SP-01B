#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i '/config interface '\''br-lan'\''/,/^$/s/option macaddr.*/option macaddr '\''DC:D8:7C:12:92:92'\''/' package/base-files/files/bin/config_generate
sed -i '/config interface '\''lan1'\''/,/^$/s/option macaddr.*/option macaddr '\''DC:D8:7C:12:92:92'\''/' package/base-files/files/bin/config_generate
sed -i '/config interface '\''lan2'\''/,/^$/s/option macaddr.*/option macaddr '\''DC:D8:7C:12:92:92'\''/' package/base-files/files/bin/config_generate
sed -i '/config interface '\''wan'\''/,/^$/s/option macaddr.*/option macaddr '\''DC:D8:7C:12:92:93'\''/' package/base-files/files/bin/config_generate
sed -i '/config interface '\''eth0'\''/,/^$/s/option macaddr.*/option macaddr '\''DC:D8:7C:12:92:93'\''/' package/base-files/files/bin/config_generate

# Wi-Fi name
sed -i 's/set wireless\.default_\${name}\.ssid=ImmortalWrt/set wireless.default_\${name}.ssid=JDCloud/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
git clone https://github.com/VALIDIY/luci-app-5GSmartCase.git package/luci-app-5GSmartCase

# Modify hostname
sed -i 's/ImmortalWrt/JDCloud_5G_CPE/g' package/base-files/files/bin/config_generate
