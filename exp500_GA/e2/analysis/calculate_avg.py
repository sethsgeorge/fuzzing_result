import os
import pandas as pd

# Define the folder containing the CSV files
folder_path = "csv_files"
output_path = "average"

os.makedirs("average")

# Create a dictionary to store dataframes grouped by ci and ej
dataframes = {}

# Loop through each file in the folder
for filename in os.listdir(folder_path):
    if filename.endswith(".csv"):
        # Extract the ci and ej components from the filename
        parts = filename.split("_")
        ci = parts[1]
        ej = parts[3].split(".")[0]
        
        # Read the CSV file
        df = pd.read_csv(os.path.join(folder_path, filename))
        df['branch_coverage'] = df['branch_coverage'].str.rstrip('%').astype(float)
        
        # Group by 'ci' and 'ej' in the dictionary
        key = (ci, ej)
        if key not in dataframes:
            dataframes[key] = []
        dataframes[key].append(df)

# Process each group to calculate the average
for (ci, ej), dfs in dataframes.items():
    combined_df = pd.concat(dfs)
    
    # Group by 'program_name' and calculate the average 'branch_coverage'
    avg_performance = combined_df.groupby('program_name')['branch_coverage'].mean().reset_index()
    
    # Save the averaged data to a new CSV file
    avg_filename = f"result_{ci}_avg_{ej}.csv"
    avg_performance.to_csv(os.path.join(output_path, avg_filename), index=False)
    
    print(f"Averaged data saved to {avg_filename}")
