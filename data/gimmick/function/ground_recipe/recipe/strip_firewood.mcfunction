#> gimmick:ground_recipe/recipe/strip_firewood
#
# 薪 + 斧 → 皮をはいだ薪
#
# @within function gimmick:ground_recipe/recipes
# @s 材料のアイテムエンティティ

## 材料と道具の確認
    execute unless items entity @s contents oak_log[custom_data~{Firewood:1b}] run return fail
    execute unless items entity @a[tag=GroundRecipeUser,limit=1] weapon.mainhand #minecraft:axes run return fail

## 完成品
    summon item ~ ~0.2 ~ {Item:{id:"minecraft:stripped_oak_log",count:1,components:{"minecraft:custom_name":"皮をはいだ薪"}},PickupDelay:10s}
    playsound minecraft:item.axe.strip block @a ~ ~ ~ 1 1

    return 1
