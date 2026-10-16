#> dev:install/keys
#
# 鍵をすべてgive
#   色の鍵 : 同じ色のコンクリートの鍵穴のドアを開ける
#   マスターキー : どの鍵穴のドアでも、いつでも開ける
#   custom_model_data の strings はリソースパックで見た目を切り替える用(仮置き)
#
#

    give @s trial_key[item_name={text:"空色の鍵",color:"aqua"},custom_data={Key:"light_blue"},custom_model_data={strings:["key_light_blue"]}] 1
    give @s trial_key[item_name={text:"青色の鍵",color:"blue"},custom_data={Key:"blue"},custom_model_data={strings:["key_blue"]}] 1
    give @s trial_key[item_name={text:"赤色の鍵",color:"red"},custom_data={Key:"red"},custom_model_data={strings:["key_red"]}] 1
    give @s trial_key[item_name={text:"黄色の鍵",color:"yellow"},custom_data={Key:"yellow"},custom_model_data={strings:["key_yellow"]}] 1
    give @s trial_key[item_name={text:"紫色の鍵",color:"light_purple"},custom_data={Key:"purple"},custom_model_data={strings:["key_purple"]}] 1
    give @s ominous_trial_key[item_name={text:"マスターキー",color:"gold"},custom_data={Key:"master"},custom_model_data={strings:["key_master"]}] 1
