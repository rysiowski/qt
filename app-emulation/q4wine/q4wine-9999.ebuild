# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit git qt4-edge cmake-utils

DESCRIPTION="Qt4 GUI for wine"
HOMEPAGE="http://sourceforge.net/projects/q4wine/"
EGIT_REPO_URI="git://github.com/brezerk/q4wine.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="debug"

DEPEND="x11-libs/qt-gui:4
	x11-libs/qt-sql:4[sqlite]"
RDEPEND="${DEPEND}
	app-admin/sudo
	app-emulation/wine
	>=sys-apps/which-2.19
	>=media-gfx/icoutils-0.26.0"

S="${WORKDIR}/${PN}"

DOCS="README"

src_unpack() {
	git_src_unpack
}
