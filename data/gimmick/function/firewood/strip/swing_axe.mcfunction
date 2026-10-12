#> gimmick:firewood/strip/swing_axe
#
# 斧を振る
#
# @within advencement player:interact_with_firewood

# 斧を持ってないなら終わり。
    execute unless items entity @s weapon.mainhand #minecraft:axes run return run advancement revoke @s only player:interact_with_firewood

# クリックした本人に Stripping タグを付ける
    tag @s add Stripping
    scoreboard players reset #Stripped _
# 近くの薪の当たり判定のうち、この人がクリックしたものを探して皮はぎ処理
    execute as @n[type=interaction,tag=FirewoodInteract,distance=..6] if function gimmick:firewood/strip/is_interact at @s run function gimmick:firewood/strip/strip

# 皮はぎに成功していたら斧の耐久を減らす
    execute if score #Stripped _ matches 1 run function gimmick:firewood/strip/damage_axe

# リセット
    tag @s remove Stripping
    scoreboard players reset #Stripped _
    advancement revoke @s only player:interact_with_firewood