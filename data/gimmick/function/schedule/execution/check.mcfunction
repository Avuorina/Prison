#> gimmick:schedule/execution/check
#
# 朝、残り日数が0になっている囚人を処刑するぞ
#
# @within function gimmick:schedule/next

    execute as @a[team=Prisoner] if score @s SentenceLeft matches ..0 run function gimmick:schedule/execution/execute
## 房の扉の上の表示を更新(処刑された人がいれば「処刑済み」に)
    function gimmick:sentence/board/update_all
## 囚人が残っていなければゲーム終了
    function gimmick:schedule/execution/end_check
