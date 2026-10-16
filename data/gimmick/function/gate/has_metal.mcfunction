#> gimmick:gate/has_metal
#
# 金属を持っているか(インベントリとオフハンド)
#
# @within function gimmick:gate/check

    execute if items entity @s container.* #gimmick:gate/metal run return 1
    execute if items entity @s weapon.offhand #gimmick:gate/metal run return 1
    return fail
