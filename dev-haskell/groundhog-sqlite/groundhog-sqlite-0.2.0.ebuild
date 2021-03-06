# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Sqlite3 backend for the groundhog library"
HOMEPAGE="http://hackage.haskell.org/package/groundhog-sqlite"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-builder-0.3.0.0[profile?]
		<dev-haskell/blaze-builder-0.4[profile?]
		>=dev-haskell/groundhog-0.2.0[profile?]
		<dev-haskell/groundhog-0.3.0[profile?]
		=dev-haskell/monad-control-0.3*[profile?]
		=dev-haskell/pool-conduit-0.1*[profile?]
		>=dev-haskell/text-0.8[profile?]
		<dev-haskell/text-0.12[profile?]
		>=dev-haskell/transformers-0.2.1[profile?]
		<dev-haskell/transformers-0.4[profile?]
		dev-haskell/unordered-containers[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
