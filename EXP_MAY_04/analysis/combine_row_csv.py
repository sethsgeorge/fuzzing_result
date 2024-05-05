import pandas as pd
import os

# Path to the folder containing CSV files
folder_path = "/mnt/e/OneDrive/Desktop/result/EXP_MAY_04/csv_files"

# List all CSV files in the folder
csv_files = [f for f in os.listdir(folder_path) if f.endswith('.csv')]

# Initialize an empty list to store DataFrames
dfs = []

# Iterate through each CSV file and read its contents into a DataFrame
for file in csv_files:
    file_path = os.path.join(folder_path, file)
    data = pd.read_csv(file_path)
    dfs.append(data)

# Concatenate all DataFrames into one
combined_data = pd.concat(dfs, ignore_index=True)

# Write the combined data to a new CSV file
combined_data.to_csv("combined_data.csv", index=False)
