#> dev:schedule/resume
#
# 一時停止した時計を再開
#
# @within function dev:schedule/toggle

    scoreboard players set #Running Schedule 1
    tellraw @a[team=debug] {text:"[日課] 再開しました",color:"green"}
    playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
