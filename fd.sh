#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <executable_location> <domain_file> <problem_dir>"
  exit 1
fi

executable_location="$1"
domain_file="$2"
problem_dir="$3"

# Check if the executable exists
if [ ! -f "$executable_location" ]; then
    echo "Executable not found at the specified location. $executable_location"
    exit 1
fi

# Check if the domain file exists
if [ ! -f "$domain_file" ]; then
    echo "Domain file not found."
    exit 1
fi

# Check if the problem directory exists
if [ ! -d "$problem_dir" ]; then
    echo "Problem directory not found."
    exit 1
fi

find "$problem_dir" -type f -name "*.plan.fd" -exec rm -f {} \;
find "$problem_dir" -type f -name "*.plan.fd.out" -exec rm -f {} \;

# Iterate over each problem file in the directory with ".pddl" extension
for problem_file in "$problem_dir"/*.pddl; do
  echo "Processing problem file: $problem_file"
    if [ -f "$problem_file" ]; then
        "$executable_location" --plan-file "$problem_file-fFyY.plan.fd" "$domain_file" "$problem_file" --evaluator "hff=ff(verbosity=silent)" --evaluator "hcea=cea(verbosity=silent)" --search "lazy_greedy([hff, hcea], preferred=[hff, hcea])" > "$problem_file-fFyY.plan.fd.out"
        "$executable_location" --plan-file "$problem_file-fF.plan.fd" "$domain_file" "$problem_file" --evaluator "hff=ff(verbosity=silent)" --search "lazy_greedy([hff], preferred=[hff])" > "$problem_file-fF.plan.fd.out"
        "$executable_location" --plan-file "$problem_file-yY.plan.fd" "$domain_file" "$problem_file" --evaluator "hcea=cea(verbosity=silent)" --search "lazy_greedy([hcea], preferred=[hcea])" > "$problem_file-yY.plan.fd.out"
        
        search_strategies=("lmcut" "ipdb" "add" "cea" "cegar" "cg" "ff" "goalcount" "hm" "hmax"
                            "landmark_cost_partitioning" "landmark_sum" "merge_and_shrink" "operatorcounting"
                          )

        for strategy in "${search_strategies[@]}"; do
            plan_file="${problem_file}-${strategy}.plan.fd"
            command="$executable_location --plan-file $plan_file $domain_file $problem_file --search 'astar(${strategy}(verbosity=silent))'" > "$plan_file.out"
            eval "$command"
            echo "Finished executing: $command"
        done
    fi
done

echo "Finished solving all problems in $problem_dir"
