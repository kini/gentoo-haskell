# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9
EAPI="2"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="GTK+ Serialized event."
HOMEPAGE="http://www.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/glib-0.12*
		=dev-haskell/gtk-0.12*
		dev-haskell/mtl
		>=dev-lang/ghc-6.10.1
		x11-libs/gtk+"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@haskell98@base@' \
		-i "${S}/${PN}.cabal" || die "Could not change haskell98 to base for ghc 7.2.2"
}
