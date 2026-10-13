#> dev:sentence/install
#
# 房の扉の上に、残り日数の表示とクリック用の当たり判定を置く(マクロ)
#
# 使い方：execute positioned <x> <y> <z> run function dev:sentence/install {No:4}
#         (No は囚人番号。プレイヤーには scoreboard players set <名前> PrisonerNo 4)

# 向きは固定(Rotation 0 = 南(+Z)向き。北を向いて読む)、背景は透明にして壁に描いたように
summon text_display ~ ~ ~ {Tags:["SentenceBoard","SentenceNew"],billboard:"fixed",Rotation:[0f,0f],background:0,text:{text:""}}
summon interaction ~ ~-0.1 ~ {Tags:["SentenceBoardHitbox","SentenceNew"],width:1.0f,height:0.4f}
$scoreboard players set @e[tag=SentenceNew] PrisonerNo $(No)
    tag @e[tag=SentenceNew] remove SentenceNew
    function gimmick:sentence/board/update_all
