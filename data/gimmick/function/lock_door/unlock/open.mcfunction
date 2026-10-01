#> gimmick:lock_door/unlock/open
#
# ドアを開ける
#
# @within gimmick:lock_door/unlock/check_key
# ドアの下にレッドストーンを置き、タグ付け。
    execute if block ~1 ~ ~ iron_door run tag @s add 100
    execute if block ~1 ~ ~ iron_door run setblock ~1 ~-2 ~ redstone_torch
    execute if block ~1 ~ ~ iron_door if entity @s[tag=DoorBig] run setblock ~2 ~-2 ~ redstone_torch
    execute if block ~-1 ~ ~ iron_door run tag @s add -100
    execute if block ~-1 ~ ~ iron_door run setblock ~-1 ~-2 ~ redstone_torch
    execute if block ~-1 ~ ~ iron_door if entity @s[tag=DoorBig] run setblock ~-2 ~-2 ~ redstone_torch
    execute if block ~ ~ ~1 iron_door run tag @s add 001
    execute if block ~ ~ ~1 iron_door run setblock ~ ~-2 ~1 redstone_torch
    execute if block ~ ~ ~1 iron_door if entity @s[tag=DoorBig] run setblock ~ ~-2 ~2 redstone_torch
    execute if block ~ ~ ~-1 iron_door run tag @s add 00-1
    execute if block ~ ~ ~-1 iron_door run setblock ~ ~-2 ~-1 redstone_torch
    execute if block ~ ~ ~-1 iron_door if entity @s[tag=DoorBig] run setblock ~ ~-2 ~-2 redstone_torch
