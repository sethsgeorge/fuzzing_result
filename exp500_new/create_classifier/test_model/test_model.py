import joblib
import numpy as np
import random 

model_filename = "xgboost_best_model.joblib"
with open(model_filename, "rb") as model_file:
    loaded_model = joblib.load(model_file)

num_lines = 51336
num_functions = 15
cyclomatic_complexity = 786
total_edges = 47005
longest_path = 232
loop_depth = 1
equality_constraints = 3814
inequality_constraints = 2884
max_depth_call = 6

feature_vector = np.array([num_lines, num_functions, 
                            cyclomatic_complexity, total_edges, longest_path
                            , loop_depth, equality_constraints, 
                            inequality_constraints,
                                max_depth_call]).reshape(1, -1)

if num_lines == 0:
    prediction = [0]
    configuration = "c1"
else:

    prediction_proba = loaded_model.predict_proba(feature_vector)
    # Find indices of highest probability
    highest_prob_indices = np.where(prediction_proba == np.max(prediction_proba))[1]
    prediction = random.choice(highest_prob_indices)
    print("predicted indices: ", highest_prob_indices)
    configuration = "c" + str(prediction+1)
print("\u2714 PREDICTION IS {}".format(configuration))
print("-----------------------------------------------------")