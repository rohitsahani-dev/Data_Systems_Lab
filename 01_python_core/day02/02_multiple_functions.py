def add(a,b):
    return a+b

def subtract(a,b):
    return a-b

def multiply(a,b):
    return a*b

def divide(a,b):
    if b==0:
        return "Error: Division by zero is not possible."
    return round(a/b, 3)

# Example usage
while True:
    try:
        num1 = float(input("Enter first number: "))
        num2 = float(input("Enter second number: "))

        select = input("Select operation (*,-,+,/): ")

        # Validate the operation selection
        while select not in ['+', '-', '*', '/']:
            print("Invalid selection. Please select a valid operation.")
            select = input("Select operation (*,-,+,/): ")

        if select == '+':
            print(f"{num1} + {num2} = {add(num1,num2)}")
        elif select == '-':
            print(f"{num1} - {num2} = {subtract(num1,num2)}")
        elif select == '*':
            print(f"{num1} * {num2} = {multiply(num1,num2)}")
        elif select == '/':
            print(f"{num1} / {num2} = {divide(num1,num2)}")
        cont = input("Do you want to perform another calculation? (yes/no): ")

        # Validate the continuation input
        if 'yes' not in cont.lower():
            print("Thank you for using the calculator!")
            break
    except ValueError:
        print("Invalid input. Please enter numeric values.")