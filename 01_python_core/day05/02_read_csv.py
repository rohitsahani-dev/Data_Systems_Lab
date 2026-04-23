import csv

with open("users.csv","r") as file:
    reader = csv.reader(file)

    for row in reader:
        print(row)
print("CSV file read successfully!")