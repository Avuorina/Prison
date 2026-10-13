#> dev:schedule/toggle
#
# 右クリックするたびに、時計の速さを切り替える
#   等速 → 1/2 → 1/10 → 一時停止 → 等速 …
#
# @within function dev:schedule/use

## まだ始まっていない・時間切れのあとは何もしない
    execute unless score #Day Schedule matches 1..30 run return run tellraw @s {text:"日課はまだ始まっていません(main:reset で開始)",color:"red"}

## 次のモードへ
    scoreboard players add #Mode Schedule 1
    execute if score #Mode Schedule matches 4.. run scoreboard players set #Mode Schedule 0
    function gimmick:schedule/speed
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
