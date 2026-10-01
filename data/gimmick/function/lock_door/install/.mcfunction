#> world:gimmick/lock_door/install/
#
# ロックドア設置の準備
#
#

## 方角確認
    function gimmick:lock_door/install/check_direction

## ドアのサイズ
    execute as @s[tag=DoorInstall] at @s[tag=DoorInstall] run function gimmick:lock_door/install/check_size

## ドアの設置をするぞ
    execute as @s[tag=DoorInstall] at @s[tag=DoorInstall] run function gimmick:lock_door/install/install

## 方角もいらないだろww
    #scoreboard players reset @a Direction
## ドアの削除をするぞ
    execute at @s[tag=DoorUnInstall] as @s run execute at @e[type=interaction,tag=DoorInteract,distance=..3,sort=nearest,limit=1] as @s run function gimmick:lock_door/uninstall
    kill @s