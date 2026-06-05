import json
file=open("employees.txt","r")
data=file.read()
print(data)

print(file.readline())

line=file.readlines()
print(line)

with open("employees.txt","r") as file:
    data=file.read()
    print(data)
file.close()

with open("employee1.txt","w") as file:
    file.write("Rahul\n")
    file.write("Priya\n")

with open("employee1.txt","a") as file:
    file.write("Amit\n")

