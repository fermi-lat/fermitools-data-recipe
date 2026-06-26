# fermitools-data-recipe
Conda recipe for fermitools-data

This recipe is used for the building of the fermitools external data files tarball for the fermi_dev_externals channel.  To install the tarball and obtain the data simply use the conda command:

conda install -c fermi_dev_externals fermitools-data

The files will be installed into the ${CONDA_PREFIX}/share/fermitools/data/extFiles directory

To invoke the build process, use the command 

conda build --package-format=1 .

In order to ensure that the generated package uses the .tar.bz format instead of .conda
