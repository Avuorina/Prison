#> gimmick:ground_recipe/match
#
# レシピ一覧から合うものを探して、成功したら材料を1つ減らす
#
# @within function gimmick:ground_recipe/craft
# @s 材料のアイテムエンティティ

## 道具の耐久値の減り方(レシピ側で上書きできる。0なら減らない)
    scoreboard players set #ToolDamage _ 1

## 合うレシピがなければ何もしない
    execute unless function gimmick:ground_recipe/recipes run return fail

## 成功！
    scoreboard players set #Crafted _ 1
    function gimmick:ground_recipe/consume
