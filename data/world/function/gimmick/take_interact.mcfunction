#> world:gimmick/take_interact
#
# ドアに誰かが作用したぞ
#
#

## 作用したエンティティが扉であれば...?
    execute as @e[type=minecraft:interaction,distance=..5,nbt={interaction:{}},limit=1] if entity @e[tag=DoorInteract] run tag @s add DoorInteracted
    # 扉の鍵が合うかどうか
        execute if entity @e[tag=DoorInteract,tag=DoorInteracted] as @e[tag=DoorInteracted] at @s run function world:gimmick/lock_door/put_key

## 作用したエンティティがCreateギミックであれば？
    execute as @e[type=minecraft:interaction,distance=..5,nbt={interaction:{}},limit=1] if entity @e[tag=CreateSwitchInteract] run tag @s add CreateSwitchInteracted
        # スイッチオン
            execute if entity @e[tag=CreateSwitchInteract,tag=CreateSwitchInteracted] as @e[tag=CreateSwitchInteracted] at @s run function world:gimmick/create_unlock/on

    ## RESET
    data remove entity @e[tag=DoorInteracted,limit=1] interaction
    tag @e[tag=DoorInteracted] remove CanEnter
    tag @e[tag=DoorInteracted] remove DoorInteracted
    data remove entity @e[tag=CreateSwitchInteracted,limit=1] interaction
    tag @e[tag=CreateSwitchInteracted] remove CreateSwitchInteracted
    advancement revoke @s only player:interact_with_interaction
