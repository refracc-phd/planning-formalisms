#!/bin/bash

# Loop to create 10 discrete-n.sh scripts
for ((n=0; n<10; n++))
do
    # Define the script filename
    filename="continuous-${n}.sh"

    # Create the script file
    cat > "$filename" <<EOF
#!/bin/bash
#SBATCH -N 1            # number of nodes
#SBATCH -n 3            # number of cores
#SBATCH --mem 200G      # memory pool for all cores
#SBATCH -o slurm.%j.out # STDOUT
#SBATCH -e slurm.%j.err # STDERR
#SBATCH --ntasks-per-node=3
#SBATCH --mail-user=r01sa23@abdn.ac.uk
#SBATCH --mail-type=ALL

sh ./enhsp.sh ./enhsp/enhsp.jar ./domain-c.pddl ./continuous/${n}
EOF

    # Make the script executable
    chmod +x "$filename"
done

