# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Early out-of-memory killer that runs in user-space"
HOMEPAGE="https://github.com/rfjakob/earlyoom"

EGIT_REPO_URI="https://github.com/rfjakob/earlyoom.git"
EGIT_BRANCH="master"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
    dobin earlyoom
    doinitd ${FILESDIR}/earlyoom
}
