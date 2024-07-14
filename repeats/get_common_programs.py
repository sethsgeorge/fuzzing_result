import os
import pandas as pd
from functools import reduce

# Directory containing the CSV files
directory = 'all_csv_files_seed_crash_removed'

# Get list of all files in the directory
files = os.listdir(directory)

# Separate the e1 and e2 files
e1_files = [f for f in files if 'e1.csv' in f]
e2_files = [f for f in files if 'e2.csv' in f]

def get_common_program_names(files, directory):
    # Load the data and extract program_name columns
    program_name_sets = []
    for file in files:
        df = pd.read_csv(os.path.join(directory, file))
        program_name_set = set(df['program_name'])
        program_name_sets.append(program_name_set)
    
    # Find the intersection of all sets
    common_program_names = reduce(set.intersection, program_name_sets)
    return common_program_names

# Get common program names for e1 and e2 files
common_program_names_e1 = get_common_program_names(e1_files, directory)
common_program_names_e2 = get_common_program_names(e2_files, directory)

# Save the results to CSV files
pd.DataFrame({'program_name': list(common_program_names_e1)}).to_csv(os.path.join(directory, 'common_program_name_e1.csv'), index=False)
pd.DataFrame({'program_name': list(common_program_names_e2)}).to_csv(os.path.join(directory, 'common_program_name_e2.csv'), index=False)
