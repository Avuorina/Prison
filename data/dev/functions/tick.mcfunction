#> dev:tick
#
# デバッグ用のtick
#
#

## 看板にスコアを表示させる
    execute if block 46 -4 -38 minecraft:lever[powered=true] run function dev:sign/score

## ドア設置
    execute as @e[tag=DoorReady] at @s run function dev:install/lock_door/