import os
import pandas as pd

# Define the path to the main folder containing subfolders
main_folder_path = 'csv_folders'

# Initialize an empty list to hold dataframes
dfs = []

# Loop over all subfolders
for subfolder in os.listdir(main_folder_path):
    subfolder_path = os.path.join(main_folder_path, subfolder)
    
    # Check if it is indeed a directory
    if os.path.isdir(subfolder_path):
        csv_file_path = os.path.join(subfolder_path, 'result_c82.csv')
        
        # Check if the file exists
        if os.path.isfile(csv_file_path):
            df = pd.read_csv(csv_file_path)
            dfs.append(df)

# Concatenate all dataframes
merged_df = pd.concat(dfs, ignore_index=True)

# Save the merged dataframe to a new CSV file
merged_df.to_csv('merged_output.csv', index=False)

print("CSV files merged successfully!")
