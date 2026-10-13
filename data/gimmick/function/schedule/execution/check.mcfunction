#> gimmick:schedule/execution/check
#
# 朝、処刑の日を過ぎた囚人を処刑するぞ
#
# @within function gimmick:schedule/next

    execute as @a[team=Prisoner] if score @s ExecutionDay < #Day Schedule run function gimmick:schedule/execution/execute
## 囚人が残っていなければゲーム終了
    function gimmick:schedule/execution/end_check
