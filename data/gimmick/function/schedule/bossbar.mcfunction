#> gimmick:schedule/bossbar
#
# 看守のボスバーに、今の予定と残り時間を出すぞ
#
# @within function gimmick:schedule/tick

## 看守にだけ見せる
    bossbar set prison:schedule players @a[team=Guard]

## 残りtick → バーの長さ
    scoreboard players operation #Remain Schedule = #Length Schedule
    scoreboard players operation #Remain Schedule -= #Timer Schedule
    execute store result bossbar prison:schedule value run scoreboard players get #Remain Schedule

## 残りtick → 分と秒(切り上げ)
    scoreboard players operation #Sec Schedule = #Remain Schedule
    scoreboard players add #Sec Schedule 19
    scoreboard players operation #Sec Schedule /= #20 Schedule
    scoreboard players operation #Min Schedule = #Sec Schedule
    scoreboard players operation #Min Schedule /= #60 Schedule
    scoreboard players operation #Sec Schedule %= #60 Schedule

## タイトル(例：3日目 13:00 刑務作業　残り 4:05)
    execute if score #Sec Schedule matches 10.. run bossbar set prison:schedule name [{score:{name:"#Day",objective:"Schedule"}},{text:"日目 "},{nbt:"Label",storage:"gimmick:schedule",interpret:true},{text:"　残り "},{score:{name:"#Min",objective:"Schedule"}},{text:":"},{score:{name:"#Sec",objective:"Schedule"}}]
    execute if score #Sec Schedule matches ..9 run bossbar set prison:schedule name [{score:{name:"#Day",objective:"Schedule"}},{text:"日目 "},{nbt:"Label",storage:"gimmick:schedule",interpret:true},{text:"　残り "},{score:{name:"#Min",objective:"Schedule"}},{text:":0"},{score:{name:"#Sec",objective:"Schedule"}}]
