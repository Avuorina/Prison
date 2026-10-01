#> gimmick:lock_door/uninstall
#
# ドアを破壊するぞ
#
# @within gimmick:lock_door/install/
# @s 削除対象のドアのインタラクション(どちらか片方)

## 同じドアのインタラクション2体に印を付ける
    tag @s add DoorRemove
    # 設置時に振った DoorID が同じものが相方
        execute if score @s DoorID matches -2147483648.. run scoreboard players operation #Target DoorID = @s DoorID
        execute if score @s DoorID matches -2147483648.. as @e[type=interaction,tag=DoorInteract,tag=!DoorRemove,distance=..4] if score @s DoorID = #Target DoorID run tag @s add DoorRemove
    # DoorID が無い(この修正より前に設置した)ドアは、一番近いインタラクションを相方とみなす
        execute unless score @s DoorID matches -2147483648.. run tag @e[type=interaction,tag=DoorInteract,tag=!DoorRemove,distance=..3,sort=nearest,limit=1] add DoorRemove

## 開いている最中なら、先に閉じてレッドストーントーチを片付ける
    scoreboard players set @e[type=interaction,tag=DoorRemove,tag=DoorCanEnter] DoorOpenTimer 0
    execute as @e[type=interaction,tag=DoorRemove,tag=DoorCanEnter] run function gimmick:lock_door/close_door

## 2体の間にある鉄のドアだけを消す(隣の別のドアは巻き込まない)
    execute as @e[type=interaction,tag=DoorRemove] at @s facing entity @e[type=interaction,tag=DoorRemove,distance=0.1..,limit=1] feet positioned ^ ^ ^1 if block ~ ~ ~ iron_door run setblock ~ ~ ~ air

## ドアのインタラクションの消去
    kill @e[type=interaction,tag=DoorRemove]
    scoreboard players reset #Target DoorID
