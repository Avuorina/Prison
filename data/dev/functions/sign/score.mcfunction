#> dev:sign/score
#
# ワールド内の看板にスコアを表示させる
#
#

## _
    execute positioned 47 -4 -39 run data merge block ~ ~ ~ {front_text:{has_glowing_text:1b,messages:['{"text":"スコア"}','{"text":""}','{"score":{"name":"_","objective":"_"},"bold":true}','{"text":""}']}}
## SneakTimer
    execute positioned 47 -3 -39 run data merge block ~ ~ ~ {front_text:{has_glowing_text:1b,messages:['{"text":"スコア"}','{"text":""}','{"score":{"name":"@a[sort=nearest,limit=1]","objective":"SneakTimer"},"bold":true}','{"text":""}']}}
## SneakFrequency
    execute positioned 48 -3 -39 run data merge block ~ ~ ~ {front_text:{has_glowing_text:1b,messages:['{"text":"スコア"}','{"text":""}','{"score":{"name":"@a[sort=nearest,limit=1]","objective":"SneakFrequency"},"bold":true}','{"text":""}']}}
## Direction
    execute positioned 49 -3 -39 run data merge block ~ ~ ~ {front_text:{has_glowing_text:1b,messages:['{"text":"スコア"}','{"text":""}','{"score":{"name":"@a[sort=nearest,limit=1]","objective":"Direction"},"bold":true}','{"text":""}']}}
