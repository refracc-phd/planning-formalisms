import os
import csv
import re

# Set the directories
blocksworld_directory_path = "/Users/refracc/Documents/PhD/planning-formalisms/data/blocksworld/instances/"
logistics_directory_path = "/Users/refracc/Documents/PhD/planning-formalisms/data/logistics/instances/"

# Set the output CSV file name
output_csv = "benchmark.csv"

# Initialize the CSV file with headers
with open(output_csv, 'w', newline='') as csvfile:
    fieldnames = ['File Name', 'Plan Length', 'Metric (Search)', 'Planning Time (msec)',
                  'Heuristic Time (msec)', 'Search Time (msec)', 'Expanded Nodes',
                  'States Evaluated', 'Duplicates Detected', 'Type']
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
                expanded_nodes_match = re.search(r'Expanded Nodes:(\d+)', plan_content)
                states_evaluated_match = re.search(r'States Evaluated:(\d+)', plan_content)
                duplicates_detected_match = re.search(r'Number of Duplicates detected:(\d+)', plan_content)

                # Check if the matches are found
                if all(match is not None for match in [plan_length_match, metric_search_match,
                                                       planning_time_match, heuristic_time_match,
                                                       search_time_match, expanded_nodes_match,
                                                       states_evaluated_match, duplicates_detected_match]):
                    # Extract information from the matches
                    plan_length = int(plan_length_match.group(1))
                    metric_search = float(metric_search_match.group(1))
                    planning_time = int(planning_time_match.group(1))
                    heuristic_time = int(heuristic_time_match.group(1))
                    search_time = int(search_time_match.group(1))
                    expanded_nodes = int(expanded_nodes_match.group(1))
                    states_evaluated = int(states_evaluated_match.group(1))
                    duplicates_detected = int(duplicates_detected_match.group(1))

                    # Write the information to the CSV file
                    writer.writerow({
                        'File Name': os.path.splitext(filename)[0],
                        'Plan Length': plan_length,
                        'Metric (Search)': metric_search,
                        'Planning Time (msec)': planning_time,
                        'Heuristic Time (msec)': heuristic_time,
                        'Search Time (msec)': search_time,
                        'Expanded Nodes': expanded_nodes,
                        'States Evaluated': states_evaluated,
                        'Duplicates Detected': duplicates_detected,
                        'Type': problem_type
                    })

    # Process data from the continuous directory
    process_directory(blocksworld_directory_path, "blocksworld")

    # Process data from the discrete directory
    process_directory(logistics_directory_path, "logistics")

print("CSV generation complete.")