#> gimmick:schedule/phase/announce
#
# フェーズが変わったことを全員に知らせるぞ
#   看守 : 時刻と予定(例：13:00 刑務作業)
#   囚人 : 時刻だけ(例：13:00)
#
# @within function gimmick:schedule/start
# @within function gimmick:schedule/next

## 表示時間
    title @a times 10 60 20

## サブタイトル
    title @a[team=Guard] subtitle {nbt:"Label",storage:"gimmick:schedule",interpret:true,color:"gray"}
    title @a[team=!Guard] subtitle {nbt:"TimeLabel",storage:"gimmick:schedule",interpret:true,color:"gray"}
    # 起床のときは、囚人に処刑までの残り日数も出す
        execute if score #Phase Schedule matches 0 as @a[team=Prisoner] run function gimmick:schedule/execution/notice

## タイトル(起床のときだけ日付、ほかは空にしてサブタイトルだけ出す)
    execute if score #Phase Schedule matches 0 run title @a title [{score:{name:"#Day",objective:"Schedule"},color:"white",bold:true},{text:"日目",color:"white",bold:true}]
    execute unless score #Phase Schedule matches 0 run title @a title ""

## チャイム
    execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.7
