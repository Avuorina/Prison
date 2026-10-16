#> gimmick:gate/alarm_tick
#
# 警報の目印ごとに、ブザーを鳴らして3秒後にランプを消すぞ
#
# @within function gimmick:tick
# @s 警報の目印(マーカー)

    scoreboard players add @s GateTimer 1

## ブザー(最初の1秒、5tickおきに4回)
    execute if score @s GateTimer matches 1..16 if function gimmick:gate/is_beep run playsound minecraft:block.note_block.didgeridoo block @a ~ ~ ~ 2 0.6

## 3秒(60tick)たったらランプを消して目印も消す
    execute if score @s GateTimer matches 60.. run function gimmick:gate/lamp_off
    execute if score @s GateTimer matches 60.. run kill @s
