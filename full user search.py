import csv

def AVERAGE(data_list):
    if len(data_list)==0:
        return 0
    if len(data_list)>2:
        # 刪除幾筆
        data_list.remove(max(data_list))
        data_list.remove(max(data_list))
        average_data = float(sum(data_list))/len(data_list)
        return average_data

with open('2000users30wBet.csv', newline='') as csvfile:
  reader = csv.reader(csvfile)
  data = {}
  for row in reader:
    if(row[1]=='Bet'):
      print('head')
    elif(data.get(row[0]) == None):
      data[row[0]]=[float(row[1])]
    else:
      if(float(row[1])>=5):
        data.get(row[0]).append(float(row[1]))
      
      
  for k in data.keys():
    rs = AVERAGE(data.get(k))
    print('user:{}, arr:{}, avg:{}, result:{}'.format(k, data.get(k), rs, rs>=5 and rs<=10))
