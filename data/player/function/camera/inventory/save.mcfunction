#> player:camera/inventory/save
#
# 看守の持ち物を全部(インベントリ・防具・オフハンド)ストレージに預けて、空にする
#   透明になっても手に持った物や防具は他の人から見えるため
#   預け先 : storage prison:camera Saved."<CameraID>"
#
# @within function player:camera/enter
# @s 看守

## 預ける
    data modify storage prison:camera Save set value {}
    data modify storage prison:camera Save.Inventory set from entity @s Inventory
    data modify storage prison:camera Save.equipment set from entity @s equipment
    execute store result storage prison:camera Args.ID int 1 run scoreboard players get @s CameraID
    function player:camera/inventory/store with storage prison:camera Args

## 空にする
    clear @s
