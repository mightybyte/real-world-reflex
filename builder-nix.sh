source $stdenv/setup

PATH=$pandoc/bin:$PATH

cp -R $src/* .
./build.sh
mkdir $out
cp -R images $out
cp -R reveal.js $out
cp index.html style.css $out
