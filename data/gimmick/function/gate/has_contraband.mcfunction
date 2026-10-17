#> gimmick:gate/has_contraband
#
# 禁制品を持っているか(インベントリとオフハンド)
#   道具・爆発物と火・鍵・クラフト素材(#gimmick:gate/contraband)
#
# @within function gimmick:gate/check

    execute if items entity @s container.* #gimmick:gate/contraband run return 1
    execute if items entity @s weapon.offhand #gimmick:gate/contraband run return 1
    return fail
