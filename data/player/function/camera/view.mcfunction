#> player:camera/view
#
# 自分の CameraNo のカメラに乗る(切り替えのときもこれ)
#
# @within function player:camera/enter
# @within function player:camera/next
# @s 看守

    ride @s dismount
    scoreboard players operation #Target CameraNo = @s CameraNo
    execute as @e[type=item_display,tag=Camera] if score @s CameraNo = #Target CameraNo run tag @s add CameraTarget
    tp @s @e[type=item_display,tag=CameraTarget,limit=1]
    ride @s mount @e[type=item_display,tag=CameraTarget,limit=1]
    tag @e[type=item_display,tag=CameraTarget] remove CameraTarget
