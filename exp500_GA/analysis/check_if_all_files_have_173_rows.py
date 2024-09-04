import os
import pandas as pd

# Define the directory containing the CSV files
directory_path = "csv_files/r3"

# Initialize a list to store file names that don't have 173 rows
files_with_different_rows = []

# Iterate over all files in the directory
for filename in os.listdir(directory_path):
    if filename.endswith(".csv"):
        file_path = os.path.join(directory_path, filename)
        # Read the CSV file into a DataFrame
        df = pd.read_csv(file_path)
        # Check the number of rows
        if len(df) != 173:
            files_with_different_rows.append((filename, len(df)))

# Output the results
if files_with_different_rows:
    print("The following files do not have 173 rows:")
    for file, row_count in files_with_different_rows:
        print(f"{file}: {row_count} rows")
else:
    print("All CSV files have 173 rows.")
