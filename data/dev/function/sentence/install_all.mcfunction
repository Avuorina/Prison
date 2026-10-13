#> dev:sentence/install_all
#
# 4つの房の扉の上に、残り日数の表示をまとめて置き直す
#   扉は +Z 側を向いているので、ブロックの +Z 側の面に置く
#
#

## いったん全部消す(二重に置かないように)
    kill @e[type=text_display,tag=SentenceBoard]
    kill @e[type=interaction,tag=SentenceBoardHitbox]

## 囚人番号1〜4
    execute positioned 13.5 62.25 81.9 run function dev:sentence/install {No:1}
    execute positioned 21.5 62.25 81.9 run function dev:sentence/install {No:2}
    execute positioned 29.5 62.25 81.9 run function dev:sentence/install {No:3}
    execute positioned 37.5 62.25 81.9 run function dev:sentence/install {No:4}
