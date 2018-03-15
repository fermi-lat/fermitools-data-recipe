export condaname="fermitools"

# Move the files into the Fermitools extFiles directory
mkdir -p $PREFIX/share/${condaname}/refdata/fermi
cp -R * $PREFIX/share/${condaname}/refdata/fermi
