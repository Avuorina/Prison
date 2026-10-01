#> world:tick
#
# ワールドのアレコレに対するtick
#
#

## ドア
    # ドアが開いてる
        execute as @e[tag=DoorCanEnter,scores={DoorOpenTimer=0..}] run function world:gimmick/lock_door/close_door
    # ドア設置
        execute as @e[tag=DoorReady] at @s run function world:gimmick/lock_door/install/

## Createギミック
    execute as @e[tag=CreateSwitchReady] at @s run function world:gimmick/create_unlock/install/