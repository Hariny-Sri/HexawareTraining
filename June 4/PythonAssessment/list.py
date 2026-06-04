salaries = [45000, 55000, 65000, 75000, 85000]
print(salaries)

print(max(salaries))
print(min(salaries))
print(sum(salaries))
print(sum(salaries))
print(sum(salaries)/len(salaries))
salaries.extend([95000,105000])
print(salaries)
salaries.remove(55000)
print(salaries)
print(sorted(salaries))
print(sorted(salaries, reverse=True))
sortedsalaries = sorted(salaries, reverse=True)
print( sortedsalaries[1])

for salary in salaries:
    if salary > 70000:
        print(salary)
