#> player:camera/body_dress
#
# ダミーに、看守と同じ装備を見た目だけ着せる(本物はストレージに預ける)
#
# @within function player:camera/enter
# @s ダミー(マネキン)

    item replace entity @s weapon.mainhand from entity @a[tag=CameraViewer,limit=1] weapon.mainhand
    item replace entity @s weapon.offhand from entity @a[tag=CameraViewer,limit=1] weapon.offhand
    item replace entity @s armor.head from entity @a[tag=CameraViewer,limit=1] armor.head
    item replace entity @s armor.chest from entity @a[tag=CameraViewer,limit=1] armor.chest
    item replace entity @s armor.legs from entity @a[tag=CameraViewer,limit=1] armor.legs
    item replace entity @s armor.feet from entity @a[tag=CameraViewer,limit=1] armor.feet
