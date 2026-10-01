#> world:gimmick/lock_door/install/check_direction
#
# ドア設置するときの近くのプレイヤーの方角確認
#
#

## 念の為RESET
    scoreboard players reset @a Direction

## 一番近いプレイヤーの向きで判定する(境界は後の行が優先)
## 北(Direction=0)
    execute as @a[sort=nearest,limit=1] if entity @s[y_rotation=135..180] run scoreboard players set @s Direction 0
    execute as @a[sort=nearest,limit=1] if entity @s[y_rotation=-180..-135] run scoreboard players set @s Direction 0
## 東(Direction=90)
    execute as @a[sort=nearest,limit=1] if entity @s[y_rotation=-135..-45] run scoreboard players set @s Direction 90
## 西(Direction=-90)
    execute as @a[sort=nearest,limit=1] if entity @s[y_rotation=45..135] run scoreboard players set @s Direction -90
## 南(Direction=180)
    execute as @a[sort=nearest,limit=1] if entity @s[y_rotation=-45..45] run scoreboard players set @s Direction 180

## 無いとは思うけどもしかしたら上記の条件の人がいるかもしれない
    execute unless score @a[sort=nearest,limit=1] Direction matches -180.. run say 合う方角がなかった。
