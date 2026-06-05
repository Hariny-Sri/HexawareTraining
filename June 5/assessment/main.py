with open("Employees.txt", "r") as file:
    print(file.read())

with open("employees.txt", "r") as file:
    for line in file:
        print(line.strip())

with open("Employees.txt", "r") as file:
    print(len(file.readlines()))

with open("employees.txt", "r") as file:
    print(file.read())

with open("employees.txt", "r") as file:
    for line in file:
        print(line.strip())

with open("employees.txt", "r") as file:
    count = len(file.readlines())

print("Total Employees =", count)

with open("employees.txt", "r") as file:
    for line in file:
        data = line.strip().split(",")
        print(data[1])

with open("employees.txt", "r") as file:
    for line in file:
        data = line.strip().split(",")
        if data[4] == "Hyderabad":
            print(data[1])

with open("employees.txt", "r") as file:
    for line in file:
        data = line.strip().split(",")
        if data[4] == "Bangalore":
            print(data[1])

with open("employees.txt", "r") as file:
    for line in file:
        data = line.strip().split(",")
        if int(data[3]) > 80000:
            print(data[1], data[3])

with open("employees.txt", "r") as file:
    salaries = []
    for line in file:
        salaries.append(int(line.strip().split(",")[3]))

print("Highest Salary =", max(salaries))

with open("employees.txt", "r") as file:
    salaries = []
    for line in file:
        salaries.append(int(line.strip().split(",")[3]))

print("Lowest Salary =", min(salaries))

with open("employees.txt", "r") as file:
    salaries = []
    for line in file:
        salaries.append(int(line.strip().split(",")[3]))

print("Average Salary =", sum(salaries) / len(salaries))

with open("employees.txt", "r") as file:
    salaries = []
    for line in file:
        salaries.append(int(line.strip().split(",")[3]))

print("Total Salary =", sum(salaries))

count = 0

with open("employees.txt", "r") as file:
    for line in file:
        if line.strip().split(",")[2] == "AI Engineering":
            count += 1

print("AI Engineering =", count)

count = 0

with open("employees.txt", "r") as file:
    for line in file:
        if line.strip().split(",")[2] == "Data Engineering":
            count += 1

print("Data Engineering =", count)

with open("employees.txt", "r") as file:
    for line in file:
        data = line.strip().split(",")
        if data[2] == "AI Engineering":
            print(data[1])

with open("employees.txt", "r") as file:
    with open("high_salary_employees.txt", "w") as out:
        for line in file:
            if int(line.strip().split(",")[3]) > 80000:
                out.write(line)

with open("employees.txt", "r") as file:
    with open("hyderabad_employees.txt", "w") as out:
        for line in file:
            if line.strip().split(",")[4] == "Hyderabad":
                out.write(line)

cities = set()

with open("employees.txt", "r") as file:
    for line in file:
        cities.add(line.strip().split(",")[4])

for city in cities:
    print(city)

print("Total Unique Cities =", len(cities))

departments = {}

with open("employees.txt", "r") as file:
    for line in file:
        dept = line.strip().split(",")[2]
        departments[dept] = departments.get(dept, 0) + 1

for dept, count in departments.items():
    print(dept, "=", count)

highest_salary = 0
employee_name = ""

with open("employees.txt", "r") as file:
    for line in file:
        data = line.strip().split(",")
        salary = int(data[3])

        if salary > highest_salary:
            highest_salary = salary
            employee_name = data[1]

print(employee_name)
print(highest_salary)

with open("employees.txt", "r") as file:
    employees = file.readlines()

total_employees = len(employees)

salaries = []

for line in employees:
    salaries.append(int(line.strip().split(",")[3]))

highest_salary = max(salaries)
lowest_salary = min(salaries)
average_salary = sum(salaries) / len(salaries)
total_salary = sum(salaries)

with open("employee_report.txt", "w") as report:
    report.write(f"Total Employees : {total_employees}\n")
    report.write(f"Highest Salary : {highest_salary}\n")
    report.write(f"Lowest Salary : {lowest_salary}\n")
    report.write(f"Average Salary : {average_salary}\n")
    report.write(f"Total Salary : {total_salary}\n")

