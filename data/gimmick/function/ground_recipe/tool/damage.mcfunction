#> gimmick:ground_recipe/tool/damage
#
# 手に持っている道具の耐久値を #ToolDamage だけ減らすぞ
# 割合指定(set_damage)だと端数がズレるので、耐久値を直接書き換える
#
# @within function gimmick:ground_recipe/use
# @s 道具を持ったプレイヤー

## 耐久値のない道具・壊れない道具は何もしない
    execute unless items entity @s weapon.mainhand *[minecraft:max_damage] run return fail
    execute if items entity @s weapon.mainhand *[minecraft:unbreakable] run return fail

## 一時的に道具を作業用のアイテムディスプレイに写す
    summon item_display ~ ~ ~ {Tags:["GroundRecipeTool"]}
    item replace entity @e[type=item_display,tag=GroundRecipeTool,limit=1] contents from entity @s weapon.mainhand

## 耐久値(damage)を足して書き戻す
    execute store result score #Damage _ run data get entity @e[type=item_display,tag=GroundRecipeTool,limit=1] item.components."minecraft:damage"
    scoreboard players operation #Damage _ += #ToolDamage _
    execute store result entity @e[type=item_display,tag=GroundRecipeTool,limit=1] item.components."minecraft:damage" int 1 run scoreboard players get #Damage _

## 手に戻して、作業用のアイテムディスプレイを消す
    item replace entity @s weapon.mainhand from entity @e[type=item_display,tag=GroundRecipeTool,limit=1] contents
    kill @e[type=item_display,tag=GroundRecipeTool]
    scoreboard players reset #Damage _

## 耐久が尽きたら壊す
    execute if items entity @s weapon.mainhand *[damage~{durability:{max:0}}] run function gimmick:ground_recipe/tool/break
