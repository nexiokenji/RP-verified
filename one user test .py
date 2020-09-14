#Scenario: 2000個 User , 30000筆投注量
#OP setting: 累積達5局, 每局 5 元以上 --> 可獲得 1個紅包, 最多可獲得 5個紅包 ; 扣除投注金額最高 3 筆
#OP setting: 投注等級 L0 :  5 -- 10

import csv


  #餘數公式計算:
def AVERAGE(data_list, round, baseNumber, diffModAndBase):
    if len(data_list)==0:
        return 0
    else:
      loopStart = round * baseNumber
      loopEnd = (round+1) * baseNumber - diffModAndBase
      print("round:", round, ", baseNumber:", baseNumber, ", diffModAndBase:", diffModAndBase, ", loopStart:", loopStart, ", loopEnd:", loopEnd)
      sumNumber = 0
      for i in range(loopStart, loopEnd):
        sumNumber += data_list[i]
        print("data_list[", i, "]:", data_list[i], ", sumNumber:", sumNumber)
      return sumNumber/baseNumber-diffModAndBase

#打開CSV 檔 並搜尋單一user
with open('2000user 3wBet.csv', newline='') as csvfile:
  reader = csv.reader(csvfile)
  betList = []
  data = {}
  for row in reader:
    if row[0] == "User0013":   #填寫單一userID
      if(float(row[1])>=5):
        betList.append(float(row[1]))
      print(row)


    #扣除最高 2 筆 或 3 筆 
  for i in range(2):
      #扣除最高幾筆(2) 或 (3)
    betList.remove(max(betList))

  baseNumber = 6    #幾個為一組進行平均 
  divide = len(betList)//baseNumber
  mod = len(betList) % baseNumber
  
  
  for k in range(divide):
    rs = AVERAGE(betList, k, baseNumber, 0)
    print("平均投注額為:",rs)
  rs = AVERAGE(betList, divide, baseNumber, baseNumber-mod)
  print(rs)
  
  print("扣除最高三筆後:",betList)
  
