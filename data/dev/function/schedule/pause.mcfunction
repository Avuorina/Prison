#> dev:schedule/pause
#
# 時計を一時停止(予定や刑務作業中の判定はそのまま)
#
# @within function dev:schedule/toggle

    scoreboard players set #Running Schedule 0
    bossbar set prison:schedule name {text:"一時停止中",color:"gray"}
    tellraw @a[team=debug] {text:"[日課] 一時停止しました",color:"yellow"}
    playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
