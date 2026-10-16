#> player:camera/is_riding
#
# カメラに乗っているか
#
# @within function player:camera/tick

    execute on vehicle if entity @s[tag=Camera] run return 1
    return fail
