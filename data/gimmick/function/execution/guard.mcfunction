#> gimmick:execution/guard
#
# 囚人を処刑場へ送った看守を、処刑場の看守の位置へ送る(3秒後)
#
# @within function gimmick:execution/send(schedule)

    execute unless data storage gimmick:execution guard run tellraw @a[tag=ExecutionGuard] {text:"処刑場(看守)の座標が決まっていません(dev:execution/set_guard)",color:"red"}
    execute if data storage gimmick:execution guard as @a[tag=ExecutionGuard] run function gimmick:execution/tp with storage gimmick:execution guard
    execute as @a[tag=ExecutionGuard] run tellraw @s {text:"レバーを引いて刑を執行せよ",color:"dark_red",bold:true}
    tag @a remove ExecutionGuard
