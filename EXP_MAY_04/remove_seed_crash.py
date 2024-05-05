import pandas as pd
import os

# Path to the folder containing CSV files
folder_path = '/mnt/e/OneDrive/Desktop/result/EXP_MAY_04/'

# Get a list of all CSV files in the folder
#csv_files = [file for file in os.listdir(folder_path) if file.endswith('.csv')]
csv_files = ["sorted_file.csv"]
# Iterate over each CSV file
for file_name in csv_files:
    # Load the CSV file into a DataFrame
    file_path = os.path.join(folder_path, file_name)
    df = pd.read_csv(file_path)

    # Define the conditions for filtering
    condition = (df['line_coverage'] == 0) & (df['function_coverage'] == 0) & (df['num_crash_files'] == -1) & (df['num_queue_files'] == 1)

    # Filter the DataFrame based on the condition
    filtered_df = df[~condition]

    # Write the filtered DataFrame to a temporary CSV file
    temp_file = 'temp_' + file_name
    temp_file_path = os.path.join(folder_path, temp_file)
    filtered_df.to_csv(temp_file_path, index=False)

    # Replace the original file with the temporary one
    os.replace(temp_file_path, file_path)
