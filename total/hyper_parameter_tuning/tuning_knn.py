import numpy as np
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.multiclass import OneVsRestClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import hamming_loss, accuracy_score, f1_score, jaccard_score, log_loss
import pandas as pd

# Load dataset
df = pd.read_csv('balanced_dataset.csv')
X = df.iloc[:, :-19].values
y = df.iloc[:, -19:].values

# Split dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.20, random_state=42)

# Define parameter grid
k_range = list(range(1, 30))
metrics = ['euclidean', 'manhattan', 'minkowski']
param_grid = {
    'estimator__n_neighbors': k_range,
    'estimator__metric': metrics
}

# Create KNN model wrapped in OneVsRestClassifier
classifier = OneVsRestClassifier(KNeighborsClassifier(), n_jobs=-1)

# Perform grid search
grid = GridSearchCV(classifier, param_grid, cv=10, scoring='accuracy')
grid.fit(X_train, y_train)

# Convert cv_results_ to a DataFrame
results_df = pd.DataFrame(grid.cv_results_)

# Display the first few rows of the DataFrame
print(results_df.head())

# Optionally, save the results to a CSV file
results_df.to_csv('grid_search_results.csv', index=False)

# Print the best score and parameters
print("Best score: ", grid.best_score_)
print("Best params: ", grid.best_params_)

# Predict on test set with the best estimator
best_model = grid.best_estimator_
y_pred = best_model.predict(X_test)

# Evaluate the model
print("Hamming Loss: ", hamming_loss(y_test, y_pred))
print("Accuracy: ", accuracy_score(y_test, y_pred))
print("F1 Score: ", f1_score(y_test, y_pred, average='weighted'))
print("Jaccard Score: ", jaccard_score(y_test, y_pred, average='samples'))
