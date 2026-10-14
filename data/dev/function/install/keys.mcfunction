#> dev:install/keys
#
# 鍵をすべてgive
#   色の鍵 : 同じ色のコンクリートの鍵穴のドアを開ける(紫は刑務作業中だけ)
#   マスターキー : どの鍵穴のドアでも、いつでも開ける
#
#

    give @s trial_key[item_name={text:"空色の鍵",color:"aqua"},custom_data={Key:"light_blue"}] 1
    give @s trial_key[item_name={text:"青色の鍵",color:"blue"},custom_data={Key:"blue"}] 1
    give @s trial_key[item_name={text:"赤色の鍵",color:"red"},custom_data={Key:"red"}] 1
    give @s trial_key[item_name={text:"黄色の鍵",color:"yellow"},custom_data={Key:"yellow"}] 1
    give @s trial_key[item_name={text:"紫色の鍵",color:"light_purple"},custom_data={Key:"purple"},lore=[{text:"刑務作業中だけ使える",color:"gray",italic:false}]] 1
    give @s ominous_trial_key[item_name={text:"マスターキー",color:"gold"},custom_data={Key:"master"}] 1
