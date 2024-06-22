#> dev:install/lock_door/
#
# ロックドア設置の準備
#
#

## 方角確認
    function dev:install/check_direction

## ドアのサイズ
    execute as @s[tag=DoorInstall] at @s[tag=DoorInstall] run function dev:install/lock_door/check_size

## ドアの設置をするぞ
    execute as @s[tag=DoorInstall] at @s[tag=DoorInstall] run function dev:install/lock_door/install

## ドアの削除をするぞ
    execute at @s[tag=DoorUnInstall] run kill @e[distance=..3,tag=DoorInteract]
    kill @s