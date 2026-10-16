#> player:camera/monitor
#
# モニターをクリックした。看守なら、そのモニターのカメラから見始める
#
# @within advancement player:camera/monitor
# @s モニターをクリックしたプレイヤー

## RESET
    advancement revoke @s only player:camera/monitor

## 看守だけ・見ている途中は何もしない
    execute unless entity @s[team=Guard] run return fail
    execute if entity @s[tag=CameraViewing] run return fail

## クリックしたモニターの番号を受け取る
    tag @s add MonitorUser
    execute as @e[type=interaction,tag=MonitorHitbox,distance=..8] if function player:camera/is_clicker run scoreboard players operation @a[tag=MonitorUser,limit=1] CameraNo = @s CameraNo
    tag @s remove MonitorUser

## 見始める
    function player:camera/enter
