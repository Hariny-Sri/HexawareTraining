employees = [
{
"id": 101,
"name": "Rahul",
"department": "IT",
"salary": 50000
},
{
"id": 102,
"name": "Priya",
"department": "HR",
"salary": 70000
},
{
"id": 103,
"name": "Amit",
"department": "IT",
"salary": 60000
},
{
"id": 104,
"name": "Sneha",
"department": "Finance",
"salary": 80000
},
{
"id": 105,
"name": "Farhan",
"department": "IT",
"salary": 90000
}
]

for emp in employees:
    print(emp["name"])

for emp in employees:
    if emp["department"] == "IT":
        print(emp)

highest_salary_employee = max(employees, key=lambda x: x["salary"])
print( highest_salary_employee)

lowest_salary_employee = min(employees, key=lambda x: x["salary"])
print( lowest_salary_employee)

average_salary = sum(emp["salary"] for emp in employees) / len(employees)
print( average_salary)

total_salary = sum(emp["salary"] for emp in employees)
print( total_salary)


for emp in employees:
    if emp["salary"] > 70000:
        print(emp)

it_count = sum(1 for emp in employees if emp["department"] == "IT")
print(it_count)

sorted_employees = sorted(
    employees,
    key=lambda x: x["salary"],
    reverse=True
)

for emp in sorted_employees:
    print(emp["name"], "-", emp["salary"])

second_highest = sorted_employees[1]
print(second_highest)

departments = set(emp["department"] for emp in employees)
print(departments)