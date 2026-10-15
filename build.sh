export condaname="fermitools"

git clone https://github.com/fermi-lat/fermitools-data.git
wget https://fermi.gsfc.nasa.gov/ssc/data/analysis/software/aux/4fgl/gll_iem_v07.fits
mv gll_iem_v07.fits fermitools-data/galdiffuse/

tooldirs=($(ls -d fermitools-data/outrefFiles/* | sed "s/fermitools-data\/outrefFiles\///g"))

# Move the files into the Fermitools extFiles directory
mkdir -p $PREFIX/share/${condaname}/refdata/fermi
cp -R fermitools-data/{counterpartCatalogs,galdiffuse,jplephem,pass8Analysis}  $PREFIX/share/${condaname}/refdata/fermi

# Populate the outref files with additional reference files
for i in "${tooldirs[@]}"
do
echo "Populating outref file ${i}...\n"    
mkdir -p $PREFIX/share/${condaname}/data/$i/outref
cp -R -n fermitools-data/outrefFiles/$i/* $PREFIX/share/${condaname}/data/$i/outref/
done
