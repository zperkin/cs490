#!/bin/bash

sudo apt-get update -y

sudo apt-get install htop -y
sudo apt-get install screen -y

mkdir -p ~/miniconda3
wget https://repo/anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash

conda create --name jupy_env python=3.9

conda activate jupy_env

conda install -c conda-forge notebook
conda install -c conda-forge nb_conda_kernels
conda install nb_conda

conda env export > requirements.yml