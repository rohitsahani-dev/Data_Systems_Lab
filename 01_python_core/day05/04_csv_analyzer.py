import csv

ages = []
with open("users.csv","r") as file:
    reader = csv.reader(file)

    next(reader)

    for row in reader:
        ages.append(int(row[1]))

print("Ages of users: ",ages)
print("Average age of users: ",sum(ages)/len(ages))