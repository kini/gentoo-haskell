# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="DPM"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Darcs Patch Manager"
HOMEPAGE="http://hackage.haskell.org/package/DPM"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-haskell/convertible:=[profile?]
		>=dev-haskell/hsh-2:=[profile?]
		=dev-haskell/htf-0.8*:=[profile?]
		=dev-haskell/http-4000.1*:=[profile?]
		dev-haskell/mtl:=[profile?]
		=dev-haskell/network-2.3*:=[profile?]
		dev-haskell/regex-posix:=[profile?]
		dev-haskell/split:=[profile?]
		dev-haskell/syb:=[profile?]
		>=dev-lang/ghc-6.12.1:=
		=dev-vcs/darcs-2.5*:=[profile?]"
DEPEND="${RDEPEND}
		dev-haskell/alex
		>=dev-haskell/cabal-1.8
		dev-haskell/happy"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	sed -i -e 's/ record/ record -A none/' \
	  "${S}/src/DPM/Core/TestDarcs.hs"
}

src_configure() {
	cabal_src_configure \
	  $(cabal_flag test)
}

src_test() {
	"${S}/dist/build/dpm-tests/dpm-tests" || die "dpm-tests failed"
}

src_install() {
	cabal_src_install

	rm "${D}/usr/bin/dpm-tests" 2>/dev/null
}