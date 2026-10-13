#> gimmick:schedule/start
#
# 1日目の起床から時計を動かし始めるぞ
#
# @within function main:reset

## 定数
    scoreboard players set #2 Schedule 2
    scoreboard players set #20 Schedule 20
    scoreboard players set #60 Schedule 60
## 1日目の起床から
    scoreboard players set #Day Schedule 1
    scoreboard players set #Workday Schedule 1
    scoreboard players set #Phase Schedule 0
    scoreboard players set #Timer Schedule 0
## 空はこっちで動かすので、バニラの昼夜は止める
    gamerule advance_time false
## 看守のボスバーを出す
    bossbar set prison:schedule visible true
## 動かす
    scoreboard players set #Running Schedule 1
    function gimmick:schedule/phase/set
    function gimmick:schedule/phase/announce
