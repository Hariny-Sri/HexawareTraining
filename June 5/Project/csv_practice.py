import csv
from itertools import count

with open("empcsv.csv", "r") as file:
    reader = csv.reader(file)
    for row in reader:
        print(row)
    for row in reader:
        print(row[1])

import csv
count=0
with open("empcsv.csv", "r") as file:
    reader = csv.reader(file)
    next(reader)
    for row in reader:
        count += 1



employees = []
with open("empcsv.csv", "r") as file:
    next(file)

    for line in file:
        data = line.strip().split(",")
        employees.append(data)

highest = int(employees[0][3])
lowest = int(employees[0][3])
total = 0

for emp in employees:
    salary = int(emp[3])

    if salary > highest:
        highest = salary

    if salary < lowest:
        lowest = salary

    total = total + salary

average = total / len(employees)

print("Highest Salary =", highest)
print("Lowest Salary =", lowest)
print("Average Salary =", average)
print("Total Salary =", total)

for emp in employees:
    if emp[4] == "Hyderabad":
        print(emp[1])


for emp in employees:
    if emp[2] == "AI Engineering":
        print(emp[1])

for emp in employees:
    if int(emp[3]) > 80000:
        print(emp[1], emp[3])