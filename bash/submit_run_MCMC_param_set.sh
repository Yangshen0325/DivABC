#!/bin/bash
#SBATCH --time=9-23:05:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=run_MCMC
#SBATCH --output=logs/MCMC-%j.log
#SBATCH --mem=1GB
#SBATCH --partition=gelifes

# Arguments to follow the Rscript are as follows:
param_space_name=$1
param_set=$2
idparsopt=$3

ml R
Rscript TraisieABC/scripts/run_MCMC_peregrine.R ${param_space_name} \
                                               ${param_set}