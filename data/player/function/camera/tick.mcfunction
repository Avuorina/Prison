#> player:camera/tick
#
# カメラを見ている看守の毎tick
#   カメラから降りていたら(スニーク)戻る。乗っていればカメラ番号を出す
#   カメラの模型を、看守が見ている方向に向ける
#
# @within function gimmick:tick
# @s カメラを見ている看守

## カメラに乗っていなければ戻る
    execute unless function player:camera/is_riding run return run function player:camera/exit

## 表示
    title @s actionbar [{text:"● REC ",color:"red"},{text:"カメラ ",color:"white"},{score:{name:"@s",objective:"CameraNo"},color:"white"},{text:"　右クリック：切り替え　スニーク：戻る",color:"gray"}]

## カメラの模型を、看守が見ている方向に向ける(その場で首を振る)
    scoreboard players operation #Target CameraNo = @s CameraNo
    execute rotated as @s as @e[type=item_display,tag=CameraModel] if score @s CameraNo = #Target CameraNo positioned as @s run tp @s ~ ~ ~ ~ ~
