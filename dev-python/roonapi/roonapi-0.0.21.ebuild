# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PYTHON_COMPAT=( python3_{6..8} )

inherit distutils-r1

DESCRIPTION="Provides a python interface to interact with Roon"
HOMEPAGE="https://github.com/pavoni/pyroon https://pypi.org/project/roonapi/"

# dirty hack, inspired by https://github.com/pavoni/pyroon/releases/tag/0.0.22
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${PN}-0.0.22.tar.gz -> ${P}.tar.gz"
S=${WORKDIR}/${PN}-0.0.22

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

DOCS="README.md"

RDEPEND="dev-python/websocket-client[${PYTHON_USEDEP}]"
BDEPEND="${REDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

# fix version string for compat
src_prepare() {
	sed "s/0.0.22/0.0.21/g" -i setup.py || die
	eapply_user
}


python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}