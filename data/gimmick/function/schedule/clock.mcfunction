#> gimmick:schedule/clock
#
# 囚人のアクションバーに、今の時刻だけを出すぞ(例：8:05)
#   時と分は gimmick:schedule/time で計算済み
#
# @within function gimmick:schedule/tick

    title @a[team=Prisoner] actionbar [{score:{name:"#Hour",objective:"Schedule"}},{text:":"},{nbt:"MinPad",storage:"gimmick:schedule",interpret:true},{score:{name:"#Minute",objective:"Schedule"}}]
