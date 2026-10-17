#> gimmick:execution/tp
#
# 保存した座標と向きにテレポート(マクロ)
#
# @within function gimmick:execution/send
# @within function gimmick:execution/guard
# @input x y z yaw pitch
# @s テレポートする人

    $tp @s $(x) $(y) $(z) $(yaw) $(pitch)
