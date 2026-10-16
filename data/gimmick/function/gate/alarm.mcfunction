#> gimmick:gate/alarm
#
# 引っかかった！
#   本人を3秒光らせて、周りのレッドストーンランプを点け、ブザーを鳴らす
#
# @within function gimmick:gate/check
# @s 引っかかったプレイヤー

## 本人を3秒光らせる
    effect give @s minecraft:glowing 3 0 true

## 周りのランプを点ける
    function gimmick:gate/lamp_on

## 3秒後にランプを消すための目印(同じゲートで鳴っていたら置き直して延長)
    execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=marker,tag=GateAlarm,distance=..1]
    execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["GateAlarm"]}
