#> gimmick:firewood/follow
#
# 薪の当たり判定を薪に追従させる
#
# @within function gimmick:tick

## 対象の番号をコピー
    scoreboard players operation #Target FirewoodID = @s FirewoodID
## 同じ番号の薪にFirewoodMatchをつける。
    execute as @e[type=item,tag=FirewoodItem] if score @s FirewoodID = #Target FirewoodID run tag @s add FirewoodMatch
## 相方がいないなら俺も死のう。
    execute unless entity @e[type=item,tag=FirewoodMatch] run return run kill @s
## 相方の位置にテレポート
    tp @s @e[type=item,tag=FirewoodMatch,limit=1]
## マッチしたタグを削除
    tag @e[type=item,tag=FirewoodMatch] remove FirewoodMatch