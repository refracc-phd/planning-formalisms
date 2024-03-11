#!/bin/bash

#SBATCH -N 1 # number of nodes
#SBATCH -n 1 # number of cores
#SBATCH --mem 250G # memory pool for all cores
#SBATCH -o slurm.%j.out # STDOUT
#SBATCH -e slurm.%j.err # STDERR
#SBATCH --ntasks-per-node=1

./enhsp.sh ./enhsp/enhsp.jar ./benchmarks/blocks-strips-typed/domain.pddl ./benchmarks/blocks-strips-typed/problems