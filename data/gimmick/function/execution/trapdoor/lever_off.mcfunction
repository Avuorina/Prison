#> gimmick:execution/trapdoor/lever_off
#
# 処刑場のレバー(3 61 120)を、向きはそのままで下ろす
#
# @within function gimmick:execution/trapdoor/close

    execute if block 3 61 120 lever[face=floor,facing=north] run setblock 3 61 120 lever[face=floor,facing=north,powered=false]
    execute if block 3 61 120 lever[face=floor,facing=south] run setblock 3 61 120 lever[face=floor,facing=south,powered=false]
    execute if block 3 61 120 lever[face=floor,facing=east] run setblock 3 61 120 lever[face=floor,facing=east,powered=false]
    execute if block 3 61 120 lever[face=floor,facing=west] run setblock 3 61 120 lever[face=floor,facing=west,powered=false]
    execute if block 3 61 120 lever[face=wall,facing=north] run setblock 3 61 120 lever[face=wall,facing=north,powered=false]
    execute if block 3 61 120 lever[face=wall,facing=south] run setblock 3 61 120 lever[face=wall,facing=south,powered=false]
    execute if block 3 61 120 lever[face=wall,facing=east] run setblock 3 61 120 lever[face=wall,facing=east,powered=false]
    execute if block 3 61 120 lever[face=wall,facing=west] run setblock 3 61 120 lever[face=wall,facing=west,powered=false]
    execute if block 3 61 120 lever[face=ceiling,facing=north] run setblock 3 61 120 lever[face=ceiling,facing=north,powered=false]
    execute if block 3 61 120 lever[face=ceiling,facing=south] run setblock 3 61 120 lever[face=ceiling,facing=south,powered=false]
    execute if block 3 61 120 lever[face=ceiling,facing=east] run setblock 3 61 120 lever[face=ceiling,facing=east,powered=false]
    execute if block 3 61 120 lever[face=ceiling,facing=west] run setblock 3 61 120 lever[face=ceiling,facing=west,powered=false]
