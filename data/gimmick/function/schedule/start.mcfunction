#> gimmick:schedule/start
#
# 1日目の起床から時計を動かし始めるぞ
#
# @within function main:reset

## 定数
    scoreboard players set #2 Schedule 2
    scoreboard players set #20 Schedule 20
    scoreboard players set #60 Schedule 60
    scoreboard players set #24 Schedule 24
    scoreboard players set #1000 Schedule 1000
## ゲーム終了の印を消す
    scoreboard players set #Over Schedule 0
## 1日目の起床から
    scoreboard players set #Day Schedule 1
    scoreboard players set #Workday Schedule 1
    scoreboard players set #Phase Schedule 0
    scoreboard players set #Timer Schedule 0
## 空はこっちで動かすので、バニラの昼夜は止める
    gamerule advance_time false
## 看守のボスバーを出す
    bossbar set prison:schedule visible true
## 等速で動かす
    scoreboard players set #Mode Schedule 0
    function gimmick:schedule/speed
    function gimmick:schedule/phase/set
    function gimmick:schedule/phase/announce
## 畑のチェストを補充(1日目の朝)
    function gimmick:supply/farm_chest
