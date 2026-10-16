#> main:start
#
# ゲームを始めるぞ
#   1. ワールドを戻して、日課を1日目の起床から動かす(main:reset)
#   2. 囚人 : 持ち物を囚人服だけにして、自分の房へ
#   3. 看守 : 持ち物を看守の道具にする(テレポートはしない)
#
# @within function player:use_carrot_stick
# @s ゲーム開始のアイテムを使った看守

## 囚人がいなければ始めない
    execute unless entity @a[team=Prisoner] unless entity @a[team=Escaped] unless entity @a[team=Executed] run return run tellraw @s {text:"囚人が登録されていません(房の前のコマンドブロックで番号登録)",color:"red"}

## ワールドを戻して日課を始める
    function main:reset

## 囚人
    execute as @a[team=Prisoner] run function main:start/prisoner
## 看守
    execute as @a[team=Guard] run function main:start/guard
