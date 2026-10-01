#> world:gimmick/lock_door/install/install
#
# いよいよドアの設置をするぞ
#
#

## 北
    execute if score @a[sort=nearest,limit=1] Direction matches 0 run setblock ~ ~ ~ iron_door[facing=north,half=lower,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 0 run setblock ~ ~1 ~ iron_door[facing=north,half=upper,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 0 unless entity @s[tag=DoorBig] run summon interaction ~-1 ~ ~ {width:1.1f,height:1f,Tags:["DoorInteract","DoorNorth"]}
    execute if score @a[sort=nearest,limit=1] Direction matches 0 unless entity @s[tag=DoorBig] run summon interaction ~1 ~ ~ {width:1.1f,height:1f,Tags:["DoorInteract","DoorNorth"]}
    ## 2*2ドア
        execute if score @a[sort=nearest,limit=1] Direction matches 0 if entity @s[tag=DoorBig] run setblock ~-1 ~ ~ iron_door[facing=north,half=lower,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 0 if entity @s[tag=DoorBig] run setblock ~-1 ~1 ~ iron_door[facing=north,half=upper,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 0 if entity @s[tag=DoorBig] run summon interaction ~-2 ~ ~ {width:1.1f,height:1f,Tags:["DoorInteract","DoorNorth","DoorBig"]}
        execute if score @a[sort=nearest,limit=1] Direction matches 0 if entity @s[tag=DoorBig] run summon interaction ~1 ~ ~ {width:1.1f,height:1f,Tags:["DoorInteract","DoorNorth","DoorBig"]}
## 東
    execute if score @a[sort=nearest,limit=1] Direction matches 90 run setblock ~ ~ ~ iron_door[facing=east,half=lower,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 90 run setblock ~ ~1 ~ iron_door[facing=east,half=upper,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 90 unless entity @s[tag=DoorBig] run summon interaction ~ ~ ~-1 {width:1.1f,height:1f,Tags:["DoorInteract","DoorEast"]}
    execute if score @a[sort=nearest,limit=1] Direction matches 90 unless entity @s[tag=DoorBig] run summon interaction ~ ~ ~1 {width:1.1f,height:1f,Tags:["DoorInteract","DoorEast"]}
    ## 2*2ドア
        execute if score @a[sort=nearest,limit=1] Direction matches 90 if entity @s[tag=DoorBig] run setblock ~ ~ ~-1 iron_door[facing=east,half=lower,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 90 if entity @s[tag=DoorBig] run setblock ~ ~1 ~-1 iron_door[facing=east,half=upper,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 90 if entity @s[tag=DoorBig] run summon interaction ~ ~ ~-2 {width:1.1f,height:1f,Tags:["DoorInteract","DoorEast","DoorBig"]}
        execute if score @a[sort=nearest,limit=1] Direction matches 90 if entity @s[tag=DoorBig] run summon interaction ~ ~ ~1 {width:1.1f,height:1f,Tags:["DoorInteract","DoorEast","DoorBig"]}
## 西
    execute if score @a[sort=nearest,limit=1] Direction matches -90 run setblock ~ ~ ~ iron_door[facing=west,half=lower,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches -90 run setblock ~ ~1 ~ iron_door[facing=west,half=upper,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches -90 unless entity @s[tag=DoorBig] run summon interaction ~ ~ ~-1 {width:1.1f,height:1f,Tags:["DoorInteract","DoorWest"]}
    execute if score @a[sort=nearest,limit=1] Direction matches -90 unless entity @s[tag=DoorBig] run summon interaction ~ ~ ~1 {width:1.1f,height:1f,Tags:["DoorInteract","DoorWest"]}
    ## 2*2ドア
        execute if score @a[sort=nearest,limit=1] Direction matches -90 if entity @s[tag=DoorBig] run setblock ~ ~ ~1 iron_door[facing=west,half=lower,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches -90 if entity @s[tag=DoorBig] run setblock ~ ~1 ~1 iron_door[facing=west,half=upper,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches -90 if entity @s[tag=DoorBig] run summon interaction ~ ~ ~-1 {width:1.1f,height:1f,Tags:["DoorInteract","DoorWest","DoorBig"]}
        execute if score @a[sort=nearest,limit=1] Direction matches -90 if entity @s[tag=DoorBig] run summon interaction ~ ~ ~2 {width:1.1f,height:1f,Tags:["DoorInteract","DoorWest","DoorBig"]}
## 南
    execute if score @a[sort=nearest,limit=1] Direction matches 180 run setblock ~ ~ ~ iron_door[facing=south,half=lower,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 180 run setblock ~ ~1 ~ iron_door[facing=south,half=upper,hinge=right]
    execute if score @a[sort=nearest,limit=1] Direction matches 180 unless entity @s[tag=DoorBig] run summon interaction ~1 ~ ~ {width:1.1f,height:1f,Tags:["DoorInteract","DoorSouth"]}
    execute if score @a[sort=nearest,limit=1] Direction matches 180 unless entity @s[tag=DoorBig] run summon interaction ~-1 ~ ~ {width:1.1f,height:1f,Tags:["DoorInteract","DoorSouth"]}

    ## 2*2ドア
        execute if score @a[sort=nearest,limit=1] Direction matches 180 if entity @s[tag=DoorBig] run setblock ~1 ~ ~ iron_door[facing=south,half=lower,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 180 if entity @s[tag=DoorBig] run setblock ~1 ~1 ~ iron_door[facing=south,half=upper,hinge=left]
        execute if score @a[sort=nearest,limit=1] Direction matches 180 if entity @s[tag=DoorBig] run summon interaction ~-1 ~ ~ {width:1.1f,height:1f,Tags:["DoorInteract","DoorSouth","DoorBig"]}
        execute if score @a[sort=nearest,limit=1] Direction matches 180 if entity @s[tag=DoorBig] run summon interaction ~2 ~ ~ {width:1.1f,height:1f,Tags:["DoorInteract","DoorSouth","DoorBig"]}
