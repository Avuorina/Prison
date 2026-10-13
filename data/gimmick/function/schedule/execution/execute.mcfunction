#> gimmick:schedule/execution/execute
#
# 処刑
#
# @within function gimmick:schedule/execution/check
# @s 処刑の日を過ぎた囚人

    team join Executed @s
    gamemode spectator @s
    tellraw @a [{selector:"@s",color:"gold"},{text:" は処刑された…",color:"dark_red",bold:true}]
    title @s times 10 80 20
    title @s subtitle {text:"脱獄失敗",color:"gray"}
    title @s title {text:"処刑",color:"dark_red",bold:true}
    playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.5
