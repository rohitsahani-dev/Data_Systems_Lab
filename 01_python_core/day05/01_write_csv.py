import csv

data = [
    ["Name", "Age", "Skill"],
    ["Rohit", 20, "Python"],
    ["Aarav", 22, "JavaScript"],
    ["Sita", 21, "Data Analysis"]
]

with open("users.csv","w",newline ="") as file:
    writer = csv.writer(file)
    writer.writerows(data)

print("CSV file created successfully.")
