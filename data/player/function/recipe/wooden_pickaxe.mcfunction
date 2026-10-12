#> player:recipe/wooden_pickaxe
#
# 薪じゃない原木を持っていたら木のツルハシを解放するぞ
#
# @within advancement player:recipe/wooden_pickaxe

## 薪しか持ってないなら、次に持ち物が変わったときにまた調べる
    execute unless items entity @s container.* oak_log[!minecraft:custom_data] run return run advancement revoke @s only player:recipe/wooden_pickaxe
## 解放
    recipe give @s minecraft:wooden_pickaxe