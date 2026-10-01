#> world:gimmick/lock_door/install/
#
# ロックドア設置の準備
#
#

## 方角確認
    function world:gimmick/lock_door/install/check_direction

## ドアのサイズ
    execute as @s[tag=DoorInstall] at @s[tag=DoorInstall] run function world:gimmick/lock_door/install/check_size

## ドアの設置をするぞ
    execute as @s[tag=DoorInstall] at @s[tag=DoorInstall] run function world:gimmick/lock_door/install/install

## 方角もいらないだろww
    #scoreboard players reset @a Direction
## ドアの削除をするぞ
    execute at @s[tag=DoorUnInstall] run execute at @e[distance=..3,tag=DoorInteract] run fill ~ ~ ~ ~ ~1 ~ air replace iron_door
    execute at @s[tag=DoorUnInstall] run kill @e[distance=..3,tag=DoorInteract]
    kill @s