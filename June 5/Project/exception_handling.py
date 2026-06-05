try:
    a = 10
    b = 0
    print(a / b)

except:
    print("Error Occurred")

print("Program Completed")


# Specific Exception Example
try:
    a = 10
    b = 0
    print(a / b)

except ZeroDivisionError:
    print("Cannot divide by zero")


# Another Example
try:
    age = int(input("Enter Age: "))
    print(age)

except ValueError:
    print("Please enter numeric value")

# Specific Exception

try:
    a = 10
    b = 8
    print(a / b)

except ZeroDivisionError:
    print("Cannot divide by zero")


# Another Example

try:
    age = int(input("Enter Age: "))
    print(age)

except ValueError:
    print("Please enter numeric value")

try:
    age = int(input("Enter Age: "))
    print(100 / age)

except ValueError:
    print("Invalid Number")

except ZeroDivisionError:
    print("Age cannot be zero")

# Specific Exception

try:
    a = 10
    b = 8
    print(a / b)

except ZeroDivisionError:
    print("Cannot divide by zero")


# Another Example

try:
    age = int(input("Enter Age: "))
    print(age)

except ValueError:
    print("Please enter numeric value")

# Finally Block Example

try:
    print(10 / 0)

except:
    print("Error")

finally:
    print("Connection Closed")


# Raise Error Example

salary = -1000

if salary < 0:
    raise ValueError("Salary cannot be negative")