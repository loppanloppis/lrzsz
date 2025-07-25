#!/bin/sh
#
# linux-build.sh — Simple build script for lrzsz (rz only)
# Tested on Debian/Ubuntu systems
# 2025-07-23, PL

set -e

#echo "🔧 Installing build dependencies..."
#sudo apt-get update
#sudo apt-get install -y build-essential gcc make pkg-config

#echo "📁 Entering src directory..."
#cd src

echo "🛠️ Compiling rz..."
gcc -Wall -Werror -I. -o rz \
    lrz.c zm.c zreadline.c zperr.c \
    canit.c tcp.c crctab.c timing.c rbsb.c \
    protname.c lsyslog.c xbin.c error.c

echo "✅ Build complete! Binary is at: ./rz"

echo "🛠️ Compiling sz..."
gcc -Wall -Werror -I. -o sz \
     lsz.c zm.c zreadline.c zperr.c \
     canit.c tcp.c crctab.c timing.c rbsb.c \
     protname.c lsyslog.c xbin.c error.c

echo "✅ Build complete! Binary is at: ./sz"




#extras we may need for later : xstrtol.c xstrtoul.c parse-dbl.c parse-utils.c parse-long-options.c
