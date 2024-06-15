#> world:tick
#
# ワールドのアレコレに対するtick
#
#

## ドアが開いてる
    execute as @e[tag=DoorCanEnter,scores={DoorOpenTimer=0..}] run function world:gimmick/lock_door/close_door

## アイテム検知器
    execute as @a[team=!Jailer] at @s if block ~ ~-1 ~ #world:detection_block unless entity @e[distance=..3,tag=ItemDetected] run function world:gimmick/detector/
    execute as @e[tag=ItemDetected,scores={CautionTimer=0..}] at @s run function world:gimmick/detector/detected
    execute as @e[tag=ItemDetected,scores={CautionTimer=..0}] run kill @s