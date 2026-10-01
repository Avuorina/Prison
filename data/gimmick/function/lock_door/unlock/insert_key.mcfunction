#> gimmick:lock_door/unlock/insert_key
#
# ドアに誰かが作用したぞ
#
# @within advancement player:interact_with_interaction
## 作用したエンティティが扉であれば...?
    tag @s add Inserted
    execute as @e[type=interaction,tag=DoorInteract,distance=..6] if function gimmick:lock_door/unlock/is_interact at @s run function gimmick:lock_door/unlock/check_key

    ## RESET
    tag @s remove Inserted
    tag @s remove CanEnter
    advancement revoke @s only player:interact_with_interaction
