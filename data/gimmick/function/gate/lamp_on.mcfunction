#> gimmick:gate/lamp_on
#
# ゲートの周り(横±3・下1〜上4ブロック)のレッドストーンランプを点ける
#   strict でブロック更新を起こさないので、電源なしでも点いたままになる
#
# @within function gimmick:gate/alarm

    fill ~-3 ~-1 ~-3 ~3 ~4 ~3 redstone_lamp[lit=true] replace redstone_lamp[lit=false] strict
