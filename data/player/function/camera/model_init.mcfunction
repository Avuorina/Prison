#> player:camera/model_init
#
# カメラの模型の初期設定
#
# @within function player:camera/model
# @s 置いたばかりの模型

    data merge entity @s {Tags:["CameraModel"],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"prison:camera"}}}
    tp @s ~ ~ ~ ~ ~
    scoreboard players operation @s CameraNo = #Target CameraNo
