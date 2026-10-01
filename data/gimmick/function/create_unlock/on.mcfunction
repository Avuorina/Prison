#> world:gimmick/create_unlock/on
#
# レッドストーンブロックを一瞬置くで良いのだ。
#
#

## 鍵のないCreateギミック
    execute unless block ~ ~-1 ~ #world:security_blocks run tag @s add CreateSwitchON
    
## テストの鍵
    execute if block ~ ~-1 ~ command_block if entity @a[advancements={player:interact_with_interaction=true},nbt={SelectedItem:{id:"minecraft:command_block"}}] run tag @s add CreateSwitchON

## 条件に合うならレッドストーンブロックを置く
    execute if entity @s[tag=CreateSwitchON] run setblock ~ ~-4 ~ redstone_block replace
## 消す
    schedule function world:gimmick/create_unlock/off 20t