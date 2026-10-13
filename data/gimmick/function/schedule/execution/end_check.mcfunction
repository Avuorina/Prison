#> gimmick:schedule/execution/end_check
#
# 囚人が全員いなくなったら(脱獄か処刑で)ゲームを終わらせるぞ
#
# @within function gimmick:schedule/execution/check
# @within function gimmick:escape/success

## まだ囚人がいるなら続ける
    execute if entity @a[team=Prisoner] run return 0
## 脱獄者か処刑された人がいれば終了(誰も囚人にしていないテスト中は終わらない)
    execute if entity @a[team=Escaped] run return run function gimmick:schedule/end
    execute if entity @a[team=Executed] run return run function gimmick:schedule/end
