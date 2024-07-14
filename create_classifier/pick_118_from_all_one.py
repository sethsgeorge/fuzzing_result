import pandas as pd

def sample_csv(input_file, output_file, sample_size, random_state=42):
    # Load the original CSV file
    df = pd.read_csv(input_file)
    
    # Randomly sample specified number of rows
    random_sample_df = df.sample(n=sample_size, random_state=random_state)
    
    # Save the sampled rows to a new CSV file
    random_sample_df.to_csv(output_file, index=False)

# Specify the file paths
input_file = 'labelled_dataset_with_all_one.csv'
output_file = '118_rows_from_all_one.csv'
sample_size = 118

# Sample 41 random rows and save to new CSV file
sample_csv(input_file, output_file, sample_size)

print(f"Random sample of 118 rows has been saved to {output_file}")
