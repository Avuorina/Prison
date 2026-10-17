#> dev:camera/aim
#
# カメラの向きを、今自分が向いている方向に合わせる(マクロ)
#   使い方：function dev:camera/aim {No:1}
#   (カメラの近くで、映したい方向を向いて実行する)
#
# @input No カメラ番号

    $execute rotated as @s as @e[type=item_display,tag=Camera,scores={CameraNo=$(No)}] positioned as @s run tp @s ~ ~ ~ ~ ~
    $execute as @e[type=item_display,tag=Camera,scores={CameraNo=$(No)}] run function player:camera/model
    $tellraw @s {text:"カメラ $(No) の向きを合わせました",color:"green"}
