#> dev:install/kitchen/stove
#
# コンロを設置するぞ
#
#

## 設置するだけ
    summon hopper_minecart ~ ~0.4 ~ {NoGravity:1b,Silent:1b,Enabled:0b,Tags:["StoveParts"]}
    setblock ~ ~ ~ campfire
    setblock ~ ~1 ~ iron_trapdoor[half=bottom]
## 方角チェック
    function dev:install/check_direction

## 鉄の蓋？
    execute if score @a[sort=nearest,limit=1] Direction matches 0 run setblock ~ ~ ~1 iron_trapdoor[facing=south,open=true]
    execute if score @a[sort=nearest,limit=1] Direction matches 90 run setblock ~-1 ~ ~ iron_trapdoor[facing=west,open=true]
    execute if score @a[sort=nearest,limit=1] Direction matches -90 run setblock ~1 ~ ~ iron_trapdoor[facing=east,open=true]
    execute if score @a[sort=nearest,limit=1] Direction matches 180 run setblock ~ ~ ~-1 iron_trapdoor[facing=north,open=true]


## RESET
    kill @e[tag=StoveInstall]