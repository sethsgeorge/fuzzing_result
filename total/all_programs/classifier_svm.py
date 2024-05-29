import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.multiclass import OneVsRestClassifier
from sklearn import svm
from sklearn.metrics import hamming_loss, accuracy_score, f1_score, jaccard_score, log_loss
import pandas as pd

# Load dataset
df = pd.read_csv('dataset.csv')

# Split data into features (X) and labels (y)
X = df.iloc[:, :-19].values
y = df.iloc[:, -19:].values

# Split data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25)

# Initialize classifier
classifier = svm.SVC(probability=True)

# Initialize multi-label classifier
multi_label_classifier = OneVsRestClassifier(classifier, n_jobs=-1)

# Fit multi-label classifier
multi_label_classifier.fit(X_train, y_train)

# Example unseen vector
unseen_vector = np.array([[500, 3, 7, 10, 12,  1, 1, 3, 2]])

# Predict probabilities and labels for unseen vector
predicted_probs = multi_label_classifier.predict_proba(unseen_vector)
prediction_vector = multi_label_classifier.predict(unseen_vector)
predicted_labels = np.argmax(np.max(predicted_probs, axis=0))

# Print predicted probabilities, labels, and highest probability label
print("probs: ", predicted_probs)
print("labels: ", prediction_vector)
print("label : ", predicted_labels + 1)

# Predictions on test set
y_pred = multi_label_classifier.predict(X_test)

# Calculate evaluation metrics
hamming = hamming_loss(y_test, y_pred)
accuracy = accuracy_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred, average='weighted')
jaccard = jaccard_score(y_test, y_pred, average='weighted')
y_test_proba = multi_label_classifier.predict_proba(X_test)
logloss = log_loss(y_test, y_test_proba)

# Print evaluation metrics
print("hamming loss: ", hamming)
print("accuracy: ", accuracy)
print("f1 score: ", f1)
print("jaccard score: ", jaccard)
print("log loss: ", logloss)

# Check for data imbalance
label_counts = pd.DataFrame(y_train).apply(pd.Series.value_counts).fillna(0)
print("Label counts in training data: ")
print(label_counts)

# Calculate accuracy for each individual classifier
label_accuracies = [accuracy_score(y_test[:, i], y_pred[:, i]) for i in range(y.shape[1])]
average_accuracy = np.mean(label_accuracies)

# Display accuracies for each label and average accuracy

print("Accuracies for each label:", label_accuracies)
print("Average accuracy:", average_accuracy)
