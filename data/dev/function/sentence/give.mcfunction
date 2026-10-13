#> dev:sentence/give
#
# 看守用の令状(囚人を叩くと処刑の日がずれる)をgive
#
#

## 叩くと処刑が1日早まる
    give @s paper[item_name={text:"懲罰の令状",color:"red"},custom_data={Sentence:"Down"},lore=[{text:"囚人を叩くと処刑が1日早まる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:attribute_modifiers"]}] 1
## 叩くと処刑が1日遅れる
    give @s paper[item_name={text:"恩赦の書状",color:"green"},custom_data={Sentence:"Up"},lore=[{text:"囚人を叩くと処刑が1日遅れる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:attribute_modifiers"]}] 1
