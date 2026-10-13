#> player:sentence/is_clicker
#
# この表示をクリックしたのが Selecting タグのプレイヤーか
#
# @within function player:sentence/select

    execute on target if entity @s[tag=Selecting] run return 1
    return fail
