#> player:handcuffs/arrest
#
# 囚人を懲罰房へテレポート
#   -31 60 78 と -39 60 78 のどちらかにランダム。行き先は看守に知らせる
#
# @within function player:handcuffs/catch
# @s 手錠で殴られた囚人

## 音(捕まった場所)
    execute at @s run playsound minecraft:block.chain.place player @a ~ ~ ~ 1 0.8

## どちらの懲罰房にするか(0 / 1)
    execute store result score #Cell _ run random value 0..1

## テレポートして看守に知らせる
    execute if score #Cell _ matches 0 run tp @s -30.5 60 78.5
    execute if score #Cell _ matches 1 run tp @s -38.5 60 78.5
    execute if score #Cell _ matches 0 run tellraw @a[team=Guard] [{selector:"@s"},{text:" を懲罰房 (-31 60 78) へ送りました",color:"gray"}]
    execute if score #Cell _ matches 1 run tellraw @a[team=Guard] [{selector:"@s"},{text:" を懲罰房 (-39 60 78) へ送りました",color:"gray"}]
