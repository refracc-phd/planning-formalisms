#!/bin/bash

#SBATCH -N 1
#SBATCH -n 9
#SBATCH --mem 200G
#SBATCH -o slurm.%j.out
#SBATCH -e slurm.%j.err
#SBATCH --ntasks-per-node 9
#SBATCH --mail-user s.anderson.23@abdn.ac.uk
#SBATCH --job-name=benchmark

./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/blocksworld/domain.pddl ./benchmarks/blocksworld/problems &
./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/farmland_ln/domain.pddl ./benchmarks/farmland_ln/problems &
./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/fo_counters/domain.pddl ./benchmarks/fo_counters/problems &
./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/fo_counters_inv/domain.pddl ./benchmarks/fo_counters_inv/problems &
./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/fo_counters_rnd/domain.pddl ./benchmarks/fo_counters_rnd/problems &
./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/logistics/domain.pddl ./benchmarks/logistics/problems &
./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/sailing_ln/domain.pddl ./benchmarks/sailing_ln/problems &
./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/schedule/domain.pddl ./benchmarks/schedule/problems &
./enhsp.sh ../enhsp/enhsp.jar ./benchmarks/tpp/domain.pddl ./benchmarks/tpp/problems &

# ./enhsp.sh ./enhsp/enhsp.jar ./domain-c.pddl ./continuous
# ./enhsp.sh ./enhsp/enhsp.jar ./blocksworld/domain.pddl ./blocksworld/instances
# ./enhsp.sh ./enhsp/enhsp.jar ./schedule/domain.pddl ./schedule/instances
# ./enhsp.sh ./enhsp/enhsp.jar ./logistics/domain.pddl ./logistics/instances
# ./enhsp.sh ./enhsp/enhsp.jar ./domain-d.pddl ./discrete