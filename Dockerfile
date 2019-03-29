FROM centos:6

RUN yum --enablerepo=extras install epel-release -y
RUN yum install -y gcc gcc-gfortran gcc-c++ flex tcsh zlib-devel bzip2-devel libXt-devel libXext-devel libXdmcp-devel tkinter openmpi openmpi-devel perl perl-ExtUtils-MakeMaker patch bison boost-devel # AMBER
RUN yum install -y netcdf-devel.x86_64 netcdf.x86_64
RUN yum install -y lapack.x86_64 install lapack-devel.x86_64
RUN yum install -y wget
RUN yum install -y git
RUN wget --no-check-certificate http://repo.continuum.io/miniconda/Miniconda3-4.5.11-Linux-x86_64.sh -O miniconda.sh;
RUN bash miniconda.sh -b
RUN $HOME/miniconda3/bin/conda install -y  \
    cython \
    conda-build \
    numpy \
    nomkl

RUN yum install -y openblas-devel
RUN yum install unzip -y # for auditwheel

# Do not set env below to force using system gcc
# ENV PATH=/root/miniconda3/bin:$PATH

# Do not install gcc or gfortran in miniconda,
# system programs are less trouble.
