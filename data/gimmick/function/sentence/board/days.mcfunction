#> gimmick:sentence/board/days
#
# 残り日数を計算して、マクロで表示に書き込むぞ
#
# @within function gimmick:sentence/board/update
# @s 房の扉の上の表示(テキストディスプレイ)

    execute as @a[tag=SentenceMatch,team=Prisoner,limit=1] run function gimmick:schedule/execution/remaining
    execute store result storage gimmick:sentence Days int 1 run scoreboard players get @a[tag=SentenceMatch,team=Prisoner,limit=1] _
    function gimmick:sentence/board/set_text with storage gimmick:sentence
