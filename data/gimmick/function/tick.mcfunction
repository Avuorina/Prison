#> gimmick:tick
#
# gimmickのアレコレに対するtick
#
#

## ドア
    # ドアが開いてる
        execute as @e[tag=DoorCanEnter,scores={DoorOpenTimer=0..}] run function gimmick:lock_door/close_door
    # ドア設置
        execute as @e[tag=DoorReady] at @s run function gimmick:lock_door/install/