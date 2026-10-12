#> player:read_book
#
# 本を読んだ人に、本の印に応じたレシピを渡すぞ
#
# @within function main:tick
# @s 本を開いたプレイヤー

## スコップ
    execute if items entity @s weapon.* written_book[custom_data~{UnlockRecipe:"wooden_shovel"}] run recipe give @s minecraft:wooden_shovel

## リセット
    scoreboard players reset @s ReadBook