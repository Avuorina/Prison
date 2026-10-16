#> gimmick:schedule/lights
#
# 高さ64の銅の電球(waxed_copper_bulb)を、消灯の間だけ消して、それ以外は点ける
#   範囲 : x -59〜56 / z 14〜129(刑務所全体)
#   strict でブロック更新を出さない(レッドストーンで電球が勝手に切り替わらないように)
#
# @within function gimmick:schedule/start
# @within function gimmick:schedule/next

## 消灯(21:00〜翌6:00)
    execute if score #Phase Schedule matches 7 run return run fill -59 64 14 56 64 129 waxed_copper_bulb[lit=false] replace waxed_copper_bulb[lit=true] strict
## それ以外
    fill -59 64 14 56 64 129 waxed_copper_bulb[lit=true] replace waxed_copper_bulb[lit=false] strict
