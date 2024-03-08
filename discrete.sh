#!/bin/bash

#SBATCH -N 1 # number of nodes
#SBATCH -n 5 # number of cores
#SBATCH --mem 250G # memory pool for all cores
#SBATCH -o slurm.%j.out # STDOUT
#SBATCH -e slurm.%j.err # STDERR
#SBATCH --ntasks-per-node=5

./enhsp.sh ./enhsp/enhsp.jar ./domain-d.pddl ./discrete