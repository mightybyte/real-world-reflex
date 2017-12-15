{ stdenv, pandoc }:

stdenv.mkDerivation {
  name = "real-world-reflex-0.1";
  src = ./.;
  buildInputs = [ pandoc ];
  buildPhase = "./build.sh";
  installPhase =
    ''
      mkdir -p $out
      mv images $out
      mv reveal.js $out
      mv index.html style.css $out
    '';
}
