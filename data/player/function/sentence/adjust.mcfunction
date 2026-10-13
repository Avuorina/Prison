#> player:sentence/adjust
#
# 看守がボタンを押した
#   SentenceAdjust 1 : −1日(懲罰)
#   SentenceAdjust 2 : +1日(恩赦)
#
# @within function main:tick
# @s ボタンを押したプレイヤー

## 看守じゃなければ何もしない
    execute unless entity @s[team=Guard] run return run scoreboard players reset @s SentenceAdjust

## 増減を決める
    scoreboard players set #Delta _ 0
    execute if score @s SentenceAdjust matches 1 run scoreboard players set #Delta _ -1
    execute if score @s SentenceAdjust matches 2 run scoreboard players set #Delta _ 1
    scoreboard players reset @s SentenceAdjust
    execute if score #Delta _ matches 0 run return 0

## 選んでいた囚人に反映
    scoreboard players operation #Target PrisonerNo = @s SelectedNo
    tag @s add Judge
    execute as @a[team=Prisoner] if score @s PrisonerNo = #Target PrisonerNo at @s run function player:sentence/apply
    tag @s remove Judge

## 表示を更新して、続けて押せるようにもう一度ボタンを出す
    function gimmick:sentence/board/update_all
    function player:sentence/menu
