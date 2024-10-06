

# Set the directory where the CSV files are located
import os
import pandas as pd

# Set the directory where the CSV files are located
directory =  "average"

# Get a list of all CSV files in the directory
csv_files = [f for f in os.listdir(directory) if f.endswith('.csv')]

# Initialize an empty dictionary to store the data
data = {}

# Loop through each CSV file
for file in csv_files:
    # Extract the file name without the extension
    file_name = file.split('.')[0]
    
    # # Extract the column number from the file name
    # column_number = int(file_name.split('_')[-2][1:])
    column_number_part = file_name.split('_')[1]
    # Remove the leading character and convert to an integer
    column_number = int(column_number_part[1:])
    
    # Read the CSV file into a Pandas DataFrame
    df = pd.read_csv(os.path.join(directory, file), names=['program_name', 'branch_coverage'])
    
    # Add the column to the dictionary
    data[f'c{column_number}'] = df['branch_coverage']

# Create a new DataFrame with the combined data
combined_df = pd.DataFrame(data)
combined_df.insert(0, 'program_name', df['program_name'])

# Write the combined DataFrame to a new CSV file
combined_df.to_csv('branch_coverage_columns_combined.csv', index=False)