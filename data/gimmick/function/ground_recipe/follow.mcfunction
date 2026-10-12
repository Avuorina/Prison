#> gimmick:ground_recipe/follow
#
# 当たり判定を相方の材料に追従させる
#
# @within function gimmick:tick
# @s 材料の当たり判定(インタラクション)

## 対象の番号をコピー
    scoreboard players operation #Target GroundRecipeID = @s GroundRecipeID
## 同じ番号の材料に GroundRecipeMatch をつける
    execute as @e[type=item,tag=GroundRecipeItem] if score @s GroundRecipeID = #Target GroundRecipeID run tag @s add GroundRecipeMatch
## 相方がいない(拾われた・合体した・消えた)なら当たり判定も消す
    execute unless entity @e[type=item,tag=GroundRecipeMatch] run return run kill @s
## 相方の位置にテレポート
    tp @s @e[type=item,tag=GroundRecipeMatch,limit=1]
## マッチしたタグを削除
    tag @e[type=item,tag=GroundRecipeMatch] remove GroundRecipeMatch
