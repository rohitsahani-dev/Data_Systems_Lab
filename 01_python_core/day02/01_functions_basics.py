# This function takes a name as input and returns a greeting message.

def greet(name):
    return f"Hello, {name}!"

def square(n):
    return n*n

def is_even(n):
    return n % 2 == 0

#  Example usage
user = input("Enter your name: ")
print(greet(user))

# Example usage of the square function
number = int(input("Enter a number to find its square:"))
print(f"The square of {number} is {square(number)}")

# Example usage of the is_even function
number = int(input(f"Enter a number to check if the number is even or odd :"))
if is_even(number):
    print(f"{number} is an even number.")
else:
    print(f"{number} is an odd number.  ")