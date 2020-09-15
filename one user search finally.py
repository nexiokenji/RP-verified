import csv

#餘數公式計算:
def AVERAGE(data_list, baseNumber, removeCount):
    if len(data_list)==0:
        return 0
    else:
      return sum(data_list) / (baseNumber-removeCount)

#打開CSV 檔 並搜尋單一user
with open('2000users 15wBet.csv', newline='') as csvfile:
  reader = csv.reader(csvfile)
  betList = []
  data = {}
  for row in reader:
    if row[0] == "user0928":   #填寫單一userID
      if(float(row[1])>=5):
        betList.append(float(row[1]))
  print("原始資料: ", "\n", betList, "\n")  


  #baseNumber幾個為一組，15表示15局為1個紅包
  baseNumber = 15
  #removeCount為每組要刪除幾個最高數值，3表示每組刪除3個最高數值
  removeCount = 3
  betListLength = len(betList)
  divide = betListLength//baseNumber
  mod = betListLength % baseNumber
  count = 0

  for k in range(divide):
    betListTemp = betList[count*k:(count*k)+baseNumber]
    print("第", k+1, "組: ", "\n", betListTemp)

    for i in range(removeCount):
      betListTemp.remove(max(betListTemp))
    print("第", k+1, "組 扣掉最高三組：", "\n", betListTemp)

    print("總和: ", sum(betListTemp), "平均: ", AVERAGE(betListTemp, baseNumber, removeCount), "\n")

    count += 1

  if mod != 0:
    print("未湊滿不計入計算的值: ", "\n", betList[count*baseNumber:betListLength])