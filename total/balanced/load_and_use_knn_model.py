'''
import numpy as np
import pickle

# Load the trained model from the pickle file
with open('multi_label_classifier_knn.pkl', 'rb') as file:
    loaded_model = pickle.load(file)

# Define the feature vector
feature_vector = np.array([5130, 14, 785, 46999, 232, 1, 3813, 2883, 6]).reshape(1, -1)

# Make predictions using the loaded model
prediction = loaded_model.predict(feature_vector)
prediction_proba = loaded_model.predict_proba(feature_vector)

# Print the prediction
print("Prediction:", prediction)
print("Prediction Probabilities:", prediction_proba)

'''

import numpy as np
import pickle
import random

# Load the trained model from the pickle file
with open('multi_label_classifier_knn.pkl', 'rb') as file:
    loaded_model = pickle.load(file)

# Define the feature vector
feature_vector = np.array([1500, 14, 885, 99, 2, 1, 3, 8, 6]).reshape(1, -1)

# Make predictions using the loaded model
prediction = loaded_model.predict(feature_vector)
prediction_proba = loaded_model.predict_proba(feature_vector)

# Find indices of highest probability
highest_prob_indices = np.where(prediction_proba == np.max(prediction_proba))[1]

# Print the prediction
print("Prediction:", prediction)
print("Prediction Probabilities:", prediction_proba)
print("Indices with Highest Probability:", highest_prob_indices)


configuration_for_fuzzing = random.choice(highest_prob_indices)
print("configuration_for_fuzzing: ", configuration_for_fuzzing)