#!/bin/sh

wget http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh;
bash miniconda.sh -b
export PATH=$HOME/miniconda3/bin:$PATH
export LD_LIBRARY_PATH=$HOME/miniconda3/lib:$LD_LIBRARY_PATH

conda install -y \
    cython \
    conda-build \
    numpy \
    nomkl \
    openblas \
    zlib \
    bzip2 \
    libnetcdf

conda install -y -c conda-forge \
    libgfortran-ng \
    libgcc-ng
