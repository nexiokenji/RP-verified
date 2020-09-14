import random


randomnumber=''
for i in range(30):  #30局
    temp=random.randint(500,99999) #產出每個Range內的投注金額randint
    randomnumber+=str(temp)+","
print(randomnumber)
