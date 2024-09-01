import numpy as np
import pickle

# Load the trained model from the pickle file
with open('multi_label_classifier_knn.pkl', 'rb') as file:
    loaded_model = pickle.load(file)

# Define the feature vector
feature_vector = np.array([800, 80, 5, 8, 45, 12, 2, 82, 2]).reshape(1, -1)

# Make predictions using the loaded model
prediction = loaded_model.predict(feature_vector)
prediction_proba = loaded_model.predict_proba(feature_vector)

# Print the prediction
print("Prediction:", prediction)
print("Prediction Probabilities:", prediction_proba)
