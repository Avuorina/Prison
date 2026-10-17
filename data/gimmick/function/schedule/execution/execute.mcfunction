#> gimmick:schedule/execution/execute
#
# 処刑(処刑場で死んだ)
#
# @within function gimmick:tick
# @s 処刑場で死んだ囚人

    tag @s remove ExecutionDue
    tag @s remove ExecutionInProgress
    scoreboard players reset @s Deaths
    team join Executed @s
    scoreboard players remove #Left Schedule 1
    gamemode spectator @s
    tellraw @a [{selector:"@s",color:"gold"},{text:" は処刑された…",color:"dark_red",bold:true}]
    title @s times 10 80 20
    title @s subtitle {text:"脱獄失敗",color:"gray"}
    title @s title {text:"処刑",color:"dark_red",bold:true}
    playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.5

## 房の扉の上の表示を「処刑済み」に
    function gimmick:sentence/board/update_all
## 囚人が残っていなければゲーム終了
    function gimmick:schedule/execution/end_check
