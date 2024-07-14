import os

# Define the folder path containing the CSV files
folder_path = '/mnt/e/OneDrive/Desktop/result/repeats/e1/r2/csv_files'

# Get a list of all files in the folder
files = os.listdir(folder_path)

# Iterate through each file
for file_name in files:
    # Check if the file is a CSV file
    if file_name.endswith('.csv'):
        # Construct the new file name with "_r1" appended
        new_file_name = os.path.splitext(file_name)[0] + '_r2_e1.csv'
        
        # Rename the file
        os.rename(os.path.join(folder_path, file_name), os.path.join(folder_path, new_file_name))
