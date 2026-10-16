#> main:start/guard
#
# 看守のスタート準備(テレポートはしない)
#   警棒 / 手錠 / マスターキー / 日課の速さ
#   custom_model_data の strings はリソースパックで見た目を切り替える用(仮置き)
#
# @within function main:start
# @s 看守

    clear @s

## 警棒 : 素手1 + 11 = 12ダメージ。囚人服は防御力なしなので2発(24)で倒れる
    item replace entity @s hotbar.0 with stick[item_name={text:"警棒",color:"blue"},custom_data={Baton:1b},custom_model_data={strings:["baton"]},attribute_modifiers=[{type:"minecraft:attack_damage",id:"prison:baton",amount:11,operation:"add_value",slot:"mainhand"}],tooltip_display={hidden_components:["minecraft:attribute_modifiers"]},lore=[{text:"2発で囚人を倒せる",color:"gray",italic:false}]]
## 手錠 : 囚人を殴ると懲罰房へ
    item replace entity @s hotbar.1 with lead[item_name={text:"手錠",color:"blue"},custom_data={Handcuffs:1b},custom_model_data={strings:["handcuffs"]},lore=[{text:"囚人を殴ると懲罰房へ送る",color:"gray",italic:false}]]
## マスターキー
    item replace entity @s hotbar.2 with ominous_trial_key[item_name={text:"マスターキー",color:"gold"},custom_data={Key:"master"},custom_model_data={strings:["key_master"]}]
## 日課の速さ
    item replace entity @s hotbar.8 with carrot_on_a_stick[item_name="日課の速さ",custom_data={SchedulePause:1b},enchantment_glint_override=true,lore=[{text:"右クリック：等速 → 1/2 → 1/10 → 一時停止",color:"gray",italic:false}]]
