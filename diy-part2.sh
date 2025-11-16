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

# 固件版本号添加个人标识和日期
sed -i "s/DISTRIB_DESCRIPTION='.*ImmortalWrt '/DISTRIB_DESCRIPTION='FICHEN($(TZ=UTC-8 date +%Y.%m.%d))@VALIDIY ImmortalWrt '/g" package/emortal/default-settings/files/99-default-settings

# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/themes/luci-theme-argon

# Modify hostname
sed -i 's/ImmortalWrt/JDCloud_5G_CPE/g' package/base-files/files/bin/config_generate
