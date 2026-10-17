#> player:handcuffs/catch
#
# 手錠で捕まえた
#   処刑の日を迎えた囚人(ExecutionDue)なら処刑場へ、それ以外は懲罰房へ
#
# @within function player:handcuffs/hit
# @s 手錠で殴られた囚人

    execute if entity @s[tag=ExecutionDue] run return run function gimmick:execution/send
    function player:handcuffs/arrest
