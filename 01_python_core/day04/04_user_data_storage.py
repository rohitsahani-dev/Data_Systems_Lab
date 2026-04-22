name = input("Enter your name: ")
age = int(input("Enter your age: "))
skill = input("Enter your skill: ")

with open("user_data.txt", "a") as file:
    file.write(f"Name: {name}, Age: {age}, Skill: {skill}\n")

print("User data stored successfully!")