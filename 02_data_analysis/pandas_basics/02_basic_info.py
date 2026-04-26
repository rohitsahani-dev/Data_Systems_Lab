import pandas as pd

# Read the CSV file into a DataFrame
df = pd.read_csv("users.csv")

# Shape of the DataFrame (number of rows and columns)
print("Shape :",df.shape)

# Columns in the DataFrame
print("Columns :",df.columns)

# First few rows of the DataFrame
print("Head :\n",df.head())