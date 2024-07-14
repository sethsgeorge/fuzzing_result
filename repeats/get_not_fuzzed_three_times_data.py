import pandas as pd

# Read the CSV files
new_data = pd.read_csv('not_fuzzed_3_times.csv')
dataset = pd.read_csv('/mnt/e/OneDrive/Desktop/result/total/dataset_original.csv')

# Merge the dataframes on the 'program_name' column
merged_data = pd.merge(new_data, dataset, on='program_name', how='left')

# Save the resulting dataframe to a new CSV file
merged_data.to_csv('merged_data.csv', index=False)

print("Merged data saved to merged_data.csv")
