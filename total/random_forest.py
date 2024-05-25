import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.multiclass import OneVsRestClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import hamming_loss, accuracy_score, f1_score, jaccard_score, log_loss
import pandas as pd

df = pd.read_csv('combined_dataset.csv')
X = df.iloc[:, :-19].values
y = df.iloc[:,-19:].values
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)
classifier = RandomForestClassifier(n_estimators=100, random_state=42)
multi_label_classifier = OneVsRestClassifier(classifier, n_jobs=-1)
multi_label_classifier.fit(X_train, y_train)

unseen_vector = np.array([[xxxxxxxxxxxxxxxxxxxxx]])
predicted_probs = multi_label_classifier.predict_proba(unseen_vector)
prediction_vector = multi_label_classifier.predict(unseen_vector)
predicted_labels = np.argmax(np.max(predicted_probs, axis=0))
print("probs: ", predicted_probs)
print("labels: ", prediction_vector)
print("label : ", predicted_labels+1)

y_pred = multi_label_classifier.predict(X_test)
hamming = hamming_loss(y_test, y_pred)
accuracy = accuracy_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred, average='weighted')
jaccard = jaccard_score(y_test, y_pred, average='weighted')
y_test_proba = multi_label_classifier.predict_proba(X_test)
xxxxxxxxxxxxxx log_loss xxxxxxxxxxxxxxxxxxx
print("hamming loss: ", hamming)
print("accuracy: ", accuracy)
print("f1 score: ", f1)
print("jaccard score: ", jaccard)

