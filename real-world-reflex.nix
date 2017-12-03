{ stdenv, pandoc }:

stdenv.mkDerivation {
  name = "real-world-reflex-0.1";
  builder = ./builder-nix.sh;
  src = ./.;
  inherit pandoc;
}
