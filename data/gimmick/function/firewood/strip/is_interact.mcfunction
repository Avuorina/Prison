#> gimmick:firewood/strip/is_interact
#
# 誰がクリックしたか確かめる
#
# @within function gimmick:firewood/strip/swing_axe

execute on attacker if entity @s[tag=Stripping] run return 1
return fail