# import pandas as pd

# # Read the ideal CSV file
# ideal_df = pd.read_csv('result_c3.csv')

# # List to store any differing files
# differing_files = []

# # Loop through each of the 10 CSV files
# for i in range(2, 19):
#     filename = f'result_c{i}.csv'

#     if filename == "result_c2.csv" or filename == "result_c14.csv":
#         continue
#     # Read the current CSV file into a DataFrame
#     current_df = pd.read_csv(filename)
    
#     # Compare current DataFrame with the ideal DataFrame
#     if not ideal_df.equals(current_df):
#         differing_files.append(filename)

# # Check if any differences were found
# if differing_files:
#     print("Differences found in the following files:")
#     for file in differing_files:
#         print(file)
# else:
#     print("No differences found.")



import pandas as pd

# Read the ideal CSV file
ideal_df = pd.read_csv('result_c3.csv')

# List to store any differing files
differing_files = []

# Loop through each of the 10 CSV files
for i in range(1, 11):

    filename = f'result_c{i}.csv'

    if filename == "result_c2.csv" or filename == "result_c14.csv":
        continue
    
    
        # Read the current CSV file into a DataFrame
    current_df = pd.read_csv(filename)
    
    # Compare current DataFrame with the ideal DataFrame
    if not ideal_df.equals(current_df):
        # Find differences
        diff_df = ideal_df.compare(current_df)
        
        differing_files.append((filename, diff_df))

# Check if any differences were found
if differing_files:
    print("Differences found in the following files:")
    for file, diff_df in differing_files:
        print(f"File: {file}")
        print(diff_df)
        print()
else:
    print("No differences found.")
