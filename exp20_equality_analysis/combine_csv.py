import os
import pandas as pd

# Directory containing CSV files
csv_directory = 'csv_files'

# Output CSV file
output_csv = 'merged_csv.csv'

# Get a list of all CSV files in the directory
csv_files = [file for file in os.listdir(csv_directory) if file.endswith('.csv')]

# Initialize an empty list to hold dataframes
dataframes = []

# Loop through the list of CSV files and read each one into a dataframe
for csv_file in csv_files:
    file_path = os.path.join(csv_directory, csv_file)
    df = pd.read_csv(file_path)
    dataframes.append(df)

# Concatenate all dataframes into one
merged_df = pd.concat(dataframes, ignore_index=True)

# Save the merged dataframe to a CSV file
merged_df.to_csv(output_csv, index=False)

print(f'Merged {len(csv_files)} CSV files into {output_csv}')
