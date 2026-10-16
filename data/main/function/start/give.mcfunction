#> main:start/give
#
# ゲーム開始のアイテムをgive(看守に持たせる)
#   右クリックでゲームを始める(main:start)
#

    give @s carrot_on_a_stick[item_name={text:"ゲーム開始",color:"gold"},custom_data={GameStart:1b},enchantment_glint_override=true,lore=[{text:"右クリック：ゲームを始める",color:"gray",italic:false},{text:"(先に囚人を番号登録しておくこと)",color:"dark_gray",italic:false}]] 1
