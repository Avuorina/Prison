#> gimmick:lock_door/unlock/check
#
#
#
# @within gimmick:lock_door/unlock/insert_key
## まずデータを消そう
    data remove entity @s interaction
## 鍵がないドア
    execute unless block ~ ~ ~ #gimmick:security_blocks if entity @a[advancements={player:interact_with_interaction=true}] run tag @s add DoorCanEnter

# example key
    #execute if block ~ ~2 ~ [ブロックID] if entity @a[advancements={player:interact_with_interaction=true},nbt={SelectedItem:{id:"minecraft:[鍵となるアイテム]"}}] run tag @s add DoorCanEnter

## テストの鍵穴
    execute if block ~ ~ ~ command_block if entity @a[advancements={player:interact_with_interaction=true},nbt={SelectedItem:{id:"minecraft:command_block"}}] run tag @s add DoorCanEnter

## ドアがどこにあるかのチェック
    scoreboard players set @s[tag=DoorCanEnter] DoorOpenTimer 40
    execute as @s[tag=DoorCanEnter] at @s run function gimmick:lock_door/unlock/open