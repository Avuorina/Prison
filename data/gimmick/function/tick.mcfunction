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
    # 当たり判定のない材料に付ける(材料は #gimmick:ground_recipe/input で管理)
        execute as @e[type=item,tag=!GroundRecipeItem] if items entity @s contents #gimmick:ground_recipe/input at @s run function gimmick:ground_recipe/install
    # 当たり判定を材料に追従させる（材料が拾われたら消す）
        execute as @e[type=interaction,tag=GroundRecipeInteract] run function gimmick:ground_recipe/follow

## 本を読んだ！
    execute as @a[scores={ReadBook=1..}] run function player:read_book