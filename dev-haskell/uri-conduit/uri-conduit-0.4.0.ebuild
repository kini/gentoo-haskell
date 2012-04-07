# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Read and write URIs"
HOMEPAGE="http://github.com/snoyberg/xml"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/conduit-0.4*[profile?]
		>=dev-haskell/failure-0.1[profile?]
		<dev-haskell/failure-0.3[profile?]
		=dev-haskell/monad-control-0.3*[profile?]
		>=dev-haskell/network-2.2[profile?]
		<dev-haskell/network-2.4[profile?]
		>=dev-haskell/system-fileio-0.3.3[profile?]
		<dev-haskell/system-fileio-0.4[profile?]
		>=dev-haskell/system-filepath-0.4.3[profile?]
		<dev-haskell/system-filepath-0.5[profile?]
		>=dev-haskell/text-0.5[profile?]
		<dev-haskell/text-1.0[profile?]
		>=dev-haskell/transformers-0.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"