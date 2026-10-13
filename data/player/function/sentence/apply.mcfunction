#> player:sentence/apply
#
# 処刑の日を #Delta 日ずらすぞ
#
# @within function player:sentence/hit
# @s 叩かれた囚人

## 処刑の日をずらす(今日より前にはしない)
    scoreboard players operation @s ExecutionDay += #Delta _
    execute if score @s ExecutionDay < #Day Schedule run scoreboard players operation @s ExecutionDay = #Day Schedule

## 叩いたダメージは回復しておく
    effect give @s minecraft:instant_health 1 0 true

## 残り日数を計算して本人に知らせる
    function gimmick:schedule/execution/remaining
    title @s times 5 40 10
    execute if score #Delta _ matches ..-1 run title @s subtitle [{text:"処刑まであと ",color:"red"},{score:{name:"@s",objective:"_"},color:"red",bold:true},{text:" 日",color:"red"}]
    execute if score #Delta _ matches 1.. run title @s subtitle [{text:"処刑まであと ",color:"green"},{score:{name:"@s",objective:"_"},color:"green",bold:true},{text:" 日",color:"green"}]
    title @s title ""
    execute if score #Delta _ matches ..-1 at @s run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 0.8
    execute if score #Delta _ matches 1.. at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

## 看守にも知らせる
    tellraw @a[tag=Judge] [{selector:"@s",color:"gold"},{text:" 処刑まであと ",color:"gray"},{score:{name:"@s",objective:"_"},color:"white",bold:true},{text:" 日",color:"gray"}]
