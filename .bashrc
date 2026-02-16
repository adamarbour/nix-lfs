set +h
umask 022
LFS=$(pwd)
LC_ALL=POSIX

unset CFLAGS
unset CXXFLAGS

SOURCES=$(pwd)/sources
SYSROOT=$(pwd)/sysroot

LFS_TARGET="x86_64-linux-musl"
LFS_TUPLE="x86_64-pc-linux-musl"
LFS_ARCH="x86"
LFS_CPU="x86-64"
LFS_MCA="x86_64"

export LFS LC_ALL TOOLCHAIN SOURCES SYSROOT
export LFS_TARGET LFS_TUPLE LFS_ARCH LFS_CPU LFS_MCA

ln -sv $LFS/mussel/toolchain/ /toolchain

export PATH=/toolchain/bin:$PATH
