import pandas as pd

df = pd.read_csv("users.csv")

# Select a single column
print(df["Name"])
print(df["Age"])

print(df[df["Age"] > 21])