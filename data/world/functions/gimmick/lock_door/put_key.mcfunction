#> world:gimmick/lock_door/put_key
#
# 鍵穴と鍵が合うか
#
#

## ドアにインタラクトしたプレイヤーは？
    execute as @a[advancements={player:interact_door=true},distance=..5.35] run tag @s add DoorTarget

# example key
    #execute if block ~ ~2 ~ [上のブロックID] if entity @a[tag=DoorTarget,nbt={SelectedItem:{id:"minecraft:[鍵となるアイテム]"}}] run tag @s add DoorCanEnter

## テストの鍵穴
    execute if block ~ ~ ~ command_block if entity @a[tag=DoorTarget,nbt={SelectedItem:{id:"minecraft:command_block"}}] run tag @s add DoorCanEnter

## 牢屋の鍵穴
    # 昼
        execute if block ~ ~ ~ yellow_concrete if entity @a[tag=DoorTarget] if predicate lib:daytime run tag @s add DoorCanEnter
    # 夜
        execute if block ~ ~ ~ yellow_concrete if entity @a[tag=DoorTarget,nbt={SelectedItem:{id:"minecraft:leather_horse_armor"}}] unless predicate lib:daytime run tag @s add DoorCanEnter

## マスターキー
    execute if entity @a[tag=DoorTarget,nbt={SelectedItem:{id:"minecraft:nether_star"}}] run tag @s add DoorCanEnter

## ドアを開く資格がない者に報せを
    execute as @s[tag=!DoorCanEnter] run playsound block.chest.locked block @a[tag=DoorTarget] ~ ~ ~ 0.2 2.0
    execute as @s[tag=!DoorCanEnter] run tellraw @a[tag=DoorTarget] [{"color":"dark_gray","text":">"},{"color":"gray","text":">"},{"color":"white","text":" ドアが開かない！"}]

## RESET
    tag @a[tag=DoorTarget] remove DoorTarget


## ドアを開く
    scoreboard players set @s[tag=DoorCanEnter] DoorOpenTimer 40
    execute if entity @s[tag=DoorCanEnter] at @s[tag=DoorCanEnter] run setblock ~ ~-2 ~ redstone_torch
