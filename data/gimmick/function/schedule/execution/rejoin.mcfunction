#> gimmick:schedule/execution/rejoin
#
# リセットのときにオフラインだった参加者が戻ってきた
#   前のゲームの状態(脱獄・処刑・古い残り日数)のままなので、囚人として登録し直す
#
# @within function gimmick:tick
# @s 前のゲーム番号のままの囚人・脱獄者・処刑者

    gamemode adventure @s
    team join Prisoner @s
    function gimmick:schedule/execution/enroll
    function gimmick:sentence/board/update_all
