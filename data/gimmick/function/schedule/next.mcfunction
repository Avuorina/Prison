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
## 起床のとき、処刑の日を過ぎた囚人を処刑(全員いなくなったらゲーム終了)
    execute if score #Phase Schedule matches 0 run function gimmick:schedule/execution/check
    execute if score #Over Schedule matches 1 run return 0
## 告知
    function gimmick:schedule/phase/announce
