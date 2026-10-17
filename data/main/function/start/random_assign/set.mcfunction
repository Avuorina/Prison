#> main:start/random_assign/set
#
# 選ばれた人を囚人にして、自分の房へ送る(マクロ)
#
# @within function main:start/random_assign/pick
# @input No 囚人番号
# @s 選ばれた人

    tag @s add RandomAssigned
    $scoreboard players set @s PrisonerNo $(No)
    team join Prisoner @s
    gamemode adventure @s

## 房へ(main:start/prisoner と同じ場所)
    execute if score @s PrisonerNo matches 4 run tp @s 11.5 60 77.5
    execute if score @s PrisonerNo matches 5 run tp @s 19.5 60 77.5
    execute if score @s PrisonerNo matches 6 run tp @s 27.5 60 77.5
    execute if score @s PrisonerNo matches 7 run tp @s 35.5 60 77.5

## 知らせる
    $tellraw @s [{text:"囚人番号 ",color:"gold"},{text:"$(No)",color:"yellow",bold:true},{text:" に決まりました",color:"gold"}]
    $tellraw @a[tag=RandomAssigner] [{selector:"@s"},{text:" → 囚人番号 $(No)",color:"gray"}]
    playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 1
