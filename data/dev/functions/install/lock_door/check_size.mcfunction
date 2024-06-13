#> dev:install/lock_door/check_size
#
# 設置する予定のドアのサイズを確定させるよ
#
#

## 2*2のドアならタグをつける

    ## 北
        execute if score @a[sort=nearest,limit=1] Direction matches 0 if block ~-1 ~ ~ air run tag @s add DoorBig
    ## 東
        execute if score @a[sort=nearest,limit=1] Direction matches 90 if block ~ ~ ~-1 air run tag @s add DoorBig
    ## 西
        execute if score @a[sort=nearest,limit=1] Direction matches -90 if block ~ ~ ~1 air run tag @s add DoorBig
    ## 南
        execute if score @a[sort=nearest,limit=1] Direction matches 180 if block ~1 ~ ~ air run tag @s add DoorBig
