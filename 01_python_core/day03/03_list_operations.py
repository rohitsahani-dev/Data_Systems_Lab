numbers = [1, 2, 3, 4, 5]
# Separate even and odd numbers

evens = []
odds = []
for num in numbers:
    if num%2==0:
        evens.append(num)
    else:
        odds.append(num)

# Print the results
print(f"Even numbers: {evens}")
print(f"Odd numbers: {odds}")
