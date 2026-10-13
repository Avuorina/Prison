#> gimmick:schedule/phase/announce
#
# フェーズが変わったことを全員に知らせるぞ
#
# @within function gimmick:schedule/start
# @within function gimmick:schedule/next

## 表示時間
    title @a times 10 60 20

## 日付(起床のときだけ)
    execute if score #Phase Schedule matches 0 if score #Workday Schedule matches 1 run title @a title [{score:{name:"#Day",objective:"Schedule"},color:"white",bold:true},{text:"日目",color:"white",bold:true},{text:"（作業日）",color:"gold"}]
    execute if score #Phase Schedule matches 0 if score #Workday Schedule matches 0 run title @a title [{score:{name:"#Day",objective:"Schedule"},color:"white",bold:true},{text:"日目",color:"white",bold:true},{text:"（免業日）",color:"aqua"}]

## 予定
    execute if score #Phase Schedule matches 0 run title @a subtitle {text:"6:00 起床・点呼",color:"gray"}
    execute if score #Phase Schedule matches 1 run title @a subtitle {text:"7:00 朝食",color:"gray"}
    execute if score #Phase Schedule matches 2 if score #Workday Schedule matches 1 run title @a subtitle {text:"8:00 刑務作業",color:"gold"}
    execute if score #Phase Schedule matches 2 if score #Workday Schedule matches 0 run title @a subtitle {text:"8:00 自由時間",color:"aqua"}
    execute if score #Phase Schedule matches 3 run title @a subtitle {text:"12:00 昼食",color:"gray"}
    execute if score #Phase Schedule matches 4 if score #Workday Schedule matches 1 run title @a subtitle {text:"13:00 刑務作業",color:"gold"}
    execute if score #Phase Schedule matches 4 if score #Workday Schedule matches 0 run title @a subtitle {text:"13:00 入浴・自由時間",color:"aqua"}
    execute if score #Phase Schedule matches 5 run title @a subtitle {text:"17:00 夕食・所持品検査",color:"gray"}
    execute if score #Phase Schedule matches 6 run title @a subtitle {text:"18:00 房内で自由時間",color:"gray"}
    execute if score #Phase Schedule matches 7 run title @a subtitle {text:"21:00 消灯",color:"dark_gray"}

## サブタイトルは title を出したときに一緒に出るので、起床以外は空のタイトルを出す
    execute unless score #Phase Schedule matches 0 run title @a title ""

## チャイム
    execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.7
