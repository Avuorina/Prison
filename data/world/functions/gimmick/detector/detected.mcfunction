#> world:gimmick/detector/detected
#
# アイテムを検知したぞ
#
#

## 警報元を目立たせる
    fill ~-3 ~ ~-3 ~3 ~4 ~3 redstone_lamp[lit=true] replace redstone_lamp[lit=false]
## 音を消そう
    playsound block.note_block.bit block @a ~ ~ ~ 0.1 2.0

## 警報する時間を減らす
    scoreboard players remove @s CautionTimer 1