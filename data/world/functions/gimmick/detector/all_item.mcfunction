#> world:gimmick/detector/all_item
#
# 一個でもアイテムを持ってたら通知するアイテム検知器
#
# @public function world:gimmick/

## アイテム持ってる？
    execute store result score @s InventoryCount run clear @s * 0

## コイツはアイテム持ってるぞ！！
    execute if score @s InventoryCount matches 0.. run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["ItemDetected"]}
    execute if score @s InventoryCount matches 0.. run scoreboard players set @e[tag=ItemDetected,distance=..1] CautionTimer 60
    