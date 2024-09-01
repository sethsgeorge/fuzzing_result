import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.multiclass import OneVsRestClassifier
from keras.models import Sequential
from keras.layers import Dense
from keras.wrappers.scikit_learn import KerasClassifier
from sklearn.metrics import hamming_loss, accuracy_score, f1_score, jaccard_score, make_scorer
import pickle

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

# Define function to create model
def create_model(optimizer='adam', activation='relu'):
    model = Sequential()
    model.add(Dense(64, input_dim=X_train.shape[1], activation=activation))
    model.add(Dense(32, activation=activation))
    model.add(Dense(y_train.shape[1], activation='sigmoid'))
    model.compile(loss='binary_crossentropy', optimizer=optimizer, metrics=['accuracy'])
    return model

# Create KerasClassifier
classifier = KerasClassifier(build_fn=create_model, verbose=0)

# Define parameter grid for Neural Network
param_grid = {
    'optimizer': ['adam', 'rmsprop'],
    'activation': ['relu', 'tanh'],
    'batch_size': [10, 20],
    'epochs': [10, 50]
}

# Perform grid search with custom scoring
grid = GridSearchCV(classifier, param_grid, cv=10, scoring=macro_accuracy_scorer, refit=True)
grid.fit(X_train, y_train)

# Convert cv_results_ to a DataFrame
results_df = pd.DataFrame(grid.cv_results_)
print(results_df.head())

# Optionally, save the results to a CSV file
results_df.to_csv('nn_grid_search_results.csv', index=False)

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

# Save the best model as a pickle file
with open('nn_best_model.pkl', 'wb') as file:
    pickle.dump(best_model, file)

# Load the model from the pickle file (for future use)
with open('nn_best_model.pkl', 'rb') as file:
    loaded_model = pickle.load(file)

# Example usage of the loaded model
y_loaded_pred = loaded_model.predict(X_test)
print("Loaded model Hamming Loss: ", hamming_loss(y_test, y_loaded_pred))
print("Loaded model Accuracy: ", accuracy_score(y_test, y_loaded_pred))
