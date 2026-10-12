#> gimmick:ground_recipe/recipes
#
# 置きレシピの一覧
# 上から順に試して、最初に合ったレシピだけを実行する
#
# @within function gimmick:ground_recipe/match
# @s 材料のアイテムエンティティ
#
# レシピの追加方法
#   1. gimmick:ground_recipe/recipe/ にレシピの関数を作る
#   2. この一覧に1行足す
#   3. 材料のアイテムを #gimmick:ground_recipe/input に足す

## 薪 + 斧 → 皮をはいだ薪
    execute if function gimmick:ground_recipe/recipe/strip_firewood run return 1
## 板材 + 斧 → 棒2本
    execute if function gimmick:ground_recipe/recipe/split_planks run return 1
## 原木 + 斧 → 板材2枚
    execute if function gimmick:ground_recipe/recipe/chop_log run return 1
## 鉄の鎖 + ツルハシ → 鉄塊3つ
    execute if function gimmick:ground_recipe/recipe/break_chain run return 1
## どれにも合わなかった
    return fail
