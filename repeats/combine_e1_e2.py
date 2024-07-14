import os
import pandas as pd

# Define the directory containing your CSV files
directory = 'average'

# Iterate through each pair of files
for filename in os.listdir(directory):
    if filename.endswith('_e1.csv'):
        base_name = filename[:-7]  # Remove '_e1.csv' to get base name
        e1_file = os.path.join(directory, filename)
        e2_file = os.path.join(directory, base_name + '_e2.csv')

        # Check if both files exist
        if os.path.exists(e2_file):
            # Read both CSV files
            df1 = pd.read_csv(e1_file)
            df2 = pd.read_csv(e2_file)

            # Combine row-wise
            combined_df = pd.concat([df1, df2], ignore_index=True)

            # Write to new CSV file
            combined_file = os.path.join("combined_csv", base_name + '_e.csv')
            combined_df.to_csv(combined_file, index=False)
            print(f'Combined {filename} and {base_name}_e2.csv into {base_name}_e.csv')
        else:
            print(f'Error: {base_name}_e2.csv not found')
