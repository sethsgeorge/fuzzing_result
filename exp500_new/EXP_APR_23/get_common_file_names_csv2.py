import os
import pandas as pd

# Path to the folder containing CSV files
folder_path = '/mnt/e/OneDrive/Desktop/result/EXP_APR_23/csv_files/'




# List to store unique program names from the first CSV file
unique_program_names = set()

# Read the first CSV file to initialize unique_program_names
first_file = True
for filename in os.listdir(folder_path):
    if filename.endswith('.csv'):
        df = pd.read_csv(os.path.join(folder_path, filename))
        if first_file:
            unique_program_names.update(df['program_name'].tolist())
            first_file = False
        else:
            # Update unique_program_names with only the names present in both sets
            unique_program_names.intersection_update(df['program_name'].tolist())

# List to store DataFrames with only the program_name column
dfs_program_names = []

# Iterate through DataFrames and filter rows with common program names
for filename in os.listdir(folder_path):
    if filename.endswith('.csv'):
        df = pd.read_csv(os.path.join(folder_path, filename))
        filtered_df = df[df['program_name'].isin(unique_program_names)]
        dfs_program_names.append(filtered_df[['program_name']])

# Concatenate DataFrames
result_df = pd.concat(dfs_program_names)

# Remove duplicates
result_df = result_df.drop_duplicates()






result_df.to_csv('common_file_names2.csv', index=False)












# Save the result to a new CSV file
