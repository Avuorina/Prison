#> gimmick:schedule/clear
#
# 日課を止めて片付けるぞ
#   時計を止めて、ボスバー・表示を消し、電球を点けて、空を昼(6000)で止める
#   もう一度始めるときは main:start(1日目の起床から始まる)
#
# @within function main:book/gm(ボタン)

## 時計を止める(ボスバーも隠れる)
    function gimmick:schedule/stop
    scoreboard players set #Mode Schedule 0
    bossbar set prison:schedule players

## 表示を消す
    title @a clear
    title @a actionbar ""

## 電球を全部点ける(消灯中に止めても暗いままにならないように)
    fill -59 64 14 56 64 129 waxed_copper_bulb[lit=true] replace waxed_copper_bulb[lit=false] strict

## 空を昼(6000)で止める
    gamerule advance_time false
    time set 6000

    tellraw @s {text:"日課を止めて片付けました(main:start でまた始められます)",color:"green"}
