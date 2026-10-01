#> gimmick:lock_door/unlock/check
#
#
#
# @within gimmick:lock_door/unlock/insert_key
say check
## まずデータを消そう
    data remove entity @s interaction
## 鍵がないドア
    execute unless block ~ ~ ~ #gimmick:security_blocks run tag @s add DoorCanEnter

# example key
    #execute if block ~ ~ ~ [ブロックID] if items entity @a[tag=Inserted] weapon.mainhand minecraft:[鍵となるアイテム] run tag @s add DoorCanEnter

## テストの鍵穴
    execute if block ~ ~ ~ command_block if items entity @a[tag=Inserted] weapon.mainhand minecraft:command_block run tag @s add DoorCanEnter

## ドアがどこにあるかのチェック
    scoreboard players set @s[tag=DoorCanEnter] DoorOpenTimer 40
    execute as @s[tag=DoorCanEnter] at @s run function gimmick:lock_door/unlock/open