# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Behavior-Driven Development for Haskell"
HOMEPAGE="http://hspec.github.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/ansi-terminal-0.5:=[profile?]
		=dev-haskell/hspec-expectations-0.3.0*:=[profile?]
		>=dev-haskell/hunit-1.2.5:=[profile?]
		>=dev-haskell/quickcheck-2.4.0.1:=[profile?]
		dev-haskell/setenv:=[profile?]
		>=dev-haskell/silently-1.1.1:=[profile?]
		>=dev-haskell/transformers-0.2.2.0:=[profile?]
		<dev-haskell/transformers-0.4.0:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/doctest-0.9.4.1
			dev-haskell/ghc-paths
			dev-haskell/hspec-meta
		)
		>=dev-haskell/cabal-1.8"