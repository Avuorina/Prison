#> gimmick:escape/success
#
# 脱獄成功！
#
# @within function gimmick:escape/goal
# @s 10秒耐えた囚人

    scoreboard players reset @s EscapeTimer
    team join Escaped @s
    gamemode spectator @s
    tellraw @a [{selector:"@s",color:"gold"},{text:" が脱獄した！",color:"green",bold:true}]
    title @s title {text:"脱獄成功",color:"green",bold:true}
    playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1