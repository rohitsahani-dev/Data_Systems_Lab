
while True:
    numbers = []
    try:
        num = int(input("How many numbers do you want to enter?: "))

        if num <= 0:
           print("Please enter only Positive numbers")
           continue

        for i in range(num):
            number = float(input(f"Enter number {i+1}: "))
            numbers.append(number)
        
        total = sum(numbers)
        avg = total / len(numbers)

        print(f"Your list: {numbers}")
        print(f"Sum: {total}")
        print(f"Average: {avg:.2f}")

    except ValueError:
        print("Invalid input. Please enter a valid number.") 
        continue

    # Ask the user if they want to try again
    cont = input("Do you want to try again? (yes/no): ")

    if cont.strip().lower() != "yes":
     print("Goodbye!")
     break