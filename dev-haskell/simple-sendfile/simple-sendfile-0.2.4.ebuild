# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Cross platform library for the sendfile system call"
HOMEPAGE="http://hackage.haskell.org/package/simple-sendfile"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# test/inputFile does not exist, is not on github either
# https://github.com/kazu-yamamoto/simple-sendfile/issues/6
RESTRICT="test"

RDEPEND="dev-haskell/network[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		test? ( dev-haskell/conduit
			dev-haskell/hspec
			dev-haskell/hspec-discover
			dev-haskell/hspec-shouldbe
			dev-haskell/hunit
			dev-haskell/network-conduit
		)
		>=dev-haskell/cabal-1.10"