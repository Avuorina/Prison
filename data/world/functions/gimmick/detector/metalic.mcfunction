#> world:gimmick/detector/metalic
#
# 金属探知機。やすいんだよね
#
# @public function world:gimmick/

## アイテム持ってる？
    execute store result score @s InventoryCount run clear @s #world:metalic 0
    execute if score @s InventoryCount matches 0 run scoreboard players set @s InventoryCount 9999

## コイツはアイテム持ってるぞ！！
    execute unless score @s InventoryCount matches 9999 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["ItemDetected"]}
    execute unless score @s InventoryCount matches 9999 run scoreboard players set @e[tag=ItemDetected,distance=..1] CautionTimer 60
