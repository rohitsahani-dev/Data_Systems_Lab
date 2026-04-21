name = input("Enter your name: ")
age = int(input("Enter your age: "))

print(f"Hello {name}, you are {age} years old.")

try:
    age = int(input("Enter your age: "))
except ValueError:
    print("Invalid age input")