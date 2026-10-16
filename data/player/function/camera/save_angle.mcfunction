#> player:camera/save_angle
#
# 今見ているカメラに、看守が向いていた方向を覚えさせる
#   次にこのカメラに乗ったとき、同じ方向から見始める(tp でカメラの向きになるため)
#
# @within function player:camera/next
# @within function player:camera/exit
# @s カメラを見ている看守

    scoreboard players operation #Target CameraNo = @s CameraNo
    execute as @e[type=item_display,tag=Camera] if score @s CameraNo = #Target CameraNo run tag @s add CameraSave
    data modify entity @e[type=item_display,tag=CameraSave,limit=1] Rotation set from entity @s Rotation
    tag @e[type=item_display,tag=CameraSave] remove CameraSave
