import pandas as pd

# Read the CSV file into a pandas DataFrame
df = pd.read_csv('branch_coverage_columns_combined.csv')

# Iterate through each row
for index, row in df.iterrows():
    # Find the maximum value from c1 to c8
    max_value = row[1:].max()
    
    # Replace all values in the row with 1 where the maximum value occurs, and 0 otherwise
    df.loc[index, df.columns[1:]] = (row[1:] == max_value).astype(int).astype(str)

# Save the modified DataFrame back to a new CSV file
df.to_csv('labelled_dataset.csv', index=False)
