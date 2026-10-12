#> gimmick:ground_recipe/tool/break
#
# 壊れた道具を消すぞ
#
# @within function gimmick:ground_recipe/tool/damage
# @s 道具を持ったプレイヤー

    item replace entity @s weapon.mainhand with air
    playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1
