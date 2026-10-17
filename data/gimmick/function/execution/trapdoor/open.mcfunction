#> gimmick:execution/trapdoor/open
#
# 処刑場のレバー(3 61 120)が引かれた。囚人の足元(-1 60 124 〜 1 60 126)を抜く
#   3秒後に床をネザライトブロックに戻して、レバーも戻す(gimmick:execution/trapdoor/close)
#
# @within function gimmick:tick

    data modify storage gimmick:execution Open set value true
    fill -1 60 124 1 60 126 air
    playsound minecraft:block.iron_trapdoor.open block @a 0 60 125 1 0.5
    schedule function gimmick:execution/trapdoor/close 3s replace
