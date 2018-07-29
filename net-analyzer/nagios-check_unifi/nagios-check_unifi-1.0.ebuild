# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

#PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} )

inherit multilib git-r3

#MY_P="${PN#nagios-}_v$(get_major_version $PV)-${MY_COMMIT}"

DESCRIPTION="UniFi Monitoring Plugin for Nagios/Icinga"
HOMEPAGE="https://github.com/msweetser/check_unifi/"
EGIT_REPO_URI="https://github.com/msweetser/check_unifi.git"
EGIT_BRANCH="master"
EGIT_COMMIT="6766a1e"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="dev-python/unifi"

#S="${WORKDIR}/${MY_P}"

src_install() {
	exeinto /usr/$(get_libdir)/nagios/plugins
	doexe check_unifi

	dodoc README.md
}
