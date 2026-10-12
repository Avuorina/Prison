#> gimmick:firewood/strip/strip
#
# 相方探し
#
# @within function gimmick:firewood/strip/swing_axe

# 記憶消去
    data remove entity @s attack
# 自分と同じ番号の薪を探して、皮はぎ本体を実行
    scoreboard players operation #Target FirewoodID = @s FirewoodID
    execute as @e[type=item,tag=FirewoodItem] if score @s FirewoodID = #Target FirewoodID at @s run function gimmick:firewood/strip/peel