#> dev:schedule/toggle
#
# 右クリックするたびに、時計の速さを切り替える
#   等速 → 1/2 → 1/10 → 一時停止 → 等速 …
#
# @within function player:use_carrot_stick

## まだ始まっていない・ゲーム終了のあとは何もしない
    execute unless score #Day Schedule matches 1.. run return run tellraw @s {text:"日課はまだ始まっていません(ゲーム開始のアイテムで開始)",color:"red"}
    execute if score #Over Schedule matches 1 run return run tellraw @s {text:"ゲームは終了しています(main:reset でやり直し)",color:"red"}

## 次のモードへ
    scoreboard players add #Mode Schedule 1
    execute if score #Mode Schedule matches 4.. run scoreboard players set #Mode Schedule 0
    function gimmick:schedule/speed
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1

## 使った人に知らせる
    execute if score #Mode Schedule matches 0 run tellraw @s {text:"[日課] 等速",color:"green"}
    execute if score #Mode Schedule matches 1 run tellraw @s {text:"[日課] 速さ 1/2",color:"yellow"}
    execute if score #Mode Schedule matches 2 run tellraw @s {text:"[日課] 速さ 1/10",color:"gold"}
    execute if score #Mode Schedule matches 3 run tellraw @s {text:"[日課] 一時停止",color:"red"}
