#> player:camera/model
#
# カメラの模型(見た目用の item_display)を置き直す
#   看守が乗るカメラ本体とは別のエンティティ。カメラと同じ向きにして、
#   看守の目の少し後ろに置く(模型が看守の画面に映り込まないように)
#
#   位置の調整
#     ~ ~1.0 ~   : カメラ本体から看守の目までの高さ
#     ^ ^ ^-0.6  : 目から後ろへ下げる距離
#
# @within function dev:install/camera
# @within function dev:camera/aim
# @within function player:camera/save_angle
# @s 監視カメラ(item_display, tag=Camera)

## 今の模型を消す
    scoreboard players operation #Target CameraNo = @s CameraNo
    execute as @e[type=item_display,tag=CameraModel] if score @s CameraNo = #Target CameraNo run kill @s

## 置き直す
    execute at @s rotated as @s positioned ~ ~1.0 ~ positioned ^ ^ ^-0.2 summon item_display run function player:camera/model_init
