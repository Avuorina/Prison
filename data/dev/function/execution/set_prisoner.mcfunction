#> dev:execution/set_prisoner
#
# 処刑場の囚人を立たせる場所を、今自分が立っている場所と向きにする
#   storage gimmick:execution prisoner に {x,y,z,yaw,pitch} を保存
#

    execute store result storage gimmick:execution prisoner.x double 0.001 run data get entity @s Pos[0] 1000
    execute store result storage gimmick:execution prisoner.y double 0.001 run data get entity @s Pos[1] 1000
    execute store result storage gimmick:execution prisoner.z double 0.001 run data get entity @s Pos[2] 1000
    execute store result storage gimmick:execution prisoner.yaw float 0.01 run data get entity @s Rotation[0] 100
    execute store result storage gimmick:execution prisoner.pitch float 0.01 run data get entity @s Rotation[1] 100
    tellraw @s [{text:"処刑場(囚人を立たせる場所)をここにしました：",color:"green"},{nbt:"prisoner",storage:"gimmick:execution",color:"white"}]
