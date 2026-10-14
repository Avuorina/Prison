#> gimmick:lock_door/unlock/check
#
#
#
# @within gimmick:lock_door/unlock/insert_key
## まずデータを消そう
    data remove entity @s interaction
## 鍵がないドア
    execute unless block ~ ~ ~ #gimmick:security_blocks run tag @s add DoorCanEnter

# example key
    #execute if block ~ ~ ~ [ブロックID] if items entity @a[tag=Inserted] weapon.mainhand minecraft:[鍵となるアイテム] run tag @s add DoorCanEnter

## マスターキー(どの鍵穴でも、いつでも開く)
    execute if block ~ ~ ~ #gimmick:security_blocks if items entity @a[tag=Inserted] weapon.mainhand *[custom_data~{Key:"master"}] run tag @s add DoorCanEnter

## 色の鍵(鍵穴のコンクリートと同じ色の鍵で開く)
    execute if block ~ ~ ~ light_blue_concrete if items entity @a[tag=Inserted] weapon.mainhand *[custom_data~{Key:"light_blue"}] run tag @s add DoorCanEnter
    execute if block ~ ~ ~ blue_concrete if items entity @a[tag=Inserted] weapon.mainhand *[custom_data~{Key:"blue"}] run tag @s add DoorCanEnter
    execute if block ~ ~ ~ red_concrete if items entity @a[tag=Inserted] weapon.mainhand *[custom_data~{Key:"red"}] run tag @s add DoorCanEnter
    execute if block ~ ~ ~ yellow_concrete if items entity @a[tag=Inserted] weapon.mainhand *[custom_data~{Key:"yellow"}] run tag @s add DoorCanEnter
    execute if block ~ ~ ~ purple_concrete if items entity @a[tag=Inserted] weapon.mainhand *[custom_data~{Key:"purple"}] run tag @s add DoorCanEnter

## テストの鍵穴
    execute if block ~ ~ ~ command_block if items entity @a[tag=Inserted] weapon.mainhand minecraft:command_block run tag @s add DoorCanEnter

## ドアがどこにあるかのチェック
    scoreboard players set @s[tag=DoorCanEnter] DoorOpenTimer 40
    execute as @s[tag=DoorCanEnter] at @s run function gimmick:lock_door/unlock/open

## 鍵が合わなかったら
    execute unless entity @s[tag=DoorCanEnter] run playsound block.iron_door.open master @a[tag=Inserted] ~ ~ ~ 1 2
    execute unless entity @s[tag=DoorCanEnter] run title @a[tag=Inserted] actionbar {"text":"開かない...","color":"red","bold":true}
