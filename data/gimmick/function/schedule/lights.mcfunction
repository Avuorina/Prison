#> gimmick:schedule/lights
#
# 高さ64の銅の電球(waxed_copper_bulb)を、消灯の間だけ消して、それ以外は点ける
#   範囲 : x -60〜115 / z 30〜115(刑務所全体)
#   strict でブロック更新を出さない(レッドストーンで電球が勝手に切り替わらないように)
#
# @within function gimmick:schedule/start
# @within function gimmick:schedule/next

## 消灯(21:00〜翌6:00)
    execute if score #Phase Schedule matches 7 run return run fill -60 64 30 115 64 115 waxed_copper_bulb[lit=false] replace waxed_copper_bulb[lit=true] strict
## それ以外
    fill -60 64 30 115 64 115 waxed_copper_bulb[lit=true] replace waxed_copper_bulb[lit=false] strict
