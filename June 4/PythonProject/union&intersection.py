from unittest import result

set1={"Python","SQL"}
set2={"Java","C++"}
result=set1.union(set2)
print(result)

result=set1.intersection(set2)
print(result)

result=set1.difference(set2)
print(result)
result=set1.symmetric_difference(set2)
print(result)