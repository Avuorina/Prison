#> gimmick:ground_recipe/craft
#
# 当たり判定の相方の材料を探して、レシピを試す
#
# @within function gimmick:ground_recipe/use
# @s 殴られた当たり判定(インタラクション)

## 記憶消去
    data remove entity @s attack
## 同じ番号の材料でレシピを試す
    scoreboard players operation #Target GroundRecipeID = @s GroundRecipeID
    execute as @e[type=item,tag=GroundRecipeItem] if score @s GroundRecipeID = #Target GroundRecipeID at @s run function gimmick:ground_recipe/match
