################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2017-present Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="intel-hybrid-driver"
PKG_VERSION="962e582dee3ff4fd960c25f9d44166302f8849ae"
PKG_SHA256="01c73cfde8fff472435f96102305fa2609e027799c25455b105934001cecfe51"
PKG_ARCH="x86_64 i386"
PKG_LICENSE="GPL"
PKG_SITE="https://01.org/linuxmedia"
PKG_URL="https://github.com/01org/intel-hybrid-driver/archive/$PKG_VERSION.zip"
PKG_DEPENDS_TARGET="toolchain libva libdrm libcmrt"
PKG_SECTION="multimedia"
PKG_SHORTDESC="intel-hybrid-driver: VA driver for Intel G45 & HD Graphics family"
PKG_LONGDESC="intel-hybrid-driver: VA driver for Intel G45 & HD Graphics family"
PKG_TOOLCHAIN="autotools"

if [ "$DISPLAYSERVER" = "x11" ]; then
  DISPLAYSERVER_LIBVA="--enable-x11 --disable-wayland"
elif [ "$DISPLAYSERVER" = "weston" ]; then
  DISPLAYSERVER_LIBVA="--disable-x11 --enable-wayland"
else
  DISPLAYSERVER_LIBVA="--disable-x11 --disable-wayland"
fi

PKG_CONFIGURE_OPTS_TARGET="--disable-silent-rules \
                           --enable-drm \
                           $DISPLAYSERVER_LIBVA"
