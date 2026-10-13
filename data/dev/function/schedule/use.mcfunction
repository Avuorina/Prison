#> dev:schedule/use
#
# 人参付きの棒を使った
#
# @within function dev:tick
# @s 人参付きの棒を使ったデバッグチームのプレイヤー

## 日課の一時停止の棒なら切り替える
    execute if items entity @s weapon.* carrot_on_a_stick[custom_data~{SchedulePause:1b}] run function dev:schedule/toggle
## RESET
    scoreboard players reset @s UseCarrotStick
