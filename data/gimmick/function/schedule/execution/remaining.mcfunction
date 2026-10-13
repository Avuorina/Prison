#> gimmick:schedule/execution/remaining
#
# 処刑までの残り日数を @s の _ に入れるぞ
#   日付が変わっても勝手には減らない。看守が手で減らす
#
# @s 囚人

    scoreboard players operation @s _ = @s SentenceLeft
