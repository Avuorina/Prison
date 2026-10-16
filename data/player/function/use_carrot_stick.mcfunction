#> player:use_carrot_stick
#
# 人参付きの棒を使った
#   ゲーム開始 : 看守(囚人以外)が使うとゲームを始める
#   日課の速さ : 時計の速さを切り替える
#   カメラを見ている間 : 次のカメラへ
#
# @within function main:tick
# @s 人参付きの棒を使ったプレイヤー

## RESET
    scoreboard players reset @s UseCarrotStick

## カメラを見ている間は、右クリックでカメラの切り替えだけ
    execute if entity @s[tag=CameraViewing] run return run function player:camera/next
## ゲーム開始
    execute if entity @s[team=!Prisoner] if items entity @s weapon.* carrot_on_a_stick[custom_data~{GameStart:1b}] run return run function main:start
## 日課の速さ
    execute if items entity @s weapon.* carrot_on_a_stick[custom_data~{SchedulePause:1b}] run function dev:schedule/toggle
