#> player:camera/inventory/put
#
# 仮の item_display のアイテムを、インベントリの指定スロットに入れる(マクロ)
#
# @within function player:camera/inventory/restore_loop
# @input Slot スロット番号(0〜35)
# @s 看守

    $item replace entity @s container.$(Slot) from entity @n[type=item_display,tag=CameraItemTemp] contents
