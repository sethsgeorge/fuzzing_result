import pandas as pd
from collections import Counter

# Load the dataset
file_path = 'balanced_dataset.csv'
df = pd.read_csv(file_path)

# Assuming the last 19 columns are the labels
label_columns = df.columns[-19:]

# Initialize counters for overall counts and individual label counts
overall_counter = Counter()
label_counts = {label: {'ones': 0, 'zeroes': 0} for label in label_columns}

# Count the number of ones and zeroes in each label column
for label in label_columns:
    ones_count = df[label].sum()
    zeroes_count = len(df) - ones_count
    label_counts[label]['ones'] = ones_count
    label_counts[label]['zeroes'] = zeroes_count
    overall_counter[1] += ones_count
    overall_counter[0] += zeroes_count

# Print overall counts
print(f"Label counts in training data: {overall_counter}")

# Prepare data for the DataFrame
ones_counts = [counts['ones'] for counts in label_counts.values()]
zeroes_counts = [counts['zeroes'] for counts in label_counts.values()]

# Create a DataFrame for individual label counts
label_df = pd.DataFrame({'0': zeroes_counts, '1': ones_counts}, index=range(19)).T
label_df.columns = range(19)

# Print the DataFrame
print(label_df)
