#> gimmick:execution/send
#
# 処刑の日を迎えた囚人を処刑場へ送るぞ
#   囚人はすぐ処刑場へ。捕まえた看守は3秒後に処刑場の看守の位置へ
#   看守がレバーを引いて囚人を溶岩に落とす(死んだら gimmick:tick で処刑済みになる)
#   座標は dev:execution/set_prisoner / set_guard で決める
#
# @within function player:handcuffs/catch
# @s 処刑の日を迎えた、手錠で殴られた囚人

## 座標が決まっていなければ、懲罰房へ送って看守に知らせる
    execute unless data storage gimmick:execution prisoner run tellraw @a[team=Guard] {text:"処刑場の座標が決まっていません(dev:execution/set_prisoner)",color:"red"}
    execute unless data storage gimmick:execution prisoner run return run function player:handcuffs/arrest

## 囚人を処刑場へ
    tag @s add ExecutionInProgress
    scoreboard players reset @s Deaths
    function gimmick:execution/tp with storage gimmick:execution prisoner
    execute at @s run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 0.5
    title @s times 10 60 20
    title @s subtitle {text:"処刑場",color:"gray"}
    title @s title {text:"刑を執行する",color:"dark_red",bold:true}

## 看守は3秒後に処刑場へ
    tag @a[tag=HandcuffUser] add ExecutionGuard
    tellraw @a[tag=ExecutionGuard] [{selector:"@s",color:"gold"},{text:" を処刑場へ送りました。3秒後にあなたも向かいます",color:"dark_red"}]
    schedule function gimmick:execution/guard 3s replace
