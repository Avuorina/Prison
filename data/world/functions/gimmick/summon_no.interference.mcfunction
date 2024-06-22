#> world:gimmick/summon_no.interference
#
# 干渉できないようにできるエンティティを召喚
#
#

## 全員KILL
    kill @e[tag=NoInter]

## サモン
    execute positioned 88.5 16.0 305.5 run summon interaction ~ ~ ~ {width:1f,height:5f,Tags:["NoInter"]}
