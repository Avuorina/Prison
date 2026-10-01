#> main:tick
#
# 毎tick実行
#
#

## プレイヤーtick
    execute as @a at @s run function player:tick

## DEBUGtick
    execute as @a[team=debug] at @s run function dev:tick

## ワールド用tick
    function gimmick:tick