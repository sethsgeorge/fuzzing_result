import pandas as pd

# Read the CSV files
program1 = pd.read_csv('program_name1.csv')
program2 = pd.read_csv('program_name2.csv')

# Convert the columns to sets for comparison
set_program1 = set(program1['program_name'])
set_program2 = set(program2['program_name'])

# Find entries in program2 not present in program1
not_fuzzed = set_program2 - set_program1

# Convert the result back to a DataFrame
not_fuzzed_df = pd.DataFrame(list(not_fuzzed), columns=['program_name'])

# Save to a new CSV file
not_fuzzed_df.to_csv('not_fuzzed_3_times.csv', index=False)

print("Entries saved to not_fuzzed_3_times.csv")
