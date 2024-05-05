import pandas as pd

# Read the CSV files
original = pd.read_csv('original.csv')
updated = pd.read_csv('updated.csv')

# Merge the two dataframes using an outer join
merged = pd.merge(original, updated, how='outer', on='program_name', indicator=True)

# Replace NaN values with a default value
merged = merged.replace({'category': {None: 'DEFAULT'}})

# Drop the indicator column
merged = merged.drop('_merge', axis=1)

# Save the merged dataframe to a new CSV file
merged.to_csv('latest.csv', index=False)