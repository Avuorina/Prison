#> gimmick:firewood/setup
#
#
#
# @within function gimmic:tick

# 登録済みタグを追加
    tag @s add FirewoodItem
# IDを管理する
    scoreboard players add #Global FirewoodID 1
    scoreboard players operation @s FirewoodID = #Global FirewoodID
# 当たり判定を設置
    summon interaction ~ ~ ~ {width:0.5f,height:0.5f,Tags:["FirewoodInteract","FirewoodNew"]}
    scoreboard players operation @e[type=interaction,tag=FirewoodNew] FirewoodID = #Global FirewoodID
# 新規タグを削除
    tag @e[type=interaction,tag=FirewoodNew] remove FirewoodNew