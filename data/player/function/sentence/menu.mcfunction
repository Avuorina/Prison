#> player:sentence/menu
#
# 看守のチャットに「−1日 / +1日」のボタンを出すぞ
#
# @within function player:sentence/pick
# @within function player:sentence/adjust
# @s 看守

## 選んだ番号の囚人を探す
    scoreboard players operation #Target PrisonerNo = @s SelectedNo
    execute as @a[team=Prisoner] if score @s PrisonerNo = #Target PrisonerNo run tag @s add SentenceMatch

## いなければ知らせて終わり
    execute unless entity @a[tag=SentenceMatch] run return run tellraw @s {text:"この房に囚人はいない",color:"gray"}

## 残り日数
    execute as @a[tag=SentenceMatch] run function gimmick:schedule/execution/remaining

## ボタン(押すと /trigger SentenceAdjust が動く)
    scoreboard players enable @s SentenceAdjust
    tellraw @s [{text:"囚人番号 ",color:"gray"},{score:{name:"@s",objective:"SelectedNo"},color:"white"},{text:" "},{selector:"@a[tag=SentenceMatch]",color:"gold"},{text:"　処刑まであと ",color:"gray"},{score:{name:"@a[tag=SentenceMatch,limit=1]",objective:"_"},color:"white",bold:true},{text:" 日　",color:"gray"},{text:"[懲罰 −1日]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger SentenceAdjust set 1"},hover_event:{action:"show_text",value:"処刑を1日早める"}},{text:" "},{text:"[恩赦 +1日]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger SentenceAdjust set 2"},hover_event:{action:"show_text",value:"処刑を1日遅らせる"}}]

    tag @a remove SentenceMatch
