#> player:sentence/hit
#
# 看守が令状で囚人を叩いた
#
# @within advancement player:sentence/hit
# @s 誰かを叩いたプレイヤー

    advancement revoke @s only player:sentence/hit

## 看守じゃなければ何もしない
    execute unless entity @s[team=Guard] run return 0

## 持っている令状で増減を決める
    scoreboard players set #Delta _ 0
    execute if items entity @s weapon.mainhand *[custom_data~{Sentence:"Down"}] run scoreboard players set #Delta _ -1
    execute if items entity @s weapon.mainhand *[custom_data~{Sentence:"Up"}] run scoreboard players set #Delta _ 1
    execute if score #Delta _ matches 0 run return 0

## 叩かれた囚人を探して反映
    tag @s add Judge
    execute as @a[team=Prisoner] if data entity @s {HurtTime:10s} if function player:sentence/is_attacker run function player:sentence/apply
    tag @s remove Judge
