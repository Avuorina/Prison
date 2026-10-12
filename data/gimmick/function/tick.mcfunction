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

## 苗木
    # 手に持った苗木に「土にしか植えられない」を付ける
        execute as @a if items entity @s weapon.mainhand oak_sapling[!minecraft:can_place_on] run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:"minecraft:dirt"},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}
        execute as @a if items entity @s weapon.offhand oak_sapling[!minecraft:can_place_on] run item modify entity @s weapon.offhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:"minecraft:dirt"},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}