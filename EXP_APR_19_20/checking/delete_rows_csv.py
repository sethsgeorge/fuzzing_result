import pandas as pd

# Read original.csv and modified.csv
original_df = pd.read_csv('original.csv')
modified_df = pd.read_csv('modified.csv')

# Drop duplicate rows from modified_df
modified_df = modified_df.drop_duplicates()

# Iterate through rows of modified_df
for index, row in modified_df.iterrows():
    # Check if the row exists in original_df
    if original_df[original_df.eq(row).all(axis=1)].shape[0] > 0:
        # Drop the row from modified_df
        modified_df.drop(index, inplace=True)

# Write modified_df back to modified.csv
modified_df.to_csv('modified.csv', index=False)
