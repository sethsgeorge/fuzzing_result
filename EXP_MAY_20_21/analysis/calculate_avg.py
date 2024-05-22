import os
import pandas as pd

# Define the folder containing the CSV files
folder_path = "/mnt/e/OneDrive/Desktop/result/EXP_MAY_20_21/analysis/csv_files"
output_path = "/mnt/e/OneDrive/Desktop/result/EXP_MAY_20_21/analysis/average"

# Loop through each file in the folder
for filename in os.listdir(folder_path):
    if filename.endswith(".csv"):
        # Extract the experiment ID (ci) from the filename
        ci = filename.split("_")[1]

        # Read the CSV file
        df = pd.read_csv(os.path.join(folder_path, filename))
        df['branch_coverage'] = df['branch_coverage'].str.rstrip('%').astype(float)

        # Group by 'exp_name' and calculate the average 'performance'
        avg_performance = df.groupby('program_name')['branch_coverage'].mean().reset_index()

        # Save the averaged data to a new CSV file
        avg_filename = f"result_{ci}_avg.csv"
        avg_performance.to_csv(os.path.join(output_path, avg_filename), index=False)

        print(f"Averaged data saved to {avg_filename}")
