import pandas as pd

# Load the CSV files
csv_file_1 = 'output_feature.csv'
csv_file_2 = 'labelled_dataset.csv'

# Read the CSV files into DataFrames
df1 = pd.read_csv(csv_file_1)
df2 = pd.read_csv(csv_file_2)

# Merge the DataFrames on the 'program_name' column
merged_df = pd.merge(df1, df2, on='program_name')

# Save the merged DataFrame to a new CSV file
merged_df.to_csv('labelled_dataset_with_feature.csv', index=False)

print("Files have been merged successfully.")
