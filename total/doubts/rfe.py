import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.multiclass import OneVsRestClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import hamming_loss, accuracy_score, f1_score, jaccard_score, log_loss
from sklearn.feature_selection import RFE

# Load data
df = pd.read_csv('dataset.csv')
X = df.iloc[:, :-19].values
y = df.iloc[:, -19:].values

# Split data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25)

# Initialize RandomForestClassifier
classifier = RandomForestClassifier(n_estimators=100, random_state=42)

# Initialize OneVsRestClassifier with RandomForestClassifier
multi_label_classifier = OneVsRestClassifier(classifier, n_jobs=-1)

# Fit the classifier to the training data
multi_label_classifier.fit(X_train, y_train)

# Initialize RFE object with the classifier
rfe = RFE(estimator=classifier, n_features_to_select=1, step=1)

# Fit RFE to training data
rfe.fit(X_train, y_train)

# Get the ranking of features
feature_ranking = rfe.ranking_

# Print the ranking of features
print("Feature Ranking:", feature_ranking)
