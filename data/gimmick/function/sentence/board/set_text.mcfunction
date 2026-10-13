#> gimmick:sentence/board/set_text
#
# 表示の文字を書き換える(マクロ)
#
# @within function gimmick:sentence/board/days
# @s 房の扉の上の表示(テキストディスプレイ)

$data modify entity @s text set value [{text:"処刑まであと ",color:"white"},{text:"$(Days)",color:"red",bold:true},{text:" 日",color:"white"}]
