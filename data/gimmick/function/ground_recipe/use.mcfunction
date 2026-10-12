#> gimmick:ground_recipe/use
#
# 地面の材料を誰かが殴ったぞ
#
# @within advancement player:interact_with_ground_recipe
# @s 材料を殴ったプレイヤー

## 殴った本人に GroundRecipeUser タグを付ける
    tag @s add GroundRecipeUser
    scoreboard players reset #Crafted _
    scoreboard players reset #ToolDamage _

## この人が殴った当たり判定を探してクラフト
    # 近くに材料が複数あっても、殴られたものだけが選ばれる
        execute as @e[type=interaction,tag=GroundRecipeInteract,distance=..6] if function gimmick:ground_recipe/is_interact at @s run function gimmick:ground_recipe/craft

## 成功していたら道具の耐久値を減らす
    execute if score #Crafted _ matches 1 if score #ToolDamage _ matches 1.. run function gimmick:ground_recipe/tool/damage

## リセット
    tag @s remove GroundRecipeUser
    scoreboard players reset #Crafted _
    scoreboard players reset #ToolDamage _
    advancement revoke @s only player:interact_with_ground_recipe
