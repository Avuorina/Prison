#> player:camera/exit
#
# カメラを見るのをやめて、ダミーのいた場所に戻る
#
# @within function player:camera/tick
# @s 看守

## ダミーを探す
    tag @s add CameraLeaving
    execute as @e[type=mannequin,tag=CameraBody] if score @s CameraID = @a[tag=CameraLeaving,limit=1] CameraID run tag @s add CameraBodyTarget

## ダミーの場所へ戻って、オフハンドの持ち物を返してもらう
    ride @s dismount
    tp @s @e[type=mannequin,tag=CameraBodyTarget,limit=1]
    item replace entity @s weapon.offhand with air
    item replace entity @s weapon.offhand from entity @e[type=mannequin,tag=CameraBodyTarget,limit=1] weapon.offhand
    kill @e[type=mannequin,tag=CameraBodyTarget]

## 元に戻す
    clear @s carrot_on_a_stick[custom_data~{CameraRemote:1b}]
    effect clear @s minecraft:invisibility
    effect clear @s minecraft:resistance
    title @s actionbar ""
    tag @s remove CameraViewing
    tag @s remove CameraLeaving
    playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
