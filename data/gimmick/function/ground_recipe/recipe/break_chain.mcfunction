#> gimmick:ground_recipe/recipe/break_chain
#
# 鉄の鎖 + ツルハシ → 鉄塊3つ
#
# @within function gimmick:ground_recipe/recipes
# @s 材料のアイテムエンティティ

## 材料と道具の確認
    execute unless items entity @s contents iron_chain run return fail
    execute unless items entity @a[tag=GroundRecipeUser,limit=1] weapon.mainhand #minecraft:pickaxes run return fail

## 完成品
    summon item ~ ~0.2 ~ {Item:{id:"minecraft:iron_nugget",count:3},PickupDelay:10s}
    playsound minecraft:block.chain.break block @a ~ ~ ~ 1 1

    return 1