#> player:tick
#
# プレイヤーに対し毎tick実行
#
#

## トリガー
    execute as @a if score @s SneakTimer matches 1.. run function player:trigger/sneak
    execute as @a if score @s SneakFrequency matches 1.. run function player:trigger/sneak_frequency