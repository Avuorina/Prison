#> world:gimmick/lock_door/take_interact
#
# ドアに誰かが作用したぞ
#
#

## 作用したドアにタグ付け
    execute as @e[type=minecraft:interaction,distance=..10,nbt={interaction:{}},tag=DoorInteract,limit=1] run tag @s add DoorInteracted

## 扉の鍵が合うかどうか
    execute as @e[tag=DoorInteracted] at @s positioned ~ ~2 ~ run function world:gimmick/lock_door/put_key

    ## RESET
    data remove entity @e[tag=DoorInteracted,limit=1] interaction
    tag @e[tag=DoorInteracted] remove DoorInteracted
    tag @e[tag=DoorInteracted] remove CanEnter
    advancement revoke @s only player:interact_door