#試著簡單運算紅包機率

#RP = int(input("此等級紅包個數:"))
Players = int(input("此投注等級有幾位玩家:"))
Level0 = float(input("紅包等級L0:"))
Level1 = float(input("紅包等級L1:"))
Level2 = float(input("紅包等級L2:"))
Level3= float(input("紅包等級L3:"))
Level4 = float(input("紅包等級L4:"))
Level5 = float(input("紅包等級L5:"))

RP = Players * 5
LV0  = (RP * Level0) / 100
LV1  = (RP * Level1) / 100
LV2  = (RP * Level2) / 100
LV3  = (RP * Level3) / 100
LV4  = (RP * Level4) / 100
LV5  = (RP * Level5) / 100

print("總數為", RP, "個紅包")
print("紅包等級 L0 大約分配到", LV0, "個紅包")
print("紅包等級 L1 大約分配到", LV1, "個紅包")
print("紅包等級 L2 大約分配到", LV2, "個紅包")
print("紅包等級 L3 大約分配到", LV3, "個紅包")
print("紅包等級 L4 大約分配到", LV4, "個紅包")
print("紅包等級 L5 大約分配到", LV5, "個紅包")

