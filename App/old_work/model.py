import pandas as pd
from sklearn.linear_model import LinearRegression
import numpy as np

# Separate the Features (X) from the Target (y)
y = df["TA.OVH.RECYCLE.NC4.VOLPCT"]
X = df.drop(["TA.OVH.RECYCLE.NC4.VOLPCT", "Date", "Index"], axis = 1)

# Split into train data and test data
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y,random_state=0)
X_train.shape

# Import Linear Regression Model

model = LinearRegression()

# Train the model
model.fit(X_train, y_train)

# Make Predictions
y_pred = model.predict(X_test)
results = pd.DataFrame({"Prediction": y_pred, "Actual": y_test}).reset_index(drop=True)


# Calculated Metrics
from sklearn.metrics import r2_score
from sklearn.metrics import mean_absolute_error as mae
from sklearn.metrics import mean_squared_error as mse

# r2 score
regression_score = r2_score(y_test, y_pred)

# Mean Squared Error (MSE)
mean_sq_error = mse(y_test, y_pred)

# Mean Absolute Error (MAE)
mean_abs_error = mae(y_test, y_pred)


