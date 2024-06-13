#> main:tick
#
# 毎tick実行
#
#

## プレイヤーtick
    execute as @a at @s run function player:tick
    
## DEBUGtick
    execute if block 60 6 -21 minecraft:lever[powered=true] run function dev:tick