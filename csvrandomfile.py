import random
import csv

# f = open("CSVtest.csv", "a", newline="")

betInfo = []
userCount = 20
betCount = 3

# 放置每個玩家剩餘次數
userCountMap = {}
for i in range(userCount):
  for j in range(betCount):
    betInfo.append(("user" + str(i), random.randint(50, 100)))

random.shuffle(betInfo)
with open("CSVtest.csv", 'w', newline='') as output:
  writer = csv.writer(output)
  for i in range(userCount * betCount):
    print(betInfo[i][0],",",betInfo[i][1])
    writer.writerows(betInfo)
output.close()