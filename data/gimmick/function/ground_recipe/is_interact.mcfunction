#> gimmick:ground_recipe/is_interact
#
# この当たり判定を殴ったのが GroundRecipeUser タグのプレイヤーか
#
# @within function gimmick:ground_recipe/use

    execute on attacker if entity @s[tag=GroundRecipeUser] run return 1
    return fail
