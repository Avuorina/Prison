#> main:start/prisoner
#
# 囚人のスタート準備
#   持ち物は囚人服(オレンジの革の胸当て)だけ。番号の房へテレポート
#
# @within function main:start
# @s 囚人

## 持ち物・状態をまっさらにする
    clear @s
    effect clear @s
    gamemode adventure @s
    effect give @s minecraft:instant_health 1 4 true
    effect give @s minecraft:saturation 1 9 true

## 囚人服(防御力なし・脱げない)
    item replace entity @s armor.chest with leather_chestplate[item_name={text:"囚人服",color:"gold"},dyed_color=16351261,attribute_modifiers=[],enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false,tooltip_display={hidden_components:["minecraft:dyed_color","minecraft:attribute_modifiers","minecraft:enchantments"]}]

## 番号の房へ
    execute if score @s PrisonerNo matches 4 run tp @s 11.5 60 77.5
    execute if score @s PrisonerNo matches 5 run tp @s 19.5 60 77.5
    execute if score @s PrisonerNo matches 6 run tp @s 27.5 60 77.5
    execute if score @s PrisonerNo matches 7 run tp @s 35.5 60 77.5
## 死んだら自分の房から
    execute if score @s PrisonerNo matches 4..7 at @s run spawnpoint @s ~ ~ ~
## 番号がない囚人は看守に知らせる
    execute unless score @s PrisonerNo matches 4..7 run tellraw @a[team=Guard] [{selector:"@s"},{text:" は囚人番号が登録されていません",color:"red"}]
