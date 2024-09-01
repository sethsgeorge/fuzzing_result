import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.multiclass import OneVsRestClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import hamming_loss, accuracy_score, f1_score, jaccard_score, log_loss
import pandas as pd
import pickle

# Load dataset
df = pd.read_csv('balanced_dataset.csv')
X = df.iloc[:, :-19].values
y = df.iloc[:, -19:].values

# Split the data into train and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.20)

# Initialize the K-Neighbors Classifier
classifier = KNeighborsClassifier(n_neighbors=4, metric='euclidean')

# Wrap the classifier with OneVsRestClassifier
multi_label_classifier = OneVsRestClassifier(classifier, n_jobs=-1)
multi_label_classifier.fit(X_train, y_train)

# Make predictions
y_pred = multi_label_classifier.predict(X_test)

# Calculate metrics
hamming = hamming_loss(y_test, y_pred)
accuracy = accuracy_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred, average='weighted')
jaccard = jaccard_score(y_test, y_pred, average='weighted')

# Calculate log_loss
y_test_proba = multi_label_classifier.predict_proba(X_test)
log_loss_value = log_loss(y_test, y_test_proba)

print("hamming loss:", hamming)
print("accuracy:", accuracy)
print("f1 score:", f1)
print("jaccard score:", jaccard)
print("log loss:", log_loss_value)

# Calculate accuracy for each individual label
label_accuracies = [accuracy_score(y_test[:, i], y_pred[:, i]) for i in range(y.shape[1])]
average_accuracy = np.mean(label_accuracies)

# Display accuracies for each label
print("Accuracies for each label:", label_accuracies)
print("Average accuracy:", average_accuracy)

# Save the data to a file
results = {
    "hamming_loss": hamming,
    "accuracy": accuracy,
    "f1_score": f1,
    "jaccard_score": jaccard,
    "log_loss": log_loss_value,
    "label_accuracies": label_accuracies,
    "average_accuracy": average_accuracy
}

# Convert results to DataFrame and save to CSV
results_df = pd.DataFrame.from_dict(results, orient='index').transpose()
results_df.to_csv('results_knn.csv', index=False)

# Save the trained model as a pickle file
with open('multi_label_classifier.pkl', 'wb') as file:
    pickle.dump(multi_label_classifier, file)

print("Model and results saved successfully!")
