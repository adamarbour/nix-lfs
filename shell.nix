{
  system ? builtins.currentSystem,
  sources ? import ./lon.nix,
  pkgs ? import sources.nixpkgs { inherit system; },
}:
(pkgs.buildFHSEnv {
  name = "lfs-shell";
  
  runScript = "bash --rcfile .bashrc";
  
  targetPkgs = pkgs: with pkgs; [
    b3sum
    bash
    bc
    binutils
    bison
    bzip2
    cmake
    coreutils
    curl
    diffutils
    findutils
    gawk
    gcc
    git
    glibc
    gnugrep
    gnumake
    gnupatch
    gnused
    gnutar
    gzip
    lon
    m4
    ninja
    perl
    python315
    rsync
    texinfo
    wget
    xz
    zstd
  ];
}).env
