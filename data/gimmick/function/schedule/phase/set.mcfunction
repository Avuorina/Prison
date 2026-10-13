#> gimmick:schedule/phase/set
#
# フェーズごとの長さ(実時間)と、空の時刻を決めるぞ
#   Length : フェーズの長さ(tick) 20tick = 1秒
#   Start  : フェーズ開始時の時刻(time) 0 = 6:00, 1000 = 1時間
#   Span   : フェーズの間に進む時刻
#
# @within function gimmick:schedule/start
# @within function gimmick:schedule/next

## 0 起床・点呼  6:00  1分
    execute if score #Phase Schedule matches 0 run scoreboard players set #Length Schedule 1200
    execute if score #Phase Schedule matches 0 run scoreboard players set #Start Schedule 0
    execute if score #Phase Schedule matches 0 run scoreboard players set #Span Schedule 1000
## 1 朝食  7:00  3分
    execute if score #Phase Schedule matches 1 run scoreboard players set #Length Schedule 3600
    execute if score #Phase Schedule matches 1 run scoreboard players set #Start Schedule 1000
    execute if score #Phase Schedule matches 1 run scoreboard players set #Span Schedule 1000
## 2 刑務作業 / 自由時間  8:00  5分
    execute if score #Phase Schedule matches 2 run scoreboard players set #Length Schedule 6000
    execute if score #Phase Schedule matches 2 run scoreboard players set #Start Schedule 2000
    execute if score #Phase Schedule matches 2 run scoreboard players set #Span Schedule 4000
## 3 昼食  12:00  3分
    execute if score #Phase Schedule matches 3 run scoreboard players set #Length Schedule 3600
    execute if score #Phase Schedule matches 3 run scoreboard players set #Start Schedule 6000
    execute if score #Phase Schedule matches 3 run scoreboard players set #Span Schedule 1000
## 4 刑務作業 / 入浴・自由時間  13:00  5分
    execute if score #Phase Schedule matches 4 run scoreboard players set #Length Schedule 6000
    execute if score #Phase Schedule matches 4 run scoreboard players set #Start Schedule 7000
    execute if score #Phase Schedule matches 4 run scoreboard players set #Span Schedule 4000
## 5 夕食・所持品検査  17:00  3分
    execute if score #Phase Schedule matches 5 run scoreboard players set #Length Schedule 3600
    execute if score #Phase Schedule matches 5 run scoreboard players set #Start Schedule 11000
    execute if score #Phase Schedule matches 5 run scoreboard players set #Span Schedule 1000
## 6 房内で自由時間  18:00  3分
    execute if score #Phase Schedule matches 6 run scoreboard players set #Length Schedule 3600
    execute if score #Phase Schedule matches 6 run scoreboard players set #Start Schedule 12000
    execute if score #Phase Schedule matches 6 run scoreboard players set #Span Schedule 3000
## 7 消灯  21:00  7分
    execute if score #Phase Schedule matches 7 run scoreboard players set #Length Schedule 8400
    execute if score #Phase Schedule matches 7 run scoreboard players set #Start Schedule 15000
    execute if score #Phase Schedule matches 7 run scoreboard players set #Span Schedule 9000

## ボスバーの予定名
    execute if score #Phase Schedule matches 0 run data modify storage gimmick:schedule Label set value "6:00 起床・点呼"
    execute if score #Phase Schedule matches 1 run data modify storage gimmick:schedule Label set value "7:00 朝食"
    execute if score #Phase Schedule matches 2 if score #Workday Schedule matches 1 run data modify storage gimmick:schedule Label set value "8:00 刑務作業"
    execute if score #Phase Schedule matches 2 if score #Workday Schedule matches 0 run data modify storage gimmick:schedule Label set value "8:00 自由時間"
    execute if score #Phase Schedule matches 3 run data modify storage gimmick:schedule Label set value "12:00 昼食"
    execute if score #Phase Schedule matches 4 if score #Workday Schedule matches 1 run data modify storage gimmick:schedule Label set value "13:00 刑務作業"
    execute if score #Phase Schedule matches 4 if score #Workday Schedule matches 0 run data modify storage gimmick:schedule Label set value "13:00 入浴・自由時間"
    execute if score #Phase Schedule matches 5 run data modify storage gimmick:schedule Label set value "17:00 夕食・所持品検査"
    execute if score #Phase Schedule matches 6 run data modify storage gimmick:schedule Label set value "18:00 房内で自由時間"
    execute if score #Phase Schedule matches 7 run data modify storage gimmick:schedule Label set value "21:00 消灯"

## ボスバーの色(拘束=赤 / 半拘束=黄 / 非拘束=緑)とバーの長さ
    execute if score #Phase Schedule matches 0..1 run bossbar set prison:schedule color red
    execute if score #Phase Schedule matches 3 run bossbar set prison:schedule color red
    execute if score #Phase Schedule matches 5 run bossbar set prison:schedule color red
    execute if score #Phase Schedule matches 2 run bossbar set prison:schedule color yellow
    execute if score #Phase Schedule matches 4 run bossbar set prison:schedule color yellow
    execute if score #Phase Schedule matches 6..7 run bossbar set prison:schedule color green
    execute store result bossbar prison:schedule max run scoreboard players get #Length Schedule

## 刑務作業中か(作業日のフェーズ2と4だけ1)
    scoreboard players set #Labor Schedule 0
    execute if score #Workday Schedule matches 1 if score #Phase Schedule matches 2 run scoreboard players set #Labor Schedule 1
    execute if score #Workday Schedule matches 1 if score #Phase Schedule matches 4 run scoreboard players set #Labor Schedule 1
