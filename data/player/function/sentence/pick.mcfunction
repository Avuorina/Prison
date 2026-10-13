#> player:sentence/pick
#
# クリックされた房の囚人番号を看守に覚えさせて、選択肢を出すぞ
#
# @within function player:sentence/select
# @s クリックされた当たり判定(インタラクション)

## 記憶消去
    data remove entity @s interaction
## 看守じゃなければ何もしない
    execute unless entity @a[tag=Selecting,team=Guard] run return 0
## 囚人番号を覚えさせて選択肢を出す
    scoreboard players operation @a[tag=Selecting] SelectedNo = @s PrisonerNo
    execute as @a[tag=Selecting] at @s run function player:sentence/menu
