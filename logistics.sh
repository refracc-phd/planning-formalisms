#!/bin/bash

#SBATCH -N 1 # number of nodes
#SBATCH -n 5 # number of cores
#SBATCH --mem 200G # memory pool for all cores
#SBATCH -o slurm.%j.out # STDOUT
#SBATCH -e slurm.%j.err # STDERR
#SBATCH --ntasks-per-node=5

./benchmark.sh ../enhsp/enhsp.jar ./benchmarks/logistics/domain.pddl ./benchmarks/logistics/problems 

# ./enhsp.sh ./enhsp/enhsp.jar ./domain-c.pddl ./continuous
# ./enhsp.sh ./enhsp/enhsp.jar ./blocksworld/domain.pddl ./blocksworld/instances
# ./enhsp.sh ./enhsp/enhsp.jar ./schedule/domain.pddl ./schedule/instances
# ./enhsp.sh ./enhsp/enhsp.jar ./logistics/domain.pddl ./logistics/instances
# ./enhsp.sh ./enhsp/enhsp.jar ./domain-d.pddl ./discrete