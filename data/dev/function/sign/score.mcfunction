#> dev:sign/score
#
# ワールド内の看板にスコアを表示させる
#
#

## 北(Direction=0)
    execute if score @s Direction matches 0 run title @s actionbar {text:"北",color:"aqua",bold:true}
## 東(Direction=90)
    execute if score @s Direction matches 90 run title @s actionbar {text:"東",color:"yellow",bold:true}
## 西(Direction=-90)
    execute if score @s Direction matches -90 run title @s actionbar {text:"西",color:"green",bold:true}
## 南(Direction=180)
    execute if score @s Direction matches 180 run title @s actionbar {text:"南",color:"red",bold:true}