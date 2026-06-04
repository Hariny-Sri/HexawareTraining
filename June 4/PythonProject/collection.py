cities=["hyderabad","kentucky","los angeles"]
print(cities[0])
print(cities[1])
print(cities[2])

print(cities[-1])
print(cities[-2])

#update
cities[1]="new york"
print(cities[1])

#append
cities.append("chennai")
print(cities)

#insert
cities.insert(2,"korea")
print(cities)

#multiple value
cities.extend(["kerala","mumbai"])
print(cities)

#remove
cities.remove("kerala")
print(cities)

print("--------------------")
cities.pop(1)
print(cities)

del cities[0]
print(cities)

cities.clear()
print(cities)

print(len(cities))

#membership
print("mumbai" in cities)
print("chennai" in cities)

#print(cities.index("mumbai"))
cities.sort()

cities = ("Hyderabad", "Mumbai", "Delhi", "Chennai", "Pune")  # Tuple

print(cities)

# print(cities[6])  # Error: Index out of range

print(cities[1])
print(cities[-1])
print(cities[-2])

print(len(cities))

print(cities[1:4])

# cities[1] = "Bangalore"  # Error: Tuples are immutable

# Tuple creation
employee = (131, "Rahul", 75000)   # Packing

print(employee)

# Unpacking
emp_id, emp_name, salary = employee

print(emp_id)
print(emp_name)
print(salary)

# Function returning multiple values
def get_employee():
    return 101, "Rahul", 75600

result = get_employee()

print(result)

# Each row represented as a tuple
record = (
    101,
    "Rahul",
    "Hyderabad",
    75000
)

print(record)

