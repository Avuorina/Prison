#> world:gimmick/summon_no.interference
#
# 干渉できないようにできるエンティティを召喚
#
#

## 全員KILL
    kill @e[tag=NoInter]

## サモン
    execute positioned -114.5 -3.0 -280.5 run summon interaction ~ ~ ~ {width:1f,height:1f,Tags:["NoInter"]}
    execute positioned -112.5 -3.0 -278.5 run summon interaction ~ ~ ~ {width:1f,height:1f,Tags:["NoInter"]}
