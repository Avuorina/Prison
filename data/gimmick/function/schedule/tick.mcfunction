#> gimmick:schedule/tick
#
# 刑務所の時計を1tick進めるぞ
#
# @within function gimmick:tick

## 時計を進める
    scoreboard players add #Timer Schedule 1
## フェーズの長さに達したら次のフェーズへ
    execute if score #Timer Schedule >= #Length Schedule run function gimmick:schedule/next
## 空の見た目を合わせる
    function gimmick:schedule/sky
## 看守のボスバー
    function gimmick:schedule/bossbar
