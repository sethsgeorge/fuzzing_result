import os
import pandas as pd

# Load template.csv into a DataFrame
template_df = pd.read_csv("common_file_names2.csv")

# Loop through files in the folder
folder_path = '/mnt/e/OneDrive/Desktop/result/EXP_MAY_20_21/analysis/csv_files'
for filename in os.listdir(folder_path):
    if filename.endswith(".csv"):
        # Load the current CSV file into a DataFrame
        file_path = os.path.join(folder_path, filename)
        current_df = pd.read_csv(file_path)
        
        # Filter rows in current DataFrame based on template_df
        filtered_df = current_df[current_df['program_name'].isin(template_df['program_name'])]
        
        # Overwrite the original CSV file with filtered data
        filtered_df.to_csv(file_path, index=False)

        print(f"Filtered data saved to {file_path}")
