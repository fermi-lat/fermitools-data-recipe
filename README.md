# fermitools-data-recipe
Conda and Homebrew packaging for fermitools-data.

This recipe is used for the building of the fermitools external data files tarball for the fermi_dev_externals channel.  To install the tarball and obtain the data simply use the conda command:

conda install -c fermi_dev_externals fermitools-data

The conda build installs the files into `${CONDA_PREFIX}/share/fermitools/refdata/fermi`.

To invoke the build process, use the command 

conda build --package-format=1 .

In order to ensure that the generated package uses the .tar.bz format instead of .conda

## Homebrew

The Homebrew formula in `brew/fermitools-data.rb` installs the same reference-data
directories under `$(brew --prefix)/share/fermitools/refdata/fermi`. To test the
formula from this repository's root, stage it in a local tap and install it:

```sh
brew tap-new --no-git fermi-lat/local
cp brew/fermitools-data.rb "$(brew --repo fermi-lat/local)/Formula/fermitools-data.rb"
brew install --build-from-source fermi-lat/local/fermitools-data
```

Keep the formula's `version` in sync with the version in `meta.yaml`; the Homebrew
workflow checks this alongside formula style, installation, and tests. When updating
the data source, update the pinned upstream revision and the checksum for
`gll_iem_v07.fits` in the formula. The existing conda recipe remains available and
unchanged.

Test Change