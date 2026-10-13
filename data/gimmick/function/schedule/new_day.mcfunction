#> gimmick:schedule/new_day
#
# 日付を進めるぞ
#
# @within function gimmick:schedule/next

    scoreboard players set #Phase Schedule 0
    scoreboard players add #Day Schedule 1
## 奇数日なら作業日(1)、偶数日なら免業日(0)
    scoreboard players operation #Workday Schedule = #Day Schedule
    scoreboard players operation #Workday Schedule %= #2 Schedule
