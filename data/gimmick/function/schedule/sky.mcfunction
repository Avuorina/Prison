#> gimmick:schedule/sky
#
# フェーズの進み具合から空の時刻を計算するぞ
#   時刻 = Start + Span × Timer ÷ Length
#
# @within function gimmick:schedule/tick

    scoreboard players operation #Time Schedule = #Timer Schedule
    scoreboard players operation #Time Schedule *= #Span Schedule
    scoreboard players operation #Time Schedule /= #Length Schedule
    scoreboard players operation #Time Schedule += #Start Schedule
    execute store result storage gimmick:schedule Time int 1 run scoreboard players get #Time Schedule
    function gimmick:schedule/sky_apply with storage gimmick:schedule
