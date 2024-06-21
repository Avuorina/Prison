#> dev:tick
#
# デバッグ用のtick
#
#

## 看板にスコアを表示させる
    execute if entity @s[tag=show_score] positioned -58 -3 -280 run function dev:sign/score

## ドア設置
    execute as @e[tag=DoorReady] at @s run function dev:install/lock_door/