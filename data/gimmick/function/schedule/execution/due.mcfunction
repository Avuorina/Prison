#> gimmick:schedule/execution/due
#
# 処刑の日を迎えた
#
# @within function gimmick:schedule/execution/check
# @s 残り日数が0の囚人

    tag @s add ExecutionDue
    tellraw @a[team=Guard] [{selector:"@s",color:"gold"},{text:" は処刑の日を迎えた。手錠で捕まえると処刑場へ送られる",color:"dark_red"}]
    title @s times 10 60 20
    title @s subtitle {text:"看守に捕まれば処刑場へ送られる",color:"gray"}
    title @s title {text:"処刑の日",color:"dark_red",bold:true}
    playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.5
