#> gimmick:schedule/end
#
# 囚人が全員いなくなった。ゲーム終了
#
# @within function gimmick:schedule/execution/end_check

    function gimmick:schedule/stop
    scoreboard players set #Over Schedule 1
    title @a times 10 100 20
    title @a subtitle {text:"囚人は誰も残っていない",color:"gray"}
    title @a title {text:"ゲーム終了",color:"white",bold:true}
