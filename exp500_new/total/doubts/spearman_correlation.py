import pandas as pd

# Load your dataset
df = pd.read_csv('dataset.csv')

# Extract binary label columns (assuming they are the last 19 columns)
binary_labels = df.iloc[:, -19:]

# Compute the Spearman rank correlation coefficient matrix
label_correlation_matrix = binary_labels.corr(method='spearman')

# Set a threshold for high correlation coefficients
threshold = 0.8

# Identify highly correlated pairs of labels
highly_correlated_pairs = []
for i in range(len(label_correlation_matrix.columns)):
    for j in range(i+1, len(label_correlation_matrix.columns)):
        if abs(label_correlation_matrix.iloc[i, j]) > threshold:
            highly_correlated_pairs.append((label_correlation_matrix.columns[i], label_correlation_matrix.columns[j]))

# Write highly correlated pairs to a text file
with open('highly_correlated_pairs.txt', 'w') as file:
    file.write("Highly correlated label pairs:\n")
    for pair in highly_correlated_pairs:
        file.write(f"{pair[0]}, {pair[1]}\n")

print("Highly correlated pairs saved to 'highly_correlated_pairs.txt'.")
