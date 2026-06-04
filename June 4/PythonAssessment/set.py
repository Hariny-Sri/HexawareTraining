batch_a = {
"Rahul",
"Priya",
"Amit",
"Sneha",
"Farhan"
}
batch_b = {
"Priya",
"Sneha",
"Neha",
"Arjun",
"Farhan"
}
print(batch_a.intersection(batch_b))
print(batch_a.difference(batch_b))
print(batch_b.difference(batch_a))
print(batch_a.union(batch_b))
print(batch_a.symmetric_difference(batch_b))