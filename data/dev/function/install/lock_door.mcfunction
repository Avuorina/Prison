#> dev:install/lock_door/give
#
# ロックドア設置のためのアイテムをgive
#
#

## ドア設置
    give @s minecraft:panda_spawn_egg[custom_name="ドア設置",entity_data={id:"minecraft:armor_stand",Tags:["DoorInstall","DoorReady"],CustomName:"ドア準備",Marker:true}] 1
## ドア削除
    give @s chicken_spawn_egg[custom_name="ドア削除",entity_data={id:"minecraft:armor_stand",Tags:["DoorUnInstall","DoorReady"],CustomName:"ドア削除",Marker:true}]