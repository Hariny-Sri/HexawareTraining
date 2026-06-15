import pandas as pd
import numpy as np

df = pd.read_csv("expenses.csv")

df["amount"] = pd.to_numeric(
    df["amount"],
    errors="coerce"
)

df["date"] = pd.to_datetime(
    df["date"]
)

df = df.dropna()

df["month"] = df["date"].dt.to_period("M")

print("Cleaned Data")
print(df)

monthly_total = np.sum(df["amount"])

monthly_avg = np.mean(df["amount"])

print("\nTotal Expense")
print(monthly_total)

print("\nAverage Expense")
print(monthly_avg)

category_summary = df.groupby(
    "category"
)["amount"].sum()

print("\nCategory Summary")
print(category_summary)

monthly_summary = df.groupby(
    ["month","category"]
)["amount"].sum().unstack().fillna(0)

print("\nMonthly Summary")
print(monthly_summary)