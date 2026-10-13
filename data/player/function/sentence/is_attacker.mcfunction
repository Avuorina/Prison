#> player:sentence/is_attacker
#
# この囚人を叩いたのが Judge タグの看守か
#
# @within function player:sentence/hit

    execute on attacker if entity @s[tag=Judge] run return 1
    return fail
