#> dev:sentence/install_all
#
# 4つの房の扉の上に、残り日数の表示をまとめて置き直す
#   扉は +Z 側を向いているので、ブロックの +Z 側の面(z=82)に張り付ける
#   z を 0.01 だけ手前にずらして、壁とちらつかないようにしている
#
#

## いったん全部消す(二重に置かないように)
    kill @e[type=text_display,tag=SentenceBoard]
    kill @e[type=interaction,tag=SentenceBoardHitbox]

## 囚人番号4-7
    execute positioned 13.5 62.37 82.01 run function dev:sentence/install {No:4}
    execute positioned 21.5 62.37 82.01 run function dev:sentence/install {No:5}
    execute positioned 29.5 62.37 82.01 run function dev:sentence/install {No:6}
    execute positioned 37.5 62.37 82.01 run function dev:sentence/install {No:7}
