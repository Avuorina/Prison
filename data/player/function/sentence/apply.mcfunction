#> player:sentence/apply
#
# 処刑までの残り日数を #Delta 日増減するぞ
#
# @within function player:sentence/adjust
# @s 対象の囚人

## 残り日数を増減(0より下にはしない)
    scoreboard players operation @s SentenceLeft += #Delta _
    execute if score @s SentenceLeft matches ..-1 run scoreboard players set @s SentenceLeft 0
## 恩赦で1日以上に戻ったら、処刑の対象から外す
    execute if score @s SentenceLeft matches 1.. run tag @s remove ExecutionDue

## 本人に知らせる
    function gimmick:schedule/execution/remaining
    title @s times 5 40 10
    execute if score #Delta _ matches ..-1 run title @s subtitle [{text:"処刑まであと ",color:"red"},{score:{name:"@s",objective:"_"},color:"red",bold:true},{text:" 日",color:"red"}]
    execute if score #Delta _ matches 1.. run title @s subtitle [{text:"処刑まであと ",color:"green"},{score:{name:"@s",objective:"_"},color:"green",bold:true},{text:" 日",color:"green"}]
    title @s title ""
    execute if score #Delta _ matches ..-1 run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 0.8
    execute if score #Delta _ matches 1.. run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
