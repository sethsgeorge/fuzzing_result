import pandas as pd

# Load the CSV file into a DataFrame
df = pd.read_csv('combined_data.csv')

# Group the DataFrame by 'program_name'
grouped = df.groupby('program_name')

# Initialize variables to store the maximum branch coverage and corresponding configurations
max_coverage = 0
max_configurations = []

# Iterate over each group
for name, group in grouped:
    # Find the maximum branch coverage in the group
    max_branch_coverage = group['branch_coverage'].max()
    
    # If the maximum coverage in this group is higher than the overall maximum coverage
    if max_branch_coverage > max_coverage:
        # Update the maximum coverage and corresponding configurations
        max_coverage = max_branch_coverage
        max_configurations = group[group['branch_coverage'] == max_coverage]['configuration'].tolist()

# Save the highest branch coverage and its corresponding configurations to a new CSV file
highest_coverage_df = pd.DataFrame({'program_name': [name],
                                    'branch_coverage': [max_coverage],
                                    'configuration': [', '.join(max_configurations)]})
highest_coverage_df.to_csv('highest_coverage.csv', index=False)
