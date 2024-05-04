import pandas as pd
import os

# Path to the folder containing CSV files
folder_path = "/mnt/e/OneDrive/Desktop/result/EXP_APR_23/csv_files"

# List all CSV files in the folder
csv_files = [f for f in os.listdir(folder_path) if f.startswith('result_c') and f.endswith('.csv')]

for file in csv_files:
    file_path = os.path.join(folder_path, file)
    
    # Extract the configuration number from the filename
    config_number = file.split('_')[-1].split('.')[0]
    
    # Read the CSV file
    df = pd.read_csv(file_path)
    
    # Insert a new column at the second position
    df.insert(1, 'configuration', config_number)
    
    # Write the modified DataFrame back to the same CSV file
    df.to_csv(file_path, index=False)
