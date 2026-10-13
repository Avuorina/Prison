#> gimmick:schedule/time
#
# 空の時刻(#Time)から、今の時と分を計算するぞ
#   時 = (Time ÷ 1000 + 6) の 24 の余り
#   分 = (Time の 1000 の余り) × 60 ÷ 1000
#   分が1桁のときは、表示用に MinPad に "0" を入れる
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
## 分の0埋め
    execute if score #Minute Schedule matches 10.. run data modify storage gimmick:schedule MinPad set value ""
    execute if score #Minute Schedule matches ..9 run data modify storage gimmick:schedule MinPad set value "0"
