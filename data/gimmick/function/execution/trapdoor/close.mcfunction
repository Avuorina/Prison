#> gimmick:execution/trapdoor/close
#
# 処刑場の床をネザライトブロックに戻して、レバーを戻す(引かれてから3秒後)
#
# @within function gimmick:execution/trapdoor/open(schedule)
# @within function main:reset

    fill -1 60 124 1 60 126 netherite_block
    function gimmick:execution/trapdoor/lever_off
    playsound minecraft:block.iron_trapdoor.close block @a 0 60 125 1 0.5
    data modify storage gimmick:execution Open set value false
