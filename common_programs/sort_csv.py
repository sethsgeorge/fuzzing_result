import pandas as pd

# Read the CSV file into a DataFrame
df = pd.read_csv('common_files.csv')

# Sort the DataFrame by 'program_name' and then by 'configuration'
sorted_df = df.sort_values(by=['program_name'])

# Write the sorted DataFrame to a new CSV file
sorted_df.to_csv('sorted_file.csv', index=False)

print("Sorted data has been written to sorted_file.csv")



# import pandas as pd

# # Read the CSV file into a DataFrame
# df = pd.read_csv('combined_data.csv')

# # Filter out rows where the 'configuration' column does not contain the expected format
# df = df[df['configuration'].str.startswith('c')]

# # Define a function to extract the numeric part of the configuration
# def extract_number(config):
#     return int(config[1:])

# # Sort the DataFrame by 'program_name' and then by 'configuration' with custom sorting
# sorted_df = df.sort_values(by=['program_name', 'configuration'], key=lambda x: x.map(extract_number))

# # Write the sorted DataFrame to a new CSV file
# sorted_df.to_csv('sorted_file.csv', index=False)

# print("Sorted data has been written to sorted_file.csv")


