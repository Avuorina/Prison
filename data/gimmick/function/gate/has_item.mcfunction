#> gimmick:gate/has_item
#
# 何か1つでも持っているか(インベントリとオフハンド。防具は除く)
#   ランタンは囚人の最初の持ち物なので数えない
#   (全部の個数 > ランタンの個数 なら、ランタン以外を持っている)
#
# @within function gimmick:gate/check

## インベントリ
    execute store result score #All _ if items entity @s container.* *
    execute store result score #Lantern _ if items entity @s container.* lantern
    execute if score #All _ > #Lantern _ run return 1

## オフハンド
    execute store result score #All _ if items entity @s weapon.offhand *
    execute store result score #Lantern _ if items entity @s weapon.offhand lantern
    execute if score #All _ > #Lantern _ run return 1

    return fail
