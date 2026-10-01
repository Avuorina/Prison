#> gimmick:lock_door/uninstall
#
# ドアを破壊するぞ
#
# @within gimmick:lock_door/install/
## ドアのインタラクションの消去
    execute at @e[type=interaction,distance=..3,tag=DoorNorth,tag=!DoorBig] run fill ~-1 ~ ~ ~1 ~ ~ air replace iron_door
    execute at @e[type=interaction,distance=..3,tag=DoorNorth,tag=DoorBig] run fill ~-2 ~ ~ ~2 ~ ~ air replace iron_door
    execute at @e[type=interaction,distance=..3,tag=DoorEast,tag=!DoorBig] run fill ~ ~ ~-1 ~ ~ ~1 air replace iron_door
    execute at @e[type=interaction,distance=..3,tag=DoorEast,tag=DoorBig] run fill ~ ~ ~-2 ~ ~ ~2 air replace iron_door
    execute at @e[type=interaction,distance=..3,tag=DoorWest,tag=!DoorBig] run fill ~ ~ ~-1 ~ ~ ~1 air replace iron_door
    execute at @e[type=interaction,distance=..3,tag=DoorWest,tag=DoorBig] run fill ~ ~ ~-2 ~ ~ ~2 air replace iron_door
    execute at @e[type=interaction,distance=..3,tag=DoorSouth,tag=!DoorBig] run fill ~-1 ~ ~ ~1 ~ ~ air replace iron_door
    execute at @e[type=interaction,distance=..3,tag=DoorSouth,tag=DoorBig] run fill ~-2 ~ ~ ~2 ~ ~ air replace iron_door
    kill @e[type=interaction,tag=DoorInteract,distance=..3,sort=nearest,limit=2]