#> world:gimmick/lock_door/put_key
#
# 鍵穴と鍵が合うか
#
#

# example key
    #execute if block ~ ~2 ~ [上のブロックID] if entity @a[advancements={player:interact_door=true},nbt={SelectedItem:{id:"minecraft:[鍵となるアイテム]"}}] run tag @s add DoorCanEnter

## テストの鍵穴
    execute if block ~ ~2 ~ command_block if entity @a[advancements={player:interact_door=true},nbt={SelectedItem:{id:"minecraft:command_block"}}] run tag @s add DoorCanEnter


## ドアを開く
    scoreboard players set @s[tag=DoorCanEnter] DoorOpenTimer 40
    execute if entity @s[tag=DoorCanEnter] at @s[tag=DoorCanEnter] run setblock ~ ~-2 ~ redstone_torch