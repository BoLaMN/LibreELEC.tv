
################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libcmrt"
PKG_VERSION="1.0.6"
PKG_SHA256="ca22e905a2717fc740e703e65a0061a0e11f4ea513ba970bbc10b3bd6d28e6e0"
PKG_ARCH="i386"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/intel/cmrt/"
PKG_URL="https://github.com/intel/cmrt/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libva"
PKG_SECTION="graphics"
PKG_SOURCE_DIR="cmrt-$PKG_VERSION"
PKG_SHORTDESC="libcmrt: C for Media Runtime"
PKG_LONGDESC="C for Media Runtime."
PKG_TOOLCHAIN="autotools"
