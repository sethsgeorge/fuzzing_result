import os
import shutil

def copy_csv_files(source_folder, destination_folder):
    # Walk through the source folder
    for root, _, files in os.walk(source_folder):
        # Iterate through files
        for file in files:
            # Check if the file is a CSV file
            if file.endswith('.csv'):
                # Get the full path of the source file
                source_file_path = os.path.join(root, file)
                # Get the destination file path by joining the destination folder and file name
                destination_file_path = os.path.join(destination_folder, file)
                # Copy the file to the destination folder
                shutil.copyfile(source_file_path, destination_file_path)
                print(f"File '{file}' copied successfully.")

# Example usage
destination_folder = 'all_csv_files'

if not os.path.exists(destination_folder):
    os.makedirs(destination_folder)

source_folder = 'csv_files/r1'
copy_csv_files(source_folder, destination_folder)

source_folder = 'csv_files/r2'
copy_csv_files(source_folder, destination_folder)

source_folder = 'csv_files/r3'
copy_csv_files(source_folder, destination_folder)

