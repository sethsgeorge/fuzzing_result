import pandas as pd

# List to store dataframes of each CSV file
dfs = []

# Load each CSV file and store its dataframe
for i in range(1, 19):

    filename = f'result_c{i}.csv'

    if filename=='result_c2.csv' or filename=='result_c14.csv':
        continue
    df = pd.read_csv(filename)
    dfs.append(df)

# Concatenate the dataframes along axis 1 (columns)
combined_df = pd.concat(dfs, axis=1)

# Write the combined dataframe to a new CSV file
combined_df.to_csv('combined_file.csv', index=False)

print("Combination complete. Output saved as 'combined_file.csv'")
