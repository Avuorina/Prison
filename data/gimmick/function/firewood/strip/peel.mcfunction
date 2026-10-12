#> gimmick:firewood/strip/peel
#
# 皮をはぐ
#
# @within function gimmick:firewood/strip/strip

# 皮をはいだ薪をサモン
    summon item ~ ~0.2 ~ {Item:{id:"minecraft:stripped_oak_log",count:1,components:{"minecraft:custom_name":"皮をはいだ薪"}},PickupDelay:10s}
    playsound minecraft:item.axe.strip block @a ~ ~ ~ 1 1
# 成功！
    scoreboard players set #Stripped _ 1
# 薪の個数を読む
    execute store result score #Count _ run data get entity @s Item.count
    scoreboard players remove #Count _ 1
# ０になったら薪を消す。まだ残ってんなら元に戻すぜ。
    execute if score #Count _ matches ..0 run kill @s
    execute if score #Count _ matches 1.. store result entity @s Item.count int 1 run scoreboard players get #Count _
    scoreboard players reset #Count _