#> main:tick
#
# 毎tick実行
#
#

## DEBUGtick
    execute if block -87 -3 -290 minecraft:lever[powered=true] run function dev:tick

## ワールド用tick
    function world:tick