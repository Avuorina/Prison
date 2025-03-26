#> world:gimmick/create_unlock/install
#
# Create MODを使ったギミックを発動させるためのスイッチを作成する
#
#

## インスコ
    execute as @s[tag=CreateSwitchInstall] at @s[tag=CreateSwitchInstall] run function world:gimmick/create_unlock/install/install

## アンインスコ
    execute at @s[tag=CreateSwitchUnInstall] run execute at @e[distance=..3,tag=CreateSwitchInteract] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:command_block
    execute at @s[tag=CreateSwitchUnInstall] run kill @e[distance=..3,tag=CreateSwitchInteract]

## 殺せ
    kill @s