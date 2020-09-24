import csv

#餘數公式計算:
def AVERAGE(data_list, baseNumber, removeCount):
    if len(data_list)==0:
        return 0
    else:
      return sum(data_list) / (baseNumber-removeCount)

  #投注等級計算
def LEVEL(averageNumber):
  if averageNumber >= 5 and averageNumber <= 9.99:
    return "投注等級 L0"
  elif averageNumber >= 10 and averageNumber <= 49.99:
    return "投注等級 L1"
  elif averageNumber >= 50 and averageNumber <= 99.99:
    return "投注等級 L2"
  elif averageNumber >= 100 and averageNumber <= 500:
    return "投注等級 L3"
  else:
    return "不在範圍內"

#打開CSV 檔 並搜尋單一user
with open('960users144000Bets.csv', newline='') as csvfile:     #請輸入檔案名稱
  reader = csv.reader(csvfile)
  betList = []
  data = {}
  for row in reader:
    if row[0] == "user0401":   #填寫搜尋的單一userID
      if(float(row[1])>=5):
        betList.append(float(row[1]))
  print("原始資料: ", "\n", betList, "\n")  


  #baseNumber幾個為一組，15表示15局為1個紅包
  baseNumber = 30
  #removeCount為每組要刪除幾個最高數值，3表示每組刪除3個最高數值
  removeCount = 3
  betListLength = len(betList)
  divide = betListLength//baseNumber
  mod = betListLength % baseNumber
  count = 0

  for k in range(divide):
    betListTemp = betList[baseNumber*k:(baseNumber*k)+baseNumber]
    print("第", k+1, "個紅包投注額: ", "\n", betListTemp)

    for i in range(removeCount):
      betListTemp.remove(max(betListTemp))
    print("第", k+1, "個紅包投注額 扣掉最高三組後：", "\n", betListTemp)

    averageNumber = AVERAGE(betListTemp, baseNumber, removeCount)
    print("總和: ", sum(betListTemp), ";", "平均: ", AVERAGE(betListTemp, baseNumber, removeCount), ";", LEVEL(averageNumber), "\n")

    count += 1

  if mod != 0:
    print("未湊滿不計入計算的值: ", "\n", betList[count*baseNumber:betListLength])