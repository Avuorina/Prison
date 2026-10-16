#> player:camera/enter
#
# カメラを見始める
#   1. その場にダミー(マネキン)を残す(戻ってくる場所。オフハンドの持ち物も預ける)
#   2. 看守を透明にして、オフハンドにカメラのリモコンを持たせる(右クリックの検知用)
#   3. カメラに乗る
#
# @within function player:camera/monitor
# @s 看守

## ダミーと結びつけるID
    scoreboard players add #Next CameraID 1
    scoreboard players operation @s CameraID = #Next CameraID

## ダミーを残す
    tag @s add CameraViewer
    execute at @s summon mannequin run function player:camera/body_init
    execute as @e[type=mannequin,tag=CameraBodyNew] run item replace entity @s weapon.offhand from entity @a[tag=CameraViewer,limit=1] weapon.offhand
    tag @e[type=mannequin,tag=CameraBodyNew] remove CameraBodyNew
    tag @s remove CameraViewer

## 見ている間の看守
    tag @s add CameraViewing
    item replace entity @s weapon.offhand with carrot_on_a_stick[item_name="カメラのリモコン",custom_data={CameraRemote:1b},lore=[{text:"右クリック：次のカメラ",color:"gray",italic:false},{text:"スニーク：戻る",color:"gray",italic:false}]]
    effect give @s minecraft:invisibility infinite 0 true
    effect give @s minecraft:resistance infinite 4 true

## カメラに乗る
    function player:camera/view
    playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1.5
