#> main:start/random_assign
#
# 看守以外のプレイヤーを、囚人番号4〜7にランダムで割り当てて、それぞれの房へ送るぞ
#   ボタンを押した人(GM)は割り当てない
#   5人以上いたら、余った人はそのまま(GMに知らせる)
#
# @within function main:book/gm(ボタン)
# @s ボタンを押した人(GM)

## 前の割り当てを消す
    tag @s add RandomAssigner
    scoreboard players reset @a[team=!Guard] PrisonerNo
    team leave @a[team=Prisoner]

## 4〜7を順番に、まだ番号のない人からランダムに選ぶ
    function main:start/random_assign/pick {No:4}
    function main:start/random_assign/pick {No:5}
    function main:start/random_assign/pick {No:6}
    function main:start/random_assign/pick {No:7}

## 余った人を知らせる
    execute if entity @a[team=!Guard,tag=!RandomAssigner,tag=!RandomAssigned] run tellraw @s [{text:"房が足りず、割り当てられなかった人：",color:"red"},{selector:"@a[team=!Guard,tag=!RandomAssigner,tag=!RandomAssigned]"}]

## 片付け
    tag @a remove RandomAssigned
    tag @s remove RandomAssigner
    function gimmick:sentence/board/update_all
