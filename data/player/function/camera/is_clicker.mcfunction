#> player:camera/is_clicker
#
# このモニターをクリックしたのが MonitorUser タグのプレイヤーか
#
# @within function player:camera/monitor

    execute on target if entity @s[tag=MonitorUser] run return 1
    return fail
