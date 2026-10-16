#> gimmick:gate/lamp_off
#
# ゲートの周りのレッドストーンランプを消す
#
# @within function gimmick:gate/alarm_tick

    fill ~-3 ~-1 ~-3 ~3 ~4 ~3 redstone_lamp[lit=false] replace redstone_lamp[lit=true] strict
