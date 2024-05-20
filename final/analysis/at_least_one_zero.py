import pandas as pd

# Load the CSV file into a DataFrame
df = pd.read_csv('labelled_dataset.csv')

# Retain rows with at least one zero value
df_filtered = df[(df == 0).any(axis=1)]

# Save the filtered DataFrame to a new CSV file
df_filtered.to_csv('labelled_dataset_with_zero.csv', index=False)
