#> gimmick:lock_door/unlock/is_interact
#
# このインタラクションが作用したのが Inserted タグのプレイヤーか
#
# @within gimmick:lock_door/unlock/check

    execute on target if entity @s[tag=Inserted] run return 1
    return fail