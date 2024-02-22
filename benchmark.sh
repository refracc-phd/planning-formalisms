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

# Function to run a heuristic for a given problem file
run_heuristic() {
  problem_file="$1"
  java -Xmx30G -jar "$executable_location" -o "$domain_file" -f "$problem_file" -s gbfs -ties smaller_g -h haddabs > "$problem_file.plan"
  echo "Task completed: $problem_file"
}

# Iterate over problem files and run heuristics in parallel
for problem_file in "$problem_dir"/*.pddl; do
  [ ! -f "$problem_file" ] && continue

  echo "Running tasks in parallel for: $problem_file"

  run_heuristic "$problem_file" &
    # Limit the number of background tasks to 10
    if (( $(jobs | wc -l) >= 1 )); then
      wait
    fi

  # Wait for remaining background tasks to finish
  wait
  echo "Tasks completed for: $problem_file"
done
echo "All planning tasks completed."