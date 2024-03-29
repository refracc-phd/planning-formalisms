import csv
import os
import re

# Set the directories

# Set the output CSV file name
output_csv = "data.csv"

# Initialize the CSV file with headers
with open(output_csv, 'a', newline='') as csvfile:
    fieldnames = ['problem', 'search.method', 'plan.length', 'metric.search', 'initial.heuristic.val', 'planning.time.msec',
                  'heuristic.time.msec', 'search.time.msec', 'grounding.time', 'expanded.nodes', 'states.evaluated',
                  'duplicates.detected', 'dead.ends', 'domain', 'grounded.fluents', 'grounded.external.actions', 'grounded.actions',
                  'grounded.predicates', 'grounded.events', 'type']
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
                initial_heuristic_val_match = re.search(r'h\(n = s_0\)=(\d+)', plan_content)
                search_time_match = re.search(r'Search Time \(msec\): (\d+)', plan_content)
                grounding_time_match = re.search(r'Grounding Time: (\d+)', plan_content)
                expanded_nodes_match = re.search(r'Expanded Nodes:(\d+)', plan_content)
                states_evaluated_match = re.search(r'States Evaluated:(\d+)', plan_content)
                duplicates_detected_match = re.search(r'Number of Duplicates detected:(\d+)', plan_content)
                dead_ends_match = re.search(r'Number of Dead-Ends detected:(\d+)', plan_content)
                grounded_fluents_match = re.search(r'\|F\|:(\d+)', plan_content)
                grounded_external_actions_match = re.search(r'\|X\|:(\d+)', plan_content)
                grounded_actions_match = re.search(r'\|A\|:(\d+)', plan_content)
                grounded_predicates_match = re.search(r'\|P\|:(\d+)', plan_content)
                grounded_events_match = re.search(r'\|E\|:(\d+)', plan_content)

                # Check if the matches are found
                if all(match is not None for match in [plan_length_match, metric_search_match,
                                                       planning_time_match, heuristic_time_match,
                                                       initial_heuristic_val_match,
                                                       search_time_match, grounding_time_match,
                                                       expanded_nodes_match, states_evaluated_match,
                                                       duplicates_detected_match, grounded_fluents_match, dead_ends_match,
                                                       grounded_external_actions_match, grounded_actions_match,
                                                       grounded_predicates_match, grounded_events_match]):
                    # Extract information from the matches
                    plan_length = int(plan_length_match.group(1))
                    metric_search = float(metric_search_match.group(1))
                    planning_time = int(planning_time_match.group(1))
                    heuristic_time = int(heuristic_time_match.group(1))
                    initial_heuristic_val = int(initial_heuristic_val_match.group(1))
                    search_time = int(search_time_match.group(1))
                    grounding_time = int(grounding_time_match.group(1))
                    expanded_nodes = int(expanded_nodes_match.group(1))
                    states_evaluated = int(states_evaluated_match.group(1))
                    dead_ends = int(grounded_events_match.group(1))
                    duplicates_detected = int(duplicates_detected_match.group(1))
                    grounded_fluents = int(grounded_fluents_match.group(1))
                    grounded_external_actions = int(grounded_external_actions_match.group(1))
                    grounded_actions = int(grounded_actions_match.group(1))
                    grounded_predicates = int(grounded_predicates_match.group(1))
                    grounded_events = int(grounded_events_match.group(1))

                    search_method = re.search(r"\.pddl-(.*?)\.plan", filename)

                    if search_method:
                        search_method = search_method.group(1)
                    else:
                        search_method = ""

                    # Extract 'problem' from both patterns
                    problem_match_instance = re.search(r'instance([-_]\d+){1,4}\.pddl-', filename)
                    problem_instance = f"instance-{problem_match_instance.group(1)}" if problem_match_instance else ""

                    problem_match_p = re.search(r'p(\d+)', filename)
                    problem_p = f"p{problem_match_p.group(1)}" if problem_match_p else ""

                    problem = problem_instance or problem_p

                    problem_t = ""

                    if problem_type in ["sokoban", "ma-sokoban", "blocksworld", "ma-blocksworld", "learns-discrete"]:
                        problem_t = "discrete"
                    else:
                        problem_t = "continuous"


                    # Write the information to the CSV file
                    writer.writerow({
                        'problem': problem,
                        'search.method': search_method,
                        'plan.length': plan_length,
                        'metric.search': metric_search,
                        'planning.time.msec': planning_time,
                        'heuristic.time.msec': heuristic_time,
                        'initial.heuristic.val': initial_heuristic_val,
                        'search.time.msec': search_time,
                        'grounding.time': grounding_time,
                        'expanded.nodes': expanded_nodes,
                        'states.evaluated': states_evaluated,
                        'duplicates.detected': duplicates_detected,
                        'dead.ends': dead_ends,
                        'domain': problem_type,
                        'grounded.fluents': grounded_fluents,
                        'grounded.external.actions': grounded_external_actions,
                        'grounded.actions': grounded_actions,
                        'grounded.predicates': grounded_predicates,
                        'grounded.events': grounded_events,
                        'type': problem_t
                    })


    process_directory("./benchmarks/block-grouping/problems", "block-grouping")
    process_directory("./benchmarks/farmland/problems", "farmland")
    process_directory("./benchmarks/sokoban/problems", "sokoban")
    process_directory("./benchmarks/ma-sokoban/problems", "ma-sokoban")
    process_directory("./benchmarks/blocks-strips-typed/problems", "blocksworld")
    process_directory("./benchmarks/ma-blocksworld/problems", "ma-blocksworld")
    process_directory("./benchmarks/farmland/problems", "farmland")
    process_directory("./benchmarks/fn-counters/problems", "fn-counters")
    process_directory("./benchmarks/fn-counters-inv/problems", "fn-counters-inv")
    process_directory("./benchmarks/fn-counters-rnd/problems", "fn-counters-rnd")
    process_directory("./benchmarks/plant-watering/problems", "plant-watering")
    process_directory("./benchmarks/sailing/problems", "sailing")
    process_directory("./continuous/", "learns-continuous")
    process_directory("./discrete/", "learns-discrete")

print("CSV generation complete.")