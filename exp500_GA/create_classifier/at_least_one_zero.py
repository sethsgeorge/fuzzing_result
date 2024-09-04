import pandas as pd

# Load the CSV file into a DataFrame
df = pd.read_csv('labelled_dataset_with_feature.csv')

# Columns to ignore during filtering
columns_to_ignore = ['program_name', 'Number of lines', 'Number of functions', 'Cyclomatic complexity', 'Total edges in AST', 'Height of AST', 'Maximum nested loop depth', 'Number of equality constraints', 'Number of inequality constraints', 'Call stack depth']

# Create a subset excluding the columns to ignore
subset_df = df.drop(columns=columns_to_ignore)

# Retain rows with at least one zero value in the subset
df_filtered = df[(subset_df == 0).any(axis=1)]

# Save the filtered DataFrame to a new CSV file
df_filtered.to_csv('labelled_dataset_with_zero.csv', index=False)

print("Filtered file has been saved successfully.")
