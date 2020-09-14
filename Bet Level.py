from interval import Interval

Bet = ['BetL0, BetL1, BetL2, BetL3']
BetL0 = Interval(5, 10)
BetL1 = Interval(10, 50)
BetL2 = Interval(50, 100)
BetL3 = Interval(100, 500)

if Bet == AVERAGE(betList):
    print("平均投注等級為:", AVERAGE(betList) in Bet)

