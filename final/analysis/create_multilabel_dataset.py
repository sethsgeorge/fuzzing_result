import pandas as pd

# Load the combined dataset
combined_data = pd.read_csv("combined_dataset_with_labels.csv")

# Step 1: Group the dataset by program_name and aggregate configurations
grouped_data = combined_data.groupby('program_name')['configuration'].apply(list).reset_index()

# Step 2: Get unique configurations
unique_configs = set(combined_data['configuration'])

# Step 3: Create binary columns for each configuration
for config in unique_configs:
    grouped_data[config] = grouped_data['configuration'].apply(lambda x: 1 if config in x else 0)

# Step 4: Merge binary columns with the original dataset
combined_data_with_labels = pd.merge(combined_data, grouped_data.drop(columns=['configuration']), on='program_name')

# Step 5: Save the dataset
combined_data_with_labels.to_csv("combined_dataset_with_labels_processed.csv", index=False)
