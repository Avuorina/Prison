#> dev:install/sort
#
# いろいろなものを設置する用
#
#

## ロックドアの設置
    execute if entity @s[tag=DoorReady] run function dev:install/lock_door/

## キッチンのオブジェクト
    execute if entity @s[tag=KitchenReady] run function dev:install/kitchen/