import os
import pandas as pd

# Define the directory containing the CSV files
directory_path = "csv_files/"

# Define the specific word to look for in the program_name
specific_word = "cfiles32"

# Function to process each program name
def process_program_name(name, specific_word):
    # Find the position of the specific word
    index = name.find(specific_word)
    if index != -1:
        # Return the substring starting from the specific word
        return name[index:]
    return name  # Return the original name if the specific word is not found

# Iterate over all files in the directory
for filename in os.listdir(directory_path):
    if filename.endswith(".csv"):
        file_path = os.path.join(directory_path, filename)
        # Read the CSV file into a DataFrame
        df = pd.read_csv(file_path)
        
        # Check if 'program_name' column exists in the DataFrame
        if 'program_name' in df.columns:
            # Apply the processing to the program_name column
            df['program_name'] = df['program_name'].apply(lambda x: process_program_name(x, specific_word))
            # Save the updated DataFrame back to the CSV file (or you can save it to a new file)
            df.to_csv(file_path, index=False)
            print(f"Processed file: {filename}")
        else:
            print(f"'program_name' column not found in file: {filename}")

print("Processing complete. All applicable CSV files have been updated.")
