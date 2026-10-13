#> gimmick:escape/goal
#
# 外に出た！10秒耐えろ
#
# @within function gimmick:tick
# @s ゴールにいる生きた囚人

## ゴールにいる印
    tag @s add InGoal
    scoreboard players add @s EscapeTimer 1

## 外に出た瞬間、看守に知らせる
    execute if score @s EscapeTimer matches 1 run title @a[team=Guard] actionbar {text:"囚人が塀の外に出た！",color:"red",bold:true}

## 残り秒数を表示
    scoreboard players set #Remain _ 200
    scoreboard players operation #Remain _ -= @s EscapeTimer
    scoreboard players add #Remain _ 19
    scoreboard players set #20 _ 20
    scoreboard players operation #Remain _ /= #20 _
    title @s title ""
    title @s subtitle [{score:{name:"#Remain",objective:"_"},color:"white",bold:true}]
    title @s actionbar {"text":"留まり続けろ！"}

## 10秒(200tick)耐えたら脱獄成功
    execute if score @s EscapeTimer matches 200.. run function gimmick:escape/success