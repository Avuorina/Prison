#> dev:tick
#
# デバッグ用のtick
#
#

## 人参付きの棒を使った
    execute if score @s UseCarrotStick matches 1.. run function dev:schedule/use

## actionbarにスコアを表示させる
    function dev:sign/score
