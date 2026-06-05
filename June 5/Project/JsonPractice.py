import  json
employees = [

    {
        "employee_id": 101,
        "name": "Rahul Sharma",
        "department": "Data Engineering",
        "salary": 75000,
        "city": "Hyderabad"
    },

    {
        "employee_id": 102,
        "name": "Priya Reddy",
        "department": "AI Engineering",
        "salary": 85000,
        "city": "Bangalore"
    },

    {
        "employee_id": 103,
        "name": "Amit Kumar",
        "department": "Data Engineering",
        "salary": 65000,
        "city": "Mumbai"
    },

    {
        "employee_id": 104,
        "name": "Sneha Patel",
        "department": "Data Science",
        "salary": 95000,
        "city": "Chennai"
    },

    {
        "employee_id": 105,
        "name": "Farhan Ali",
        "department": "Cloud Engineering",
        "salary": 80000,
        "city": "Delhi"
    }

]
with open("employees.json","w") as file:
    json.dump(employees,file ,indent=4)



with open("employees.json","r") as file:
    employees = json.load(file)
print(employees)


for employee in employees:
    print((employee))

for employee in employees:
    print(employee["name"])
print(len(employees))

highest_salary = 0
for employee in employees:
    if employee["salary"] > highest_salary:
        highest_salary = employee["salary"]
print(highest_salary)
avgs=0
for employee in employees:
    avgs = avgs+employee["salary"]

print(avgs/len(employees))

for employee in employees:
    if employee["department"]=="Data Engineering":
        print(employee)

for employee in employees:
    if employee["salary"]>80000:
        print(employee)
for emp in employees:
    if emp["employee_id"] == 101:
        emp["salary"] = 78000
new_employee = { "employee_id": 106,
                 "name": "Neha Singh",
                 "department": "AI Engineering",
                 "salary": 72000,
                 "city": "Hyderabad" }
employees.append(new_employee)
employee_id = 103
for emp in employees:
    if emp["employee_id"] == employee_id:
        employees.remove(emp)
        break
print("After Deleting Employee")
for emp in employees:
    print(emp)

