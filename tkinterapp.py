import tkinter as tk
import math
from tkinter import *

window = tk.Tk()

#設定視窗標題與 大小顏色背景

window.title('Redpacket Approx')
window.geometry('800x600')
window.configure(background='#323232')
window.iconbitmap('Nexio.ico')




str=StringVar()
def calculate_RP_number():
    players = int(players_entry.get())
    Level0 = float(Level0_entry.get())
    Level1 = float(Level1_entry.get())
    Level2 = float(Level2_entry.get())
    Level3 = float(Level3_entry.get())
    Level4 = float(Level4_entry.get())
    Level5 = float(Level5_entry.get())

    RP = players * 5
    LV0  = (RP * Level0) / 100
    LV1  = (RP * Level1) / 100
    LV2  = (RP * Level2) / 100
    LV3  = (RP * Level3) / 100
    LV4  = (RP * Level4) / 100
    LV5  = (RP * Level5) / 100

    result = ('總紅包數為: {0}個玩家\n紅包等級LV0約 {1}個紅包\n紅包等級LV1約: {2}個紅包\n紅包等級LV2約 {3}個紅包\n紅包等級LV3約 {4}個紅包\n紅包等級LV4約 {5}個紅包\n紅包等級LV5約 {6}個紅包').format(RP, LV0, LV1, LV2, LV3, LV4, LV5)

    str.set(result)
 

    
header_label = tk.Label(window, text='Redpacket Approx', background='#323232', fg='skyblue')
header_label.pack()
header_label.configure(font='微軟正黑體 25')
header_label.pack()

#確認幾位玩家
players_frame = tk.Frame(window)
players_frame.pack(side=tk.TOP)
players_label = tk.Label(players_frame, text='請問有幾位玩家', background='#323232', fg='white', font=(None, 20))
players_label.pack(side=tk.LEFT)
players_entry = tk.Entry(players_frame)
players_entry.pack(side=tk.LEFT)

#L0紅包等級
Level0_frame = tk.Frame(window)
Level0_frame.pack(side=tk.TOP)
Level0_label = tk.Label(Level0_frame, text='紅包等級L0(%)', background='#323232', fg='white', font=(None, 20))
Level0_label.pack(side=tk.LEFT)
Level0_entry = tk.Entry(Level0_frame)
Level0_entry.pack(side=tk.LEFT)
Level0_label = tk.Label(Level0_frame, text='%')

#L1紅包等級
Level1_frame = tk.Frame(window)
Level1_frame.pack(side=tk.TOP)
Level1_label = tk.Label(Level1_frame, text='紅包等級L1(%)', background='#323232', fg='white', font=(None, 20))
Level1_label.pack(side=tk.LEFT)
Level1_entry = tk.Entry(Level1_frame)
Level1_entry.pack(side=tk.LEFT)


#L2紅包等級
Level2_frame = tk.Frame(window)
Level2_frame.pack(side=tk.TOP)
Level2_label = tk.Label(Level2_frame, text='紅包等級L2(%)', background='#323232', fg='white', font=(None, 20))
Level2_label.pack(side=tk.LEFT)
Level2_entry = tk.Entry(Level2_frame)
Level2_entry.pack(side=tk.LEFT)


#L3紅包等級
Level3_frame = tk.Frame(window)
Level3_frame.pack(side=tk.TOP)
Level3_label = tk.Label(Level3_frame, text='紅包等級L3(%)', background='#323232', fg='white', font=(None, 20))
Level3_label.pack(side=tk.LEFT)
Level3_entry = tk.Entry(Level3_frame)
Level3_entry.pack(side=tk.LEFT)


#L4紅包等級
Level4_frame = tk.Frame(window)
Level4_frame.pack(side=tk.TOP)
Level4_label = tk.Label(Level4_frame, text='紅包等級L4(%)', background='#323232', fg='white', font=(None, 20))
Level4_label.pack(side=tk.LEFT)
Level4_entry = tk.Entry(Level4_frame)
Level4_entry.pack(side=tk.LEFT)

#L5紅包等級
Level5_frame = tk.Frame(window)
Level5_frame.pack(side=tk.TOP)
Level5_label = tk.Label(Level5_frame, text='紅包等級L5(%)', background='#323232', fg='white', font=(None, 20))
Level5_label.pack(side=tk.LEFT)
Level5_entry = tk.Entry(Level5_frame)
Level5_entry.pack(side=tk.LEFT)


result_label = tk.Label(window, textvariable=str, background='#323232', fg='white')
result_label.pack()


callable_btn = tk.Button(window, text='Calculate', command=calculate_RP_number, background='#323232', font=(None, 20))
callable_btn.pack()


#Execution App
window.mainloop()