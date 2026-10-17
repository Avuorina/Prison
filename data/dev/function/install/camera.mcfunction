#> dev:install/camera
#
# 監視カメラ4台と、モニター4台のクリック判定を置くぞ(置き直しもこれ)
#   カメラ : item_display(見えない)。看守はこれに乗ってカメラの視点になる
#   模型 : item_display(見た目用)。player:camera/model で、カメラごとに置く
#   モニター : interaction。クリックすると同じ番号のカメラから見始める
#   カメラの向きは dev:camera/aim {No:N} で、今自分が向いている方向に合わせる
#
#   ※乗っている看守の目の高さはカメラより少し上になるので、カメラは座標の1つ下に置く
#   ※カメラは、向いている方向(下向き20°)に0.4前へ出してある。模型の位置は変えずに、
#     看守の目をレンズより前に出すため(player:camera/model で模型を0.6後ろに置く)
#

## 置き直すために消す
    kill @e[type=item_display,tag=Camera]
    kill @e[type=item_display,tag=CameraModel]
    kill @e[type=interaction,tag=MonitorHitbox]

## カメラ(1・2は北向き、3・4は南向き。どれも少し下を向く)
    summon item_display 30.5 62.863 86.124 {Tags:["Camera","CameraNew"],Rotation:[180f,20f]}
    scoreboard players set @e[tag=CameraNew] CameraNo 1
    tag @e[tag=CameraNew] remove CameraNew
    summon item_display 13.5 62.863 86.124 {Tags:["Camera","CameraNew"],Rotation:[180f,20f]}
    scoreboard players set @e[tag=CameraNew] CameraNo 2
    tag @e[tag=CameraNew] remove CameraNew
    summon item_display 0.5 62.863 89.876 {Tags:["Camera","CameraNew"],Rotation:[0f,20f]}
    scoreboard players set @e[tag=CameraNew] CameraNo 3
    tag @e[tag=CameraNew] remove CameraNew
    summon item_display -10.5 62.863 38.876 {Tags:["Camera","CameraNew"],Rotation:[0f,20f]}
    scoreboard players set @e[tag=CameraNew] CameraNo 4
    tag @e[tag=CameraNew] remove CameraNew

## カメラの模型
    execute as @e[type=item_display,tag=Camera] run function player:camera/model

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
