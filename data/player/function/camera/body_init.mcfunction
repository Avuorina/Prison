#> player:camera/body_init
#
# カメラを見ている看守の代わりに残すダミーの設定
#
# @within function player:camera/enter
# @s ダミー(マネキン)

    tp @s ~ ~ ~ ~ ~
    data merge entity @s {Tags:["CameraBody","CameraBodyNew"],immovable:true,Invulnerable:true,hide_description:true,CustomName:{text:"看守",color:"blue"}}
    scoreboard players operation @s CameraID = #Next CameraID
