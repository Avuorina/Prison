#> gimmick:gate/has_item
#
# 何か1つでも持っているか(インベントリとオフハンド。防具は除く)
#
# @within function gimmick:gate/check

    execute if items entity @s container.* * run return 1
    execute if items entity @s weapon.offhand * run return 1
    return fail
