#> gimmick:schedule/clock
#
# 囚人のアクションバーに、日付と今の時刻だけを出すぞ(例：3日目 8:05)
#   時 = (Time ÷ 1000 + 6) の 24 の余り
#   分 = (Time の 1000 の余り) × 60 ÷ 1000
#
# @within function gimmick:schedule/tick

## 時
    scoreboard players operation #Hour Schedule = #Time Schedule
    scoreboard players operation #Hour Schedule /= #1000 Schedule
    scoreboard players add #Hour Schedule 6
    scoreboard players operation #Hour Schedule %= #24 Schedule
## 分
    scoreboard players operation #Minute Schedule = #Time Schedule
    scoreboard players operation #Minute Schedule %= #1000 Schedule
    scoreboard players operation #Minute Schedule *= #60 Schedule
    scoreboard players operation #Minute Schedule /= #1000 Schedule

## タイトル(分が1桁なら0を挟む)
    execute if score #Minute Schedule matches 10.. run title @a[team=Prisoner] actionbar [{score:{name:"#Day",objective:"Schedule"}},{text:"日目 "},{score:{name:"#Hour",objective:"Schedule"}},{text:":"},{score:{name:"#Minute",objective:"Schedule"}}]
    execute if score #Minute Schedule matches ..9 run title @a[team=Prisoner] actionbar [{score:{name:"#Day",objective:"Schedule"}},{text:"日目 "},{score:{name:"#Hour",objective:"Schedule"}},{text:":0"},{score:{name:"#Minute",objective:"Schedule"}}]
