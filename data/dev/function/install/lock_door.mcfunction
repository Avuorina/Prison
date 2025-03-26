#> dev:install/lock_door/give
#
# ロックドア設置のためのアイテムをgive
#
#

## ドア設置
    give @s panda_spawn_egg[custom_name='{"color":"dark_purple","text":"ドア設置"}',entity_data={id:"minecraft:armor_stand",Marker:1b,Tags:["DoorInstall","DoorReady"],CustomName:'{"text":"ドア準備"}'}] 1
## ドア削除
    give @s chicken_spawn_egg[custom_name='{"color":"dark_purple","text":"ドア削除"}',entity_data={id:"minecraft:armor_stand",Tags:["DoorUnInstall","DoorReady"]}] 1