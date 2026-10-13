#> gimmick:escape/tnt/tick
#
# 着火したTNTを見張って、爆発する直前に止めるぞ
#
# @within function gimmick:tick
# @s 着火したTNT

## 残りの導火線を読む
    execute store result score @s _ run data get entity @s fuse
## このtickのあとに爆発するなら、代わりに演出だけする
    execute if score @s _ matches ..1 run function gimmick:escape/tnt/explode