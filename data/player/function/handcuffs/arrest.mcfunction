#> player:handcuffs/arrest
#
# 囚人を懲罰房へテレポート
#   -31 60 78 が空いていればそこ、埋まっていれば -39 60 78
#
# @within function player:handcuffs/hit
# @s 手錠で殴られた囚人

## 音(連れていかれる場所と、捕まえた場所)
    execute at @s run playsound minecraft:block.chain.place player @a ~ ~ ~ 1 0.8

## 空いている懲罰房へ(自分は数えない)
    tag @s add Arresting
    execute positioned -30.5 60 78.5 if entity @a[team=Prisoner,tag=!Arresting,distance=..1.5] run tp @s -38.5 60 78.5
    execute positioned -30.5 60 78.5 unless entity @a[team=Prisoner,tag=!Arresting,distance=..1.5] run tp @s -30.5 60 78.5
    tag @s remove Arresting
