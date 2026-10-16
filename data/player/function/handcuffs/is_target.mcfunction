#> player:handcuffs/is_target
#
# この囚人を殴ったのが HandcuffUser タグのプレイヤーか
#
# @within function player:handcuffs/hit

    execute on attacker if entity @s[tag=HandcuffUser] run return 1
    return fail
