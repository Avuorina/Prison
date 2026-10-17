#> gimmick:gate/check
#
# 持ち物チェックゲートの床に乗ったか調べるぞ
#   レッドストーンブロックの床 : 金属探知(#gimmick:gate/metal)
#   コマンドブロックの床       : 持ち物探知(何か1つでも持っていたら。ランタンは除く)
#   アメジストブロックの床     : 禁制品探知(#gimmick:gate/contraband)
#   防具(囚人服など)は調べない
#
# @within function gimmick:tick
# @s プレイヤー(スペクテイター以外)

## ゲートの床の上にいなければ、乗っている印を外して終わり
## ただし1ブロック下がゲートならジャンプ中なので印は外さない(跳ねても鳴り直さないように)
    execute unless block ~ ~-0.5 ~ #gimmick:gate/floors if block ~ ~-1.5 ~ #gimmick:gate/floors run return 0
    execute unless block ~ ~-0.5 ~ #gimmick:gate/floors run return run tag @s remove OnGate

## 乗った瞬間だけ1回調べる(立ち止まっても鳴り続けないように)
    execute if entity @s[tag=OnGate] run return 0
    tag @s add OnGate

## 金属探知
    execute if block ~ ~-0.5 ~ redstone_block if function gimmick:gate/has_metal run function gimmick:gate/alarm
## 持ち物探知
    execute if block ~ ~-0.5 ~ command_block if function gimmick:gate/has_item run function gimmick:gate/alarm
## 禁制品探知
    execute if block ~ ~-0.5 ~ amethyst_block if function gimmick:gate/has_contraband run function gimmick:gate/alarm
