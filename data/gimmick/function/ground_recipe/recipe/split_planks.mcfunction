#> gimmick:ground_recipe/recipe/split_planks
#
# 板材 + 斧 → 棒2本
#
# @within function gimmick:ground_recipe/recipes
# @s 材料のアイテムエンティティ

## 材料と道具の確認
    execute unless items entity @s contents oak_planks run return fail
    execute unless items entity @a[tag=GroundRecipeUser,limit=1] weapon.mainhand #minecraft:axes run return fail

## 完成品
    summon item ~ ~0.2 ~ {Item:{id:"minecraft:stick",count:2},PickupDelay:10s}
    playsound minecraft:item.axe.strip block @a ~ ~ ~ 1 1.4

    return 1
