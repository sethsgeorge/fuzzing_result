import pandas as pd

# Assuming df is your DataFrame containing the dataset with labels as the last 19 columns
df = pd.read_csv('dataset.csv')

# Extract the label columns
label_columns = df.iloc[:, -19:]

# Compute the Pearson correlation coefficient matrix
label_correlation_matrix = label_columns.corr()

# Display the correlation matrix
print("Label Correlation Matrix:")
print(label_correlation_matrix)

# Save the correlation matrix to a CSV file
label_correlation_matrix.to_csv('label_correlation_matrix.csv', float_format='%.2f')

# Display a message indicating the file has been saved
print("Label correlation matrix saved to 'label_correlation_matrix.csv'.")
