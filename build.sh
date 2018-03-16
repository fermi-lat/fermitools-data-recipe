export condaname="fermitools"

git clone https://github.com/fermi-lat/fermitools-data.git

# Move the files into the Fermitools extFiles directory
mkdir -p $PREFIX/share/${condaname}/refdata/fermi
cp -R fermitools-data/{counterpartCatalogs,galdiffuse,jplephem,pass8Analysis}  $PREFIX/share/${condaname}/refdata/fermi
