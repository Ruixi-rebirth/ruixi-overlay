# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_TAG="1.0"
MY_P="nord"
DESCRIPTION="Fcitx5 Nord Theme"
HOMEPAGE="https://github.com/Ruixi-rebirth/fcitx5-nord"
SRC_URI="https://github.com/Ruixi-rebirth/fcitx5-nord/releases/download/${MY_TAG}/${MY_P}.tar.bz2"
LICENSE="MIT"
SLOT="5"
KEYWORDS="~amd64 ~x86"

DEPEND="app-i18n/fcitx:5"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${DISTDIR}"
W="${PORTAGE_BUILDDIR}/work"
src_unpack() {
	unpack "${MY_P}.tar.bz2"
}
src_install(){
    DICT_PATH="/usr/share/fcitx5/themes"
    insinto "${DICT_PATH}"
    doins -r "${W}"/nord/*
}
