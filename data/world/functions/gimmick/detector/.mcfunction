#> world:gimmick/detector/
#
# アイテム検知器だ！でも種類は？
#
#

## アイテム検知されたっていう結果を消す

## アイテム全検知
    execute if block ~ ~-1 ~ command_block run function world:gimmick/detector/all_item

## 金属探知機
    execute if block ~ ~-1 ~ redstone_block run function world:gimmick/detector/metalic