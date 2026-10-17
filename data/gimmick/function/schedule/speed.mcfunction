#> gimmick:schedule/speed
#
# #Mode に合わせて時計の速さを設定するぞ
#   0 : 等速   (毎tick 1進む)
#   1 : ×2     (毎tick 2進む)
#   2 : ×5     (毎tick 5進む)
#   3 : ×10    (毎tick 10進む)
#   4 : 1/2    (2tickに1回 1進む)
#   5 : 1/10   (10tickに1回 1進む)
#   6 : 一時停止
#
# @within function gimmick:schedule/start
# @within function dev:schedule/toggle

## 進める間隔(何tickに1回進めるか)
    scoreboard players set #Interval Schedule 1
    execute if score #Mode Schedule matches 4 run scoreboard players set #Interval Schedule 2
    execute if score #Mode Schedule matches 5 run scoreboard players set #Interval Schedule 10
    scoreboard players set #Step Schedule 0

## 1回に進める量
    scoreboard players set #Boost Schedule 1
    execute if score #Mode Schedule matches 1 run scoreboard players set #Boost Schedule 2
    execute if score #Mode Schedule matches 2 run scoreboard players set #Boost Schedule 5
    execute if score #Mode Schedule matches 3 run scoreboard players set #Boost Schedule 10

## 一時停止かどうか
    execute if score #Mode Schedule matches 0..5 run scoreboard players set #Running Schedule 1
    execute if score #Mode Schedule matches 6 run scoreboard players set #Running Schedule 0

## 看守のボスバーに付ける印
    execute if score #Mode Schedule matches 0 run data modify storage gimmick:schedule SpeedLabel set value ""
    execute if score #Mode Schedule matches 1 run data modify storage gimmick:schedule SpeedLabel set value "　[×2]"
    execute if score #Mode Schedule matches 2 run data modify storage gimmick:schedule SpeedLabel set value "　[×5]"
    execute if score #Mode Schedule matches 3 run data modify storage gimmick:schedule SpeedLabel set value "　[×10]"
    execute if score #Mode Schedule matches 4 run data modify storage gimmick:schedule SpeedLabel set value "　[×1/2]"
    execute if score #Mode Schedule matches 5 run data modify storage gimmick:schedule SpeedLabel set value "　[×1/10]"
    execute if score #Mode Schedule matches 6 run bossbar set prison:schedule name {text:"一時停止中",color:"gray"}
