#> world:gimmick/create_unlock/install/install
#
# ドアのときより簡単だよね
#
#

## コマンドブロックの設置
    setblock ~ ~ ~ minecraft:command_block[facing=up]

## インタラクト
    summon interaction ~ ~0.01 ~ {width:1.1f,height:1.1f,Tags:["CreateSwitchInteract"]}