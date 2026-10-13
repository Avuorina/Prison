#> gimmick:schedule/speed
#
# #Mode に合わせて時計の速さを設定するぞ
#   0 : 等速   (毎tick進む)
#   1 : 1/2    (2tickに1回進む)
#   2 : 1/10   (10tickに1回進む)
#   3 : 一時停止
#
# @within function gimmick:schedule/start
# @within function dev:schedule/toggle

## 進める間隔
    execute if score #Mode Schedule matches 0 run scoreboard players set #Interval Schedule 1
    execute if score #Mode Schedule matches 1 run scoreboard players set #Interval Schedule 2
    execute if score #Mode Schedule matches 2 run scoreboard players set #Interval Schedule 10
    scoreboard players set #Step Schedule 0

## 一時停止かどうか
    execute if score #Mode Schedule matches 0..2 run scoreboard players set #Running Schedule 1
    execute if score #Mode Schedule matches 3 run scoreboard players set #Running Schedule 0

## 看守のボスバーに付ける印
    execute if score #Mode Schedule matches 0 run data modify storage gimmick:schedule SpeedLabel set value ""
    execute if score #Mode Schedule matches 1 run data modify storage gimmick:schedule SpeedLabel set value "　[×1/2]"
    execute if score #Mode Schedule matches 2 run data modify storage gimmick:schedule SpeedLabel set value "　[×1/10]"
    execute if score #Mode Schedule matches 3 run bossbar set prison:schedule name {text:"一時停止中",color:"gray"}
