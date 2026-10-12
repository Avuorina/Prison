#> gimmick:ground_recipe/install
#
# 地面に落ちた材料に当たり判定(インタラクション)を付けるぞ
#
# @within function gimmick:tick
# @s 材料のアイテムエンティティ

## 登録済みタグを追加
    tag @s add GroundRecipeItem
## IDを振る(アイテムと当たり判定を結びつけるため)
    scoreboard players add #Global GroundRecipeID 1
    scoreboard players operation @s GroundRecipeID = #Global GroundRecipeID
## 当たり判定を設置
    summon interaction ~ ~ ~ {width:0.5f,height:0.5f,Tags:["GroundRecipeInteract","GroundRecipeNew"]}
    scoreboard players operation @e[type=interaction,tag=GroundRecipeNew] GroundRecipeID = #Global GroundRecipeID
## 新規タグを削除
    tag @e[type=interaction,tag=GroundRecipeNew] remove GroundRecipeNew
