export condaname="fermitools"

# Move the files into the Fermitools extFiles directory
mkdir -p $PREFIX/share/${condaname}/data/extFiles
cp -R v0r16 $PREFIX/share/${condaname}/data/extFiles