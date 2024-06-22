#> dev:install/check_direction
#
# ドア設置するときの近くのプレイヤーの方角確認
#
#

## 念の為RESET
    scoreboard players reset @a Direction

## 北(Direction=0)
    scoreboard players set @a[sort=nearest,limit=1,y_rotation=135..180] Direction 0
    scoreboard players set @a[sort=nearest,limit=1,y_rotation=-179.9..-135.1] Direction 0
## 東(Direction=90)
    scoreboard players set @a[sort=nearest,limit=1,y_rotation=-135..-45.1] Direction 90
## 西(Direction=-90)
    scoreboard players set @a[sort=nearest,limit=1,y_rotation=45..134.9] Direction -90
## 南(Direction=180)
    scoreboard players set @a[sort=nearest,limit=1,y_rotation=0.1..44.9] Direction 180
    scoreboard players set @a[sort=nearest,limit=1,y_rotation=-45..-0] Direction 180

## 無いとは思うけどもしかしたら上記の条件の人がいるかもしれない
    execute unless score @a[sort=nearest,limit=1] Direction matches -180.. run say 合う方角がなかった。

# dev
    #tellraw @p {"score":{"name":"@a[sort=nearest,limit=1]","objective":"Direction"}}