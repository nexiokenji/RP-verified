#Scenario: 2000個 User , 30000筆投注量
#OP setting: 累積達15局, 每局 5 元以上 --> 可獲得 1個紅包, 最多可獲得 5個紅包 ; 扣除投注金額最高 3 筆
#OP setting: 投注等級 L0 :  5 -- 10

import csv

#餘數公式計算:
def AVERAGE(data_list):
    if len(data_list)==0:
        return 0
    else:
        average_data = float(sum(data_list))/len(data_list)
        return average_data

#打開CSV 檔 並搜尋單一user
with open('kenji.csv', newline='') as csvfile:
  reader = csv.reader(csvfile)
  betList = []
  data = {}
  for row in reader:
    if row[0] == "user0005":   #填寫單一userID
      if(float(row[1])>=5):   #filter 5元以下的投注金額
        betList.append(float(row[1]))
      print(row)

#扣除最高 2 筆 或 3 筆 
  betList.sort()
  for i in range(3):    #扣除最高幾筆(2) 或 (3)
    betList.pop()
  
  for k in data.keys():
    rs = AVERAGE(data.get(k))
  

  print("扣除最高三筆後:",betList)
  print("平均數為：",AVERAGE(betList))
  print("平均數是否符合投注等級:", AVERAGE(betList)>=5 and AVERAGE(betList)<10)




