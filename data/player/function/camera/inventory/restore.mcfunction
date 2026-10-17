#> player:camera/inventory/restore
#
# 預けていた持ち物を看守に返す
#   ストレージのアイテムを、仮の item_display に入れてから item replace で戻す
#
# @within function player:camera/exit
# @s 看守

## 預けた持ち物を取り出す
    execute store result storage prison:camera Args.ID int 1 run scoreboard players get @s CameraID
    function player:camera/inventory/take with storage prison:camera Args
    execute unless data storage prison:camera Restore run return fail

## 仮の item_display
    execute at @s summon item_display run tag @s add CameraItemTemp

## インベントリ(0〜35)
    execute if data storage prison:camera Restore.Inventory[0] run function player:camera/inventory/restore_loop

## 防具とオフハンド
    execute if data storage prison:camera Restore.equipment.head run function player:camera/inventory/equip {from:"head",to:"armor.head"}
    execute if data storage prison:camera Restore.equipment.chest run function player:camera/inventory/equip {from:"chest",to:"armor.chest"}
    execute if data storage prison:camera Restore.equipment.legs run function player:camera/inventory/equip {from:"legs",to:"armor.legs"}
    execute if data storage prison:camera Restore.equipment.feet run function player:camera/inventory/equip {from:"feet",to:"armor.feet"}
    execute if data storage prison:camera Restore.equipment.offhand run function player:camera/inventory/equip {from:"offhand",to:"weapon.offhand"}

## 片付け
    kill @e[type=item_display,tag=CameraItemTemp]
    data remove storage prison:camera Restore
