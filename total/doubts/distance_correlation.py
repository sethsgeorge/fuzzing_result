import pandas as pd
import dcor

# Load your dataset
df = pd.read_csv('dataset.csv')

# Extract binary label columns (assuming they are the last 19 columns)
binary_labels = df.iloc[:, -19:]

# Compute distance correlation matrix
distance_correlation_matrix = pd.DataFrame(index=binary_labels.columns, columns=binary_labels.columns)

for col1 in binary_labels.columns:
    for col2 in binary_labels.columns:
        distance_correlation_matrix.loc[col1, col2] = dcor.distance_correlation(binary_labels[col1], binary_labels[col2])

# Save the distance correlation matrix to a CSV file with two decimal places
distance_correlation_matrix.to_csv('distance_correlation_matrix.csv', float_format='%.2f')

# Display a message indicating the file has been saved
print("Distance correlation matrix saved to 'distance_correlation_matrix.csv'.")
