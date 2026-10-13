#> player:sentence/select
#
# 房の扉の上の表示を誰かがクリックした
#
# @within advancement player:sentence/select
# @s クリックしたプレイヤー

    advancement revoke @s only player:sentence/select

## クリックされた表示を探す
    tag @s add Selecting
    execute as @e[type=interaction,tag=SentenceBoardHitbox,distance=..8] if function player:sentence/is_clicker run function player:sentence/pick
    tag @s remove Selecting
