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
    execute as @a[scores={ReadBook=1..}] run function player:recipe/read_book

## can_place_on
    # 手に持った苗木に「土にしか植えられない」を付ける
        execute as @a if items entity @s weapon.mainhand oak_sapling[!minecraft:can_place_on] run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:"minecraft:dirt"},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}
        execute as @a if items entity @s weapon.offhand oak_sapling[!minecraft:can_place_on] run item modify entity @s weapon.offhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:"minecraft:dirt"},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}
    # 手に持った根付いた土に荒い土にしか置けないようにするをつける
        execute as @a if items entity @s weapon.mainhand rooted_dirt[!minecraft:can_place_on] run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:"minecraft:coarse_dirt"},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}
        execute as @a if items entity @s weapon.offhand rooted_dirt[!minecraft:can_place_on] run item modify entity @s weapon.offhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:"minecraft:coarse_dirt"},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}

## 脱出
   execute if block 60 49 70 minecraft:lever[powered=false] unless data storage gimmick:sluice_gate {On:true} run function gimmick:escape/
   ## 爆薬
    execute as @e[type=tnt] at @s run function gimmick:escape/tnt/tick