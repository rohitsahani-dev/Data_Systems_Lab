def add(a,b):
    return a+b

def subtract(a,b):
    return a-b

def multiply(a,b):
    return a*b

def divide(a,b):
    if b==0:
        raise ValueError("Cannot divide by zero")
    return round(a/b, 3)

# Example usage

operations ={
    '*': multiply,
    '-': subtract,
    '+': add,
    '/': divide
}
def calculator():
    print("Welcome to the simple calculator!")
    while True:
        try:
            num1 = float(input("Enter first number: "))
            num2 = float(input("Enter second number: "))

            select = input("Select operation (*,-,+,/): ")

            # Validate the operation selection
            if select not in operations:
                print("Invalid operation")
                continue

            result = operations[select](num1, num2)
            print(f"The result of {num1} {select} {num2} is : {(result)}")

            cont = input("Do you want to perform another calculation? (yes/no): ")

            # Validate the continuation input
            if cont.lower() != "yes":
                print("Thank you for using the calculator!")
                break
        except ValueError as e:
            print(f"Error: {e}")

calculator()