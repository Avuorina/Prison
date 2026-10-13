#> gimmick:schedule/execution/notice
#
# 起床のとき、囚人に処刑までの残り日数を出すぞ(例：6:00　処刑まであと 12 日)
#
# @within function gimmick:schedule/phase/announce
# @s 囚人

    function gimmick:schedule/execution/remaining
    title @s subtitle [{nbt:"TimeLabel",storage:"gimmick:schedule",interpret:true,color:"gray"},{text:"　処刑まであと ",color:"gray"},{score:{name:"@s",objective:"_"},color:"red",bold:true},{text:" 日",color:"gray"}]
