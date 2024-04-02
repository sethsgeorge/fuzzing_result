import pandas as pd
import os

# List of column names you want to remove
columns_to_remove = ['line_coverage', 'function_coverage', 'line_covered', 'total_lines', 'function_covered', 'total_functions', 'num_queue_files', 'num_crash_files']  # Add more header names as needed

# Loop through the files
for i in range(2, 19):  # Assuming you want to process files from result_c2.csv to result_c10.csv
    file_name = f'result_c{i}.csv'
    if os.path.exists(file_name):
        # Read the CSV file into a pandas DataFrame
        df = pd.read_csv(file_name)

        # Remove the specified columns from the DataFrame
        df = df.drop(columns=columns_to_remove, errors='ignore')  # Use errors='ignore' to handle cases where the column to remove doesn't exist

        # Write the modified DataFrame back to the same CSV file
        df.to_csv(file_name, index=False)
    else:
        print(f"File '{file_name}' not found.")

