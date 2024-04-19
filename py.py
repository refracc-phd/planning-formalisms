import re

def round_numbers(table):
    # Define a regular expression pattern to match numbers
    pattern = r'\d+\.\d+'
    
    # Iterate over each line in the table
    for i, line in enumerate(table):
        # Find all numbers in the line using the regular expression
        numbers = re.findall(pattern, line)
        # Round each number down to two decimal places
        rounded_numbers = [round(float(num), 2) for num in numbers]
        # Replace the original numbers with the rounded ones in the line
        for j, num in enumerate(numbers):
            line = line.replace(num, str(rounded_numbers[j]))
        # Update the table with the modified line
        table[i] = line
    
    return table

def main():
    input_file = 'input.tex'  # Change this to the path of your input file
    output_file = 'output.tex'  # Change this to the path of your output file
    
    # Read the input table from the file
    with open(input_file, 'r') as f:
        table = f.readlines()
    
    # Round the numbers in the table
    rounded_table = round_numbers(table)
    
    # Write the modified table to the output file
    with open(output_file, 'w') as f:
        f.writelines(rounded_table)

if __name__ == "__main__":
    main()
