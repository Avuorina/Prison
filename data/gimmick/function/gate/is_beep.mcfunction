#> gimmick:gate/is_beep
#
# ブザーを鳴らすtickか(1, 6, 11, 16 tick目)
#
# @within function gimmick:gate/alarm_tick

    scoreboard players set #5 _ 5
    scoreboard players operation #Beep _ = @s GateTimer
    scoreboard players operation #Beep _ %= #5 _
    execute if score #Beep _ matches 1 run return 1
    return fail
