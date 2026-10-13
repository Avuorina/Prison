#> gimmick:escape/tnt/fizzle
#
# 濡れて不発。爆薬はその場に転がるぞ
#
# @within function gimmick:escape/tnt/explode
# @s 爆発直前のTNT

## 演出
    particle minecraft:large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.02 20
    playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1 1

## 爆薬を返す(レシピの完成品と同じ中身にすること)
    summon item ~ ~0.5 ~ {Item:{id:"minecraft:tnt",count:1,components:{"minecraft:item_name":"手製の爆薬","minecraft:can_place_on":{blocks:"minecraft:cinnabar"},"minecraft:lore":[{text:"あの壁を吹き飛ばせそうだ。",color:"gray",italic:true}],"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]}}},PickupDelay:20s}

## TNTを消す
    kill @s