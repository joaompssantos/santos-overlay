# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN=zoom

DESCRIPTION="Video conferencing and web conferencing service"
HOMEPAGE="https://zoom.us"
SRC_URI="${HOMEPAGE=}/client/${PV}/${MY_PN}_x86_64.pkg.tar.xz"

LICENSE="ZOOM"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="mirror"

# IUSE="pulseaudio gstreamer"

DEPEND=""
RDEPEND="${DEPEND}
	app-i18n/ibus
	dev-db/sqlite
	dev-libs/glib
	dev-libs/libxslt
	media-libs/fontconfig
	media-libs/mesa
	media-sound/pulseaudio
	sys-apps/dbus
	x11-libs/libSM
	x11-libs/libxcb
	x11-libs/libXcomposite
	x11-libs/libXfixes
	x11-libs/libXi
	x11-libs/libXrender
	x11-libs/xcb-util-keysyms"

S=${WORKDIR}

src_install() {
	cp -Rp "${S}/"* "${D}"
}
