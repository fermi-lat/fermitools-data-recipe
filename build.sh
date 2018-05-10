export condaname="fermitools"

git clone https://github.com/fermi-lat/fermitools-data.git

tooldirs = ($(ls -d outrefFiles/*))

# Move the files into the Fermitools extFiles directory
mkdir -p $PREFIX/share/${condaname}/refdata/fermi
cp -R fermitools-data/{counterpartCatalogs,galdiffuse,jplephem,pass8Analysis}  $PREFIX/share/${condaname}/refdata/fermi

# Populate the outref files with additional reference files
for i in "${tooldirs[@]}"
do
mkdir -p $PREFIX/share/${condaname}/data/$i/outref
cp -n outrefFiles/$i/* $PREFIX/share/${condaname}/data/$i/outref/
done
