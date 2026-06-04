employee_info = {
"employee_id": 101,
"name": "Rahul Sharma",
"department": "Data Engineering",
"salary": 75000,
"city": "Hyderabad"
}
print(employee_info)

print(employee_info["department"])
print(employee_info["city"])
employee_info["experience"] = 5
employee_info["salary"] = 85000
employee_info.pop("city")
print( employee_info.keys())
print( employee_info.values())
for key, value in employee_info.items():
    print(key, ":", value)

