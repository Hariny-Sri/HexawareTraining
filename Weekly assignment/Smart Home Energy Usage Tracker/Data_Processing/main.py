import pandas as pd
import numpy as np

# Sample Energy Dataset
data = [
    (101, 1, "2026-06-01 08:00:00", 2.5),
    (102, 2, "2026-06-01 09:00:00", 4.0),
    (103, 3, "2026-06-01 10:00:00", 6.5),
    (101, 1, "2026-06-01 18:00:00", 3.2),
    (102, 2, "2026-06-01 19:00:00", 5.1),
    (103, 3, "2026-06-01 20:00:00", 2.7)
]

columns = [
    "device_id",
    "room_id",
    "timestamp",
    "energy_kwh"
]

df = pd.DataFrame(data, columns=columns)

# Convert timestamp to datetime
df["timestamp"] = pd.to_datetime(df["timestamp"])

# Convert energy to float
df["energy_kwh"] = pd.to_numeric(
    df["energy_kwh"],
    errors="coerce"
)

# Remove missing values
df = df.dropna()

print("Cleaned Dataset")
print(df)

# Total energy per device
device_total = df.groupby("device_id")["energy_kwh"].sum()

print("\nTotal Energy Per Device")
print(device_total)

# Average energy per device
device_average = df.groupby("device_id")["energy_kwh"].mean()

print("\nAverage Energy Per Device")
print(device_average)

# Room-level summary
room_summary = df.groupby("room_id")["energy_kwh"].sum()

print("\nRoom Level Summary")
print(room_summary)

# Overall statistics using NumPy
total_energy = np.sum(df["energy_kwh"])

average_energy = np.mean(df["energy_kwh"])

print("\nOverall Total Energy:", total_energy)
print("Overall Average Energy:", average_energy)