# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-2 linux-mod linux-info

EGIT_REPO_URI="git://github.com/lwfinger/rtl8723bu.git"

DESCRIPTION="Driver for the rtl8723 wireless chipset"
HOMEPAGE="https://github.com/lwfinger/rtl8723bu"
LICENSE="GPL-2"

RDEPEND="sys-kernel/linux-firmware"

MODULE_NAMES="8723bu(net:)"

BUILD_TARGETS="all"

CONFIG_CHECK="~!RTL8XXXU"
ERROR_RTL8XXXU="CONFIG_RTL8XXXU: rtl8xxxu takes precedence over rtl8723bu driver"

src_prepare() {
	set_arch_to_kernel
	sed -i -e "s/^SUBARCH := .*$/SUBARCH := ${ARCH}/" ${S}/Makefile || die
	set_arch_to_portage

	# there two whitespace characters instead of one after KVER in Makefile,
	# so we manage both cases
	sed -i -e "s/^KVER \?:= .*$/KVER := ${KV_FULL}/" ${S}/Makefile  || die
}

pkg_setup() {
	linux-mod_pkg_setup
}

src_install() {
	linux-mod_src_install
}

