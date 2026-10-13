#> gimmick:schedule/execution/enroll
#
# 囚人を今回のゲームの参加者として登録するぞ
#   残り日数を30にして、今回のゲーム番号を覚えさせ、残っている囚人の数を1増やす
#
# @within function main:reset
# @within function gimmick:schedule/execution/rejoin
# @s 囚人

    scoreboard players set @s SentenceLeft 30
    scoreboard players operation @s GameId = #Current GameId
    scoreboard players add #Left Schedule 1
    scoreboard players add #Total Schedule 1
