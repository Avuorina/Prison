#> gimmick:escape/tnt/explode
#
# 爆発の演出をして、指定したブロックだけ壊すぞ
#
# @within function gimmick:escape/tnt/tick
# @s 爆発直前のTNT

## 水門が閉まってないなら不発
    execute unless data storage gimmick:sluice_gate {On:true} run return run function gimmick:escape/tnt/fizzle

## 演出
    particle minecraft:explosion_emitter ~ ~ ~
    playsound minecraft:entity.generic.explode block @a ~ ~ ~ 16 1

## 指定したブロックだけ壊す
    fill 65 50 61 65 48 63 air destroy

## TNTを消す
    kill @s