import pandas as pd

df = pd.read_csv("users.csv")

df["Experience"] = ["Beginner", "Intermediate", "Intermediate", "Advanced"]

print(df)