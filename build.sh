export condaname="fermitools"

# Move the files into the Fermitools extFiles directory
mkdir -p $PREFIX/share/${condaname}/refdata/fermi
cp -R {counterpartCatalogs,galdiffuse,gaudi,jplephem,pass8Analysis}  $PREFIX/share/${condaname}/refdata/fermi
