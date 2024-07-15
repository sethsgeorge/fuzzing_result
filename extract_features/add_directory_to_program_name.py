
import pandas as pd

# Read the CSV file
file_path = 'program_names_for_extraction.csv'
data = pd.read_csv(file_path)

# The string to prepend
prepend_string = r'/mnt/e/OneDrive/Desktop/sv_benchmarks_necessary/c/'

# Prepend the string to each entry in the 'program_name' column
data['program_name'] = prepend_string + data['program_name'].astype(str)

# Save the modified data to the same CSV file
data.to_csv(file_path, index=False)

print("Data saved to the same file")
