#> gimmick:ground_recipe/consume
#
# 材料を1つ減らす。0になったら消す
#
# @within function gimmick:ground_recipe/match
# @s 材料のアイテムエンティティ

## 個数を読んで1引く
    execute store result score #Count _ run data get entity @s Item.count
    scoreboard players remove #Count _ 1
## 0になったら消す。まだ残ってんなら書き戻すぜ
    execute if score #Count _ matches ..0 run kill @s
    execute if score #Count _ matches 1.. store result entity @s Item.count int 1 run scoreboard players get #Count _
    scoreboard players reset #Count _
