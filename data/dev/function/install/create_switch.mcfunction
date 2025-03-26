#> dev:install/create_switch
#
# スイッチ設置のためのアイテムをgive
#
#

## スイッチ設置
    give @s magma_cube_spawn_egg[custom_name='{"color":"dark_purple","text":"スイッチ設置"}',entity_data={id:"minecraft:armor_stand",Marker:1b,Tags:["CreateSwitchInstall","CreateSwitchReady"],CustomName:'{"text":"スイッチ準備"}'}] 1
## スイッチ削除
    give @s piglin_brute_spawn_egg[custom_name='{"color":"dark_purple","text":"スイッチ削除"}',entity_data={id:"minecraft:armor_stand",Tags:["CreateSwitchUnInstall","CreateSwitchReady"]}] 1