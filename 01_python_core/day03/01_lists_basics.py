numbers = [10, 20, 30, 40, 50]

# Accessing elements
print(f"First element: {numbers[0]}")
print(f"Second element: {numbers[1]}")
print(f"Third element: {numbers[2]}")
print(f"Last element: {numbers[-1]}")

# Modifying elements
print(f"Original list: {numbers}")
numbers.remove(30)
print(f"After removing 30: {numbers}")
numbers.append(60)
print(f"After appending 60: {numbers}")
numbers.insert(2, 25)
print(f"After inserting 25 at index 2: {numbers}")

