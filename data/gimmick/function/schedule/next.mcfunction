#> gimmick:schedule/next
#
# 次のフェーズに進むぞ
#
# @within function gimmick:schedule/tick

    scoreboard players set #Timer Schedule 0
    scoreboard players add #Phase Schedule 1
## 消灯が終わったら次の日
    execute if score #Phase Schedule matches 8.. run function gimmick:schedule/new_day
## 新しいフェーズの設定(時間切れでも、空を翌朝6:00に合わせるために先に読む)
    function gimmick:schedule/phase/set
## 30日を過ぎたら時間切れ
    execute if score #Day Schedule matches 31.. run return run function gimmick:schedule/time_up
## 告知
    function gimmick:schedule/phase/announce
