#> player:handcuffs/hit
#
# 囚人を殴った。手錠を持っていたら、殴られた囚人を懲罰房へ送る
#
# @within advancement player:handcuffs/hit
# @s 囚人を殴ったプレイヤー

## RESET
    advancement revoke @s only player:handcuffs/hit

## 手錠を持っていなければ何もしない(警棒など)
    execute unless items entity @s weapon.mainhand *[custom_data~{Handcuffs:1b}] run return fail

## 今殴られた囚人(このtickにダメージを受けて、殴ったのが自分)を探す
    tag @s add HandcuffUser
    execute as @a[team=Prisoner,distance=..8,nbt={HurtTime:10s}] if function player:handcuffs/is_target run function player:handcuffs/catch
    tag @s remove HandcuffUser
