import os
import csv
import re

# Set the directories
continuous_directory_path = "/Users/refracc/Documents/PhD/planning-formalisms/data/continuous"
discrete_directory_path = "/Users/refracc/Documents/PhD/planning-formalisms/data/discrete"

# Set the output CSV file name
output_csv = "output.csv"

# Initialize the CSV file with headers
with open(output_csv, 'w', newline='') as csvfile:
    fieldnames = ['problem', 'search.method', 'plan.length', 'metric.search', 'planning.time.msec',
                  'heuristic.time.msec', 'search.time.msec', 'grounding.time', 'expanded.nodes', 'states.evaluated',
                  'duplicates.detected', 'type']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    
    # Write headers to the CSV file
    writer.writeheader()

    # Function to process directory data
    def process_directory(directory_path, problem_type):
        for filename in os.listdir(directory_path):
            # Check if the file has a ".plan" extension
            if filename.endswith(".plan"):
                file_path = os.path.join(directory_path, filename)

                # Read the content of the ".plan" file
                with open(file_path, 'r') as plan_file:
                    plan_content = plan_file.read()

                # Use regular expressions to find the relevant information
                plan_length_match = re.search(r'Plan-Length:(\d+)', plan_content)
                metric_search_match = re.search(r'Metric \(Search\):([\d.]+)', plan_content)
                planning_time_match = re.search(r'Planning Time \(msec\): (\d+)', plan_content)
                heuristic_time_match = re.search(r'Heuristic Time \(msec\): (\d+)', plan_content)
                search_time_match = re.search(r'Search Time \(msec\): (\d+)', plan_content)
                grounding_time_match = re.search(r'Grounding Time: (\d+)', plan_content)
                expanded_nodes_match = re.search(r'Expanded Nodes:(\d+)', plan_content)
                states_evaluated_match = re.search(r'States Evaluated:(\d+)', plan_content)
                duplicates_detected_match = re.search(r'Number of Duplicates detected:(\d+)', plan_content)

                # Check if the matches are found
                if all(match is not None for match in [plan_length_match, metric_search_match,
                                                       planning_time_match, heuristic_time_match,
                                                       search_time_match, grounding_time_match,
                                                       expanded_nodes_match, states_evaluated_match,
                                                       duplicates_detected_match]):
                    # Extract information from the matches
                    plan_length = int(plan_length_match.group(1))
                    metric_search = float(metric_search_match.group(1))
                    planning_time = int(planning_time_match.group(1))
                    heuristic_time = int(heuristic_time_match.group(1))
                    search_time = int(search_time_match.group(1))
                    grounding_time = int(grounding_time_match.group(1))
                    expanded_nodes = int(expanded_nodes_match.group(1))
                    states_evaluated = int(states_evaluated_match.group(1))
                    duplicates_detected = int(duplicates_detected_match.group(1))

                    # Extract 'search.method' from both patterns
                    search_method_match_instance = re.search(r'instance-\d+\.pddl-(\w+)', filename)
                    search_method_instance = search_method_match_instance.group(1) + search_method_match_instance.group(2) if search_method_match_instance else ""

                    search_method_match_p = re.search(r'p\d+\.pddl-(\w+)', filename)
                    search_method_p = search_method_match_p.group(1) if search_method_match_p else ""

                    search_method = search_method_instance or search_method_p

                    # Extract 'problem' from both patterns
                    problem_match_instance = re.search(r'instance-(\d+)\.pddl-', filename)
                    problem_instance = f"instance-{problem_match_instance.group(1)}" if problem_match_instance else ""

                    problem_match_p = re.search(r'p(\d+)', filename)
                    problem_p = f"p{problem_match_p.group(1)}" if problem_match_p else ""

                    problem = problem_instance or problem_p

                    # Write the information to the CSV file
                    writer.writerow({
                        'problem': problem,
                        'search.method': search_method,
                        'plan.length': plan_length,
                        'metric.search': metric_search,
                        'planning.time.msec': planning_time,
                        'heuristic.time.msec': heuristic_time,
                        'search.time.msec': search_time,
                        'grounding.time': grounding_time,
                        'expanded.nodes': expanded_nodes,
                        'states.evaluated': states_evaluated,
                        'duplicates.detected': duplicates_detected,
                        'type': problem_type
                    })

    # Process data from the continuous directory
    process_directory(continuous_directory_path, "continuous")

    # Process data from the discrete directory
    process_directory(discrete_directory_path, "discrete")

print("CSV generation complete.")
