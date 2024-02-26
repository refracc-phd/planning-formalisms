#!/bin/bash

# Check if the required arguments are provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <ENHSP Executable Location> <Domain File> <Problem Files Directory>"
  exit 1
fi

# Assign command-line arguments to variables
executable_location="$1"
domain_file="$2"
problem_dir="$3"

# Validate existence of the provided files and directory
for file in "$executable_location" "$domain_file" "$problem_dir"; do
  [ ! -e "$file" ] && { echo "$file not found." >&2; exit 1; }
done

# Remove existing plan files
find "$problem_dir" -type f -name "*.plan" -exec rm -f {} \;
find "$problem_dir" -type f -name "*.sp_log*" -exec rm -f {} \;

# Heuristics to run
heuristics=("sas" "opt" "aibr" "lm_opt" "sat-hmrp" "sat-hmrph" "sat-hmrphj" "sat-hadd" "sat-hradd" "sat-haddabs")

# Function to run a heuristic for a given problem file
run_heuristic() {
  problem_file="$1"
  heuristic="$2"
  java -Xmx200G -jar "$executable_location" -o "$domain_file" -f "$problem_file" -planner "$heuristic" > "$problem_file-$heuristic.plan"
  echo "Task completed: $problem_file - $heuristic"
}

# Iterate over problem files and run heuristics in parallel
for problem_file in "$problem_dir"/*.pddl; do
  [ ! -f "$problem_file" ] && continue

  echo "Running tasks in parallel for: $problem_file"

  # Run each heuristic for the current problem file in the background
  for heuristic in "${heuristics[@]}"; do
    run_heuristic "$problem_file" "$heuristic" &
    # Limit the number of background tasks to 10
    if (( $(jobs | wc -l) >= 5 )); then
      wait -n
    fi
  done

  # Wait for remaining background tasks to finish
  wait
  echo "Tasks completed for: $problem_file"
done
echo "All planning tasks completed."
