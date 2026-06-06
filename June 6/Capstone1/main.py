import pandas as pd
import numpy as np

orders = pd.read_csv("orders.csv")
print(orders)
print("Total Orders:", len(orders))

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
print("Total Revenue:", orders["Revenue"].sum())
print("Highest Order Value:", orders["Revenue"].max())
print("Lowest Order Value:", orders["Revenue"].min())
print("Average Order Value:", orders["Revenue"].mean())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
print(orders["customer_name"].unique())
print("Unique Customers:", orders["customer_name"].nunique())
customer_revenue = orders.groupby("customer_name")["Revenue"].sum()
print(customer_revenue.idxmax())
print(customer_revenue.max())


orders = pd.read_csv("orders.csv")
print(orders["product"].value_counts())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
print(orders.groupby("product")["Revenue"].sum())

orders = pd.read_csv("orders.csv")
product_qty = orders.groupby("product")["quantity"].sum()
print(product_qty.idxmax())
print(product_qty.max())

orders = pd.read_csv("orders.csv")
product_qty = orders.groupby("product")["quantity"].sum()
print(product_qty.idxmin())
print(product_qty.min())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
print(orders.groupby("category")["Revenue"].sum())

orders = pd.read_csv("orders.csv")
print(orders["city"].value_counts())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
print(orders.groupby("city")["Revenue"].sum())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
city_revenue = orders.groupby("city")["Revenue"].sum()
print(city_revenue.idxmax())
print(city_revenue.max())

orders = pd.read_csv("orders.csv")
products = list(orders["product"])
products.sort()
print(products)

orders = pd.read_csv("orders.csv")
cities = set(orders["city"])
print(cities)

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
city_dict = orders.groupby("city")["Revenue"].sum().to_dict()
print(city_dict)


orders = pd.read_csv("orders.csv")
product_dict = orders.groupby("product")["quantity"].sum().to_dict()
print(product_dict)

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
def calculate_total_revenue():
    return orders["Revenue"].sum()
print(calculate_total_revenue())

# Task 24
orders = pd.read_csv("orders.csv")
def find_top_product():
    return orders.groupby("product")["quantity"].sum().idxmax()
print(find_top_product())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
def find_top_city():
    return orders.groupby("city")["Revenue"].sum().idxmax()
print(find_top_city())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
def find_average_order_value():
    return orders["Revenue"].mean()
print(find_average_order_value())

try:
    orders = pd.read_csv("orders.csv")
    print(orders)
except FileNotFoundError:
    print("File not found")

try:
    orders = pd.read_csv("orders.csv")
    orders["quantity"] = orders["quantity"].astype(int)
    print("Valid Quantity")
except ValueError:
    print("Invalid Quantity")


try:
    orders = pd.read_csv("orders.csv")
    orders["price"] = orders["price"].astype(float)
    print("Valid Price")
except ValueError:
    print("Invalid Price")

orders = pd.read_csv("orders.csv")
values = np.array(orders["quantity"] * orders["price"])
print("Total Revenue:", np.sum(values))
print("Average Revenue:", np.mean(values))
print("Maximum Revenue:", np.max(values))
print("Minimum Revenue:", np.min(values))
print("Standard Deviation:", np.std(values))


orders = pd.read_csv("orders.csv")
print(orders)

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
print(orders)

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
print(orders.sort_values("Revenue", ascending=False).head())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
print(orders.groupby("city")["Revenue"].sum())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
print(orders.groupby("product")["Revenue"].sum())

orders = pd.read_csv("orders.csv")
print(orders.groupby("product")["quantity"].sum().sort_values(ascending=False))

orders = pd.read_csv("orders.csv")
print(orders["city"].value_counts())

orders = pd.read_csv("orders.csv")
orders["Revenue"] = orders["quantity"] * orders["price"]
high_value = orders[orders["Revenue"] > 50000]
high_value.to_csv("high_value_orders.csv", index=False)

orders = pd.read_csv("orders.csv")
electronics = orders[orders["category"] == "Electronics"]
electronics.to_csv("electronics_orders.csv", index=False)

while True:
    print("1. View Orders")
    print("2. Revenue Analysis")
    print("3. Product Analysis")
    print("4. City Analysis")
    print("5. Exit")

    choice = int(input("Enter Choice: "))

    if choice == 1:
        orders = pd.read_csv("orders.csv")
        print(orders)

    elif choice == 2:
        orders = pd.read_csv("orders.csv")
        orders["Revenue"] = orders["quantity"] * orders["price"]
        print(orders["Revenue"].sum())

    elif choice == 3:
        orders = pd.read_csv("orders.csv")
        print(orders.groupby("product")["quantity"].sum())

    elif choice == 4:
        orders = pd.read_csv("orders.csv")
        orders["Revenue"] = orders["quantity"] * orders["price"]
        print(orders.groupby("city")["Revenue"].sum())

    elif choice == 5:
        break
