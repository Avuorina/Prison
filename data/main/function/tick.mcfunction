#> main:tick
#
# 毎tick実行
#
#

## プレイヤーtick
    execute as @a at @s run function player:tick

## DEBUGtick
    execute if block 198 106 134 minecraft:lever[powered=true] run function dev:tick

## ワールド用tick
    function world:tick