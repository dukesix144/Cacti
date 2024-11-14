#!/bin/bash

# Set prefix path for installation
PREFIX="/path_to/binaries"

# Function to run commands and handle errors
run_command() {
    $1 &>/dev/null  # Suppress all output except errors
    if [ $? -ne 0 ]; then
        echo "Error: Command failed: $1"
        exit 1
    fi
}

# Install gperf
install_gperf() {
    echo "Installing gperf..."
    run_command "wget https://ftp.gnu.org/gnu/gperf/gperf-3.1.tar.gz"
    run_command "tar -xzf gperf-3.1.tar.gz"
    run_command "cd gperf-3.1"
    run_command "./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf gperf-3.1 gperf-3.1.tar.gz"
}

# Install zlib from alternative mirror
install_zlib() {
    echo "Installing zlib..."
    run_command "wget https://zlib.net/fossils/zlib-1.2.13.tar.gz"
    run_command "tar -xzf zlib-1.2.13.tar.gz"
    run_command "cd zlib-1.2.13"
    run_command "./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf zlib-1.2.13 zlib-1.2.13.tar.gz"
}

# Install libpng
install_libpng() {
    echo "Installing libpng..."
    run_command "wget https://download.sourceforge.net/libpng/libpng-1.6.37.tar.gz"
    run_command "tar -xzf libpng-1.6.37.tar.gz"
    run_command "cd libpng-1.6.37"
    run_command "./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf libpng-1.6.37 libpng-1.6.37.tar.gz"
}

# Install Freetype2
install_freetype() {
    echo "Installing Freetype2..."
    run_command "wget https://download.savannah.gnu.org/releases/freetype/freetype-2.10.4.tar.gz"
    run_command "tar -xzf freetype-2.10.4.tar.gz"
    run_command "cd freetype-2.10.4"
    run_command "./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf freetype-2.10.4 freetype-2.10.4.tar.gz"
}

# Install Fontconfig
install_fontconfig() {
    echo "Installing Fontconfig..."
    run_command "wget https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.13.1.tar.gz"
    run_command "tar -xzf fontconfig-2.13.1.tar.gz"
    run_command "cd fontconfig-2.13.1"
    run_command "PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig ./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf fontconfig-2.13.1 fontconfig-2.13.1.tar.gz"
}

# Install xz-utils
install_xz_utils() {
    echo "Installing xz-utils..."
    run_command "wget https://tukaani.org/xz/xz-5.2.5.tar.gz"
    run_command "tar -xzf xz-5.2.5.tar.gz"
    run_command "cd xz-5.2.5"
    run_command "./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf xz-5.2.5 xz-5.2.5.tar.gz"
}

# Install Cairo dependencies: pixman, librsvg, poppler
install_pixman() {
    echo "Installing Pixman..."
    run_command "wget https://cairographics.org/releases/pixman-0.40.0.tar.gz"
    run_command "tar -xzf pixman-0.40.0.tar.gz"
    run_command "cd pixman-0.40.0"
    run_command "./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf pixman-0.40.0 pixman-0.40.0.tar.gz"
}

install_librsvg() {
    echo "Installing librsvg..."
    run_command "wget https://download.gnome.org/sources/librsvg/2.35/librsvg-2.35.0.tar.xz"
    run_command "tar -xf librsvg-2.35.0.tar.xz"
    run_command "cd librsvg-2.35.0"
    run_command "./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf librsvg-2.35.0 librsvg-2.35.0.tar.xz"
}

install_poppler() {
    echo "Installing Poppler..."
    run_command "wget https://poppler.freedesktop.org/poppler-0.68.0.tar.xz"
    run_command "tar -xf poppler-0.68.0.tar.xz"
    run_command "cd poppler-0.68.0"
    run_command "./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf poppler-0.68.0 poppler-0.68.0.tar.xz"
}

# Install Cairo
install_cairo() {
    echo "Installing Cairo..."
    run_command "wget https://cairographics.org/releases/cairo-1.16.0.tar.xz"
    run_command "tar -xf cairo-1.16.0.tar.xz"
    run_command "cd cairo-1.16.0"
    run_command "PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig ./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf cairo-1.16.0 cairo-1.16.0.tar.xz"
}

# Install RRDtool
install_rrdtool() {
    echo "Installing RRDtool..."
    run_command "wget https://oss.oetiker.ch/rrdtool/pub/rrdtool-1.4.9.tar.gz"
    run_command "tar -xzf rrdtool-1.4.9.tar.gz"
    run_command "cd rrdtool-1.4.9"
    run_command "PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig ./configure --prefix=$PREFIX"
    run_command "make"
    run_command "make install"
    run_command "cd .."
    run_command "rm -rf rrdtool-1.4.9 rrdtool-1.4.9.tar.gz"
}

# Main script
#install_gperf
#install_zlib
#install_libpng
#install_freetype  # Install Freetype before Fontconfig
#install_fontconfig
#install_xz_utils
#install_pixman      # Install Pixman for Cairo's image backend
install_librsvg     # Install librsvg for SVG backend
install_poppler     # Install Poppler for PDF backend
install_cairo
install_rrdtool

echo "RRDtool and dependencies have been installed to $PREFIX"

