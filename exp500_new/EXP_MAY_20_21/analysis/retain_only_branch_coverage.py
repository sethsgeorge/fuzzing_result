import os
import pandas as pd

# Define the folder path containing the CSV files
folder_path = '/mnt/e/OneDrive/Desktop/result/EXP_MAY_20_21/analysis/csv_files'


# Get a list of all CSV files in the folder
csv_files = [file for file in os.listdir(folder_path) if file.endswith('.csv')]

# Iterate through each CSV file
for file_name in csv_files:
    # Read the CSV file into a DataFrame
    file_path = os.path.join(folder_path, file_name)
    df = pd.read_csv(file_path)
    
    # Retain only the "program_name" and "branch_coverage" columns
    df = df[['program_name', 'branch_coverage']]
    
    # Save the modified DataFrame to the original CSV file
    df.to_csv(file_path, index=False)

