import pandas as pd

# Load the CSV file into a DataFrame
csv_file_path = 'merged_csv_for_analysis.csv'  # Replace with your file path
df = pd.read_csv(csv_file_path)







# Filter the DataFrame to include only 'laf' and 'nil' configurations
filtered_df = df[df['configuration'].isin(['laf', 'nil'])]

# Initialize counters and lists to store program names
laf_greater_count = 0
cmp_laf_greater_count = 0
laf_greater_programs = []
cmp_laf_greater_programs = []

# Group the filtered DataFrame by program_name
grouped = filtered_df.groupby('program_name')

# Iterate over each group (each program)
for name, group in grouped:
    laf_value = group.loc[group['configuration'] == 'laf', 'branch_coverage'].values[0]
    cmp_laf_value = group.loc[group['configuration'] == 'nil', 'branch_coverage'].values[0]
    
    if laf_value > cmp_laf_value:
        laf_greater_count += 1
        laf_greater_programs.append(name)
    elif cmp_laf_value > laf_value:
        cmp_laf_greater_count += 1
        cmp_laf_greater_programs.append(name)

# Output the results
print(f"LAF greater than nil: {laf_greater_count} times")
print(f"Programs where LAF > nil: {laf_greater_programs}")
print(f"nil greater than LAF: {cmp_laf_greater_count} times")
print(f"Programs where nil > LAF: {cmp_laf_greater_programs}")
