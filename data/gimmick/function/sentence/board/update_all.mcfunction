#> gimmick:sentence/board/update_all
#
# 房の扉の上の表示を全部更新するぞ
#
# 呼ぶタイミング：残り日数が変わったとき(看守の操作・朝・処刑・脱獄・リセット)

    execute as @e[type=text_display,tag=SentenceBoard] run function gimmick:sentence/board/update
