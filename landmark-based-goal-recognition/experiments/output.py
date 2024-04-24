import csv

# Define the output CSV file
csv_file = "lm-summary.csv"

# Write the CSV header
with open(csv_file, 'w', newline='') as csvfile:
    csv_writer = csv.writer(csvfile)
    csv_writer.writerow(['problem', 'landmarks', 'achieved', 'agreement ratio'])

# Loop through each output text file from 0 to 9
for n in range(10):
    # Define the output text file path
    output_file = f"output_{n}.txt"  # Use underscore instead of hyphen
    
    try:
        # Open the output text file for reading
        with open(output_file, 'r') as file:
            content = file.read()
            
            # Extract landmarks and achieved from the content
            landmarks = int(content.split('Total number of Landmarks: ')[1].split('\n')[0].strip())
            achieved = int(content.split('Achieved Landmarks in Observations [')[1].split(']')[0].strip())
            
            # Calculate agreement ratio
            if landmarks != 0:
                agreement_ratio = round(achieved / landmarks, 2)
            else:
                agreement_ratio = 0.00
            
            # Prepare the CSV row
            problem = f"discrete-{n}"
            csv_row = [problem, landmarks, achieved, agreement_ratio]
            
            # Append the CSV row to the CSV file
            with open(csv_file, 'a', newline='') as csvfile:
                csv_writer = csv.writer(csvfile)
                csv_writer.writerow(csv_row)
    
    except FileNotFoundError:
        print(f"Error: {output_file} not found.")

print(f"CSV file '{csv_file}' has been created.")
