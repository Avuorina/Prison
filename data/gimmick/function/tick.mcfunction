#> gimmick:tick
#
# gimmickのアレコレに対するtick
#
#

## ドア
    # ドアが開いてる
        execute as @e[type=interaction,tag=DoorCanEnter,scores={DoorOpenTimer=0..}] run function gimmick:lock_door/close_door
    # ドア設置
        execute as @e[type=armor_stand,tag=DoorReady] at @s run function gimmick:lock_door/install/

## 置きレシピ
    # 当たり判定のない薪に付ける
        execute as @e[type=item,tag=!FirewoodItem] if items entity @s contents oak_log[custom_data~{Firewood:1b}] at @s run function gimmick:firewood/install
    # 当たり判定を薪に追従させる（薪が拾われたら消す）
        execute as @e[type=interaction,tag=FirewoodInteract] run function gimmick:firewood/follow
    