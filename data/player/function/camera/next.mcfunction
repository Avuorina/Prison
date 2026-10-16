#> player:camera/next
#
# 次のカメラへ(最後のカメラの次は1番に戻る)
#
# @within function player:use_carrot_stick
# @s カメラを見ている看守

    execute store result score #Count CameraNo if entity @e[type=item_display,tag=Camera]
    scoreboard players add @s CameraNo 1
    execute if score @s CameraNo > #Count CameraNo run scoreboard players set @s CameraNo 1
    function player:camera/view
    playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1.5
