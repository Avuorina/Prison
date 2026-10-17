#> gimmick:tick
#
# gimmickのアレコレに対するtick
#
#

## 日課
    execute if score #Running Schedule matches 1 run function gimmick:schedule/tick

## リセットのときにオフラインだった参加者が戻ってきたら登録し直す
    execute if score #Current GameId matches 1.. as @a[team=Prisoner] unless score @s GameId = #Current GameId run function gimmick:schedule/execution/rejoin
    execute if score #Current GameId matches 1.. as @a[team=Escaped] unless score @s GameId = #Current GameId run function gimmick:schedule/execution/rejoin
    execute if score #Current GameId matches 1.. as @a[team=Executed] unless score @s GameId = #Current GameId run function gimmick:schedule/execution/rejoin

## 持ち物チェックゲート(看守は調べない)
    execute as @a[gamemode=!spectator,team=!Guard] at @s run function gimmick:gate/check
    execute as @e[type=marker,tag=GateAlarm] at @s run function gimmick:gate/alarm_tick

## 監視カメラ
    execute as @a[tag=CameraViewing] at @s run function player:camera/tick
## 処刑場で死んだ囚人を処刑済みにする
    execute as @a[tag=ExecutionInProgress,scores={Deaths=1..}] run function gimmick:schedule/execution/execute

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

    # 手に持ったバケツ・水入りバケツに「土と水にだけ使える」を付ける(水を汲む・まくと付け直しが必要になるため)
        execute as @a if items entity @s weapon.mainhand bucket[!minecraft:can_place_on] run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:["minecraft:dirt","minecraft:water"]},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}
        execute as @a if items entity @s weapon.offhand bucket[!minecraft:can_place_on] run item modify entity @s weapon.offhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:["minecraft:dirt","minecraft:water"]},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}
        execute as @a if items entity @s weapon.mainhand water_bucket[!minecraft:can_place_on] run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:["minecraft:dirt","minecraft:water"]},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}
        execute as @a if items entity @s weapon.offhand water_bucket[!minecraft:can_place_on] run item modify entity @s weapon.offhand {type:"minecraft:set_components",components:{"minecraft:can_place_on":{blocks:["minecraft:dirt","minecraft:water"]},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}}

## 脱出
   execute if block 60 49 70 minecraft:lever[powered=false] unless data storage gimmick:sluice_gate {On:true} run function gimmick:escape/
   ## 爆薬
    execute as @e[type=tnt] at @s run function gimmick:escape/tnt/tick
## 脱獄
    # ゴールにいる(生きている)囚人のタイマーを進める
        execute as @e[type=player,team=Prisoner,x=94,y=60,z=74,dx=16,dy=10,dz=33] run function gimmick:escape/goal
    # ゴールにいない囚人はタイマーをリセット
        scoreboard players reset @a[team=Prisoner,tag=!InGoal] EscapeTimer
        tag @a remove InGoal