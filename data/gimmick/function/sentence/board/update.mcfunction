#> gimmick:sentence/board/update
#
# この表示の囚人番号の囚人を探して、残り日数を表示するぞ
#
# @within function gimmick:sentence/board/update_all
# @s 房の扉の上の表示(テキストディスプレイ)

## 同じ番号のプレイヤーを探す
    scoreboard players operation #Target PrisonerNo = @s PrisonerNo
    execute as @a if score @s PrisonerNo = #Target PrisonerNo run tag @s add SentenceMatch

## 状態ごとの表示
    execute if entity @a[tag=SentenceMatch,team=Prisoner] run function gimmick:sentence/board/days
    execute if entity @a[tag=SentenceMatch,team=Executed] run data modify entity @s text set value {text:"処刑済み",color:"dark_red",bold:true}
    execute if entity @a[tag=SentenceMatch,team=Escaped] run data modify entity @s text set value {text:"脱獄",color:"green",bold:true}
    execute unless entity @a[tag=SentenceMatch] run data modify entity @s text set value {text:""}

    tag @a remove SentenceMatch
