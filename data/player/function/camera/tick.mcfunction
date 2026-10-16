#> player:camera/tick
#
# カメラを見ている看守の毎tick
#   カメラから降りていたら(スニーク)戻る。乗っていればカメラ番号を出す
#
# @within function gimmick:tick
# @s カメラを見ている看守

## カメラに乗っていなければ戻る
    execute unless function player:camera/is_riding run return run function player:camera/exit

## 表示
    title @s actionbar [{text:"● REC ",color:"red"},{text:"カメラ ",color:"white"},{score:{name:"@s",objective:"CameraNo"},color:"white"},{text:"　右クリック：切り替え　スニーク：戻る",color:"gray"}]
