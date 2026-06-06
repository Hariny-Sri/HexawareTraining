
import pandas as pd

players = pd.read_csv("players.csv")

print(players)

print("Total Players:", len(players))

players = pd.read_csv("players.csv")

top_player = players.loc[players["runs"].idxmax()]
low_player = players.loc[players["runs"].idxmin()]

print(top_player["player_name"], top_player["runs"])
print(low_player["player_name"], low_player["runs"])
print("Average Runs:", players["runs"].mean())

players = pd.read_csv("players.csv")
print(players[players["runs"] > 600])

players = pd.read_csv("players.csv")
print(players[players["runs"] < 500])

players = pd.read_csv("players.csv")
print(players["team"].value_counts())

players = pd.read_csv("players.csv")
print(players.groupby("team")["runs"].sum())

players = pd.read_csv("players.csv")
team_runs = players.groupby("team")["runs"].sum()
print(team_runs.idxmax())
print(team_runs.max())

players = pd.read_csv("players.csv")
team_runs = players.groupby("team")["runs"].sum()
print(team_runs.idxmin())
print(team_runs.min())

players = pd.read_csv("players.csv")
top_fours = players.loc[players["fours"].idxmax()]
print(top_fours["player_name"])
print(top_fours["fours"])

players = pd.read_csv("players.csv")
top_sixes = players.loc[players["sixes"].idxmax()]
print(top_sixes["player_name"])
print(top_sixes["sixes"])

players = pd.read_csv("players.csv")
print(players["fours"].sum())

players = pd.read_csv("players.csv")
print(players["sixes"].sum())

players = pd.read_csv("players.csv")
names = list(players["player_name"])
names.sort()
print(names)

players = pd.read_csv("players.csv")
teams = set(players["team"])
print(teams)

players = pd.read_csv("players.csv")
team_dict = players.groupby("team")["runs"].sum().to_dict()
print(team_dict)

players = pd.read_csv("players.csv")
player_dict = dict(zip(players["player_name"], players["runs"]))
print(player_dict)

players = pd.read_csv("players.csv")

def find_top_scorer():
    return players.loc[players["runs"].idxmax()]["player_name"]

print(find_top_scorer())

players = pd.read_csv("players.csv")

def calculate_average_runs():
    return players["runs"].mean()

print(calculate_average_runs())

players = pd.read_csv("players.csv")

def find_best_team():
    return players.groupby("team")["runs"].sum().idxmax()

print(find_best_team())

players = pd.read_csv("players.csv")

def find_total_boundaries():
    return players["fours"].sum() + players["sixes"].sum()

print(find_total_boundaries())

try:
    players = pd.read_csv("players.csv")
    print(players)
except FileNotFoundError:
    print("File not found")

try:
    players = pd.read_csv("players.csv")
    players["runs"] = players["runs"].astype(int)
    print("Valid Runs")
except ValueError:
    print("Invalid Runs")

try:
    players = pd.read_csv("players.csv")
    players["matches"] = players["matches"].astype(int)
    print("Valid Matches")
except ValueError:
    print("Invalid Matches")

import numpy as np

players = pd.read_csv("players.csv")

runs = np.array(players["runs"])

print("Total Runs:", np.sum(runs))
print("Average Runs:", np.mean(runs))
print("Maximum Runs:", np.max(runs))
print("Minimum Runs:", np.min(runs))
print("Standard Deviation:", np.std(runs))
print("Median:", np.median(runs))

players = pd.read_csv("players.csv")
print(players)

players = pd.read_csv("players.csv")
print(players.sort_values("runs", ascending=False).head())

players = pd.read_csv("players.csv")
print(players.sort_values("runs", ascending=False))

players = pd.read_csv("players.csv")
print(players.groupby("team")["runs"].sum())

players = pd.read_csv("players.csv")
print(players.groupby("team")["runs"].mean())

players = pd.read_csv("players.csv")
print(players[players["runs"] > 600])

players = pd.read_csv("players.csv")
team_runs = players.groupby("team")["runs"].sum()
print(team_runs.idxmax())

players = pd.read_csv("players.csv")

team_runs = players.groupby("team")["runs"].sum()

with open("cricket_report.txt", "w") as file:
    file.write("Total Players: " + str(len(players)) + "\n")
    file.write("Total Runs: " + str(players["runs"].sum()) + "\n")
    file.write("Average Runs: " + str(players["runs"].mean()) + "\n")
    file.write("Highest Scorer: " + str(players.loc[players["runs"].idxmax()]["player_name"]) + "\n")
    file.write("Lowest Scorer: " + str(players.loc[players["runs"].idxmin()]["player_name"]) + "\n")
    file.write("Team Wise Runs:\n")
    file.write(str(team_runs) + "\n")
    file.write("Top 5 Players:\n")
    file.write(str(players.sort_values("runs", ascending=False).head()) + "\n")
    file.write("Most Fours: " + str(players.loc[players["fours"].idxmax()]["player_name"]) + "\n")
    file.write("Most Sixes: " + str(players.loc[players["sixes"].idxmax()]["player_name"]) + "\n")

players = pd.read_csv("players.csv")

top_players = players[players["runs"] > 600]

top_players.to_csv("top_players.csv", index=False)

players = pd.read_csv("players.csv")

summary = players.groupby("team").agg(
    Total_Runs=("runs", "sum"),
    Average_Runs=("runs", "mean"),
    Player_Count=("player_id", "count")
)

summary.to_csv("team_summary.csv")

while True:

    print("1. Player Analysis")
    print("2. Team Analysis")
    print("3. Boundary Analysis")
    print("4. Export Reports")
    print("5. Exit")

    choice = int(input("Enter Choice: "))

    if choice == 1:
        players = pd.read_csv("players.csv")
        print(players.sort_values("runs", ascending=False))

    elif choice == 2:
        players = pd.read_csv("players.csv")
        print(players.groupby("team")["runs"].sum())

    elif choice == 3:
        players = pd.read_csv("players.csv")
        print("Total Fours:", players["fours"].sum())
        print("Total Sixes:", players["sixes"].sum())

    elif choice == 4:
        print("Reports Exported")

    elif choice == 5:
        break
