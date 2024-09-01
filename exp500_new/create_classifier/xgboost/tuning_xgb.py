import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.multiclass import OneVsRestClassifier
from xgboost import XGBClassifier
from sklearn.metrics import hamming_loss, accuracy_score, f1_score, jaccard_score, make_scorer
import joblib

# Define macro-averaged accuracy scorer
def macro_accuracy(y_true, y_pred):
    accuracies = []
    for i in range(y_true.shape[1]):
        accuracies.append(accuracy_score(y_true[:, i], y_pred[:, i]))
    return np.mean(accuracies)

macro_accuracy_scorer = make_scorer(macro_accuracy, greater_is_better=True)

# Load dataset
df = pd.read_csv('balanced_dataset.csv')
X = df.iloc[:, :-19].values
y = df.iloc[:, -19:].values

# Split dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.20, random_state=42)


# Define parameter grid for XGBoost
n_estimators = list(range(20, 151))
criterion = ['gini', 'entropy', 'log_loss']
param_grid = {
    'estimator__n_estimators': n_estimators,
    #'estimator__criterion': criterion
}
# param_grid = {
#     'estimator__learning_rate': [0.01, 0.1, 0.2],
#     'estimator__max_depth': [3, 5, 7],
#     'estimator__n_estimators': [50, 100, 150]
# }
# param_grid = {
#     'estimator__learning_rate': [0.01, 0.1],
#     'estimator__max_depth': [5, 7],
#     'estimator__n_estimators': [50, 100]
# }

# Create XGBoost model wrapped in OneVsRestClassifier
classifier = OneVsRestClassifier(XGBClassifier(eval_metric='mlogloss'), n_jobs=-1)

# Perform grid search with custom scoring
grid = GridSearchCV(classifier, param_grid, cv=10, scoring=macro_accuracy_scorer, refit=True)
grid.fit(X_train, y_train)

# Convert cv_results_ to a DataFrame
results_df = pd.DataFrame(grid.cv_results_)
print(results_df.head())

# Optionally, save the results to a CSV file
results_df.to_csv('xgboost_grid_search_results.csv', index=False)

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

# Save the best model as a joblib file
with open('xgboost_best_model.joblib', 'wb') as file:
    joblib.dump(best_model, file)

# Load the model from the joblib file (for future use)
with open('xgboost_best_model.joblib', 'rb') as file:
    loaded_model = joblib.load(file)

# Example usage of the loaded model
y_loaded_pred = loaded_model.predict(X_test)
print("Loaded model Hamming Loss: ", hamming_loss(y_test, y_loaded_pred))
print("Loaded model Accuracy: ", accuracy_score(y_test, y_loaded_pred))
