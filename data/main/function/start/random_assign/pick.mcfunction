#> main:start/random_assign/pick
#
# まだ番号のない人を1人ランダムに選んで、囚人番号を付ける(マクロ)
#
# @within function main:start/random_assign
# @input No 囚人番号

    $execute as @r[team=!Guard,tag=!RandomAssigner,tag=!RandomAssigned] run function main:start/random_assign/set {No:$(No)}
