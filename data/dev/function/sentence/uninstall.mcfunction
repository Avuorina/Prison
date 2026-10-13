#> dev:sentence/uninstall
#
# 近くの残り日数の表示と当たり判定を消す
#
# 使い方：execute positioned <x> <y> <z> run function dev:sentence/uninstall

    kill @e[type=text_display,tag=SentenceBoard,distance=..1.5]
    kill @e[type=interaction,tag=SentenceBoardHitbox,distance=..1.5]
