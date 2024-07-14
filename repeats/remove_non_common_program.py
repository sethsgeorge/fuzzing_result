import os
import pandas as pd

# Define the folder containing the CSV files
folder_path = 'fuzzed_across_all_crash_removed'

# Get a list of all CSV files in the folder
csv_files = [f for f in os.listdir(folder_path) if f.endswith('.csv')]

# Load the common program names for e1 and e2
common_program_name_e1 = pd.read_csv('common_program_name_e1.csv')['program_name'].tolist()
common_program_name_e2 = pd.read_csv('common_program_name_e2.csv')['program_name'].tolist()

# Function to filter rows based on the common program names
def filter_rows(csv_file, common_program_names):
    df = pd.read_csv(csv_file)
    filtered_df = df[df['program_name'].isin(common_program_names)]
    return filtered_df

# Process each CSV file
for file in csv_files:
    if file.startswith('result_'):
        file_path = os.path.join(folder_path, file)
        if 'e1' in file:
            common_program_names = common_program_name_e1
        elif 'e2' in file:
            common_program_names = common_program_name_e2
        else:
            continue  # Skip files that don't match the pattern

        # Filter the rows and save the result
        filtered_df = filter_rows(file_path, common_program_names)
        filtered_df.to_csv(file_path, index=False)

print("Filtering complete.")
