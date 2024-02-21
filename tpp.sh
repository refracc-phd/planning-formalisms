#!/bin/bash

#SBATCH -N 1 # number of nodes
#SBATCH -n 5 # number of cores
#SBATCH --mem 200G # memory pool for all cores
#SBATCH -o slurm.%j.out # STDOUT#SBATCH -N 1
#SBATCH -n 9
#SBATCH --mem 200G
#SBATCH -o slurm.%j.out
#SBATCH -e slurm.%j.err
#SBATCH --ntasks-per-node 9
#SBATCH --mail-user s.anderson.23@abdn.ac.uk
#SBATCH --job-name=benchmark
#SBATCH -e slurm.%j.err # STDERR
#SBATCH --ntasks-per-node=5

./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/tpp/domain.pddl ./benchmarks/tpp/problems 

# ./enhsp.sh ./enhsp/enhsp.jar ./domain-c.pddl ./continuous
# ./enhsp.sh ./enhsp/enhsp.jar ./blocksworld/domain.pddl ./blocksworld/instances
# ./enhsp.sh ./enhsp/enhsp.jar ./schedule/domain.pddl ./schedule/instances
# ./enhsp.sh ./enhsp/enhsp.jar ./logistics/domain.pddl ./logistics/instances
# ./enhsp.sh ./enhsp/enhsp.jar ./domain-d.pddl ./discrete