#> gimmick:schedule/execution/check
#
# 朝、残り日数が0になっている囚人を「処刑の対象」にするぞ
#   その場では死なない。看守が手錠で捕まえると処刑場へ送られる(player:handcuffs/hit)
#
# @within function gimmick:schedule/next

    execute as @a[team=Prisoner,tag=!ExecutionDue] if score @s SentenceLeft matches ..0 run function gimmick:schedule/execution/due

## 房の扉の上の表示を更新
    function gimmick:sentence/board/update_all
