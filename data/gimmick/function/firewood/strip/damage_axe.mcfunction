#> gimmick:firewood/strip/damage_axe
#
# 斧にダメージを与えるぞ
#
# @within function gimmick:firewood/strip/swing_axe

# 斧の耐久力を減らす。
    execute if items entity @s weapon.mainhand wooden_axe run item modify entity @s weapon.mainhand {type:"minecraft:set_damage",damage:-0.0175,add:true}
    execute if items entity @s weapon.mainhand stone_axe run item modify entity @s weapon.mainhand {type:"minecraft:set_damage",damage:-0.008,add:true}

# 壊れる
    execute if items entity @s weapon.mainhand #minecraft:axes[damage~{durability:{max:0}}] run function gimmick:firewood/strip/break_axe