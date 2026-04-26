import pandas as pd

df = pd.read_csv("users.csv")

print("Average Age:", df["Age"].mean())
print("Max Age:", df["Age"].max())
print("Min Age:", df["Age"].min())