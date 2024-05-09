import pandas as pd
import os

# Step 1: Initialize an empty DataFrame to store the combined data
combined_data = pd.DataFrame(columns=['program_name', 'branch_coverage', 'configuration'])

# Step 2: Iterate through each CSV file in the folder
folder_path = "/mnt/e/OneDrive/Desktop/result/final/analysis/average"
for filename in os.listdir(folder_path):
    if filename.endswith(".csv"):
        file_path = os.path.join(folder_path, filename)
        
        # Read the CSV file into a DataFrame
        df = pd.read_csv(file_path)
        
        # Extract configuration label from the filename
        configuration = filename.split("_")[1].split(".")[0]
        
        # Find the maximum branch coverage for each program in the current configuration
        max_coverage = df.groupby('program_name')['branch_coverage'].max()
        
        # Iterate through programs to find configurations with the highest coverage
        for program_name, coverage in max_coverage.items():
            # Filter rows with the highest coverage for the current program
            max_coverage_rows = df[(df['program_name'] == program_name) & (df['branch_coverage'] == coverage)]
            # Add each configuration achieving the highest coverage to the combined data
            combined_data = pd.concat([combined_data, max_coverage_rows.assign(configuration=configuration)])

# Step 3: Save the combined DataFrame to a new CSV file
combined_data.to_csv("/mnt/e/OneDrive/Desktop/result/final/analysis/combined_dataset_with_labels.csv", index=False)
