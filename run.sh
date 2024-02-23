# sbatch --partition=uoa-compute ./bw.sh
# sbatch --partition=uoa-compute ./logistics.sh
# sbatch --partition=uoa-compute ./sailing_ln.sh
# sbatch --partition=uoa-compute ./schedule.sh
# sbatch --partition=uoa-compute ./tpp.sh
# sbatch --partition=uoa-compute ./farmland_ln.sh
# sbatch --partition=uoa-compute ./fo_counters.sh
# sbatch --partition=uoa-compute ./fo_counters_inv.sh
# sbatch --partition=uoa-compute ./fo_counters_rnd.sh

./enhsp.sh ./enhsp/enhsp.jar ./domain-c.pddl ./continuous
./enhsp.sh ./enhsp/enhsp.jar ./domain-d.pddl ./discrete