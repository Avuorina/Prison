#> gimmick:schedule/execution/remaining
#
# 処刑までの残り日数(今日を含む)を @s の _ に入れるぞ
#   残り = 処刑の日 - 今日 + 1
#
# @s 囚人

    scoreboard players operation @s _ = @s ExecutionDay
    scoreboard players operation @s _ -= #Day Schedule
    scoreboard players add @s _ 1
