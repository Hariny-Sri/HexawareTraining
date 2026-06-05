import pandas as pd
from pandas import read_csv

data={
    "employee_id":[101,102,103],
    "name":["Rahul","Priya","Amit"],
    "salary":[75000,85000,65000],

}
df = pd.DataFrame(data)
print(df)

df,read_csv("empcsv.csv")
print(df)
print(df.head())
print(df.tail())
print(df.dtypes)
print(df.info())
print(df.describe())
print(df["name"])
print(df[["name","salary"]])