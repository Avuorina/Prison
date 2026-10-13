#> main:tick
#
# 毎tick実行
#
#

## DEBUGtick
    execute as @a[team=debug] at @s run function dev:tick

## 人参付きの棒を使った(日課の速さアイテムなど。チームは問わない)
    execute as @a[scores={UseCarrotStick=1..}] run function dev:schedule/use

## 看守が処刑の日のボタンを押した
    execute as @a[scores={SentenceAdjust=1..}] run function player:sentence/adjust

## ワールド用tick
    function gimmick:tick