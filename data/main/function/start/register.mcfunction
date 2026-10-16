#> main:start/register
#
# 房の前のコマンドブロックから、いちばん近いプレイヤー(看守以外)を囚人として番号登録するぞ
#   コマンドブロックに入れるコマンド : function main:start/register {No:4}
#   (4〜7 の番号を、それぞれの房のコマンドブロックに入れる)
#
# @input No 囚人番号

## 同じ番号の人がいたら外す(登録し直し)
    $execute as @a[scores={PrisonerNo=$(No)}] run scoreboard players reset @s PrisonerNo

## いちばん近いプレイヤーを囚人にする
    $scoreboard players set @p[team=!Guard] PrisonerNo $(No)
    team join Prisoner @p[team=!Guard]
    gamemode adventure @p[team=!Guard]

## 知らせる
    $tellraw @p[team=!Guard] [{text:"囚人番号 ",color:"gold"},{text:"$(No)",color:"yellow",bold:true},{text:" として登録されました",color:"gold"}]
    $tellraw @a[team=Guard] [{selector:"@p[team=!Guard]"},{text:" を囚人番号 $(No) に登録",color:"gray"}]
    execute as @p[team=!Guard] at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 1

## 房の扉の上の表示を更新
    function gimmick:sentence/board/update_all
