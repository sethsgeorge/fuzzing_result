import pandas as pd

# Read the CSV file into a DataFrame
combined_data = pd.read_csv("combined_data.csv")

# Sort the DataFrame by the "program_name" column
combined_data_sorted = combined_data.sort_values(by="configuration")
combined_data_sorted = combined_data.sort_values(by="program_name")


# Write the sorted data back to the CSV file
combined_data_sorted.to_csv("combined_data_sorted.csv", index=False)
