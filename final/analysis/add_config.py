import pandas as pd
import os

# Directory containing the CSV files
directory = "/mnt/e/OneDrive/Desktop/result/final/analysis/average"

# Iterate through each file in the directory
for filename in os.listdir(directory):
    if filename.endswith(".csv"):
        # Read the CSV file into a DataFrame
        filepath = os.path.join(directory, filename)
        df = pd.read_csv(filepath)
        
        # Extract configuration number from filename
        config_number = filename.split('_')[1][1:]  # Assuming filename format is "result_cX_avg.csv"
        
        # Add a new column "configuration" filled with the configuration number
        df['configuration'] = 'c' + config_number
        
        # Write the modified DataFrame back to the same CSV file
        df.to_csv(filepath, index=False)
