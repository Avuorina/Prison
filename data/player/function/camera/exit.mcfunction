#> player:camera/exit
#
# カメラを見るのをやめて、ダミーのいた場所に戻る
#
# @within function player:camera/tick
# @s 看守

## 見ていた方向をカメラに覚えさせる
    function player:camera/save_angle

## ダミーを探す
    tag @s add CameraLeaving
    execute as @e[type=mannequin,tag=CameraBody] if score @s CameraID = @a[tag=CameraLeaving,limit=1] CameraID run tag @s add CameraBodyTarget

## ダミーの場所へ戻る
    ride @s dismount
    tp @s @e[type=mannequin,tag=CameraBodyTarget,limit=1]
    kill @e[type=mannequin,tag=CameraBodyTarget]

## 預けていた持ち物を返す(カメラのリモコンは消える)
    clear @s
    function player:camera/inventory/restore

## 元に戻す
    effect clear @s minecraft:invisibility
    effect clear @s minecraft:resistance
    title @s actionbar ""
    tag @s remove CameraViewing
    tag @s remove CameraLeaving
    playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
