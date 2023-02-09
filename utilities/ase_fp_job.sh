#!/bin/sh
#SBATCH --partition main
#SBATCH --constraint="skylake|cascadelake"
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4GB
#SBATCH --time=12:00:00

module purge
ulimit -s unlimited
ulimit -s
export OMP_NUM_THREADS=1

# For Fplib, QUIP, LJ, SFLJ
# module use /projects/community/modulefiles
# module load intel/17.0.4 python/3.8.5-gc563

# For VASP
# export VASP_PP_PATH="/home/st962/apps/" 

# For DFTB+
# module load intel/17.0.4 python/3.8.5-gc563 gcc/10.2.0-bz186 cmake/3.19.5-bz186
# export DFTB_COMMAND=$HOME/.local/bin/dftb+/bin/dftb+
# export DFTB_PREFIX=$HOME/apps/dftbplus/external/slakos/origin/pbc-0-3/

# For M3GNet
# source $HOME/.bashrc
# $HOME/apps/miniconda3/condabin/conda activate m3gnet
# export TF_ENABLE_ONEDNN_OPTS=0

python3 mixing_test.py
