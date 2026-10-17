#> dev:execution/set_guard
#
# 処刑場の看守がレバーを引く場所を、今自分が立っている場所と向きにする
#   storage gimmick:execution guard に {x,y,z,yaw,pitch} を保存
#

    execute store result storage gimmick:execution guard.x double 0.001 run data get entity @s Pos[0] 1000
    execute store result storage gimmick:execution guard.y double 0.001 run data get entity @s Pos[1] 1000
    execute store result storage gimmick:execution guard.z double 0.001 run data get entity @s Pos[2] 1000
    execute store result storage gimmick:execution guard.yaw float 0.01 run data get entity @s Rotation[0] 100
    execute store result storage gimmick:execution guard.pitch float 0.01 run data get entity @s Rotation[1] 100
    tellraw @s [{text:"処刑場(看守がレバーを引く場所)をここにしました：",color:"green"},{nbt:"guard",storage:"gimmick:execution",color:"white"}]
