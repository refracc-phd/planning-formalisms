#!/bin/bash

#SBATCH -N 1 # number of nodes
#SBATCH -n 5 # number of cores
#SBATCH --mem 500G # memory pool for all cores
#SBATCH -o slurm.%j.out # STDOUT
#SBATCH -e slurm.%j.err # STDERR
#SBATCH --ntasks-per-node=5

./benchmark.sh ../enhsp/enhsp.jar ./benchmarks/fo_counters_inv/domain.pddl ./benchmarks/fo_counters_inv/problems