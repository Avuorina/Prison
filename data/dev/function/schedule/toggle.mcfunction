#> dev:schedule/toggle
#
# 時計を止める / 動かす
#
# @within function dev:schedule/use

## 動いていれば止める
    execute if score #Running Schedule matches 1 run return run function dev:schedule/pause
## まだ始まっていない・時間切れのあとは動かさない
    execute unless score #Day Schedule matches 1..30 run return run tellraw @s {text:"日課はまだ始まっていません(main:reset で開始)",color:"red"}
## 止まっていれば動かす
    function dev:schedule/resume
