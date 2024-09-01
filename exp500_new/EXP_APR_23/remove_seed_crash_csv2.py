import pandas as pd

# Load the CSV file into a DataFrame
df = pd.read_csv('result_c5.csv')

# Define the conditions for filtering
condition = (df['line_coverage'] == 0) & (df['function_coverage'] == 0) & (df['num_crash_files'] == -1) & (df['num_queue_files'] == 1)

# Filter the DataFrame based on the condition
filtered_df = df[~condition]

# Write the filtered DataFrame back to a CSV file
filtered_df.to_csv('result_c5_new.csv', index=False)
