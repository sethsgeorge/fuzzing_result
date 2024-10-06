import pandas as pd

# Load the dataset
df = pd.read_csv('labelled_dataset_with_feature.csv')

# Display the first few rows of the dataframe
print("Original DataFrame:")
print(df.head())

# List of columns to exclude from the check
#exclude_columns = ['program_name']
exclude_columns = ['program_name', 'Number of lines', 'Number of functions', 'Cyclomatic complexity', 'Total edges in AST', 'Height of AST', 'Maximum nested loop depth', 'Number of equality constraints', 'Number of inequality constraints', 'Call stack depth']


# Retain rows where all columns (except those in exclude_columns) are 1
filtered_df = df[(df.drop(columns=exclude_columns) == 1).all(axis=1)]

# Display the filtered dataframe
print("\nFiltered DataFrame:")
print(filtered_df.head())

# Save the filtered dataframe to a new CSV file
filtered_df.to_csv('labelled_dataset_with_all_one.csv', index=False)
