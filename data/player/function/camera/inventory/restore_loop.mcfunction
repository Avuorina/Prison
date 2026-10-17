#> player:camera/inventory/restore_loop
#
# Restore.Inventory の先頭のアイテムを、元のスロットに戻す(なくなるまで繰り返す)
#
# @within function player:camera/inventory/restore
# @within function player:camera/inventory/restore_loop
# @s 看守

## 先頭のアイテムとスロット番号
    data modify storage prison:camera Restore.item set from storage prison:camera Restore.Inventory[0]
    execute store result storage prison:camera Restore.args.Slot int 1 run data get storage prison:camera Restore.item.Slot
    data remove storage prison:camera Restore.item.Slot

## 戻す
    data modify entity @n[type=item_display,tag=CameraItemTemp] item set from storage prison:camera Restore.item
    function player:camera/inventory/put with storage prison:camera Restore.args

## 次へ
    data remove storage prison:camera Restore.Inventory[0]
    execute if data storage prison:camera Restore.Inventory[0] run function player:camera/inventory/restore_loop
