#> player:camera/inventory/equip
#
# 防具・オフハンドを1つ戻す(マクロ)
#
# @within function player:camera/inventory/restore
# @input from Restore.equipment の中の名前(head / chest / legs / feet / offhand)
# @input to   戻すスロット(armor.head / weapon.offhand など)
# @s 看守

    $data modify entity @n[type=item_display,tag=CameraItemTemp] item set from storage prison:camera Restore.equipment.$(from)
    $item replace entity @s $(to) from entity @n[type=item_display,tag=CameraItemTemp] contents
