#> world:gimmick/lock_door/install/install
#
# いよいよドアの設置をするぞ
#
#

## 北
    execute if score @a[sort=nearest,limit=1] Direction matches 0 run setblock ~ ~ ~ iron_door[facing=north,half=lower,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 0 run setblock ~ ~1 ~ iron_door[facing=north,half=upper,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 0 run summon interaction ~ ~ ~ {width:1.1f,height:2f,Tags:["DoorInteract"]}
    ## 2*2ドア
        execute if score @a[sort=nearest,limit=1] Direction matches 0 if entity @s[tag=DoorBig] run setblock ~-1 ~ ~ iron_door[facing=north,half=lower,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 0 if entity @s[tag=DoorBig] run setblock ~-1 ~1 ~ iron_door[facing=north,half=upper,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 0 if entity @s[tag=DoorBig] run summon interaction ~-1 ~ ~ {width:1.1f,height:2f,Tags:["DoorInteract"]}
## 東
    execute if score @a[sort=nearest,limit=1] Direction matches 90 run setblock ~ ~ ~ iron_door[facing=east,half=lower,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 90 run setblock ~ ~1 ~ iron_door[facing=east,half=upper,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 90 run summon interaction ~ ~ ~ {width:1.1f,height:2f,Tags:["DoorInteract"]}
    ## 2*2ドア
        execute if score @a[sort=nearest,limit=1] Direction matches 90 if entity @s[tag=DoorBig] run setblock ~ ~ ~-1 iron_door[facing=east,half=lower,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 90 if entity @s[tag=DoorBig] run setblock ~ ~1 ~-1 iron_door[facing=east,half=upper,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 90 if entity @s[tag=DoorBig] run summon interaction ~ ~ ~-1 {width:1.1f,height:2f,Tags:["DoorInteract"]}
## 西
    execute if score @a[sort=nearest,limit=1] Direction matches -90 run setblock ~ ~ ~ iron_door[facing=west,half=lower,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches -90 run setblock ~ ~1 ~ iron_door[facing=west,half=upper,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches -90 run summon interaction ~ ~ ~ {width:1.1f,height:2f,Tags:["DoorInteract"]}
    ## 2*2ドア
        execute if score @a[sort=nearest,limit=1] Direction matches -90 if entity @s[tag=DoorBig] run setblock ~ ~ ~1 iron_door[facing=west,half=lower,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches -90 if entity @s[tag=DoorBig] run setblock ~ ~1 ~1 iron_door[facing=west,half=upper,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches -90 if entity @s[tag=DoorBig] run summon interaction ~ ~ ~1 {width:1.1f,height:2f,Tags:["DoorInteract"]}
## 南
    execute if score @a[sort=nearest,limit=1] Direction matches 180 run setblock ~ ~ ~ iron_door[facing=south,half=lower,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 180 run setblock ~ ~1 ~ iron_door[facing=south,half=upper,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 180 run summon interaction ~ ~ ~ {width:1.1f,height:2f,Tags:["DoorInteract"]}

    ## 2*2ドア
        execute if score @a[sort=nearest,limit=1] Direction matches 180 if entity @s[tag=DoorBig] run setblock ~1 ~ ~ iron_door[facing=south,half=lower,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 180 if entity @s[tag=DoorBig] run setblock ~1 ~1 ~ iron_door[facing=south,half=upper,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 180 if entity @s[tag=DoorBig] run summon interaction ~1 ~ ~ {width:1.1f,height:2f,Tags:["DoorInteract"]}
