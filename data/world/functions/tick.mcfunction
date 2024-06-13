#> world:tick
#
# ワールドのアレコレに対するtick
#
#

## ドアが開いてる
    execute as @e[tag=DoorCanEnter,scores={DoorOpenTimer=0..}] run function world:gimmick/lock_door/close_door