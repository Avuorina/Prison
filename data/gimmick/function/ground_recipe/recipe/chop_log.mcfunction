#> gimmick:ground_recipe/recipe/chop_log
#
# 原木 + 斧 → 板材2枚
# (薪の印が付いた原木は strip_firewood で扱うので除外)
#
# @within function gimmick:ground_recipe/recipes
# @s 材料のアイテムエンティティ

## 材料と道具の確認
    execute unless items entity @s contents oak_log run return fail
    execute if items entity @s contents oak_log[custom_data~{Firewood:1b}] run return fail
    execute unless items entity @a[tag=GroundRecipeUser,limit=1] weapon.mainhand #minecraft:axes run return fail

## 完成品
    summon item ~ ~0.2 ~ {Item:{id:"minecraft:oak_planks",count:2},PickupDelay:10s}
    playsound minecraft:item.axe.strip block @a ~ ~ ~ 1 0.8

    return 1