#> gimmick:lock_door/close_door
#
# ドアは閉じるもの。そうだろ？
#
#

## ドアを段々と閉じる
    scoreboard players remove @s DoorOpenTimer 1

## ドアを閉じる
    execute if score @s DoorOpenTimer matches ..0 at @s[tag=100] run setblock ~1 ~-2 ~ bedrock
    execute if score @s DoorOpenTimer matches ..0 at @s[tag=DoorBig,tag=100] run setblock ~2 ~-2 ~ bedrock
    execute if score @s DoorOpenTimer matches ..0 at @s[tag=-100] run setblock ~-1 ~-2 ~ bedrock
    execute if score @s DoorOpenTimer matches ..0 at @s[tag=DoorBig,tag=-100] run setblock ~-2 ~-2 ~ bedrock
    execute if score @s DoorOpenTimer matches ..0 at @s[tag=001] run setblock ~ ~-2 ~1 bedrock
    execute if score @s DoorOpenTimer matches ..0 at @s[tag=DoorBig,tag=001] run setblock ~ ~-2 ~2 bedrock
    execute if score @s DoorOpenTimer matches ..0 at @s[tag=00-1] run setblock ~ ~-2 ~-1 bedrock
    execute if score @s DoorOpenTimer matches ..0 at @s[tag=DoorBig,tag=00-1] run setblock ~ ~-2 ~-2 bedrock
    execute if score @s DoorOpenTimer matches ..0 run tag @s remove DoorCanEnter
    execute if score @s DoorOpenTimer matches ..0 run scoreboard players reset @s
