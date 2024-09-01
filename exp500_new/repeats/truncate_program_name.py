import pandas as pd
import os

# Path to the folder containing CSV files
folder_path = 'all_csv_files_seed_crash_removed'  # Adjust this path accordingly

# Get a list of all CSV files in the folder
csv_files = [file for file in os.listdir(folder_path) if file.endswith('.csv')]

# Iterate over each CSV file
for file_name in csv_files:
    try:
        # Load the CSV file into a DataFrame
        file_path = os.path.join(folder_path, file_name)
        df = pd.read_csv(file_path)

        # Modify the 'program_name' column
        if 'program_name' in df.columns:
            df['program_name'] = df['program_name'].apply(lambda x: x[x.find('/cfiles32'):])

            # Write the updated DataFrame back to the original CSV file
            df.to_csv(file_path, index=False)
        else:
            print(f"Skipping {file_name}: 'program_name' column not found")
    except Exception as e:
        print(f"Error processing {file_name}: {e}")
        raise
