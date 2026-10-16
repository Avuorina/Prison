#> dev:install/camera
#
# 監視カメラ4台と、モニター4台のクリック判定を置くぞ(置き直しもこれ)
#   カメラ : item_display(見えない)。看守はこれに乗ってカメラの視点になる
#   モニター : interaction。クリックすると同じ番号のカメラから見始める
#   カメラの向きは dev:camera/aim {No:N} で、今自分が向いている方向に合わせる
#
#   ※乗っている看守の目の高さはカメラより少し上になるので、カメラは座標の1つ下に置く
#

## 置き直すために消す
    kill @e[type=item_display,tag=Camera]
    kill @e[type=interaction,tag=MonitorHitbox]

## カメラ
    summon item_display 30.5 63.0 86.5 {Tags:["Camera","CameraNew"],Rotation:[0f,20f]}
    scoreboard players set @e[tag=CameraNew] CameraNo 1
    tag @e[tag=CameraNew] remove CameraNew
    summon item_display 13.5 63.0 86.5 {Tags:["Camera","CameraNew"],Rotation:[0f,20f]}
    scoreboard players set @e[tag=CameraNew] CameraNo 2
    tag @e[tag=CameraNew] remove CameraNew
    summon item_display 0.5 63.0 89.5 {Tags:["Camera","CameraNew"],Rotation:[0f,20f]}
    scoreboard players set @e[tag=CameraNew] CameraNo 3
    tag @e[tag=CameraNew] remove CameraNew
    summon item_display -10.5 63.0 38.5 {Tags:["Camera","CameraNew"],Rotation:[0f,20f]}
    scoreboard players set @e[tag=CameraNew] CameraNo 4
    tag @e[tag=CameraNew] remove CameraNew

## モニター(ブロックと同じ大きさの当たり判定)
    summon interaction 6.5 68 81.5 {Tags:["MonitorHitbox","CameraNew"],width:1.01f,height:1.01f}
    scoreboard players set @e[tag=CameraNew] CameraNo 1
    tag @e[tag=CameraNew] remove CameraNew
    summon interaction 6.5 68 84.5 {Tags:["MonitorHitbox","CameraNew"],width:1.01f,height:1.01f}
    scoreboard players set @e[tag=CameraNew] CameraNo 2
    tag @e[tag=CameraNew] remove CameraNew
    summon interaction 4.5 68 86.5 {Tags:["MonitorHitbox","CameraNew"],width:1.01f,height:1.01f}
    scoreboard players set @e[tag=CameraNew] CameraNo 3
    tag @e[tag=CameraNew] remove CameraNew
    summon interaction 1.5 68 86.5 {Tags:["MonitorHitbox","CameraNew"],width:1.01f,height:1.01f}
    scoreboard players set @e[tag=CameraNew] CameraNo 4
    tag @e[tag=CameraNew] remove CameraNew

    tellraw @s {text:"監視カメラ4台とモニター4台を置きました",color:"green"}
