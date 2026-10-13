#> gimmick:schedule/execution/end_check
#
# 囚人が全員いなくなったら(脱獄か処刑で)ゲームを終わらせるぞ
#   オンラインのプレイヤーではなく「残っている囚人の数(#Left)」で数えるので、
#   ログアウト中の囚人がいても勝手に終わらない
#
# @within function gimmick:schedule/execution/check
# @within function gimmick:escape/success

## 参加者がいない(テスト中など)なら終わらない
    execute unless score #Total Schedule matches 1.. run return 0
## まだ囚人が残っているなら続ける
    execute if score #Left Schedule matches 1.. run return 0
## 全員いなくなった
    function gimmick:schedule/end
