import csv

with open("users.csv","a",newline="") as file:
    writer = csv.writer(file)
    writer.writerow(["hari",23,"Machine learning"])

print("New user added to the csv file successfully.")